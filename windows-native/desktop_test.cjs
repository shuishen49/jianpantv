// Exercise the actual UI download controller with deterministic network fixtures.
const {readFileSync} = require("node:fs");
const vm = require("node:vm");
const {webcrypto} = require("node:crypto");
const assert = require("node:assert/strict");
async function scenario(source, {failAt = "", cancel = false, changeDirectory = false, audio = false,
  exportFailure = false, cancelExport = false, merge = false, cleanupPending = false, cleanupError = false,
  language = "国语", episode = "", track = null, navigateDuringDownload = false, title = "测试影片"} = {}) {
  let panel, hls, saved = "", requests = [], statusCalls = 0, exportCalls = 0, nativeCancelled = false;
  let metadata = "";
  const controls = new Map();
  const element = () => ({textContent:"", disabled:false, hidden:false, title:""});
  const video = {};
  const heading = {textContent:title, dataset:{jpLanguage:language,jpEpisode:episode}};
  const shell = {querySelector(s) { return s === ".jp-desktop-cache" ? panel : null; }, appendChild(e) {panel=e;}};
  const document = {
    readyState:"complete",
    getElementById() {return {};},
    querySelectorAll() {return [];},
    querySelector(s) {
      if (s === ".detail__player-shell") return shell;
      if (s === ".detail video") return video;
      if (s === ".jp-desktop-cache") return panel;
      if (s === ".detail__title-row h1") return heading;
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
        if (options.method === "POST" && !url.endsWith("/cancel")) metadata = options.body;
        if (url.endsWith("/cancel")) nativeCancelled = true;
        if (cancelExport && options.method === "POST" && !nativeCancelled)
          controls.get(".jp-cache-cancel").onclick();
        return {ok:true,json:async () => ({
          state:exportFailure ? "failed" : merge && exportCalls === 1 ? "merging" : "saved",
          progress:500,bytes:1024,file:"《测试影片》-1080p-国语.mp4",error:"样本 MP4 合并失败",
          cleanup_pending:cleanupPending,cleanup_error:cleanupError
        })};
      }
      if (url.startsWith("/desktop/playlist/")) {saved=options.body; return {ok:true};}
      if (url.startsWith("/desktop/download/")) return {ok:true};
      if (url === "https://example.com/movie/index.m3u8") {
        if (navigateDuringDownload) {
          heading.textContent = "另一部影片"; heading.dataset = {jpLanguage:"日语",jpEpisode:"第99集"};
          hls.audioTracks = [{lang:"jpn"}]; hls.audioTrack = 0;
        }
        return {ok:true,url,text:async () => source};
      }
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
    audioTracks:audio ? [{url:"https://example.com/audio.m3u8"}] : track ? [track] : [], audioTrack:0,
    on(event, fn) {callbacks[event]=fn;}};
  context.window.__jpRegisterHls(hls);
  callbacks.level(null,{details:{live:false,url:"https://example.com/movie/index.m3u8"}});
  await controls.get(".jp-cache-save").onclick();
  return {saved,requests,nativeCancelled,exportCalls,metadata,state:context.window.__jpCacheState()};
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
  assert(r.requests.findIndex(u => u.startsWith("/desktop/download/")) <
    r.requests.indexOf("https://example.com/movie/key"));
  assert(r.state.message.includes("分片缓存已自动清理"));
  assert.equal(r.metadata,"JPMP4/1\n测试影片\n国语\n");
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
  r = await scenario(vod,{cleanupPending:true});
  assert(r.state.message.includes("稍后自动清理") && r.state.message.includes("已保存为 MP4"));
  r = await scenario(vod,{cleanupPending:true,cleanupError:true});
  assert(r.state.message.includes("检查目录权限") && !r.state.message.includes("缓存已自动清理"));
  r = await scenario(vod,{track:{lang:"eng",name:"默认"}});
  assert.equal(r.metadata,"JPMP4/1\n测试影片\neng\n");
  r = await scenario(vod,{track:{lang:"und",name:"English"}});
  assert.equal(r.metadata,"JPMP4/1\n测试影片\nEnglish\n");
  r = await scenario(vod,{track:{lang:"und",name:"AAC stereo"}});
  assert.equal(r.metadata,"JPMP4/1\n测试影片\n国语\n");
  r = await scenario(vod,{language:""});
  assert.equal(r.metadata,"JPMP4/1\n测试影片\n\n");
  r = await scenario(vod,{episode:"第01集",navigateDuringDownload:true});
  assert.equal(r.metadata,"JPMP4/1\n测试影片\n国语\n第01集");
  r = await scenario(vod,{episode:"正片"});
  assert.equal(r.metadata,"JPMP4/1\n测试影片\n国语\n");
  r = await scenario(vod,{title:"标题\n换行",language:"国语\r\n粤语"});
  assert.equal(r.metadata,"JPMP4/1\n标题 换行\n国语 粤语\n");
  let rendererChecks = 0;
  if (process.argv[2]) {
    const {titleRenderer} = JSON.parse(process.argv[2]);
    const ue = {value:{title:"八仙！",kind:"movie",language:"国语"}}, u = {value:{name:"正片"}};
    const renderContext = vm.createContext({ue,u,Xie:{class:"jp-truncate"},Ud:v=>v,
      xg:(tag,props,text,flags,dynamic)=>({tag,props,text,flags,dynamic})});
    let rendered = vm.runInContext(titleRenderer,renderContext);
    assert.equal(rendered.props["data-jp-language"],"国语");
    assert.equal(rendered.props["data-jp-episode"],"");
    assert.equal(rendered.text,"八仙！");
    assert.equal(rendered.flags,9);
    assert.deepEqual(Array.from(rendered.dynamic),["data-jp-language","data-jp-episode"]);
    ue.value = {title:"三体",kind:"series",language:"汉语普通话"}; u.value = {name:"第2集"};
    rendered = vm.runInContext(titleRenderer,renderContext);
    assert.equal(rendered.props["data-jp-episode"],"第2集");
    assert.equal(rendered.props["data-jp-language"],"汉语普通话");
    ue.value = {title:"未知元数据"}; u.value = null;
    rendered = vm.runInContext(titleRenderer,renderContext);
    assert.equal(rendered.props["data-jp-language"],"");
    assert.equal(rendered.props["data-jp-episode"],"");
    rendererChecks = 3;
  }
  console.log(JSON.stringify({passed:22+rendererChecks,complete_vod:true,relative_urls:true,aes128_key:true,
    init_segment:true,failed_job_unpublished:true,cancel:true,folder_change:true,
    live_and_unsupported_rejected:true,mp4_completion_required:true,
    language_captured:true,episode_captured:true,navigation_does_not_change_saved_metadata:true,
    pinned_apk_renderer_checks:rendererChecks,
    native_export_cancelled:true,export_failure_not_success:true}));
})().catch(error => { console.error(error); process.exitCode=1; });
