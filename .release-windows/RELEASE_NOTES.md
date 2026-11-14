## 荐片 Windows C 桌面版 0.2.1

**Windows 10/11 x64 非官方移植测试版。**

### 下载

下载附件 **`Jianpian-Windows-C-0.2.1.zip`**，完整解压后运行 `Jianpian.exe`，
保留同目录的 `WebView2Loader.dll`。便携 ZIP 约 **1.03 MiB**，
程序目录约 **1.19 MiB**。需要本机已安装 **Microsoft Edge WebView2 Runtime**；
系统运行环境、浏览器用户数据和视频缓存另占空间。

### 功能

- C17 / Win32 客户端，复用系统 WebView2，不需要模拟器。
- TV 风格播放布局：左侧小播放器，右侧详情和讨论独立滚动；点击全屏或按 F11 放大，Esc 退出。
- 启动显示“视频保存设置”，可填写 `D:\jianpandownload`；
  保存时自动创建不存在的文件夹和多级目录，并记住设置。
- 播放时保存 HLS 片段；“缓存整集”支持边下边播、停止和复用已完成片段。
- 普通 HLS 点播下载成功后生成 `.m3u8`，须连同 `media` 子目录保存，使用兼容播放器打开。

### 验证与限制

已验证首页、搜索、真实 1080p 播放、暂停、跳转、全屏、
900×640 布局、详情/讨论滚动、保存设置及自动创建目录、真实缓存与停止下载。
32 项地址边界、40 项缓存/路径、11 项本地播放清单、9 项下载控制器场景检查通过。

最终运行目录和最终便携 ZIP 经 Windows Defender 扫描未检出威胁；
微软加载器 DLL 签名有效，**EXE 尚无 Authenticode 签名**。
这是本次文件的扫描结果，不是绝对安全保证。

原版 P2P 内核未移植。整集保存不支持直播、独立音轨、字节范围 HLS、DRM；
直连 MP4 不走此流程。不合并 MP4、不提供本地影片库、关闭程序后不继续下载。
尚未验证完整长片的离线播放、账号登录及全部线路。

### 源码与附件

- `Jianpian-Windows-C-0.2.1.zip`：运行包。
- `Jianpian-Windows-C-0.2.1-source-and-checks.zip`：C/JS/CSS 源码、构建脚本和检查记录。
- `windows-0.2.1-release-report.md`：构建来源、体积、验证范围及已知限制。
- `SHA256SUMS.txt`：以上附件的 SHA-256。

源码标签包含 `windows-native/`、共用 CSS 和构建说明。
构建仍需指定 SHA-256 的原始 Android APK、Zig C 编译器和官方 WebView2 SDK；
这些输入不在源码包内。原应用及第三方组件的许可和权利仍适用。

运行包 SHA-256：

```text
263cc21ea10c5c7e37fe4dc35de8b8e6485a1c36100061bff239fe99292fb5b2  Jianpian-Windows-C-0.2.1.zip
```
