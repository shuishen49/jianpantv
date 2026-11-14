# Windows C 桌面版 0.2.1 发布与检查记录

本次发布日期：2026-11-14（Asia/Shanghai）。非官方移植测试版，目标为 Windows 10/11 x64。

## 下载与使用

下载 `Jianpian-Windows-C-0.2.1.zip`，完整解压，双击 `Jianpian.exe`。
保留同目录的 `WebView2Loader.dll`。需要本机已安装 Microsoft Edge WebView2 Runtime；
程序不自动安装运行环境。源码与检查记录在 `Jianpian-Windows-C-0.2.1-source-and-checks.zip`。

## 本版行为

- C17 / Win32 宿主，复用系统 WebView2，不需要模拟器。
- 播放页左侧小播放器，右侧详情和讨论分别滚动；支持全屏按钮、F11 和 Esc。
- 每次启动显示“视频保存设置”，可直接输入 `D:\jianpandownload`。
  保存时自动创建不存在的目录，包括多级目录；记住设置，可从工具栏再次修改。
- 播放时持久缓存完整 HLS 片段；“缓存整集”允许边下边播和中途停止。
  普通 HLS 点播全部下载成功后生成本地 `.m3u8`；须连同 `media` 子目录保留，
  使用兼容 HLS 的播放器打开，不合并为 MP4。

## 文件与体积

| 文件 | 字节数 | SHA-256 |
| --- | ---: | --- |
| `Jianpian.exe` | 1,048,064 | `1c4b13c01be99586efff88cac9fc8270e41db17a93104d026ce7f13dba5160c0` |
| `WebView2Loader.dll` | 194,912 | `d3fce90bdeecb08596e377dea6a316354dd8949e32ff09b89d51be00c14e21b6` |
| `Jianpian-Windows-C-0.2.1.zip` | 1,079,553 | `263cc21ea10c5c7e37fe4dc35de8b8e6485a1c36100061bff239fe99292fb5b2` |
| `Jianpian-Windows-C-0.2.1-source-and-checks.zip` | 55,460 | `7c1e62466142516fc8fdb11b6c6c68942b3bae062406611620a22e939c9975fc` |

运行目录全部文件共 1,248,272 字节，约 1.19 MiB；便携 ZIP 约 1.03 MiB。
系统 WebView2 运行环境、浏览器用户数据和视频缓存另计。
本次测量浏览器用户数据为 65,447,852 字节，约 62.42 MiB，后续会随使用变化。

## 本次实际验证

证据目录：`testing/windows-native-0.2.1/`。

- PE x64，无 .NET CLR 依赖；ASLR、NX 和高熵 ASLR 检查通过。
- 32 项媒体地址边界检查；微软加载器完整文件接受、缺失或改动文件拒绝。
- 40 项原生缓存和路径检查；11 项生产 C 播放清单发布检查；
  9 项实际 JavaScript 下载控制器场景检查全部通过。
- 首页、搜索“三体”（8 个结果）、1920×1080 视频解码、连续播放、
  暂停、跳转、原生全屏与还原、返回首页通过。
- 900×640 窗口、小播放器默认布局、详情滚动和讨论输入栏边界通过。
- 实际下载与播放同时进行、停止下载、缓存命中通过；
  核对了 32 个实际缓存条目的长度和内容摘要。
- 实际操作设置弹窗：输入此前不存在的目录、保存后新建目录、
  再次打开带出相同路径、无效相对路径提示、取消保留原设置通过。
- 最终运行目录和最终便携 ZIP 的 Windows Defender 扫描退出码均为 0，未检出威胁。
  `WebView2Loader.dll` 的 Microsoft Corporation 数字签名验证有效。
  `Jianpian.exe` 尚未签署 Authenticode。扫描结果不构成绝对安全保证。

## 适用范围和未验证项目

原版 P2P 下载内核未移植。直播、独立音轨、字节范围 HLS、DRM 不支持整集保存；
直连 MP4 不走此 HLS 保存流程。没有本地影片库、合并 MP4 或退出后后台下载。
签名 URL 变化时会按新地址重新缓存。
完整下载成功、AES-128 密钥、初始化片段、失败与中断使用短样本验证；
尚未验证完整长片的离线播放、账号登录及全部线路。
内容和线路依赖原服务。

## 源码和构建来源

发布标签 `v0.2.1-windows` 对应本次提交的 C 宿主、JavaScript 桌面适配、共用 CSS、
构建脚本和检查记录。源码附件中的 `windows-native/` 与 `windows-desktop/desktop.css`
逐字节匹配该标签内的文件。

源码附件和 GitHub 自动源码包均不包含原始 APK、原厂完整前端工程、编译器或 SDK。
页面从指定 APK 的内置 `assets/web-bundle.zip` 提取，无法仅凭源码附件脱离这些输入完成构建。
不承诺不同机器编译得到逐字节相同的 EXE。
准备依赖和构建步骤见 `docs/windows-native-build.md`。
微软 DLL 的许可随运行包分发；原应用与第三方组件的许可和权利仍适用。
本仓库对这些组件不声明新的授权。
