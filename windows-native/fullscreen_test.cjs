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
const video = {};
const player = {
  isConnected:true, classList:classes(), video, children:[],
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
  createElement() {return {remove(){},className:""};},
  addEventListener(name, fn) {callbacks["document:"+name]=fn;},
  dispatchEvent(event) {events.push(event.type);}
};
context = {
  document, CustomEvent:class {constructor(type){this.type=type;}},
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
  failed = true;
  assert.equal(await context.k0(player), "denied");
  assert(!api.state().playerFullscreen);
  failed = false; current = null;
  assert.equal(await api.enter(), "unsupported");
  assert(requests.every(url => url === "/desktop/fullscreen/enter" || url === "/desktop/fullscreen/exit"));
  console.log(JSON.stringify({passed:8,adapted_mobile_helpers:true,no_orientation_api:true,
    native_and_player_share_state:true,exit_button:true,escape:true,route_exit:true,
    failed_enter_restores_layout:true,video_node_retained:true}));
})().catch(error => {console.error(error);process.exitCode=1;});
