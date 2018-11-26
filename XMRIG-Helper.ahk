; XMRIG Mining Helper v0.6.0
; Just a little something I came up with to help with crypto mining with xmrig.
; 
; With xmrig.exe and this script's SHIFT+F# hotkeys with your pool login information setup correctly,
; you can then easily connect to your crypto pools.
; So all you have to do is press a key combo and the info is placed in the miner for you, but you
; have to manually add every pool you want to mine.
; All you have to do is open the script edit the correct areas which are marked below
; run the script and press the hotkeys.
; Oh and be sure you have autohotkey installed http://www.autohotkey.com/download
;
; Below are the variables in which the script needs for all fuctions to work
;
;######################## DO NOT EDIT THIS SCRIPT UNLESS YOU KNOW WHAT YOUR ARE DOING! ########################
;####################################### THAT MEANS YOU [^_^] #################################################
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force ; Keeps you from running more than one of these at once, that can get really messy.
IfNotExist, thepitster.jpg
URLDownloadToFile, http://www.allripped.net/files/thepitster.jpg, thepitster.jpg
IfNotExist, app.ico
URLDownloadToFile, https://raw.githubusercontent.com/ALLRiPPED/xmrig-helper/master/app.ico, app.ico
	if(FileExist(A_ScriptDir "\app.ico"))
	Menu,Tray,Icon,app.ico
	Gui, Margin, 0,0
	Gui +LastFound
	GUI_ID:=WinExist()
	Gui, -Caption +AlwaysOnTop +Border
	Gui, Add, Picture, , thepitster.jpg
	Gui,Show, AutoSize Hide, XMRIG Mining Helper v0.6.0
	DllCall("AnimateWindow",UInt,GUI_ID,Int,500,UInt,0xa0000)
	Sleep 1000
	DllCall("AnimateWindow",UInt,GUI_ID,Int,500,UInt,0x90000)
	Gui, Destroy

IfNotExist, XMRIG-Helper.ini
{
	Fileappend, [XMRIG]`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, [POOL 1]`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, pool1=Pool Host/IP:Port`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, address1=Wallet`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, rigid1=Rig ID`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, pword1=Password`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, nicehash1=0`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, algo1=monero`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, htport1=41000`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, background1=0`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, apiaccess1=0, %A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, vari1=1, %A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, threads1=0, %A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, cpuu1=100, %A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, cpup1=0, %A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, kalive1=0, %A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, [POOL 2]`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, `r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, pool2=Pool Host/IP:Port`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, address2=Wallet`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, rigid2=Rig ID`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, pword2=Password`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, nicehash2=0`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, algo2=monero`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, htport2=42000`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, background2=0`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, apiaccess2=0, %A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, vari2=1, %A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, threads2=0, %A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, cpuu2=100, %A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, cpup2=0, %A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, kalive2=0, %A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, `r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, [POOL 3]`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, pool3=Pool Host/IP:Port`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, address3=Wallet`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, rigid3=Rig ID`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, pword3=Password`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, nicehash3=0`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, algo3=monero`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, htport3=43000`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, background3=0`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, apiaccess3=0, %A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, vari3=1, %A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, threads3=0, %A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, cpuu3=100, %A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, cpup3=0, %A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, kalive3=0, %A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, `r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, [POOL 4]`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, pool4=Pool Host/IP:Port`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, address4=Wallet`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, rigid4=Rig ID`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, pword4=Password`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, nicehash4=0`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, algo4=monero`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, htport4=44000`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, background4=0`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, apiaccess4=0, %A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, vari4=1, %A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, threads4=0, %A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, cpuu4=100, %A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, cpup4=0, %A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, kalive4=0, %A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, `r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, [DIR]`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, xmrigdir=%A_ScriptDir%`r`n,%A_ScriptDir%\XMRIG-Helper.ini
}

	Menu, Tray, Add, Show, GuiShow
	Menu, Tray, Add
	Menu, Tray, Add, XMRIG-Helper &Updates, XHelper
	Menu, Tray, Add, XMRIG-Helper.&ini, TrayEditini
	Menu, Tray, Add
	Menu, Tray, Add, &ARHash.xyz, ARHash
	Menu, Tray, Add, &XMRIG , XMRIG
	Menu, Tray, Add
	Menu, Tray, Add, &Reload Helper, TrayReload
	Menu, Tray, Add
	Menu, Tray, Add, &Edit Script, TrayEdit
	Menu, Tray, Add
	Menu, Tray, Add, &Exit Script, Trayexit 
	Menu, Tray, Default, Show
	Menu, Tray, Click, 1
	Menu, Tray, NoStandard

	IniRead, pool1, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, pool1, %A_space%
	IniRead, address1, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, address1, %A_space%
	IniRead, rigid1, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, rigid1, %A_space%
	IniRead, pword1, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, pword1, %A_space%
	IniRead, nicehash1, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, nicehash1, %A_space%
	IniRead, algo1, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, algo1, %A_space%
	IniRead, htport1, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, htport1, %A_space%
	IniRead, background1, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, background1, %A_space%
	IniRead, token1, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, token1, %A_space%
	IniRead, apiaccess1, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, apiaccess1, %A_space%
	IniRead, vari1, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, vari1, %A_space%
	IniRead, threads1, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, threads1, %A_space%
	IniRead, cpuu1, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, cpuu1, %A_space%
	IniRead, cpup1, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, cpup1, %A_space%
	IniRead, kalive1, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, kalive1, %A_space%
	IniRead, pool2, %A_ScriptDir%\XMRIG-Helper.ini, XMRIG, pool2, %A_space%
	IniRead, address2, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, address2, %A_space%
	IniRead, rigid2, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, rigid2, %A_space%
	IniRead, pword2, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, pword2, %A_space%
	IniRead, nicehash2, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, nicehash2, %A_space%
	IniRead, algo2, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, algo2, %A_space%
	IniRead, htport2, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, htport2, %A_space%
	IniRead, background2, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, background2, %A_space%
	IniRead, token2, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, token2, %A_space%
	IniRead, apiaccess2, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, apiaccess2, %A_space%
	IniRead, vari2, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, vari2, %A_space%
	IniRead, threads2, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, threads2, %A_space%
	IniRead, cpuu2, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, cpuu2, %A_space%
	IniRead, cpup2, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, cpup2, %A_space%
	IniRead, kalive2, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, kalive2, %A_space%
	IniRead, pool3, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, pool3, %A_space%
	IniRead, address3, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, address3, %A_space%
	IniRead, rigid3, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, rigid3, %A_space%
	IniRead, pword3, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, pword3, %A_space%
	IniRead, nicehash3, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, nicehash3, %A_space%
	IniRead, algo3, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, algo3, %A_space%
	IniRead, htport3, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, htport3, %A_space%
	IniRead, background3, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, background3, %A_space%
	IniRead, token3, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, token3, %A_space%
	IniRead, apiaccess3, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, apiaccess3, %A_space%
	IniRead, vari3, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, vari3, %A_space%
	IniRead, threads3, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, threads3, %A_space%
	IniRead, cpuu3, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, cpuu3, %A_space%
	IniRead, cpup3, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, cpup3, %A_space%
	IniRead, kalive3, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, kalive3, %A_space%
	IniRead, pool4, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, pool4, %A_space%
	IniRead, address4, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, address4, %A_space%
	IniRead, rigid4, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, rigid4, %A_space%
	IniRead, pword4, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, pword4, %A_space%
	IniRead, nicehash4, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, nicehash4, %A_space%
	IniRead, algo4, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, algo4, %A_space%
	IniRead, htport4, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, htport4, %A_space%
	IniRead, background4, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, background4, %A_space%
	IniRead, token4, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, token4, %A_space%
	IniRead, apiaccess4, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, apiaccess4, %A_space%
	IniRead, vari4, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, vari4, %A_space%
	IniRead, threads4, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, threads4, %A_space%
	IniRead, cpuu4, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, cpuu4, %A_space%
	IniRead, cpup4, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, cpup4, %A_space%
	IniRead, kalive4, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, kalive4, %A_space%
	IniRead, xmrigdir, %A_ScriptDir%\XMRIG-Helper.ini, DIR, xmrigdir, %A_space%

Main:
	Gui, Add, Button, x12 y430 w70 h30 , Monero
	Gui, Add, Button, x12 y510 w70 h30 , Alloy
	Gui, Add, Button, x12 y470 w70 h30 , MUTEX
	Gui, Add, Button, x92 y470 w70 h30 , ARQMA
	Gui, Add, Button, x252 y470 w70 h30 , XHelper
	Gui, Add, Button, x172 y470 w70 h30 , Veronite
	Gui, Add, Button, x172 y430 w70 h30 , X-CASH
	Gui, Add, Button, x172 y510 w70 h30 , Xaria
	Gui, Add, Button, x332 y430 w70 h30 , About
	Gui, Add, Button, x332 y470 w70 h30 , HideMe
	Gui, Add, Button, x332 y510 w70 h30 , Close
	Gui, Add, Button, x662 y470 w70 h30 , ARHash
	Gui, Add, Button, x792 y470 w70 h30 , XMRIG
	Gui, Add, Tab, x2 y0 w880 h420 , Info|Pool Info|Directory Info
	Gui, Tab, Info
	Gui, Add, Text, x32 y30 w780 h310 , Just a little something I came up with to help with crypto mining with XMRIG. With xmrig.exe and this script's SHIFT+F# hotkeys with your pool login information setup correctly, you can then easily connect to your crypto pools. So all you have to do is press a key combo and the info is placed in the miner for you, but you have to manually add every pool you want to mine. If you want to edit the hotkeys all you have to do is open the script, edit the correct areas, run the script and press desired hotkeys. Oh and be sure you have autohotkey installed http://www.autohotkey.com/download.
	Gui, Tab, Pool Info
	Gui, Add, Text, x12 y30 w70 h20 , Mining Pool 1:
	Gui, Add, CheckBox, x92 y30 w70 h20 vnicehash1 Checked%nicehash1%, Nicehash
	Gui, Add, CheckBox, x172 y30 w80 h20 vbackground1 Checked%background1%, Background
	Gui, Add, CheckBox, x262 y30 w80 h20 vapiaccess1 Checked%apiaccess1%, API Access
	Gui, Add, CheckBox, x352 y30 w70 h20 vkalive1 Checked%kalive1%, Keep Alive
	Gui, Add, Text, x12 y50 w50 h20 , Pool:
	Gui, Add, Edit, x62 y50 w140 h20 vpool1, %pool1%
	Gui, Add, Text, x12 y70 w50 h20 , Wallet:
	Gui, Add, Edit, x62 y70 w140 h20 vaddress1, %address1%
	Gui, Add, Text, x12 y90 w50 h20 , Rig ID:
	Gui, Add, Edit, x62 y90 w140 h20 vrigid1, %rigid1%
	Gui, Add, Text, x12 y110 w50 h20 , Password:
	Gui, Add, Edit, x62 y110 w140 h20 vpword1, %pword1%
	Gui, Add, Text, x12 y130 w50 h20 , ALGO:
	Gui, Add, Edit, x62 y130 w140 h20 valgo1, %algo1%
	Gui, Add, Text, x12 y150 w50 h20 , Port:
	Gui, Add, Edit, x62 y150 w140 h20 vhtport1, %htport1%
	Gui, Add, Text, x212 y50 w70 h20 , Token:
	Gui, Add, Edit, x282 y50 w60 h20 vtoken1, %token1%
	Gui, Add, Text, x212 y70 w70 h20 , Threads:
	Gui, Add, Edit, x282 y70 w60 h20 vthreads1, %threads1%
	Gui, Add, Text, x212 y90 w70 h20 , CPU `%:
	Gui, Add, Edit, x282 y90 w60 h20 vcpuu1, %cpuu1%
	Gui, Add, Text, x212 y110 w70 h20 , CPU Priority:
	Gui, Add, Edit, x282 y110 w60 h20 vcpup1, %cpup1%
	Gui, Add, Text, x212 y130 w70 h20 , PoW Variant:
	Gui, Add, Edit, x282 y130 w60 h20 vvari1, %vari1%
	Gui, Add, Button, x212 y150 w80 h20 gLP1, Launch Pool 1
	Gui, Add, Text, x462 y30 w70 h20 , Mining Pool 2:
	Gui, Add, CheckBox, x542 y30 w70 h20 vnicehash2 Checked%nicehash2%, Nicehash
	Gui, Add, CheckBox, x622 y30 w80 h20 vbackground2 Checked%background2%, Background
	Gui, Add, CheckBox, x712 y30 w80 h20 vapiaccess2 Checked%apiaccess2%, API Access
	Gui, Add, CheckBox, x802 y30 w70 h20 vkalive2 Checked%kalive2%, Keep Alive
	Gui, Add, Text, x462 y50 w50 h20 , Pool:
	Gui, Add, Edit, x512 y50 w140 h20 vpool2, %pool2%
	Gui, Add, Text, x462 y70 w50 h20 , Wallet:
	Gui, Add, Edit, x512 y70 w140 h20 vaddress2, %address2%
	Gui, Add, Text, x462 y90 w50 h20 , Rig ID:
	Gui, Add, Edit, x512 y90 w140 h20 vrigid2, %rigid2%
	Gui, Add, Text, x462 y110 w50 h20 , Password:
	Gui, Add, Edit, x512 y110 w140 h20 vpword2, %pword2%
	Gui, Add, Text, x462 y130 w50 h20 , ALGO:
	Gui, Add, Edit, x512 y130 w140 h20 valgo2, %algo2%
	Gui, Add, Text, x462 y150 w50 h20 , Port:
	Gui, Add, Edit, x512 y150 w140 h20 vhtport2, %htport2%
	Gui, Add, Text, x662 y50 w70 h20 , Token:
	Gui, Add, Edit, x732 y50 w60 h20 vtoken2, %token2%
	Gui, Add, Text, x662 y70 w70 h20 , Threads:
	Gui, Add, Edit, x732 y70 w60 h20 vthreads2, %threads2%
	Gui, Add, Text, x662 y90 w70 h20 , CPU `%:
	Gui, Add, Edit, x732 y90 w60 h20 vcpuu2, %cpuu2%
	Gui, Add, Text, x662 y110 w70 h20 , CPU Priority:
	Gui, Add, Edit, x732 y110 w60 h20 vcpup2, %cpup2%
	Gui, Add, Text, x662 y130 w70 h20 , PoW Variant:
	Gui, Add, Edit, x732 y130 w60 h20 vvari2, %vari2%
	Gui, Add, Button, x662 y150 w80 h20 gLP2, Launch Pool 2
	Gui, Add, Text, x12 y240 w70 h20 gLP3, Mining Pool 3:
	Gui, Add, CheckBox, x92 y240 w70 h20 vnicehash3 Checked%nicehash3%, Nicehash
	Gui, Add, CheckBox, x172 y240 w80 h20 vbackground3 Checked%background3%, Background
	Gui, Add, CheckBox, x262 y240 w80 h20 vapiaccess3 Checked%apiaccess3%, API Access
	Gui, Add, CheckBox, x352 y240 w70 h20 vkalive3 Checked%kalive3%, Keep Alive
	Gui, Add, Text, x12 y260 w50 h20 , Pool:
	Gui, Add, Edit, x62 y260 w140 h20 vpool3, %pool3%
	Gui, Add, Text, x12 y280 w50 h20 , Wallet:
	Gui, Add, Edit, x62 y280 w140 h20 vaddress3, %address3%
	Gui, Add, Text, x12 y300 w50 h20 , Rig ID:
	Gui, Add, Edit, x62 y300 w140 h20 vrigid3, %rigid3%
	Gui, Add, Text, x12 y320 w50 h20 , Password:
	Gui, Add, Edit, x62 y320 w140 h20 vpword3, %pword3%
	Gui, Add, Text, x12 y340 w50 h20 , ALGO:
	Gui, Add, Edit, x62 y340 w140 h20 valgo3, %algo3%
	Gui, Add, Text, x12 y360 w50 h20 , Port:
	Gui, Add, Edit, x62 y360 w140 h20 vhtport3, %htport3%
	Gui, Add, Text, x212 y260 w70 h20 , Token:
	Gui, Add, Edit, x282 y260 w60 h20 vtoken3, %token3%
	Gui, Add, Text, x212 y280 w70 h20 , Threads:
	Gui, Add, Edit, x282 y280 w60 h20 vthreads3, %threads3%
	Gui, Add, Text, x212 y300 w70 h20 , CPU `%:
	Gui, Add, Edit, x282 y300 w60 h20 vcpup3, %cpuu3%
	Gui, Add, Text, x212 y320 w70 h20 , CPU Priority:
	Gui, Add, Edit, x282 y320 w60 h20 cpup3, %cpup3%
	Gui, Add, Text, x212 y340 w70 h20 , PoW Variant:
	Gui, Add, Edit, x282 y340 w60 h20 vvari3, %vari3%
	Gui, Add, Button, x212 y360 w80 h20 gLP3, Launch Pool 3
	Gui, Add, Text, x462 y240 w70 h20 , Mining Pool 4:
	Gui, Add, CheckBox, x542 y240 w70 h20 vnicehash4 Checked%nicehash4%, Nicehash
	Gui, Add, CheckBox, x622 y240 w80 h20 vbackground4 Checked%background4%, Background
	Gui, Add, CheckBox, x712 y240 w80 h20 vapiaccess4 Checked%apiaccess4%, API Access
	Gui, Add, CheckBox, x802 y240 w70 h20 vkalive4 Checked%kalive4%, Keep Alive
	Gui, Add, Text, x462 y260 w50 h20 , Pool:
	Gui, Add, Edit, x512 y260 w140 h20 vpool4, %pool4%
	Gui, Add, Text, x462 y280 w50 h20 , Wallet:
	Gui, Add, Edit, x512 y280 w140 h20 vaddress4, %address4%
	Gui, Add, Text, x462 y300 w50 h20 , Rig ID:
	Gui, Add, Edit, x512 y300 w140 h20 vrigid4, %rigid4%
	Gui, Add, Text, x462 y320 w50 h20 , Password:
	Gui, Add, Edit, x512 y320 w140 h20 vpword4, %pword4%
	Gui, Add, Text, x462 y340 w50 h20 , ALGO:
	Gui, Add, Edit, x512 y340 w140 h20 valgo4, %algo4%
	Gui, Add, Text, x462 y360 w50 h20 , Port:
	Gui, Add, Edit, x512 y360 w140 h20 vhtport4, %htport4%
	Gui, Add, Text, x662 y260 w70 h20 , Token:
	Gui, Add, Edit, x732 y260 w60 h20 vtoken4, %token4%
	Gui, Add, Text, x662 y280 w70 h20 , Threads:
	Gui, Add, Edit, x732 y280 w60 h20 vthreads4, %threads4%
	Gui, Add, Text, x662 y300 w70 h20 , CPU `%:
	Gui, Add, Edit, x732 y300 w60 h20 vcpuu4, %cpuu4%
	Gui, Add, Text, x662 y320 w70 h20 , CPU Priority:
	Gui, Add, Edit, x732 y320 w60 h20 vcpup4, %cpup4%
	Gui, Add, Text, x662 y340 w70 h20 , PoW Variant:
	Gui, Add, Edit, x732 y340 w60 h20 vvari4, %vari4%
	Gui, Add, Button, x662 y360 w80 h20 gLP4, Launch Pool 4
	Gui, Add, Button, x362 y390 w80 h20 gOK, OK
	Gui, Tab, Directory Info
	Gui, Add, Text, x102 y130 w160 h20 , XMRIG Executable Location
	Gui, Add, Text, x102 y160 w630 h20 vxmrigdir, %xmrigdir%\xmrig.exe
	Gui, Add, Text, x102 y200 w90 h20 , XMRIG Folder
	Gui, Add, Text, x102 y230 w630 h20 , %xmrigdir%
	Gui, Add, Button, x662 y190 w70 h20 , Browse
	Gui, Add, Button, x652 y270 w80 h30 gOK, OK

	Gui, Margin, 0,0
	Gui +LastFound
	GUI_ID:=WinExist()
	Gui, Show, x341 y133 h607 w885, XMRIG Mining Helper v0.6.0
	DllCall("AnimateWindow",UInt,GUI_ID,UInt,750,UInt,0xa0000)
Return

OK:
	Gui, Submit, NoHide  ; Save the input from the user to each control's associated variable.
	Iniwrite, %pool1%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, pool1
	Iniwrite, %address1%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, address1
	Iniwrite, %rigid1%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, rigid1
	Iniwrite, %pword1%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, pword1
	Iniwrite, %nicehash1%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, nicehash1
	Iniwrite, %algo1%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, algo1
	Iniwrite, %htport1%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, htport1
	Iniwrite, %background1%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, background1
	Iniwrite, %token1%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, token1
	Iniwrite, %apiaccess1%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, apiaccess1
	Iniwrite, %vari1%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, vari1
	Iniwrite, %threads1%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, threads1
	Iniwrite, %cpuu1%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, cpuu1
	Iniwrite, %cpup1%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, cpup1
	Iniwrite, %kalive1%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, kalive1
	Iniwrite, %pool2%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, pool2
	Iniwrite, %address2%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, address2
	Iniwrite, %rigid2%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, rigid2
	Iniwrite, %pword2%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, pword2
	Iniwrite, %nicehash2%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, nicehash2
	Iniwrite, %algo2%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, algo2
	Iniwrite, %htport2%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, htport2
	Iniwrite, %background2%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, background2
	Iniwrite, %token2%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, token2
	Iniwrite, %apiaccess2%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, apiaccess2
	Iniwrite, %vari2%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, vari2
	Iniwrite, %threads2%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, threads2
	Iniwrite, %cpuu2%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, cpuu2
	Iniwrite, %cpup2%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, cpup2
	Iniwrite, %kalive2%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, kalive2
	Iniwrite, %pool3%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, pool3
	Iniwrite, %address3%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, address3
	Iniwrite, %rigid3%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, rigid3
	Iniwrite, %pword3%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, pword3
	Iniwrite, %nicehash3%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, nicehash3
	Iniwrite, %algo3%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, algo3
	Iniwrite, %htport3%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, htport3
	Iniwrite, %background3%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, background3
	Iniwrite, %token3%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, token3
	Iniwrite, %apiaccess3%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, apiaccess3
	Iniwrite, %vari3%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, vari3
	Iniwrite, %threads3%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, threads3
	Iniwrite, %cpuu3%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, cpuu3
	Iniwrite, %cpup3%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, cpup3
	Iniwrite, %kalive3%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, kalive3
	Iniwrite, %pool4%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, pool4
	Iniwrite, %address4%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, address4
	Iniwrite, %rigid4%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, rigid4
	Iniwrite, %pword4%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, pword4
	Iniwrite, %nicehash4%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, nicehash4
	Iniwrite, %algo4%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, algo4
	Iniwrite, %htport4%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, htport4
	Iniwrite, %background4%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, background4
	Iniwrite, %token4%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, token4
	Iniwrite, %apiaccess4%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, apiaccess4
	Iniwrite, %vari4%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, vari4
	Iniwrite, %threads4%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, threads4
	Iniwrite, %cpuu4%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, cpuu4
	Iniwrite, %cpup4%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, cpup4
	Iniwrite, %kalive4%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, kalive4
	Iniwrite, %xmrigdir%, %A_ScriptDir%\XMRIG-Helper.ini, DIR, xmrigdir
Return
ButtonAbout:
	Gui, Destroy
	Gui, Margin, 0,0
	Gui +LastFound
	GUI_ID:=WinExist()
	Gui, -Caption +AlwaysOnTop +Border
	Gui, Add, Picture, , thepitster.jpg
	Gui,Show,Autosize Hide,XMRIG Helper v0.6.0
	DllCall("AnimateWindow",UInt,GUI_ID,Int,500,UInt,0xa0000)
	Sleep 3000
	DllCall("AnimateWindow",UInt,GUI_ID,Int,500,UInt,0x90000)
	Gui, Destroy
	Goto, OK
	Goto, Main
Return
GuiEscape:
GuiClose:
	DllCall("AnimateWindow",UInt,GUI_ID,UInt,750,UInt,0x90000)
	Goto, OK
	Gui, Hide
Return
GuiMinimize:
	DllCall("AnimateWindow",UInt,GUI_ID,UInt,750,UInt,0x90000)
	Goto, OK
	Gui, Hide
Return
GuiShow:
	Gui, Margin, 0,0
	Gui +LastFound
	GUI_ID:=WinExist()
	Gui, Show, x341 y133 h607 w885,, XMRIG Mining Helper v0.6.0
	DllCall("AnimateWindow",UInt,GUI_ID,UInt,750,UInt,0xa0000)
Return
#X::
	Gui % (MainGui:=!MainGui) ? "Hide" : "Show", x341 y133 h607 w885, XMRIG Mining Helper v0.6.0
return
TrayReload:
	Reload
Return
TrayEdit:
	Run, C:\Program Files\Notepad++\notepad++.exe %A_ScriptDir%\%A_ScriptName%
Return
TrayEditini:
	Run, C:\Program Files\Notepad++\notepad++.exe %A_ScriptDir%\XMRIG-Helper.ini
Return
ButtonBrowse:
	Gui, Submit, NoHide
	FileSelectFolder, xmrigdir
	Iniwrite, %xmrigdir%, %A_ScriptDir%\XMRIG-Helper.ini, DIR, xmrigdir
Return
ButtonMonero:
	Run, https://getmonero.org/
Return
ButtonMUTEX:
	Run, https://mutexcurrency.io/
Return
ButtonXaria:
	Run, http://xaria.xyz/
Return
ButtonVeronite:
	Run, https://veronite.space/
Return
ButtonARQMA:
	Run, https://arqma.com/
Return
ButtonAlloy:
	Run, https://alloyproject.org/
Return
ButtonX-CASH:
	Run, https://x-cash.org/
Return
ButtonXHelper:
	Run, https://github.com/ALLRiPPED/xmrig-helper
Return
ButtonARHash:
	Run, https://arhash.xyz/
Return
ButtonXMRIG:
	Run, https://github.com/ALLRiPPED/xmrig/releases
Return
ButtonHideMe:
	DllCall("AnimateWindow",UInt,GUI_ID,UInt,750,UInt,0x90000)
	Gui, Hide
	Goto, OK
Return
Trayexit:
ButtonClose:
	DllCall("AnimateWindow",UInt,GUI_ID,UInt,750,UInt,0x90000)
	Gui, Submit, NoHide  ; Save the input from the user to each control's associated variable.
	Iniwrite, %pool1%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, pool1
	Iniwrite, %address1%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, address1
	Iniwrite, %rigid1%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, rigid1
	Iniwrite, %pword1%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, pword1
	Iniwrite, %nicehash1%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, nicehash1
	Iniwrite, %algo1%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, algo1
	Iniwrite, %htport1%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, htport1
	Iniwrite, %background1%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, background1
	Iniwrite, %token1%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, token1
	Iniwrite, %apiaccess1%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, apiaccess1
	Iniwrite, %vari1%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, vari1
	Iniwrite, %threads1%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, threads1
	Iniwrite, %cpuu1%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, cpuu1
	Iniwrite, %cpup1%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, cpup1
	Iniwrite, %kalive1%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 1, kalive1
	Iniwrite, %pool2%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, pool2
	Iniwrite, %address2%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, address2
	Iniwrite, %rigid2%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, rigid2
	Iniwrite, %pword2%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, pword2
	Iniwrite, %nicehash2%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, nicehash2
	Iniwrite, %algo2%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, algo2
	Iniwrite, %htport2%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, htport2
	Iniwrite, %background2%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, background2
	Iniwrite, %token2%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, token2
	Iniwrite, %apiaccess2%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, apiaccess2
	Iniwrite, %vari2%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, vari2
	Iniwrite, %threads2%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, threads2
	Iniwrite, %cpuu2%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, cpuu2
	Iniwrite, %cpup2%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, cpup2
	Iniwrite, %kalive2%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, kalive2
	Iniwrite, %pool3%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, pool3
	Iniwrite, %address3%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, address3
	Iniwrite, %rigid3%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, rigid3
	Iniwrite, %pword3%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, pword3
	Iniwrite, %nicehash3%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, nicehash3
	Iniwrite, %algo3%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, algo3
	Iniwrite, %htport3%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, htport3
	Iniwrite, %background3%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, background3
	Iniwrite, %token3%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, token3
	Iniwrite, %apiaccess3%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, apiaccess3
	Iniwrite, %vari3%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, vari3
	Iniwrite, %threads3%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, threads3
	Iniwrite, %cpuu3%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, cpuu3
	Iniwrite, %cpup3%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, cpup3
	Iniwrite, %kalive3%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 3, kalive3
	Iniwrite, %pool4%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, pool4
	Iniwrite, %address4%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, address4
	Iniwrite, %rigid4%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, rigid4
	Iniwrite, %pword4%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, pword4
	Iniwrite, %nicehash4%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, nicehash4
	Iniwrite, %algo4%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, algo4
	Iniwrite, %htport4%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, htport4
	Iniwrite, %background4%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, background4
	Iniwrite, %token4%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, token4
	Iniwrite, %apiaccess4%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, apiaccess4
	Iniwrite, %vari4%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, vari4
	Iniwrite, %threads4%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, threads4
	Iniwrite, %cpuu4%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, cpuu4
	Iniwrite, %cpup4%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, cpup4
	Iniwrite, %kalive4%, %A_ScriptDir%\XMRIG-Helper.ini, POOL 4, kalive4
	Iniwrite, %xmrigdir%, %A_ScriptDir%\XMRIG-Helper.ini, DIR, xmrigdir
ExitApp
XHelper:
	Run, https://github.com/ALLRiPPED/xmrig-helper
Return
XMRIG:
	Run, https://github.com/ALLRiPPED/xmrig/releases
Return
ARHash:
	Run, https://arhash.xyz/
Return

LP1:
+F5::
	SetWorkingDir %xmrigdir%
	if (background1 = 1)
	{
		bkg1 := "-B "
	}else{
		bkg1 :=
	}
	if (apiaccess1 = 1)
	{
		apiacc1 := "--api-access-token " token1 " --api-no-restricted "
	}else{
		apiacc1 :=
	}
	if (kalive1 = 1) 
	{
		klive1 := "-k "
	}else{
		klive1 :=
	}	
	if (nicehash1 = 1)
	{
		nh1 := "--nicehash"
	}else{
		nh1 :=
	}	
	Run, %xmrigdir%\xmrig.exe -a %algo1% %bkg1%--api-port %htport1% --api-worker-id %rigid1% --rig-id %rigid1% %apiacc1%-t %threads1% --max-cpu-usage %cpuu1% --cpu-priority %cpup1% -o %pool1% -u %address1% -p %pword1% --variant %vari1% %klive1% %nh1%
return

LP2:
+F6::
	SetWorkingDir %xmrigdir%
	if (background2 = 1)
	{
		bkg2 := "-B "
	}else{
		bkg2 :=
	}
	if (apiaccess2 = 1)
	{
		apiacc2 := "--api-access-token " token2 " --api-no-restricted "
	}else{
		apiacc2 :=
	}
	if (kalive2 = 1) 
	{
		klive2 := "-k "
	}else{
		klive2 :=
	}	
	if (nicehash2 = 1)
	{
		nh2 := "--nicehash"
	}else{
		nh2 :=
	}	
	Run, %xmrigdir%\xmrig.exe -a %algo2% %bkg2%--api-port %htport2% --api-worker-id %rigid2% --rig-id %rigid2% %apiacc2%-t %threads2% --max-cpu-usage %cpuu2% --cpu-priority %cpup2% -o %pool2% -u %address2% -p %pword2% --variant %vari2% %klive2% %nh2%
return

LP3:
+F7::
	SetWorkingDir %xmrigdir%
	if (background3 = 1)
	{
		bkg3 := "-B "
	}else{
		bkg3 :=
	}
	if (apiaccess3 = 1)
	{
		apiacc3 := "--api-access-token " token3 " --api-no-restricted "
	}else{
		apiacc3 :=
	}
	if (kalive3 = 1) 
	{
		klive3 := "-k "
	}else{
		klive3 :=
	}	
	if (nicehash3 = 1)
	{
		nh3 := "--nicehash"
	}else{
		nh3 :=
	}	
	Run, %xmrigdir%\xmrig.exe -a %algo3% %bkg3%--api-port %htport3% --api-worker-id %rigid3% --rig-id %rigid3% %apiacc3%-t %threads3% --max-cpu-usage %cpuu3% --cpu-priority %cpup3% -o %pool3% -u %address3% -p %pword3% --variant %vari3% %klive3% %nh3%
return

LP4:
+F8::
	SetWorkingDir %xmrigdir%
	if (background4 = 1)
	{
		bkg4 := "-B "
	}else{
		bkg4 :=
	}
	if (apiaccess4 = 1)
	{
		apiacc4 := "--api-access-token " token4 " --api-no-restricted "
	}else{
		apiacc4 :=
	}
	if (kalive4 = 1) 
	{
		klive4 := "-k "
	}else{
		klive4 :=
	}	
	if (nicehash4 = 1)
	{
		nh4 := "--nicehash"
	}else{
		nh4 :=
	}	
	Run, %xmrigdir%\xmrig.exe -a %algo4% %bkg4%--api-port %htport4% --api-worker-id %rigid4% --rig-id %rigid4% %apiacc4%-t %threads4% --max-cpu-usage %cpuu4% --cpu-priority %cpup4% -o %pool4% -u %address4% -p %pword4% --variant %vari4% %klive4% %nh4%
return
