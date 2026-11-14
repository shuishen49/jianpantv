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
  async function saveEpisode() {
    if (job || !playlistURL || !status?.directory) return;
    const hls = activeHls, url = playlistURL, directory = status.directory, video = currentVideo;
    const title = document.querySelector(".detail__title-row h1")?.textContent || "当前影片";
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
      const id = await digest(url + "\n");
      await checkedFetch(`/desktop/playlist/${id}.m3u8`, {
        method: "POST", body: lines.join("\n") + "\n", signal: task.signal
      });
      message = `整集已保存：${title} · ${id.slice(0, 12)}….m3u8（在视频目录中，可用支持 HLS 的播放器打开）`;
      jobs.set(video, message);
    } catch (error) {
      message = error.name === "AbortError" ?
        "整集下载已停止；完整片段已保留，重试时会复用缓存" : error.message;
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
      <button type="button" class="jp-cache-save">缓存整集</button>
      <button type="button" class="jp-cache-cancel" hidden>停止下载</button></div>
      <p class="jp-cache-path"></p><p class="jp-cache-progress" role="status"></p>
      <p class="jp-cache-help">详情和讨论可在右侧滚动查看。全屏快捷键 F11，退出按 Esc。视频缓存会另占磁盘空间。</p>`;
    panel.querySelector(".jp-player-expand").onclick = () => {
      const player = shell.querySelector(".integrated-player");
      player?.requestFullscreen().catch(() => { message = "请点击窗口上方的“全屏”或按 F11"; render(); });
    };
    panel.querySelector(".jp-cache-save").onclick = saveEpisode;
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
