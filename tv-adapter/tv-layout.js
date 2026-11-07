/* TV layout and controls. Reuses the application's router, DOM events and player.
   No login, token, account storage, certificate or service endpoint changes. */
(function () {
  "use strict";
  if (window.__jpTvLayout) return;
  window.__jpTvLayout = true;
  var root = document.documentElement;
  var wiredRouter = null;
  var lastRoute = "";
  var memories = {};
  var refreshTimer = 0;
  var cinemaTimer = 0;
  var playback = { current: 0, duration: 0, playing: false, buffering: false, selection: "" };
  var pendingSeek = null;
  var pendingSeekAt = 0;
  var seekRepeats = 0;
  var seekDirection = "";
  var cinemaBackAt = 0;

  function router() {
    var app = document.getElementById("app");
    return app && app.__vue_app__ && app.__vue_app__.config.globalProperties.$router;
  }
  function navigate(name) {
    var r = router();
    if (r) r.push({ name: name }).catch(function () {});
  }
  function makeButton(label, className, action) {
    var b = document.createElement("button");
    b.type = "button";
    b.className = className || "";
    b.textContent = label;
    b.addEventListener("click", action);
    return b;
  }
  function setFocus(element) {
    if (element && window.jpTvFocus) window.jpTvFocus(element);
  }
  function wireNavigation() {
    var nav = document.querySelector(".nav");
    if (!nav || nav.querySelector(".jp-tv-brand")) return;
    var brand = document.createElement("div");
    brand.className = "jp-tv-brand";
    brand.appendChild(document.createTextNode("荐片"));
    var sub = document.createElement("small");
    sub.textContent = "JIANPIAN · TV";
    brand.appendChild(sub);
    nav.insertBefore(brand, nav.firstChild);
    var li = document.createElement("li");
    var search = makeButton("", "nav__item jp-tv-search-entry", function () { navigate("Search"); });
    var symbol = document.createElement("span");
    symbol.className = "jp-tv-nav-symbol";
    symbol.textContent = "⌕";
    symbol.setAttribute("aria-hidden", "true");
    var label = document.createElement("span");
    label.className = "nav__label";
    label.textContent = "搜索";
    search.appendChild(symbol);
    search.appendChild(label);
    li.appendChild(search);
    nav.querySelector(".nav__list").insertBefore(li, nav.querySelector(".nav__list").firstChild);
    var help = document.createElement("div");
    help.className = "jp-tv-nav-help";
    help.textContent = "方向键 选择\n确认键 打开\n返回键 返回";
    help.style.whiteSpace = "pre-line";
    nav.appendChild(help);
  }
  function setSearchValue(input, value) {
    var setter = Object.getOwnPropertyDescriptor(HTMLInputElement.prototype, "value").set;
    setter.call(input, value);
    input.dispatchEvent(new Event("input", { bubbles: true }));
  }
  function wireKeyboard() {
    var page = document.querySelector(".search");
    if (!page || page.querySelector(".jp-tv-keyboard")) return;
    var input = page.querySelector("input");
    if (!input) return;
    var keyboard = document.createElement("aside");
    keyboard.className = "jp-tv-keyboard";
    keyboard.setAttribute("aria-label", "遥控器键盘");
    var title = document.createElement("h2");
    title.textContent = "搜索影片";
    var note = document.createElement("p");
    note.textContent = "方向键选择 · 确认输入";
    keyboard.appendChild(title);
    keyboard.appendChild(note);
    var chinese = true, composing = "", candidatePage = 0, candidates = "";
    var modes = document.createElement("div");
    modes.className = "jp-tv-input-modes";
    var composition = document.createElement("div");
    composition.className = "jp-tv-composition";
    var candidateList = document.createElement("div");
    candidateList.className = "jp-tv-candidates";
    var paging = document.createElement("div");
    paging.className = "jp-tv-candidate-pages";
    function updateComposition() {
      composition.textContent = composing ? "拼音：" + composing : (chinese ? "输入拼音后选择汉字" : "字母直接输入");
      candidates = "";
      if (chinese && composing && window.jpTvPinyin) {
        candidates = window.jpTvPinyin[composing] || "";
        if (!candidates) {
          Object.keys(window.jpTvPinyin).forEach(function (syllable) {
            if (syllable.indexOf(composing) === 0) candidates += window.jpTvPinyin[syllable].slice(0, 3);
          });
        }
      }
      candidateList.textContent = "";
      candidates.slice(candidatePage * 6, candidatePage * 6 + 6).split("").forEach(function (character) {
        candidateList.appendChild(makeButton(character, "", function () {
          setSearchValue(input, input.value + character);
          composing = ""; candidatePage = 0; updateComposition();
          setFocus(keys.querySelector("button"));
        }));
      });
      pinyinMode.classList.toggle("is-active", chinese);
      latinMode.classList.toggle("is-active", !chinese);
      previous.disabled = candidatePage === 0;
      following.disabled = (candidatePage + 1) * 6 >= candidates.length;
    }
    var pinyinMode = makeButton("拼音", "", function () { chinese = true; composing = ""; candidatePage = 0; updateComposition(); });
    var latinMode = makeButton("字母 / 数字", "", function () {
      if (composing) setSearchValue(input, input.value + composing);
      chinese = false; composing = ""; candidatePage = 0; updateComposition();
    });
    modes.appendChild(pinyinMode); modes.appendChild(latinMode);
    var previous = makeButton("‹ 上页", "", function () { candidatePage--; updateComposition(); });
    var following = makeButton("下页 ›", "", function () { candidatePage++; updateComposition(); });
    paging.appendChild(previous); paging.appendChild(following);
    keyboard.appendChild(modes);
    keyboard.appendChild(composition);
    keyboard.appendChild(candidateList);
    keyboard.appendChild(paging);
    var keys = document.createElement("div");
    keys.className = "jp-tv-keys";
    "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890".split("").forEach(function (key) {
      var b = makeButton(key, "", function () {
        if (chinese && /^[A-Z]$/.test(key)) {
          composing += key.toLowerCase(); candidatePage = 0; updateComposition();
        } else {
          setSearchValue(input, input.value + key.toLowerCase());
        }
      });
      b.setAttribute("aria-label", "输入 " + key);
      keys.appendChild(b);
    });
    keyboard.appendChild(keys);
    var actions = document.createElement("div");
    actions.className = "jp-tv-key-actions";
    actions.appendChild(makeButton("⌫ 删除", "", function () {
      if (composing) { composing = composing.slice(0, -1); candidatePage = 0; updateComposition(); }
      else setSearchValue(input, input.value.slice(0, -1));
    }));
    actions.appendChild(makeButton("清空", "", function () {
      composing = ""; candidatePage = 0; updateComposition(); setSearchValue(input, "");
    }));
    actions.appendChild(makeButton("搜索", "jp-tv-submit", function () {
      if (composing) {
        setSearchValue(input, input.value + (candidates[0] || composing));
        composing = ""; candidatePage = 0; updateComposition();
      }
      page.querySelector(".search__go").click();
      window.setTimeout(function () {
        setFocus(page.querySelector(".results button,.rank button") || page.querySelector(".search__go"));
      }, 700);
    }));
    keyboard.appendChild(actions);
    page.appendChild(keyboard);
    input.setAttribute("inputmode", "none");
    updateComposition();
  }
  function togglePlayback() {
    var nativePlayer = document.querySelector(".integrated-player--native");
    if (nativePlayer && window.jpBridge && typeof window.jpBridge.postMessage === "function") {
      window.jpBridge.postMessage(JSON.stringify({
        id: "local-tv-button-" + Date.now(), protocol: "2.1", method: "player.overlay",
        params: { obscured: false, localTvToggle: true }
      }));
    } else {
      var video = document.querySelector(".detail video");
      if (video) {
        if (video.paused) video.play().catch(function () {});
        else video.pause();
      }
    }
  }
  function showCinemaControls() {
    root.classList.add("jp-tv-controls-visible");
    window.clearTimeout(cinemaTimer);
    cinemaTimer = window.setTimeout(function () {
      if (playback.playing && !playback.buffering && pendingSeek === null) {
        root.classList.remove("jp-tv-controls-visible");
      }
    }, 5000);
  }
  function clock(seconds) {
    seconds = Math.max(0, Math.floor(Number(seconds) || 0));
    var h = Math.floor(seconds / 3600), m = Math.floor(seconds / 60) % 60, s = seconds % 60;
    return (h ? h + ":" + (m < 10 ? "0" : "") : "") + m + ":" + (s < 10 ? "0" : "") + s;
  }
  function updateTimeline() {
    var bar = document.querySelector(".jp-tv-cinema-bar");
    if (!bar) return;
    var known = Number.isFinite(playback.duration) && playback.duration > 0;
    var current = pendingSeek !== null ? pendingSeek : playback.current;
    current = Math.max(0, Math.min(known ? playback.duration : current, current));
    var slider = bar.querySelector(".jp-tv-timeline");
    slider.disabled = !known;
    slider.max = known ? String(Math.floor(playback.duration)) : "1";
    slider.value = String(Math.floor(current));
    slider.setAttribute("aria-valuetext", clock(current) + " / " + (known ? clock(playback.duration) : "时长加载中"));
    slider.style.setProperty("--jp-tv-progress", (known ? current / playback.duration * 100 : 0) + "%");
    var time = clock(current) + " / " + (known ? clock(playback.duration) : "--:--");
    var label = bar.querySelector(".jp-tv-time");
    if (label.textContent !== time) label.textContent = time;
    var status = pendingSeek !== null ? "正在定位…" : playback.buffering ? "缓冲中…" :
      !known ? "正在获取播放进度…" : playback.playing ? "正在播放" : "已暂停";
    var statusLabel = bar.querySelector(".jp-tv-play-status");
    if (statusLabel.textContent !== status) statusLabel.textContent = status;
    var toggle = bar.querySelector(".jp-tv-cinema-toggle");
    var action = playback.playing ? "暂停" : "继续播放";
    if (toggle.textContent !== action) toggle.textContent = action;
  }
  function seekTo(seconds) {
    if (!(playback.duration > 0) || !Number.isFinite(seconds)) return;
    var target = Math.max(0, Math.min(playback.duration, seconds));
    var nativePlayer = document.querySelector(".integrated-player--native");
    if (nativePlayer && window.jpBridge && typeof window.jpBridge.postMessage === "function") {
      window.jpBridge.postMessage(JSON.stringify({
        id: "local-tv-seek-" + Date.now(), protocol: "2.1", method: "player.overlay",
        params: { obscured: false, localTvSeekMs: Math.round(target * 1000) }
      }));
    } else {
      var video = document.querySelector(".detail video");
      if (!video || !Number.isFinite(video.duration)) return;
      video.currentTime = target;
    }
    pendingSeek = target;
    pendingSeekAt = Date.now();
    updateTimeline();
    showCinemaControls();
  }
  function seekBy(seconds) {
    var start = pendingSeek !== null && Date.now() - pendingSeekAt < 4000 ? pendingSeek : playback.current;
    seekTo(start + seconds);
  }
  function notifyNativeCinema(enabled) {
    if (window.jpBridge && typeof window.jpBridge.postMessage === "function") {
      window.jpBridge.postMessage(JSON.stringify({
        id: "local-tv-cinema-" + Date.now(), protocol: "2.1", method: "player.overlay",
        params: { obscured: false, localTvCinema: enabled }
      }));
    }
  }
  function cinema(enabled) {
    root.classList.toggle("jp-tv-cinema", enabled);
    notifyNativeCinema(enabled);
    if (enabled) {
      showCinemaControls();
      updateTimeline();
      setFocus(document.querySelector(".jp-tv-timeline"));
    } else {
      root.classList.remove("jp-tv-controls-visible");
      setFocus(document.querySelector(".jp-tv-fullscreen"));
    }
    window.dispatchEvent(new Event("resize"));
  }
  function wirePlayer() {
    var detail = document.querySelector(".detail[data-v-777332d1]");
    if (!detail || !detail.querySelector(".detail__player-shell")) return;
    var sourceTitle = detail.querySelector(".detail__title-row h1");
    var playingTitle = detail.querySelector(".jp-tv-playing-title");
    if (sourceTitle) {
      if (!playingTitle) {
        playingTitle = document.createElement("h1");
        playingTitle.className = "jp-tv-playing-title";
        detail.appendChild(playingTitle);
      }
      if (playingTitle.textContent !== sourceTitle.textContent) playingTitle.textContent = sourceTitle.textContent;
    }
    if (detail.querySelector(".jp-tv-player-controls")) return;
    var panel = document.createElement("div");
    panel.className = "jp-tv-player-controls";
    var buttons = document.createElement("div");
    buttons.className = "jp-tv-player-buttons";
    buttons.appendChild(makeButton("⛶ 全屏播放", "jp-tv-fullscreen", function () { cinema(true); }));
    buttons.appendChild(makeButton("暂停 / 继续", "", togglePlayback));
    buttons.appendChild(makeButton("返回", "", function () { var r = router(); if (r) r.back(); }));
    panel.appendChild(buttons);
    var note = document.createElement("p");
    note.textContent = "右侧选择线路和集数 · 确认键打开 · 返回键返回列表";
    panel.appendChild(note);
    detail.appendChild(panel);
    var bar = document.createElement("div");
    bar.className = "jp-tv-cinema-bar";
    var timelineHeader = document.createElement("div");
    timelineHeader.className = "jp-tv-timeline-header";
    var status = document.createElement("span");
    status.className = "jp-tv-play-status";
    timelineHeader.appendChild(status);
    var time = document.createElement("span");
    time.className = "jp-tv-time";
    timelineHeader.appendChild(time);
    bar.appendChild(timelineHeader);
    var timeline = document.createElement("input");
    timeline.type = "range";
    timeline.className = "jp-tv-timeline";
    timeline.min = "0"; timeline.max = "1"; timeline.step = "1"; timeline.value = "0";
    timeline.setAttribute("aria-label", "播放进度，左右键快退快进");
    timeline.addEventListener("input", function () {
      pendingSeek = Number(timeline.value); pendingSeekAt = Date.now();
      updateTimeline(); showCinemaControls();
    });
    timeline.addEventListener("change", function () { seekTo(Number(timeline.value)); });
    bar.appendChild(timeline);
    var actions = document.createElement("div");
    actions.className = "jp-tv-timeline-actions";
    actions.appendChild(makeButton("快退 10 秒", "", function () { seekBy(-10); }));
    actions.appendChild(makeButton("暂停", "jp-tv-cinema-toggle", togglePlayback));
    actions.appendChild(makeButton("快进 10 秒", "", function () { seekBy(10); }));
    actions.appendChild(makeButton("退出全屏", "jp-tv-cinema-exit", function () { cinema(false); }));
    bar.appendChild(actions);
    var hint = document.createElement("p");
    hint.textContent = "← → 快退 / 快进 10 秒 · 长按连续定位 · 确认 暂停 / 继续 · 上下键 显示进度";
    bar.appendChild(hint);
    detail.appendChild(bar);
    updateTimeline();
  }
  function annotateHero() {
    document.querySelectorAll(".hero.jp-nested-swipe .hero__body").forEach(function (body) {
      if (body.querySelector(".jp-tv-hero-action")) return;
      var action = document.createElement("span");
      action.className = "jp-tv-hero-action";
      action.textContent = "▶  确认观看";
      action.setAttribute("aria-hidden", "true");
      body.appendChild(action);
    });
  }
  function routeFocus() {
    var remembered = memories[lastRoute];
    if (remembered && remembered.isConnected && remembered.getBoundingClientRect().width) {
      setFocus(remembered);
      return;
    }
    var initial = document.querySelector(
      ".jp-tv-fullscreen,.jp-tv-keys button,.header__tab.is-visual-active,.nav__item.is-active,.jp-toolbar__back"
    );
    if (initial) setFocus(initial);
  }
  function refresh() {
    refreshTimer = 0;
    var r = router();
    if (r && wiredRouter !== r) {
      wiredRouter = r;
      r.afterEach(function (to) {
        lastRoute = to.fullPath;
        if (root.classList.contains("jp-tv-cinema")) notifyNativeCinema(false);
        root.classList.remove("jp-tv-cinema", "jp-tv-controls-visible");
        pendingSeek = null;
        playback = { current: 0, duration: 0, playing: false, buffering: false, selection: "" };
        window.setTimeout(function () { refresh(); routeFocus(); }, 300);
      });
      lastRoute = r.currentRoute.value.fullPath;
      window.setTimeout(routeFocus, 900);
    }
    wireNavigation();
    wireKeyboard();
    wirePlayer();
    annotateHero();
    if (document.activeElement === document.body) routeFocus();
  }
  document.addEventListener("focusin", function (event) {
    if (lastRoute && event.target !== document.body) memories[lastRoute] = event.target;
  }, true);
  window.addEventListener("keydown", function (event) {
    if (!root.classList.contains("jp-tv-cinema")) return;
    showCinemaControls();
    if (event.key === "ArrowLeft" || event.key === "ArrowRight") {
      event.preventDefault();
      event.stopImmediatePropagation();
      if (seekDirection !== event.key || !event.repeat) seekRepeats = 0;
      seekDirection = event.key;
      seekRepeats++;
      seekBy((event.key === "ArrowRight" ? 1 : -1) * (seekRepeats > 8 ? 30 : 10));
      return;
    }
    if (event.key === "ArrowUp" || event.key === "ArrowDown") {
      event.preventDefault();
      event.stopImmediatePropagation();
      setFocus(document.querySelector(".jp-tv-timeline"));
      return;
    }
    if (event.key === "Enter") {
      event.preventDefault();
      event.stopImmediatePropagation();
      togglePlayback();
      return;
    }
    if (event.key === "Escape" || event.key === "BrowserBack") {
      event.preventDefault();
      event.stopImmediatePropagation();
      cinemaBackAt = Date.now();
      cinema(false);
    }
  }, true);
  window.addEventListener("keyup", function (event) {
    if (event.key === "ArrowLeft" || event.key === "ArrowRight") {
      seekRepeats = 0; seekDirection = "";
    }
  }, true);
  window.addEventListener("onBackPressed", function (event) {
    if (!root.classList.contains("jp-tv-cinema") && Date.now() - cinemaBackAt > 700) return;
    event.stopImmediatePropagation();
    if (root.classList.contains("jp-tv-cinema")) cinema(false);
    cinemaBackAt = Date.now();
  }, true);
  window.addEventListener("localTvExitCinema", function (event) {
    event.stopImmediatePropagation();
    cinemaBackAt = Date.now();
    if (root.classList.contains("jp-tv-cinema")) cinema(false);
  }, true);
  window.addEventListener("playVideoStateChange", function (event) {
    var state = event.detail;
    if (!state || !Number.isFinite(Number(state.current))) return;
    var wasPlaying = playback.playing;
    var wasBuffering = playback.buffering;
    var wasSeeking = pendingSeek !== null;
    var selection = String(state.selectionId || state.episodeKey || "");
    if (selection !== playback.selection) pendingSeek = null;
    playback = {
      current: Math.max(0, Number(state.current) || 0),
      duration: Math.max(0, Number(state.duration) || 0),
      playing: !!state.playing, buffering: !!state.buffering, selection: selection
    };
    if (pendingSeek !== null &&
      (Math.abs(playback.current - pendingSeek) < 3 || Date.now() - pendingSeekAt > 5000)) pendingSeek = null;
    updateTimeline();
    if (root.classList.contains("jp-tv-cinema") &&
      (!playback.playing || playback.buffering || !wasPlaying || wasBuffering ||
        (wasSeeking && pendingSeek === null))) {
      showCinemaControls();
    }
  });
  new MutationObserver(function () {
    if (!refreshTimer) refreshTimer = window.setTimeout(refresh, 80);
  }).observe(document.getElementById("app") || document.body, { childList: true, subtree: true });
  refresh();
})();
