// Exercise the actual UI download controller with deterministic network fixtures.
const {readFileSync} = require("node:fs");
const vm = require("node:vm");
const {webcrypto} = require("node:crypto");
const assert = require("node:assert/strict");
async function scenario(source, {failAt = "", cancel = false, changeDirectory = false, audio = false,
  exportFailure = false, cancelExport = false, merge = false} = {}) {
  let panel, hls, saved = "", requests = [], statusCalls = 0, exportCalls = 0, nativeCancelled = false;
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
    setTimeout:fn => {fn();return 1;},
    fetch:async (url, options = {}) => {
      if (options.signal?.aborted) throw new DOMException("stop", "AbortError");
      requests.push(url);
      if (url === "/desktop/cache-status") {
        statusCalls++;
        return {ok:true,json:async () => ({directory:changeDirectory && statusCalls > 1 ? "D:\\other" : "D:\\videos",
          bytes:20,hits:1,errors:0})};
      }
      if (url.startsWith("/desktop/mp4/")) {
        exportCalls++;
        if (url.endsWith("/cancel")) nativeCancelled = true;
        if (cancelExport && options.method === "POST" && !nativeCancelled)
          controls.get(".jp-cache-cancel").onclick();
        return {ok:true,json:async () => ({
          state:exportFailure ? "failed" : merge && exportCalls === 1 ? "merging" : "saved",
          progress:500,bytes:1024,file:"荐片-测试影片-0123456789ab.mp4",error:"样本 MP4 合并失败"
        })};
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
  return {saved,requests,nativeCancelled,exportCalls,state:context.window.__jpCacheState()};
}
(async () => {
  const vod = "#EXTM3U\n#EXT-X-TARGETDURATION:5\n#EXT-X-KEY:METHOD=AES-128,URI=\"key\"\n"+
    "#EXT-X-MAP:URI=\"init.mp4\"\n#EXTINF:5,\na.ts?sig=1\n#EXTINF:5,\nb.ts\n#EXT-X-ENDLIST\n";
  let r = await scenario(vod);
  assert(r.saved.startsWith("#EXTM3U\n") && r.saved.includes("#EXT-X-ENDLIST"));
  assert.equal((r.saved.match(/media\/[a-f0-9]{64}\.ts/g)||[]).length,4);
  assert(!r.saved.includes("https:") && !r.saved.includes("sig="));
  assert(r.state.message.includes("整集已保存为 MP4") && r.state.message.includes(".mp4") && !r.state.downloading);
  assert.equal(r.exportCalls,1);
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
  r = await scenario(vod,{merge:true});
  assert(r.exportCalls === 2 && r.state.message.includes("已保存为 MP4"));
  r = await scenario(vod,{exportFailure:true});
  assert(r.nativeCancelled && r.state.message.includes("MP4 合并失败") && !r.state.message.includes("已保存"));
  r = await scenario(vod,{cancelExport:true,merge:true});
  assert(r.nativeCancelled && r.state.message.includes("已停止") && !r.state.downloading);
  console.log(JSON.stringify({passed:12,complete_vod:true,relative_urls:true,aes128_key:true,
    init_segment:true,failed_job_unpublished:true,cancel:true,folder_change:true,
    live_and_unsupported_rejected:true,mp4_completion_required:true,
    native_export_cancelled:true,export_failure_not_success:true}));
})().catch(error => { console.error(error); process.exitCode=1; });
