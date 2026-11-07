/* Local TV navigation adapter. No network, storage, credentials or login hooks. */
(function () {
  "use strict";
  if (window.__jpLocalTvNavigation) return;
  window.__jpLocalTvNavigation = true;
  document.documentElement.classList.add("jp-local-tv");

  var selector = "button,a[href],input,textarea,select,[tabindex],[role='button'],[role='tab'],[role='link']";
  var lastFocus = null;

  function rect(element) { return element.getBoundingClientRect(); }
  function visible(element) {
    var box = rect(element);
    var style = window.getComputedStyle(element);
    var slide = element.closest(".home__slide");
    if (slide) {
      var slideBox = rect(slide);
      if (slideBox.right < window.innerWidth * .3 || slideBox.left > window.innerWidth * .9) return false;
    }
    if (document.documentElement.classList.contains("jp-tv-cinema") &&
      !element.closest(".jp-tv-cinema-bar")) return false;
    return box.width > 2 && box.height > 2 &&
      style.display !== "none" && style.visibility !== "hidden" &&
      !element.disabled && element.getAttribute("aria-disabled") !== "true" &&
      element.getAttribute("tabindex") !== "-1" &&
      !element.closest("[aria-hidden='true'],[inert]");
  }
  function scope() {
    var dialogs = document.querySelectorAll("[role='dialog'],.sheet__panel");
    for (var i = dialogs.length - 1; i >= 0; i--) {
      if (rect(dialogs[i]).width > 2 && rect(dialogs[i]).height > 2) return dialogs[i];
    }
    return document;
  }
  function candidates() {
    return Array.prototype.filter.call(scope().querySelectorAll(selector), visible);
  }
  function focus(element) {
    if (!element) return;
    element.focus({ preventScroll: true });
    if (document.activeElement !== element) {
      element.setAttribute("tabindex", "0");
      element.focus();
    }
    element.scrollIntoView({ block: "nearest", inline: "nearest", behavior: "auto" });
  }
  window.jpTvFocus = focus;
  function intervalGap(a1, a2, b1, b2) {
    return Math.max(0, a1 - b2, b1 - a2);
  }
  function next(current, key, elements) {
    var a = rect(current);
    var ax = (a.left + a.right) / 2, ay = (a.top + a.bottom) / 2;
    var winner = null, best = Infinity;
    elements.forEach(function (element) {
      if (element === current || element.contains(current) || current.contains(element)) return;
      var b = rect(element);
      var bx = (b.left + b.right) / 2, by = (b.top + b.bottom) / 2;
      var primary, secondary, center;
      if (key === "ArrowDown" || key === "ArrowUp") {
        if (key === "ArrowDown" ? by <= ay + 4 : by >= ay - 4) return;
        primary = key === "ArrowDown" ? Math.max(0, b.top - a.bottom) : Math.max(0, a.top - b.bottom);
        secondary = intervalGap(a.left, a.right, b.left, b.right);
        center = Math.abs(bx - ax);
      } else {
        if (key === "ArrowRight" ? bx <= ax + 4 : bx >= ax - 4) return;
        primary = key === "ArrowRight" ? Math.max(0, b.left - a.right) : Math.max(0, a.left - b.right);
        secondary = intervalGap(a.top, a.bottom, b.top, b.bottom);
        center = Math.abs(by - ay);
      }
      var score = primary + secondary * 6 + center * 0.04;
      if (score < best) { best = score; winner = element; }
    });
    return winner;
  }
  document.addEventListener("focusin", function (event) {
    if (lastFocus) lastFocus.classList.remove("jp-local-tv-focus");
    lastFocus = event.target;
    if (lastFocus.classList) lastFocus.classList.add("jp-local-tv-focus");
  }, true);
  document.addEventListener("focusout", function (event) {
    if (event.target.classList) event.target.classList.remove("jp-local-tv-focus");
  }, true);
  document.addEventListener("keydown", function (event) {
    var key = event.key;
    var active = document.activeElement;
    if (!active) return;
    var editing = /^(INPUT|TEXTAREA|SELECT)$/.test(active.tagName) || active.isContentEditable;
    if (active.matches("[role='slider'],input[type='range']")) return;
    // Keep native playback shortcuts and text-caret movement available.
    if (active.closest(".artplayer-app") || document.fullscreenElement) return;
    if (editing && (key === "ArrowLeft" || key === "ArrowRight" ||
      active.tagName === "TEXTAREA" || active.tagName === "SELECT" || active.isContentEditable)) return;
    if (key === "Enter" && !editing && !active.matches(selector)) {
      var nativePlayer = document.querySelector(".integrated-player--native");
      if (nativePlayer && rect(nativePlayer).width > 2 && window.jpBridge &&
        typeof window.jpBridge.postMessage === "function") {
        event.preventDefault();
        event.stopImmediatePropagation();
        window.jpBridge.postMessage(JSON.stringify({
          id: "local-tv-toggle-" + Date.now(),
          protocol: "2.1",
          method: "player.overlay",
          params: { obscured: false, localTvToggle: true }
        }));
        return;
      }
    }
    if (key === "Enter" && !editing &&
      !/^(BUTTON|A)$/.test(active.tagName) && active.matches(selector)) {
      event.preventDefault();
      event.stopImmediatePropagation();
      active.click();
      return;
    }
    if (!/^Arrow(Left|Right|Up|Down)$/.test(key)) return;
    var elements = candidates();
    if (!elements.length) return;
    var target;
    var nav = active.closest(".nav");
    var home = active.closest(".home");
    if (nav) {
      var navButtons = Array.prototype.filter.call(nav.querySelectorAll("button"), visible);
      var navIndex = navButtons.indexOf(active);
      if (key === "ArrowDown") target = navButtons[navIndex + 1];
      if (key === "ArrowUp") target = navButtons[navIndex - 1];
      if (key === "ArrowRight") {
        target = document.querySelector(".header__tab.is-visual-active,.profile__identity,.discover button");
      }
    } else if (home) {
      var tabs = Array.prototype.slice.call(home.querySelectorAll(".header__tab"));
      if (key === "ArrowLeft" &&
        (active.matches(".header__search") || active === tabs[0])) {
        target = document.querySelector(".nav__item.is-active");
      } else if (key === "ArrowDown" && active.matches(".header__tab")) {
        var slide = Array.prototype.filter.call(home.querySelectorAll(".home__slide"), function (element) {
          var box = rect(element); return box.left < window.innerWidth * .5 && box.right > window.innerWidth * .5;
        })[0];
        if (slide) target = slide.querySelector(".hero,.quick button,.card");
      } else if (key === "ArrowUp" && active.matches(".hero")) {
        target = home.querySelector(".header__tab.is-visual-active");
      }
    }
    if (!target && elements.indexOf(active) === -1) {
      target = elements.filter(function (element) {
        var b = rect(element);
        return b.bottom > 0 && b.top < window.innerHeight &&
          b.right > 0 && b.left < window.innerWidth;
      })[0] || elements[0];
    } else if (!target) {
      target = next(active, key, elements);
    }
    if (target) {
      event.preventDefault();
      event.stopImmediatePropagation();
      focus(target);
    }
  }, true);
})();
