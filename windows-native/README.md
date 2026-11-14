荐片 Windows C 桌面版 0.2.1

这是从安卓版 5.0.78 内置页面移植的非官方 Windows 客户端，宿主使用 C17、Win32 和微软 WebView2。没有采用旧 Windows 客户端，也没有打包 Android 运行环境。

发布目录包含 `Jianpian.exe` 和微软签名的 `WebView2Loader.dll`。两者都要保留，完整解压后运行 EXE。目标系统为 Windows 10/11 x64，并要求已有 Microsoft Edge WebView2 Runtime。程序不会自动安装运行环境。

播放页改为 TV 风格：左侧小播放器和缓存控制，右侧详情/讨论各自滚动。原有手机端固定在整个窗口底部的讨论输入栏已限制在讨论区。打开影片保持窗口模式；点击“全屏播放”或按 F11 放大，Esc 退出。900×640 的窗口也能查看完整讨论和选集。

启动会弹出程序自己的“视频保存设置”，可以直接输入 `D:\jianpandownload` 等绝对路径。保存时递归创建不存在的目录，检查可写后原子保存设置；无效路径或创建失败时在弹窗内显示错误，不替换已有设置。工具栏“保存位置”可再次打开设置。播放列表直接保存在所填目录中，片段保存在其 `media` 子目录，不再额外套一层 `JianpianCache`。取消时沿用上次有效目录，首次取消则只在线播放。设置文件是 `%LOCALAPPDATA%\JianpianDesktop\video-directory-v2.txt`。升级会识别旧版 `video-directory.txt`，默认沿用其已有 `JianpianCache` 目录，不搬动旧文件。诊断烟测选择独立测试目录，不修改用户设置。

播放期间的 HTTPS HLS 片段经过原生代理并持久保存，相同 URL 和 Range 的请求复用本地片段。缓存键由完整 URL 和 Range 的 SHA-256 构成，不把服务响应当作文件路径。`.ts` 保存原始媒体字节，`.info` 保存响应元数据和内容校验值；不转码。写入临时文件、刷盘后原子发布；长度、校验或元数据不完整时回源。API 响应、错误页面和播放清单不持久缓存，避免过期服务数据和媒体链接。

“缓存整集”遍历当前普通 HLS 点播播放清单，依次获取媒体、初始化片段和 AES-128 密钥，同时允许继续播放。全部片段成功保存后才发布本地 `.m3u8`，所有资源引用改为相对路径。保留播放列表和 `media` 子目录，可交给兼容 HLS 的播放器打开。中断或失败不发布完整播放列表；已完成片段保留，重新发起时可复用。更改存储目录会停止当前整集任务。没有合并 MP4、后台常驻下载、自动删除缓存或本地影片库。

直播、独立音轨、字节范围 HLS、DRM 和原版 P2P 下载内核不在整集保存支持范围。运行时会明确提示。普通播放仍按现有线路处理。重试时如果上游更换签名 URL，缓存按新地址重新下载；不推测不同地址是同一媒体。直连 MP4 不走这一 HLS 保存流程。

实测范围见 `testing/windows-native-0.2.1/verification.json`：首页、搜索、1080p 解码、连续播放、暂停、跳转、原生全屏、紧凑窗口、详情滚动、讨论输入栏边界、真实下载与播放同时进行、停止下载及缓存命中。目录创建、非法路径和文件冲突由原生缓存测试覆盖；设置弹窗的输入、保存、新建目录、再次打开和取消修改由实际 UI 验证，记录在 `storage-settings.json`。完整短样本下载、AES-128 密钥和初始化片段改写、失败和中断、目录变更和不支持格式使用实际 JavaScript 控制器的确定性网络样本测试；本地播放清单发布直接测试生产 C 函数。未为测试下载完整长片，也未验证全部长片的离线播放、账号登录和所有线路。

程序目录的体积和运行后的用户数据体积是两项不同数据。程序复用本机 WebView2，用户数据位于 `%LOCALAPPDATA%\JianpianDesktop\NativeWebView2`。本次多轮测试后该目录约 50 MiB，包含浏览器的安全组件和缓存，后续可能变化。启动参数对浏览器磁盘缓存和媒体缓存各请求 8 MiB 的预算，这不是整个用户数据目录的大小上限。

安全处理包括运行时加载器 SHA-256 校验、标准 HTTPS 证书验证、媒体代理对内网地址的检查、请求与响应大小限制、并发限制，以及对网页下载、外部页面、外部协议、子框架和敏感权限的限制。没有添加自动更新、开机自启、关闭杀毒或执行系统命令的功能。远程业务和媒体内容依赖原有服务。

最终交付的 EXE 没有 Authenticode 签名。微软 DLL 的签名和 Defender 的扫描结果单独记录，不能以 APK 或早期版本的检测结果替代最终文件的检测结果。

构建使用 Python 3、Zig 0.14.1 的 C 编译器和官方 Microsoft.Web.WebView2 1.0.4314.35 NuGet SDK。编译器和开发 SDK 仅用于构建，不放入运行包。源代码不是 Zig 语言。构建脚本固定校验 APK、其内置网页包和 SDK 安装包的 SHA-256。

在工作区根目录运行：

```powershell
python .\windows-native\build_native.py
```

所需文件位置：

- 原版 APK：`handoff/apks/mobile-5.0.78.apk`
- WebView2 SDK：`tools/webview2/`
- 便携编译器：`tools/zig-x86_64-windows-0.14.1/zig.exe`
- 共用桌面样式：`windows-desktop/desktop.css`

构建清单在 `work/windows-native-build/build-inventory.json`，包含输入文件、网页资源、EXE 和 DLL 的哈希。代码的 Android 目标替换、HLS 缓冲限制、CSP 调整、标题和桌面样式补充都在构建脚本中明确列出。

验证命令：

```powershell
# 使用构建命令记录中的同一编译器和 SDK 编译测试。
python .\windows-native\build_tests.py
python .\windows-native\verify_native.py --binary-only

# 启动有界的访客诊断；不登录账号，不录入账号信息。
.\output\Jianpian-Windows-C-0.2.1\Jianpian.exe --diagnostics D:\source_code\jianpian\testing\windows-native-0.2.1 --smoke-test

# 诊断完成后检查真实页面、解码进度、暂停、跳转、全屏和返回首页。
python .\windows-native\verify_native.py
```

`--verify-runtime <JSON路径>` 只校验同目录的微软 DLL 并退出，不加载该 DLL、不创建浏览器。该入口用于验证缺失和被修改的加载器会被拒绝。
