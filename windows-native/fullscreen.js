/* One desktop fullscreen state for the player, the native toolbar and F11. */
(() => {
  "use strict";
  let nativeFullscreen = false, player = null, exitButton = null;
  const selectPlayer = () => document.querySelector(".integrated-player, .feed__stage");
  function apply(enabled, target = player || selectPlayer()) {
    const previous = player;
    nativeFullscreen = !!enabled;
    if (previous && (previous !== target || !enabled)) {
      previous.classList.remove("jp-css-fullscreen", "jp-desktop-fullscreen");
    }
    player = enabled && target?.isConnected ? target : null;
    const changed = player !== previous;
    if (!player) { exitButton?.remove(); exitButton = null; }
    document.documentElement.classList.toggle("jp-css-fullscreen", !!player);
    document.documentElement.classList.toggle("jp-media-fullscreen", !!player);
    if (player) {
      player.classList.add("jp-css-fullscreen", "jp-desktop-fullscreen");
      if (!exitButton || changed) {
        exitButton?.remove();
        exitButton = document.createElement("button");
        exitButton.type = "button";
        exitButton.className = "jp-desktop-exit-fullscreen";
        exitButton.textContent = "退出全屏 (Esc)";
        exitButton.onclick = () => api.exit();
        player.appendChild(exitButton);
      }
      if (changed) document.dispatchEvent(new CustomEvent("jp-landscape-web"));
    } else if (previous) {
      document.dispatchEvent(new CustomEvent("jp-landscape-closed"));
    }
  }
  async function request(enabled) {
    const response = await fetch(`/desktop/fullscreen/${enabled ? "enter" : "exit"}`, {
      method: "POST", cache: "no-store"
    });
    if (!response.ok) throw Error("无法切换全屏，请按 Esc 后重试");
    return response.json();
  }
  const api = window.__jpDesktopFullscreen = {
    setNative(enabled) { apply(enabled); },
    refresh(target) { if (nativeFullscreen) apply(true, target); },
    async enter(target = selectPlayer()) {
      if (!target) return "unsupported";
      apply(true, target);
      try { await request(true); return "web"; }
      catch (error) { apply(false); return "denied"; }
    },
    async exit(target) {
      if (target && player && target !== player && !target.contains(player)) return;
      try {
        if (document.fullscreenElement) await document.exitFullscreen();
        await request(false);
        apply(false);
      } catch (error) {
        // Keep Esc and the native fullscreen state available if a request fails.
        return "denied";
      }
    },
    toggle() { return nativeFullscreen ? api.exit() : api.enter(); },
    state() {
      const bounds = player?.getBoundingClientRect();
      return {nativeFullscreen, playerFullscreen: !!player,
        width: window.innerWidth, height: window.innerHeight,
        unobstructed: !!player && [0.1, 0.5, 0.9].every(x =>
          [0.1, 0.5, 0.9].every(y => player.contains(document.elementFromPoint(
            window.innerWidth * x, window.innerHeight * y)))),
        player: bounds ? {x: bounds.x, y: bounds.y, width: bounds.width, height: bounds.height} : null};
    }
  };
  window.addEventListener("hashchange", () => { if (nativeFullscreen) api.exit(); });
  document.addEventListener("keydown", event => {
    if (event.key === "Escape" && nativeFullscreen) { event.preventDefault(); api.exit(); }
  });
})();
