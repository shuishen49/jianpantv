/* Desktop local player. Dropped File objects use blob URLs without uploading
   or copying; native selections use opaque, read-only range streams. */
(() => {
  "use strict";
  let panel, video, stage, title, status, list, directory, empty, dropHint;
  let objectURL = "", currentKey = "", libraryRun = 0, selection = 0, syncRun = 0;
  let restoreInert = false, lastFocus;
  const extensions = /\.(mp4|m4v|mov|webm|mkv)$/i;
  const icon = `<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.7"
    stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
    <rect x="3" y="4" width="18" height="16" rx="3"/><path d="m10 8 6 4-6 4z"/></svg>`;
  async function request(path, method = "GET") {
    const response = await fetch(`/desktop/local/${path}`, {method, cache:"no-store"});
    if (!response.ok) throw Error("无法读取本地影片，请重新打开文件。");
    return response.json();
  }
  function message(text) { status.textContent = text; }
  function release() {
    video.pause();
    video.removeAttribute("src"); video.load();
    if (objectURL) URL.revokeObjectURL(objectURL);
    objectURL = ""; currentKey = "";
  }
  function show() {
    if (!panel.hidden) return;
    lastFocus = document.activeElement;
    document.querySelectorAll("video").forEach(v => { if (v !== video) v.pause(); });
    panel.hidden = false;
    if (window.__jpDesktopFullscreen.state().nativeFullscreen) window.__jpDesktopFullscreen.refresh(stage);
    const app = document.getElementById("app");
    if (app) { restoreInert = app.inert; app.inert = true; }
    panel.querySelector(".jp-local-open").focus();
  }
  function play(source, name, key) {
    show();
    if (currentKey === key && video.getAttribute("src")) return;
    release(); currentKey = key;
    title.textContent = name; empty.hidden = true;
    message("正在打开本地视频…");
    video.src = source;
    video.play().catch(error => {
      if (error.name === "NotAllowedError") message("视频已打开，点击播放按钮开始观看。");
    });
    list.querySelectorAll("button").forEach(b => b.classList.toggle("is-playing", b.dataset.id === key));
  }
  async function library() {
    const run = ++libraryRun;
    try {
      const data = await request("library");
      if (run !== libraryRun) return;
      directory.textContent = data.directory || "尚未设置保存目录";
      directory.title = data.directory || "";
      list.replaceChildren();
      const files = data.files.sort((a,b) => a.name.localeCompare(b.name, "zh-CN", {numeric:true}));
      for (const file of files) {
        const button = document.createElement("button");
        button.type = "button"; button.dataset.id = file.id;
        button.className = "jp-local-movie"; button.classList.toggle("is-playing", currentKey === file.id);
        const glyph = document.createElement("span");
        glyph.className = "jp-local-movie-icon"; glyph.innerHTML = icon;
        const label = document.createElement("span");
        label.className = "jp-local-movie-name"; label.textContent = file.name;
        const size = document.createElement("small");
        size.textContent = file.bytes >= 1024**3 ?
          `${(file.bytes/1024**3).toFixed(2)} GB` : `${(file.bytes/1024**2).toFixed(1)} MB`;
        button.title = file.name; button.append(glyph, label, size);
        button.onclick = async () => {
          const selected = ++selection;
          try {
            const data = await request(`select/${file.id}`, "POST");
            if (selected !== selection || panel.hidden) return;
            play(`/desktop/local/file/${data.id}`, data.name, data.id);
          } catch (error) { message(error.message); }
        };
        list.appendChild(button);
      }
      if (!files.length || data.truncated) {
        const hint = document.createElement("p");
        hint.textContent = data.truncated ? "仅显示前 512 个视频，其他影片可用“打开文件”播放。" :
          "保存目录中还没有视频。缓存完成的 MP4 会显示在这里，也可以直接拖入视频。";
        list.appendChild(hint);
      }
    } catch (error) { if (run === libraryRun) message(error.message); }
  }
  const api = window.__jpLocal = {
    get isOpen() { return !!panel && !panel.hidden; },
    async openLibrary() {
      show(); library();
      try { await request("show", "POST"); } catch (error) { message(error.message); }
    },
    async sync() {
      if (!panel) return;
      const run = ++syncRun;
      try {
        const data = await request("current");
        if (run !== syncRun || !data.visible) return;
        show(); library();
        if (data.id) play(`/desktop/local/file/${data.id}`, data.name, data.id);
      } catch (error) { if (panel) message(error.message); }
    },
    async close() {
      if (!api.isOpen) return;
      ++selection; ++syncRun;
      if (window.__jpDesktopFullscreen.state().nativeFullscreen) await window.__jpDesktopFullscreen.exit();
      release(); title.textContent = "打开视频，随时开看"; empty.hidden = false; panel.hidden = true;
      const app = document.getElementById("app");
      if (app) app.inert = restoreInert;
      if (lastFocus?.isConnected) lastFocus.focus();
      request("close", "POST").catch(() => {});
    },
    async playFile(file) {
      if (!file || !extensions.test(file.name)) {
        show(); message("请选择 MP4、M4V、MOV、WebM 或 MKV 视频文件。"); return false;
      }
      const selected = ++selection; ++syncRun;
      show(); message("正在打开拖入的视频…");
      try { await request("drop", "POST"); }
      catch (error) { message(error.message); return false; }
      if (selected !== selection || panel.hidden) return false;
      const url = URL.createObjectURL(file);
      play(url, file.name, `drop:${url}`); objectURL = url;
      library(); return true;
    },
    state() {
      return {open:api.isOpen, name:title?.textContent, source:video?.getAttribute("src"),
        movies:list?.querySelectorAll("button").length, status:status?.textContent};
    }
  };
  function boot() {
    panel = document.createElement("section");
    panel.className = "jp-local"; panel.hidden = true; panel.setAttribute("aria-label", "本地影片播放器");
    panel.innerHTML = `<aside class="jp-local-sidebar">
      <button class="jp-local-back" type="button">‹ 返回在线</button>
      <div class="jp-local-heading">${icon}<h2>本地影片</h2></div>
      <p class="jp-local-directory"></p>
      <div class="jp-local-library-actions"><button type="button" class="jp-local-refresh">刷新列表</button>
      <button type="button" class="jp-local-open">打开文件</button></div>
      <div class="jp-local-list" aria-label="已保存的影片"></div>
      <p class="jp-local-sidebar-note">直接播放保存目录里的视频<br>也可以把文件拖入窗口</p>
      </aside><main class="jp-local-main">
      <header><span class="jp-local-eyebrow">LOCAL PLAYER · 本地播放</span><h1>打开视频，随时开看</h1></header>
      <div class="jp-local-stage"><video controls playsinline preload="metadata" controlslist="nofullscreen noremoteplayback"></video>
      <div class="jp-local-empty">${icon}<h2>把电影拖到这里</h2><p>已缓存的 MP4，无需联网即可播放</p>
      <button type="button" class="jp-local-empty-open">打开视频文件 <span>Ctrl + O</span></button></div></div>
      <div class="jp-local-bottom"><p class="jp-local-status" role="status">从左侧选择影片，或拖入视频文件。</p>
      <button type="button" class="jp-local-fullscreen">全屏播放 <span>F11</span></button></div>
      <p class="jp-local-shortcuts">空格 播放 / 暂停<span>← / → 快退 / 快进 10 秒</span><span>双击画面 全屏</span></p>
      </main>`;
    document.body.appendChild(panel);
    video = panel.querySelector("video"); stage = panel.querySelector(".jp-local-stage");
    title = panel.querySelector("h1"); status = panel.querySelector(".jp-local-status");
    list = panel.querySelector(".jp-local-list"); directory = panel.querySelector(".jp-local-directory");
    empty = panel.querySelector(".jp-local-empty");
    const open = () => request("open", "POST").catch(error => message(error.message));
    panel.querySelector(".jp-local-open").onclick = open;
    panel.querySelector(".jp-local-empty-open").onclick = open;
    panel.querySelector(".jp-local-back").onclick = () => api.close();
    panel.querySelector(".jp-local-refresh").onclick = () => library();
    panel.querySelector(".jp-local-fullscreen").onclick = () => window.__jpDesktopFullscreen.toggle();
    stage.ondblclick = event => { if (event.target === video) window.__jpDesktopFullscreen.toggle(); };
    video.addEventListener("playing", () => message("正在本地播放 · 视频不会重复保存"));
    video.addEventListener("pause", () => {
      if (currentKey && !video.error && video.readyState >= 1) message(video.ended ? "播放结束" : "已暂停");
    });
    video.addEventListener("error", () => {
      if (!currentKey) return;
      const code = video.error?.code;
      message(code === 2 ? "视频文件读取失败，文件可能已移动或被删除，请重新打开。" :
        "无法播放这个视频，文件可能损坏或编码不受当前播放环境支持。建议使用 H.264 / AAC 编码的 MP4。");
    });
    document.addEventListener("play", event => {
      if (api.isOpen && event.target !== video && event.target.tagName === "VIDEO") event.target.pause();
    }, true);
    document.addEventListener("keydown", event => {
      if (!api.isOpen || event.altKey || event.ctrlKey || event.metaKey || event.shiftKey ||
        event.target.closest?.("input, textarea, select, [contenteditable=true]")) return;
      // Fullscreen arrows are owned by the shared handler; avoid a double seek.
      if ((event.key === "ArrowLeft" || event.key === "ArrowRight") &&
          !window.__jpDesktopFullscreen.state().nativeFullscreen && Number.isFinite(video.duration)) {
        video.currentTime = Math.max(0, Math.min(video.duration, video.currentTime+(event.key === "ArrowLeft" ? -10 : 10)));
        event.preventDefault(); event.stopImmediatePropagation();
      } else if (event.code === "Space" && event.target.tagName !== "BUTTON") {
        if (video.paused) video.play().catch(() => {}); else video.pause();
        event.preventDefault(); event.stopImmediatePropagation();
      }
    }, true);
    dropHint = document.createElement("div"); dropHint.className = "jp-local-drop"; dropHint.hidden = true;
    dropHint.innerHTML = `${icon}<strong>松开鼠标，播放视频</strong><span>直接读取文件 · 不复制、不上传</span>`;
    document.body.appendChild(dropHint);
    document.addEventListener("dragover", event => {
      if (!Array.from(event.dataTransfer?.types || []).includes("Files")) return;
      event.preventDefault(); event.dataTransfer.dropEffect = "copy"; dropHint.hidden = false;
    }, true);
    document.addEventListener("dragleave", event => { if (!event.relatedTarget) dropHint.hidden = true; }, true);
    document.addEventListener("drop", event => {
      dropHint.hidden = true;
      const files = Array.from(event.dataTransfer?.files || []);
      if (!files.length) return;
      event.preventDefault(); event.stopImmediatePropagation();
      api.playFile(files.find(file => extensions.test(file.name)) || files[0]);
    }, true);
    api.sync();
  }
  if (document.readyState === "loading") document.addEventListener("DOMContentLoaded", boot);
  else boot();
})();
