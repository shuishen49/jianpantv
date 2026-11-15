/* Desktop layout helpers and explicit HLS VOD saving. No Android bridge. */
(() => {
  "use strict";
  let activeHls = null, playlistURL = "", currentVideo = null;
  let job = null, message = "", status = null, pollBusy = false;
  const jobs = new WeakMap();
  window.__jpCacheState = () => ({playlistReady: !!playlistURL, downloading: !!job, message, status});
  window.__jpRegisterHls = hls => {
    activeHls = hls; playlistURL = "";
    hls.on(hls.constructor.Events.LEVEL_LOADED, (_, data) => {
      if (hls === activeHls && !data.details.live) playlistURL = data.details.url;
    });
    hls.on(hls.constructor.Events.DESTROYING, () => {
      if (hls === activeHls) { activeHls = null; playlistURL = ""; }
    });
    return hls;
  };
  const digest = async text => Array.from(new Uint8Array(await crypto.subtle.digest(
    "SHA-256", new TextEncoder().encode(text))), b => b.toString(16).padStart(2, "0")).join("");
  async function checkedFetch(url, options = {}) {
    const response = await fetch(url, {cache: "no-store", ...options});
    if (!response.ok) throw Error(`下载失败（HTTP ${response.status}），可稍后重试`);
    return response;
  }
  function render() {
    const element = document.querySelector(".jp-desktop-cache");
    if (!element) return;
    const path = element.querySelector(".jp-cache-path");
    const progress = element.querySelector(".jp-cache-progress");
    path.textContent = status?.directory ? `视频位置：${status.directory}` : "尚未选择目录，请点击窗口上方“保存位置”";
    path.title = path.textContent;
    const bytes = status ? (status.bytes / 1048576).toFixed(1) : "0";
    progress.textContent = message || (status?.directory ?
      `播放时自动保存已下载片段 · 本次写入 ${bytes} MB · 缓存命中 ${status.hits} 次` : "选择位置后可边播边缓存");
    if (status?.errors) progress.textContent += " · 有片段未能保存，请检查磁盘空间或权限";
    const save = element.querySelector(".jp-cache-save");
    save.disabled = !!job || !playlistURL || !status?.directory;
    element.querySelector(".jp-cache-cancel").hidden = !job;
  }
  async function poll() {
    if (pollBusy || !document.querySelector(".jp-desktop-cache")) return;
    pollBusy = true;
    try { status = await (await checkedFetch("/desktop/cache-status")).json(); }
    catch (_) { /* Playback remains usable if the status query fails. */ }
    finally { pollBusy = false; render(); }
  }
  function saveMetadata(hls) {
    const field = (value, limit) => String(value || "").replace(/[\x00-\x1f\x7f]/g, " ")
      .replace(/\s+/g, " ").trim().slice(0, limit).replace(/[\ud800-\udbff]$/, "");
    const heading = document.querySelector(".detail__title-row h1");
    const track = hls?.audioTracks?.[hls.audioTrack];
    const tag = field(track?.lang, 63);
    const named = field(track?.name, 63);
    const language = tag && !/^(?:und|zxx|unknown|auto|default)(?:[-_]|$)/i.test(tag) ? tag :
      /(?:中文|国语|普通话|粤语|闽南语|客家话|台语|英语|日语|韩语|法语|德语|俄语|泰语|越南语|西班牙语|葡萄牙语|意大利语|阿拉伯语|印地语|English|Mandarin|Cantonese|Japanese|Korean|French|German|Spanish|Russian|Thai)/i.test(named) ?
        named : field(heading?.dataset?.jpLanguage, 63);
    let episode = field(heading?.dataset?.jpEpisode, 63);
    if (/^(?:正片|全集|完整版|全片)$/.test(episode)) episode = "";
    return ["JPMP4/1", field(heading?.textContent, 255) || "当前影片", language, episode].join("\n");
  }
  async function saveEpisode() {
    if (job || !playlistURL || !status?.directory) return;
    const hls = activeHls, url = playlistURL, directory = status.directory, video = currentVideo;
    const metadata = saveMetadata(hls);
    const task = new AbortController();
    job = task;
    message = "正在读取当前集的下载列表…"; render();
    try {
      if (hls.audioTracks.some(track => track.url))
        throw Error("此线路使用独立音轨，暂不支持整集保存；播放片段仍会自动缓存");
      const response = await checkedFetch(url, {signal: task.signal});
      const source = await response.text();
      if (!source.trimStart().startsWith("#EXTM3U") || !source.includes("#EXT-X-ENDLIST") ||
          /#EXT-X-(?:BYTERANGE|STREAM-INF|MEDIA):|METHOD=(?!AES-128(?:,|$)|NONE(?:,|$))/m.test(source))
        throw Error("此线路暂不支持整集保存（支持普通 HLS 点播和 AES-128）；播放片段仍会自动缓存");
      const resources = new Map();
      async function localReference(value) {
        const remote = new URL(value, response.url || url);
        if (remote.protocol !== "https:") throw Error("此线路的资源地址暂不支持保存");
        const id = await digest(remote.href + "\n");
        resources.set(remote.href, id);
        return `media/${id}.ts`;
      }
      const lines = [];
      for (const raw of source.replace(/^\uFEFF/, "").split(/\r?\n/)) {
        let line = raw.trim();
        if (!line) continue;
        if (line[0] !== "#") line = await localReference(line);
        else {
          if (/BYTERANGE=/.test(line)) throw Error("此线路使用字节范围，暂不支持整集保存");
          const matches = [...line.matchAll(/URI="([^"]+)"/g)];
          for (const match of matches) line = line.replace(match[0], `URI="${await localReference(match[1])}"`);
          if (/URI=(?!")/.test(line)) throw Error("此线路的播放列表格式暂不支持保存");
        }
        lines.push(line);
      }
      if (!resources.size || resources.size > 20000) throw Error("下载列表为空或过长");
      const id = await digest(url + "\n");
      await checkedFetch(`/desktop/download/${id}`, {
        method: "POST", body: lines.join("\n") + "\n", signal: task.signal
      });
      let completed = 0, downloaded = 0;
      for (const [remote] of resources) {
        if (task.signal.aborted) throw new DOMException("Cancelled", "AbortError");
        const check = await (await checkedFetch("/desktop/cache-status", {signal: task.signal})).json();
        if (check.directory !== directory) throw Error("保存位置已更改，请重新开始整集缓存");
        const segment = await checkedFetch(remote, {signal: task.signal});
        /* Consuming the body completes the native atomic write before publishing a playlist. */
        const bytes = await segment.arrayBuffer();
        downloaded += bytes.byteLength; completed++;
        message = `正在缓存整集：${completed}/${resources.size} 个片段 · ${(downloaded / 1048576).toFixed(1)} MB · 可继续播放`;
        render();
      }
      await checkedFetch(`/desktop/playlist/${id}.m3u8`, {
        method: "POST", body: lines.join("\n") + "\n", signal: task.signal
      });
      task.exportID = id;
      message = "片段已下载，正在合并为单个 MP4…"; render();
      let exported = await (await checkedFetch(`/desktop/mp4/${id}`, {
        method: "POST", body: metadata, signal: task.signal
      })).json();
      while (exported.state === "merging") {
        if (task.signal.aborted) throw new DOMException("Cancelled", "AbortError");
        message = `正在合并 MP4：${Math.floor(exported.progress / 10)}% · ${(exported.bytes / 1048576).toFixed(1)} MB · 可继续播放`;
        render();
        await new Promise(resolve => setTimeout(resolve, 300));
        const check = await (await checkedFetch("/desktop/cache-status", {signal: task.signal})).json();
        if (check.directory !== directory) throw Error("保存位置已更改；已停止合并，原片段已保留");
        exported = await (await checkedFetch(`/desktop/mp4/${id}`, {signal: task.signal})).json();
      }
      if (exported.state === "cancelled") throw new DOMException("Cancelled", "AbortError");
      if (exported.state !== "saved" || !exported.file?.endsWith(".mp4"))
        throw Error(exported.error || "MP4 合并未完成，完整片段已保留，请重试");
      task.exportID = null;
      message = `整集已保存为 MP4：${exported.file}（${(exported.bytes / 1048576).toFixed(1)} MB，可单独复制和播放）`;
      message += exported.cleanup_error ? "；缓存尚未清理，请检查目录权限后重新保存" :
        exported.cleanup_pending ? "；已清理可释放的分片，共用或占用的缓存稍后自动清理" :
        "；本集分片缓存已自动清理";
      jobs.set(video, message);
    } catch (error) {
      if (task.exportID) {
        try { await checkedFetch(`/desktop/mp4/${task.exportID}/cancel`, {method:"POST"}); }
        catch (_) { /* Native close/path changes also cancel unfinished exports. */ }
      }
      message = error.name === "AbortError" ?
        "整集保存已停止；完整片段已保留，重试时会复用缓存" : error.message;
    } finally {
      if (job === task) job = null;
      poll(); render();
    }
  }
  function install() {
    const shell = document.querySelector(".detail__player-shell");
    const video = document.querySelector(".detail video");
    document.querySelectorAll(".detail__actions button").forEach(button => {
      if (button.textContent.trim() !== "缓存" || button.dataset.desktopCache) return;
      button.dataset.desktopCache = "1";
      button.addEventListener("click", event => {
        event.preventDefault(); event.stopImmediatePropagation();
        if (!status?.directory) message = "请先点击窗口上方“保存位置”选择视频目录";
        else if (!playlistURL) message = "请先开始播放，读取线路后再缓存整集";
        else saveEpisode();
        render();
      }, true);
    });
    if (video && video !== currentVideo) { currentVideo = video; if (!job) message = jobs.get(video) || ""; }
    if (!shell || shell.querySelector(".jp-desktop-cache") || shell.querySelector(".jp-skeleton")) return;
    const panel = document.createElement("section");
    panel.className = "jp-desktop-cache";
    panel.setAttribute("aria-label", "播放和视频缓存");
    panel.innerHTML = `<div class="jp-desktop-controls">
      <button type="button" class="jp-player-expand">⛶ 全屏播放</button>
      <button type="button" class="jp-cache-save">缓存整集（MP4）</button>
      <button type="button" class="jp-local-library">本地影片</button>
      <button type="button" class="jp-cache-cancel" hidden>停止保存</button></div>
      <p class="jp-cache-path"></p><p class="jp-cache-progress" role="status"></p>
      <p class="jp-cache-help">详情和讨论可在右侧滚动查看。F11 全屏，Esc 退出；全屏时 ← 快退 10 秒，→ 快进 10 秒。整集保存为单个 MP4，成功后自动清理本集分片缓存；失败或停止时保留分片供重试。</p>`;
    panel.querySelector(".jp-player-expand").onclick = () => {
      const player = shell.querySelector(".integrated-player");
      window.__jpDesktopFullscreen.enter(player);
    };
    panel.querySelector(".jp-cache-save").onclick = saveEpisode;
    panel.querySelector(".jp-local-library").onclick = () => window.__jpLocal.openLibrary();
    panel.querySelector(".jp-cache-cancel").onclick = () => job?.abort();
    shell.appendChild(panel); render(); poll();
  }
  function boot() {
    install();
    let queued = false;
    new MutationObserver(() => {
      if (!queued) { queued = true; requestAnimationFrame(() => { queued = false; install(); }); }
    }).observe(document.getElementById("app"), {childList:true, subtree:true});
    setInterval(poll, 2000);
  }
  if (document.readyState === "loading") document.addEventListener("DOMContentLoaded", boot);
  else boot();
})();
