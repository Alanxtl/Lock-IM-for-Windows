#Requires AutoHotkey v2
#SingleInstance Force
#NoTrayIcon
DetectHiddenWindows True

; 在顶层定义的变量默认为全局变量
hkl_before_alt_tab := 0

; ==============================================================================
;   核心逻辑
; ==============================================================================

; --- 1. 当左 Alt 键被按下时 ---
~LAlt::{
    global hkl_before_alt_tab
    hkl_before_alt_tab := isEnglishMode()
}

; --- 2. 当左 Alt 键被松开时 ---
LAlt up::{

    global hkl_before_alt_tab
    new_hkl := isEnglishMode()

    if (new_hkl != hkl_before_alt_tab)
    {
        hWnd := WinActive("A")
        SendMessage(
            0x283, 0x001, 1024+hkl_before_alt_tab,, "ahk_id " DllCall("imm32\ImmGetDefaultIMEWnd", "Uint", hWnd, "Uint")
        )
    }
    
    hkl_before_alt_tab := 0

}

isEnglishMode(){
    hWnd := winGetID("A")
    result := SendMessage(
    	0x283, 0x001, 0,, "ahk_id " DllCall("imm32\ImmGetDefaultIMEWnd", "Uint", hWnd, "Uint")
    )
    return result == 0
}