// Exercise the actual UI download controller with deterministic network fixtures.
const {readFileSync} = require("node:fs");
const vm = require("node:vm");
const {webcrypto} = require("node:crypto");
const assert = require("node:assert/strict");
async function scenario(source, {failAt = "", cancel = false, changeDirectory = false, audio = false} = {}) {
  let panel, hls, saved = "", requests = [], statusCalls = 0;
  const controls = new Map();
  const element = () => ({textContent:"", disabled:false, hidden:false, title:""});
  const video = {};
  const shell = {querySelector(s) { return s === ".jp-desktop-cache" ? panel : null; }, appendChild(e) {panel=e;}};
  const document = {
    readyState:"complete",
    getElementById() {return {};},
    querySelectorAll() {return [];},
    querySelector(s) {
      if (s === ".detail__player-shell") return shell;
      if (s === ".detail video") return video;
      if (s === ".jp-desktop-cache") return panel;
      if (s === ".detail__title-row h1") return {textContent:"测试影片"};
      return null;
    },
    createElement() {return {setAttribute(){}, querySelector(s) {
      if (!controls.has(s)) controls.set(s, element()); return controls.get(s);
    }};}
  };
  const context = {
    document, window:{}, URL, TextEncoder, crypto:webcrypto, AbortController, DOMException,
    MutationObserver:class {observe(){}}, requestAnimationFrame:fn => fn(), setInterval(){},
    fetch:async (url, options = {}) => {
      if (options.signal?.aborted) throw new DOMException("stop", "AbortError");
      requests.push(url);
      if (url === "/desktop/cache-status") {
        statusCalls++;
        return {ok:true,json:async () => ({directory:changeDirectory && statusCalls > 1 ? "D:\\other" : "D:\\videos",
          bytes:20,hits:1,errors:0})};
      }
      if (url.startsWith("/desktop/playlist/")) {saved=options.body; return {ok:true};}
      if (url === "https://example.com/movie/index.m3u8") return {ok:true,url,text:async () => source};
      if (failAt && url.includes(failAt)) return {ok:false,status:503};
      if (cancel) controls.get(".jp-cache-cancel").onclick();
      return {ok:true,arrayBuffer:async () => new ArrayBuffer(16)};
    }
  };
  vm.createContext(context);
  vm.runInContext(readFileSync(__dirname+"/desktop.js", "utf8"), context);
  await new Promise(resolve => setImmediate(resolve));
  const callbacks = {};
  hls = {constructor:{Events:{LEVEL_LOADED:"level",DESTROYING:"destroy"}},
    audioTracks:audio ? [{url:"https://example.com/audio.m3u8"}] : [],
    on(event, fn) {callbacks[event]=fn;}};
  context.window.__jpRegisterHls(hls);
  callbacks.level(null,{details:{live:false,url:"https://example.com/movie/index.m3u8"}});
  await controls.get(".jp-cache-save").onclick();
  return {saved,requests,state:context.window.__jpCacheState()};
}
(async () => {
  const vod = "#EXTM3U\n#EXT-X-TARGETDURATION:5\n#EXT-X-KEY:METHOD=AES-128,URI=\"key\"\n"+
    "#EXT-X-MAP:URI=\"init.mp4\"\n#EXTINF:5,\na.ts?sig=1\n#EXTINF:5,\nb.ts\n#EXT-X-ENDLIST\n";
  let r = await scenario(vod);
  assert(r.saved.startsWith("#EXTM3U\n") && r.saved.includes("#EXT-X-ENDLIST"));
  assert.equal((r.saved.match(/media\/[a-f0-9]{64}\.ts/g)||[]).length,4);
  assert(!r.saved.includes("https:") && !r.saved.includes("sig="));
  assert(r.state.message.includes("整集已保存") && !r.state.downloading);
  assert(r.requests.includes("https://example.com/movie/a.ts?sig=1"));
  r = await scenario(vod,{failAt:"b.ts"});
  assert.equal(r.saved,""); assert(r.state.message.includes("503"));
  r = await scenario(vod,{cancel:true});
  assert.equal(r.saved,""); assert(r.state.message.includes("已停止"));
  r = await scenario(vod,{changeDirectory:true});
  assert.equal(r.saved,""); assert(r.state.message.includes("位置已更改"));
  r = await scenario(vod,{audio:true});
  assert.equal(r.saved,""); assert(r.state.message.includes("独立音轨"));
  r = await scenario(vod.replace("#EXT-X-ENDLIST",""));
  assert.equal(r.saved,""); assert(r.state.message.includes("暂不支持"));
  r = await scenario(vod.replace("#EXTINF:5,", "#EXT-X-BYTERANGE:500@0\n#EXTINF:5,"));
  assert.equal(r.saved,""); assert(r.state.message.includes("暂不支持"));
  r = await scenario(vod.replace("METHOD=AES-128","METHOD=SAMPLE-AES"));
  assert.equal(r.saved,""); assert(r.state.message.includes("暂不支持"));
  r = await scenario(vod.replace('URI="key"', 'URI="http://example.com/key"'));
  assert.equal(r.saved,""); assert(r.state.message.includes("地址暂不支持"));
  console.log(JSON.stringify({passed:9,complete_vod:true,relative_urls:true,aes128_key:true,
    init_segment:true,failed_job_unpublished:true,cancel:true,folder_change:true,
    live_and_unsupported_rejected:true}));
})().catch(error => { console.error(error); process.exitCode=1; });
