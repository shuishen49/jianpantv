# 荐片电视适配版

当前版本：**5.0.78-tv.11**，版本号 **5089**。独立包名为 `local.tv.jianpianmobile`，桌面名称为“荐片·电视新版测试”。

这是基于指定手机 APK 制作的电视适配与安全修复源码仓库，包含适配脚本、构建补丁、修改后的原生 smali 和脱敏测试记录。原厂完整 Gradle 工程不在现有资料中；本仓库通过原始 APK 和补丁重建电视版。

## 已实现

- 横屏电视首页、侧边栏、大字号及遥控器方向键焦点。
- 遥控器拼音输入、汉字候选及影片搜索。
- 横屏播放与选集布局。
- 全屏进度条、当前时间、总时长和播放状态。
- 左右键快退／快进 10 秒，长按连续定位，确认键暂停／继续，上下键唤出控制条。
- 进度条支持触摸或鼠标拖动；暂停时定位保持暂停。
- 第一次返回退出全屏，第二次返回列表并停止播放。

原有登录、业务网页模块和系统证书信任逻辑保留，未伪造登录或绕过证书校验。

## 目录

| 路径 | 内容 |
| --- | --- |
| `build_mobile_tv.py` | 从固定原始 APK 生成、对齐并签名电视版 |
| `security_patch_tv.py` | 统计 SDK 移除、运行时冻结和 WebView 加固补丁 |
| `tv-adapter/` | 电视界面、方向键导航、拼音表及播放器桥接补丁 |
| `generate_tv_pinyin.py` | 可选的离线拼音表生成器 |
| `patched/smali/` | tv.11 最终构建中发生变化的 14 个原生文件，便于审阅 |
| `PATCH-INVENTORY.json` | 变更前后 smali 文件哈希 |
| `testing/verify_tv10_security.py` | 最终 APK 静态验证器，支持 `--tv-version 11` |
| `testing/security-tv11/` | tv.11 功能、文件一致性、安全检查和扫描记录 |
| `testing/security-tv10/` | 上一轮动态安全验证的基线记录 |
| `docs/` | 安全修复及全屏播放测试报告 |

`patched/` 是审阅快照；构建时由脚本重新应用补丁，不会直接打包整个快照目录。原始 APK、下载工具、签名私钥、账号数据和原始日志均未提交。

## Windows 构建

准备以下本地依赖：

1. Python 3.10 或更新版本。
2. JDK 17。
3. Apktool 3.0.3，放在 `tools/apktool_3.0.3.jar`。
4. Android SDK Build Tools 36.0.0；需要 `aapt2.exe`、`zipalign.exe` 和 `lib/apksigner.jar`。
5. 原始 APK，放在 `handoff/apks/mobile-5.0.78.apk`。

构建器严格检查原始 APK 的 SHA-256：

```text
f7a524d843c4b077099ff49795ac17a49d187a942139752f466e32cef8db084b
```

APK 不匹配时构建会停止，避免向其他版本错误应用 smali 补丁。原始 APK 和工具需自行准备，未随仓库分发。

设置好本机路径后运行：

```powershell
python .\build_mobile_tv.py `
  --java-home 'C:\path\to\jdk-17' `
  --build-tools 'C:\path\to\Android\Sdk\build-tools\36.0.0'
```

签名口令通过 `JIANPIAN_SIGNING_PASSWORD` 环境变量提供，未设置时会交互输入，不会回显。首次构建在 `.local-signing/tv-candidate.p12` 创建本地签名；已有密钥时须使用对应口令。私钥目录已加入 `.gitignore`。保留密钥才能继续以相同签名覆盖升级；新生成的密钥不能覆盖其他签名的同包名安装。

构建输出：

```text
output/jianpian-mobile-tv-5.0.78-tv.11.apk
output/mobile-tv-build.json
```

首次构建会在 `work/mobile-original` 解包原始 APK；每次构建会重建经过路径检查的临时目录 `work/mobile-tv11`。

拼音数据已提交，普通构建不需要安装额外 Python 包。仅在重新生成字表时安装构建依赖：

```powershell
python -m pip install --target .\tools\pinyin-build pypinyin==0.55.0
python .\generate_tv_pinyin.py
```

## 验证

静态检查：

```powershell
python .\testing\verify_tv10_security.py `
  --tv-version 11 `
  --java-home 'C:\path\to\jdk-17' `
  --build-tools 'C:\path\to\Android\Sdk\build-tools\36.0.0'
```

验证器默认核对本次已交付 APK 的签名证书。自行签名时，用 `apksigner` 获取自己的证书 SHA-256，再通过 `--expected-signer <证书SHA-256>` 显式传入预期值。验证范围包括：危险权限、被移除的 SDK 和旧桥、业务网页不变性、每个网页资源及 bundle 哈希、v2/v3 签名和 ZIP 对齐。

本次已交付 APK 的 SHA-256：

```text
3f7989602b996a5d11c9eefbdc7c3f7542479d25c549f5186e6cee7ba85e9438
```

其签名证书 SHA-256：

```text
b90fbbf29671e0dc83c7ad3b43381c62c8d6b8788693a4bbdf1cb922951bc9d7
```

功能实测环境为雷电 Android 14、1920×1080、ARM32 翻译运行。已验证真实视频、十秒定位、连续定位、长按、拖动、暂停后定位、控制条隐藏与唤出、换集进度、返回停止以及升级／冷启动保留登录。测试记录来自上述特定 APK，重新构建后应重新运行检查；不承诺二进制逐字节一致。

实体电视、Android 9 真机、声音听感、多小时播放和所有线路尚未全面验证。

## 安全修复与保留限制

- 移除 UMeng 类和原生 spy 库，禁用统计初始化。
- 冻结为经过哈希验证的包内网页，禁用在线更新、远程槽位和旧插件恢复。
- 关闭 WebView 文件、内容和跨文件访问，拒绝混合内容，移除无来源校验的旧桥。
- 移除共享存储、媒体、相机、麦克风、电话和广告标识危险权限。
- 禁用下载、导出、文件选择和外部应用跳转等相关入口。
- 正常播放仍使用应用私有缓存；业务安装标识及私有 WebView localStorage 中的登录令牌仍保留。

Defender 扫描未报告威胁，局部审计与扫描不构成绝对无病毒保证。完整范围见 [tv.11 测试报告](docs/tv.11-全屏进度修复与测试报告.md) 和 [tv.10 安全修复报告](docs/tv.10-安全修复与测试报告.md)。

离线拼音数据的第三方许可见 [pinyin-LICENSE.txt](tv-adapter/pinyin-LICENSE.txt)。本仓库不对原始应用及其第三方组件声明新的授权。
