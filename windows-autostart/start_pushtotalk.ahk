#Requires AutoHotkey v2.0
#SingleInstance Force

if WinExist("PushToTalk Configuration") {
    ExitApp
}

Run('"C:\Users\owner\AI\tools\push-to-talk\PushToTalk.exe"')
WinWait("PushToTalk Configuration", , 30)
Sleep(3000)

WinActivate("PushToTalk Configuration")
Sleep(500)

WinMove(0, 0, 974, 995, "PushToTalk Configuration")
Sleep(1500)

; 滚到底
MouseMove(950, 400)
Sleep(300)
Loop 30 {
    Click("WheelDown")
    Sleep(50)
}
Sleep(500)

; 点击 Start Application 按钮(微调坐标)
MouseMove(120, 905)
Sleep(500)
Click()

Sleep(2000)
WinMinimize("PushToTalk Configuration")