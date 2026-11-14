# Windows C 客户端构建

目标系统 Windows 10/11 x64。客户端使用 C17 / Win32 和系统已安装的
Microsoft Edge WebView2 Runtime；编译器为 Zig 0.14.1 自带的 Clang C 编译器，
源码不是 Zig 语言。

## 准备固定输入

在 Windows 上安装 Python 3.10+。运行 JavaScript 检查还需 Node.js。
以下文件均不包含在源码包中，请自行从可信来源准备。

1. 原始 Android APK 放到 `handoff/apks/mobile-5.0.78.apk`：

   ```text
   f7a524d843c4b077099ff49795ac17a49d187a942139752f466e32cef8db084b
   ```

   APK 内的 `assets/web-bundle.zip` 必须为：

   ```text
   67c852a704f6bbb92c7e35c9ec56a97503662cbce67140e31ede733407679ac6
   ```

2. 从 Zig 官方下载 Windows x64 0.14.1 ZIP：
   <https://ziglang.org/download/0.14.1/zig-x86_64-windows-0.14.1.zip>

   SHA-256：

   ```text
   554f5378228923ffd558eac35e21af020c73789d87afeabf4bfd16f2e6feed2c
   ```

   核对摘要后解压，使编译器路径为
   `tools/zig-x86_64-windows-0.14.1/zig.exe`。

3. 下载官方 Microsoft.Web.WebView2 1.0.4314.35 NuGet 包：
   <https://api.nuget.org/v3-flatcontainer/microsoft.web.webview2/1.0.4314.35/microsoft.web.webview2.1.0.4314.35.nupkg>

   SHA-256：

   ```text
   90778deb1b77e36292828b4b5833c9255c27533f40e0ddd55891ae718944edc4
   ```

   将原始包保留为
   `tools/webview2/microsoft.web.webview2.1.0.4314.35.nupkg`，
   按 ZIP 格式解压同一个包到 `tools/webview2/`。
   应存在 `build/native/include/WebView2.h`、
   `runtimes/win-x64/native/WebView2Loader.dll` 和 `LICENSE.txt`。

使用 `Get-FileHash -Algorithm SHA256 <文件路径>` 核对下载文件。
构建器也会拒绝摘要不匹配的 APK、内置网页包或 SDK 包。
编译器的官方下载摘要需由构建者核对；构建脚本不会自动下载依赖。

## 编译与检查

从仓库根目录运行：

```powershell
python .\windows-native\build_native.py
python .\windows-native\build_tests.py
python .\windows-native\verify_native.py --binary-only
```

输出在 `output/Jianpian-Windows-C-0.2.1/`。
程序运行还需要目标机器已安装的 Microsoft Edge WebView2 Runtime。
完整解压发布包后运行；不要只复制 EXE 而丢弃微软加载器 DLL。

编译清单位于 `work/windows-native-build/build-inventory.json`。
网页从 APK 提取，C / JavaScript / CSS 适配及替换步骤在
`windows-native/build_native.py` 中列明。原厂完整前端工程未随本项目提供。

在自己的可写目录运行诊断：

```powershell
$diagnostics = Join-Path (Get-Location) 'testing\windows-native-0.2.1'
.\output\Jianpian-Windows-C-0.2.1\Jianpian.exe --diagnostics $diagnostics --smoke-test
```

等诊断完成后运行：

```powershell
python .\windows-native\verify_native.py
```

完整验证需要本次诊断生成的 UI 状态和实际播放、缓存证据；
仓库仅附脱敏汇总，不能直接拿历史汇总当作新构建的运行结果。
烟测会联网搜索与播放，设置独立诊断目录，不登录账号。

`package_native.py` 是本次 Windows 交付工作区使用的打包脚本：
它需要 Microsoft Defender、有效微软 DLL 签名记录、完整诊断证据、
保存目录弹窗的人工 UI 检查记录及工具来源记录。
它不是从干净源码包直接运行就能完成的通用 CI。
重新分发时应对自己的最终文件重新扫描并保留相应证据，不沿用本次扫描结论。

## 源码范围

`windows-native/` 为 C 宿主、桌面脚本和构建/检查脚本，
`windows-desktop/desktop.css` 为共用样式。
源码附件逐字节对应发布标签的这些文件。
输入 APK、原厂完整前端源码、编译器、SDK、登录数据及媒体缓存均未发布。
原应用及第三方组件的许可和权利仍适用；微软 DLL 的许可随运行包提供。
