# Lock-IM-for-Windows
[AHK] 解决 Windows 在 Alt+Tab 时自动切换输入法的问题 / Fixes unintended IME switching on Alt+Tab in Windows.

## [English](https://github.com/Alanxtl/Lock-IM-for-Windows/edit/main/README.md#lock-im-for-windows-1)

#### **问题描述 (The Bug)**

似乎在 Win11 24H2 版本微软引入了一个 bug 是在 Alt+Tab 的时候会切换输入法。

> 我知道 “允许我为每个应用窗口使用不同的输入法” 这个功能，但是不是这个的原因。
> 
> 现有的解决方法:[win11切换软件窗口后输入法自动变为英文状态的解决方法](https://www.cnblogs.com/liuyangjava/p/18708000), [Windows 11 24H2 新 bug？ Alt+Tab 切换窗口后，输入法也跟着切换了。](https://www.v2ex.com/t/1120452). But these solutions are not elegant.

最典型的场景是：
> 你正在专心使用英文文输入法写作或编程，此时需要按下 `Alt+Tab` 切换到浏览器去查资料或复制一段英文网址。当你再次切换回原来的应用时，会惊愕地发现，你的输入法被切换回了中文模式。你不得不手动按 `Shift` 或 `Ctrl+Space` 将其切回中文，这个过程打断了心流，降低了效率，令人烦躁。

这个脚本就是为了彻底解决这个“小”问题。

#### **解决方案 (The Solution)**

本脚本的解决思路基于[AutoHotKey](https://www.autohotkey.com/)。它不在乎 Windows 的设置是什么，而是通过监控用户的 `Alt` 行为，在操作完成后确保输入法状态和原来的一致。

### 安装与使用

1.  **安装 AutoHotkey**:
    * 本脚本需要 **AutoHotkey v2** 环境。请从 [AutoHotkey官网](https://www.autohotkey.com/download/) 下载并安装。

2.  **获取脚本**:
    * 直接从本仓库下载 `FixAltTabIME.ahk` 文件。

3.  **运行脚本**:
    * 双击 `FixAltTabIME.ahk` 文件即可运行。之后它会在后台默默工作。

4.  **开机自启 (推荐)**:
    * 为了让脚本在每次开机后自动运行，可以创建一个快捷方式并将其放入“启动”文件夹。
    * 按下 `Win + R` 打开“运行”对话框，输入 `shell:startup` 并回车，即可打开启动文件夹。
    * 将 `FixAltTabIME.ahk` 的快捷方式拖入此文件夹即可。

### 开源协议 (License)

本项目采用 [MIT License](LICENSE) 开源协议。

-----

# Lock-IM-for-Windows

[AHK] Fixes unintended IME switching on Alt+Tab in Windows.

#### **The Bug**

A bug appears to have been introduced in the Windows 11 24H2 update that causes the Input Method Editor (IME) to switch when using `Alt+Tab`.

> I am aware of the "Let me use a different input method for each app window" feature, but this is not the cause of the issue.
>
> Existing workarounds can be found here: [Solution for IME automatically switching to English after changing windows in win11](https://www.cnblogs.com/liuyangjava/p/18708000) and [New bug in Windows 11 24H2? IME also switches after using Alt+Tab to switch windows.](https://www.v2ex.com/t/1120452). (Note: Links are in Chinese). But these solutions are not elegant.

The most typical scenario is:

> You are focused on writing or coding using the English IME. You press `Alt+Tab` to switch to a browser to look something up or copy a URL. When you switch back to your original application, you are surprised to find that your IME has been switched to Chinese mode. You then have to manually switch it back with `Shift` or `Ctrl+Space`. This process breaks your flow, reduces efficiency, and is frustrating.

This script was created to permanently fix this "minor" issue.

#### **The Solution**

This script's approach is based on [AutoHotkey](https://www.autohotkey.com/). It works regardless of your Windows settings by monitoring the user's `Alt` key behavior and ensuring the IME state remains consistent after the operation is complete.

### Installation and Usage

1.  **Install AutoHotkey**:

      * This script requires the **AutoHotkey v2** environment. Please download and install it from the [official AutoHotkey website](https://www.autohotkey.com/download/).

2.  **Get the Script**:

      * Download the `FixAltTabIME.ahk` file directly from this repository.

3.  **Run the Script**:

      * Double-click the `FixAltTabIME.ahk` file to run it. It will then work silently in the background.

4.  **Run on Startup (Recommended)**:

      * To have the script run automatically every time you start your computer, you can place a shortcut in the "Startup" folder.
      * Press `Win + R` to open the 'Run' dialog, type `shell:startup`, and press Enter. This will open the Startup folder.
      * Drag a shortcut of `FixAltTabIME.ahk` into this folder.

### License

This project is licensed under the [MIT License](https://www.google.com/search?q=LICENSE).
