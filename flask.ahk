#SingleInstance force
Menu, Tray, Icon, shell32.dll, 205
#IfWinActive, Path of Exile
#Include timer.ahk

Timer("Pot", "4000")


XButton1::
{
    sendPots()
}

~RButton::
    while (GetKeyState("RButton", "P")){
        send, q
        send, w
        if (GetKeyState("1", "P")){
            sendPots()
        }
    }
    return

    sendPots(){
        If Timer("Pot") {
            send, 2
            send, 3
            send, 4
            send, 5
            Timer("Pot", "4000")
        }
    }
