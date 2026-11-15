// Regression: run the desktop controller and the adapted APK enter/resize/exit helpers.
const {readFileSync} = require("node:fs");
const vm = require("node:vm");
const assert = require("node:assert/strict");
const helpers = JSON.parse(readFileSync(0, "utf8"));
const classes = () => {
  const values = new Set();
  return {add(...items) {items.forEach(v => values.add(v));},
    remove(...items) {items.forEach(v => values.delete(v));},
    contains(v) {return values.has(v);},
    toggle(v, enabled) {enabled ? values.add(v) : values.delete(v);}};
};
const callbacks = {}, events = [], requests = [];
let failed = false, current, context;
const root = {classList:classes()};
const video = {currentTime:60, duration:120, readyState:4, paused:true};
const player = {
  isConnected:true, classList:classes(), video, children:[],
  querySelector(s) {return s === "video" ? video : null;},
  appendChild(e) {this.children.push(e);},
  contains(e) {return e === this || e === video;},
  getBoundingClientRect() {
    return this.classList.contains("jp-desktop-fullscreen")
      ? {x:0,y:0,width:context.window.innerWidth,height:context.window.innerHeight}
      : {x:20,y:20,width:600,height:338};
  }
};
current = player;
const document = {
  documentElement:root, fullscreenElement:null,
  querySelector() {return current;},
  elementFromPoint() {return player;},
  createElement() {return {remove(){},setAttribute(){},className:""};},
  addEventListener(name, fn, capture) {callbacks["document:"+name]=fn; callbacks["capture:"+name]=capture;},
  dispatchEvent(event) {events.push(event.type);}
};
context = {
  document, CustomEvent:class {constructor(type){this.type=type;}},
  setTimeout() {return 1;}, clearTimeout() {},
  window:{innerWidth:1360,innerHeight:766,
    addEventListener(name, fn) {callbacks[name]=fn;}},
  screen:{get orientation() {throw Error("Desktop must not request phone orientation");}},
  fetch:async (url, options) => {
    assert.equal(options.method, "POST");
    requests.push(url);
    if (failed) return {ok:false};
    const enabled = url.endsWith("/enter");
    context.window.innerWidth = enabled ? 1920 : 1360;
    context.window.innerHeight = enabled ? 1080 : 766;
    context.window.__jpDesktopFullscreen.setNative(enabled);
    return {ok:true,json:async () => ({fullscreen:enabled})};
  }
};
vm.createContext(context);
vm.runInContext(readFileSync(__dirname+"/fullscreen.js", "utf8"), context);
vm.runInContext("var QZ=null;"+helpers.enter+helpers.resize+helpers.exit, context);
(async () => {
  const api = context.window.__jpDesktopFullscreen;
  assert.equal(await context.k0(player), "web");
  assert(api.state().playerFullscreen && root.classList.contains("jp-media-fullscreen"));
  assert.equal(api.state().player.width, 1920);
  assert.equal(api.state().player.height, 1080);
  assert(api.state().unobstructed);
  assert.equal(player.video, video);
  assert(events.includes("jp-landscape-web"));
  context.p0(player);
  assert(!player.classList.contains("jp-pseudo-landscape"));
  await context._0(player);
  assert(!api.state().playerFullscreen && !api.state().nativeFullscreen);
  assert(events.includes("jp-landscape-closed"));
  api.setNative(true); // Native toolbar/F11 enter the same player.
  assert(api.state().playerFullscreen);
  api.setNative(false);
  assert(!player.classList.contains("jp-desktop-fullscreen"));
  await api.enter(player);
  await player.children.at(-1).onclick();
  assert(!api.state().nativeFullscreen); // Visible exit button.
  await api.enter(player);
  callbacks["document:keydown"]({key:"Escape",preventDefault(){}});
  await new Promise(resolve => setImmediate(resolve));
  assert(!api.state().nativeFullscreen);
  await api.enter(player);
  callbacks.hashchange();
  await new Promise(resolve => setImmediate(resolve));
  assert(!api.state().nativeFullscreen);
  assert(!api.seek(10)); // Windowed playback keeps its own keyboard handling.
  await api.enter(player);
  let prevented = 0, stopped = 0;
  const press = (key, extra={}) => callbacks["document:keydown"]({
    key, preventDefault(){prevented++;},stopImmediatePropagation(){stopped++;},...extra});
  press("ArrowLeft");
  assert.equal(video.currentTime, 50);
  assert(video.paused && prevented === 1 && stopped === 1 && callbacks["capture:keydown"]);
  press("ArrowRight");
  assert.equal(video.currentTime, 60);
  press("ArrowRight", {repeat:true});
  assert.equal(video.currentTime, 70);
  video.currentTime = 4; press("ArrowLeft"); assert.equal(video.currentTime, 0);
  video.currentTime = 117; press("ArrowRight"); assert.equal(video.currentTime, 120);
  press("ArrowLeft", {target:{closest(){return {};}}}); assert.equal(video.currentTime, 120);
  press("ArrowLeft", {ctrlKey:true}); assert.equal(video.currentTime, 120);
  video.seekable = {length:1,start(){return 20;},end(){return 110;}};
  video.currentTime = 25; press("ArrowLeft"); assert.equal(video.currentTime, 20);
  video.currentTime = 105; press("ArrowRight"); assert.equal(video.currentTime, 110);
  video.duration = Infinity; assert(!api.seek(10));
  video.duration = 120; video.paused = false; press("ArrowLeft"); assert(!video.paused);
  await api.exit();
  failed = true;
  assert.equal(await context.k0(player), "denied");
  assert(!api.state().playerFullscreen);
  failed = false; current = null;
  assert.equal(await api.enter(), "unsupported");
  assert(requests.every(url => url === "/desktop/fullscreen/enter" || url === "/desktop/fullscreen/exit"));
  console.log(JSON.stringify({passed:18,adapted_mobile_helpers:true,no_orientation_api:true,
    native_and_player_share_state:true,exit_button:true,escape:true,route_exit:true,
    failed_enter_restores_layout:true,video_node_retained:true,
    fullscreen_arrows_seconds:10,paused_state_preserved:true,playing_state_preserved:true,
    seek_bounds:true,editable_and_modifiers_ignored:true,capture_prevents_double_seek:true}));
})().catch(error => {console.error(error);process.exitCode=1;});
