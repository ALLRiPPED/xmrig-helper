; XMRIG Mining Helper v1.0.0
; Just a little something I came up with to help with crypto mining with xmrig.
;#Warn
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance force
IfNotExist, thepitster.jpg
	URLDownloadToFile, https://raw.githubusercontent.com/ALLRiPPED/xmrig-helper/master/thepitster.jpg, thepitster.jpg
IfNotExist, arcryptologo.png
	URLDownloadToFile, https://raw.githubusercontent.com/ALLRiPPED/xmrig-helper/master/arcryptologo.png, arcryptologo.png
IfNotExist, app.ico
	URLDownloadToFile, https://raw.githubusercontent.com/ALLRiPPED/xmrig-helper/master/app.ico, app.ico
	if(FileExist(A_ScriptDir "\app.ico"))
	Menu,Tray,Icon,app.ico
	Gui, Margin, 0,0
	Gui +LastFound
	GUI_ID:=WinExist()
	Gui, -Caption +AlwaysOnTop +Border
	Gui, Add, Picture, , thepitster.jpg
	Gui,Show, AutoSize Hide, XMRIG Mining Helper v1.0.0
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
	Fileappend, algo1=cryptonight/2`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, htport1=41000`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, background1=0`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, token1=allripped`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, apiaccess1=0`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, vari1=1`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, threads1=0`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, cpuu1=100`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, cpup1=0`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, kalive1=0`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, `r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, [POOL 2]`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, pool2=Pool Host/IP:Port`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, address2=Wallet`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, rigid2=Rig ID`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, pword2=Password`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, nicehash2=0`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, algo2=cryptonight`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, htport2=42000`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, background2=0`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, token2=allripped`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, apiaccess2=0`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, vari2=1`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, threads2=0`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, cpuu2=100`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, cpup2=0`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, kalive2=0`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, `r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, [POOL 3]`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, pool3=Pool Host/IP:Port`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, address3=Wallet`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, rigid3=Rig ID`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, pword3=Password`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, nicehash3=0`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, algo3=cn/1`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, htport3=43000`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, background3=0`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, token3=allripped`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, apiaccess3=0`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, vari3=1`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, threads3=0`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, cpuu3=100`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, cpup3=0`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, kalive3=0`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, `r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, [POOL 4]`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, pool4=Pool Host/IP:Port`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, address4=Wallet`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, rigid4=Rig ID`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, pword4=Password`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, nicehash4=0`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, algo4=cn-lite`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, htport4=44000`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, background4=0`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, token4=allripped`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, apiaccess4=0`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, vari4=1`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, threads4=0`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, cpuu4=100`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, cpup4=0`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, kalive4=0`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, `r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, [DIR]`r`n,%A_ScriptDir%\XMRIG-Helper.ini
	Fileappend, xmrigdir=%A_ScriptDir%`r`n,%A_ScriptDir%\XMRIG-Helper.ini
}
	Menu, Tray, Add, Show, GuiShow
	Menu, Tray, Add
	Menu, Tray, Add, XMRIG-Helper &Updates, ButtonXHelper
	Menu, Tray, Add, XMRIG-Helper.&ini, TrayEditini
	Menu, Tray, Add
	Menu, Tray, Add, &ARHash.xyz, ButtonARHash
	Menu, Tray, Add, &XMRIG , ButtonXMRIG
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
	IniRead, pool2, %A_ScriptDir%\XMRIG-Helper.ini, POOL 2, pool2, %A_space%
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
	Gui, Color, 000000
	Gui, Font, c00FF00,
	Gui, Add, Button, x12 y450 w70 h30 hwndHMonero, Monero
	Opt1 := [6, "Black", "Lime", "Black"]
	Opt2 := [ , "Black", "Black", "Lime"]
	Opt3 := {4: "Red"}
	Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]
	If !ImageButton.Create(HMonero, Opt1, Opt2, Opt3, Opt4)
		MsgBox, 0, ImageButton Error Monero, % ImageButton.LastError
	Gui, Add, Button, x12 y530 w70 h30 hwndHAlloy, Alloy
	Opt1 := [6, "Black", "Lime", "Black"]
	Opt2 := [ , "Black", "Black", "Lime"]
	Opt3 := {4: "Red"}
	Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]
	If !ImageButton.Create(HAlloy, Opt1, Opt2, Opt3, Opt4)
		MsgBox, 0, ImageButton Error Alloy, % ImageButton.LastError
	Gui, Add, Button, x12 y490 w70 h30 hwndHMUTEX, MUTEX
	Opt1 := [6, "Black", "Lime", "Black"]
	Opt2 := [ , "Black", "Black", "Lime"]
	Opt3 := {4: "Red"}
	Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]
	If !ImageButton.Create(HMUTEX, Opt1, Opt2, Opt3, Opt4)
		MsgBox, 0, ImageButton Error MUTEX, % ImageButton.LastError
	Gui, Add, Button, x92 y490 w70 h30 hwndHARQMA, ARQMA
	Opt1 := [6, "Black", "Lime", "Black"]
	Opt2 := [ , "Black", "Black", "Lime"]
	Opt3 := {4: "Red"}
	Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]
	If !ImageButton.Create(HARQMA, Opt1, Opt2, Opt3, Opt4)
		MsgBox, 0, ImageButton Error ARQMA, % ImageButton.LastError
	Gui, Add, Button, x252 y490 w70 h30 hwndHXHelper, XHelper
	Opt1 := [6, "Black", "Lime", "Black"]
	Opt2 := [ , "Black", "Black", "Lime"]
	Opt3 := {4: "Red"}
	Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]
	If !ImageButton.Create(HXHelper, Opt1, Opt2, Opt3, Opt4)
		MsgBox, 0, ImageButton Error XHelper, % ImageButton.LastError
	Gui, Add, Button, x172 y490 w70 h30 hwndHVeronite, Veronite
	Opt1 := [6, "Black", "Lime", "Black"]
	Opt2 := [ , "Black", "Black", "Lime"]
	Opt3 := {4: "Red"}
	Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]
	If !ImageButton.Create(HVeronite, Opt1, Opt2, Opt3, Opt4)
		MsgBox, 0, ImageButton Error Veronite, % ImageButton.LastError
	Gui, Add, Button, x172 y450 w70 h30 hwndHXCA, X-CASH
	Opt1 := [6, "Black", "Lime", "Black"]
	Opt2 := [ , "Black", "Black", "Lime"]
	Opt3 := {4: "Red"}
	Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]
	If !ImageButton.Create(HXCA, Opt1, Opt2, Opt3, Opt4)
		MsgBox, 0, ImageButton Error X-CASH, % ImageButton.LastError
	Gui, Add, Button, x172 y530 w70 h30 hwndHXaria, Xaria
	Opt1 := [6, "Black", "Lime", "Black"]
	Opt2 := [ , "Black", "Black", "Lime"]
	Opt3 := {4: "Red"}
	Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]
	If !ImageButton.Create(HXaria, Opt1, Opt2, Opt3, Opt4)
		MsgBox, 0, ImageButton Error Xaria, % ImageButton.LastError
	Gui, Add, Button, x332 y450 w70 h30 hwndHAbout, About
	Opt1 := [6, "Black", "Lime", "Black"]
	Opt2 := [ , "Black", "Black", "Lime"]
	Opt3 := {4: "Red"}
	Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]
	If !ImageButton.Create(HAbout, Opt1, Opt2, Opt3, Opt4)
		MsgBox, 0, ImageButton Error About, % ImageButton.LastError
	Gui, Add, Button, x332 y490 w70 h30 hwndHHideMe, HideMe
	Opt1 := [6, "Black", "Lime", "Black"]
	Opt2 := [ , "Black", "Black", "Lime"]
	Opt3 := {4: "Red"}
	Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]
	If !ImageButton.Create(HHideMe, Opt1, Opt2, Opt3, Opt4)
		MsgBox, 0, ImageButton Error HideMe, % ImageButton.LastError
	Gui, Add, Button, x332 y530 w70 h30 hwndHClose, Close
	Opt1 := [6, "Black", "Lime", "Black"]
	Opt2 := [ , "Black", "Black", "Lime"]
	Opt3 := {4: "Red"}
	Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]
	If !ImageButton.Create(HClose, Opt1, Opt2, Opt3, Opt4)
		MsgBox, 0, ImageButton Error Close, % ImageButton.LastError
	Gui, Add, Button, x652 y500 w70 h30 hwndHARHASH, ARHash
	Opt1 := [6, "Black", "Lime", "Black"]
	Opt2 := [ , "Black", "Black", "Lime"]
	Opt3 := {4: "Red"}
	Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]
	If !ImageButton.Create(HARHash, Opt1, Opt2, Opt3, Opt4)
		MsgBox, 0, ImageButton Error ARHash, % ImageButton.LastError
	Gui, Add, Button, x782 y500 w70 h30 hwndHXMRIG, XMRIG
	Opt1 := [6, "Black", "Lime", "Black"]
	Opt2 := [ , "Black", "Black", "Lime"]
	Opt3 := {4: "Red"}
	Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]
	If !ImageButton.Create(HXMRIG, Opt1, Opt2, Opt3, Opt4)
		MsgBox, 0, ImageButton Error XMRig, % ImageButton.LastError
	Gui, Add, Tab, x2 y0 w885 h430 , Info|Pool Info|Directory Info
	Gui, Tab, Info
	Gui, Add, Text, x32 y30 w780 h310 , Just a little something I came up with to help with crypto mining with XMRIG. With xmrig.exe and this script's SHIFT+F# hotkeys with your pool login information setup correctly, you can then easily connect to your crypto pools. So all you have to do is press a key combo and the info is placed in the miner for you, but you have to manually add every pool you want to mine. If you want to edit the hotkeys all you have to do is open the script, edit the correct areas, run the script and press desired hotkeys. Oh and be sure you have autohotkey installed http://www.autohotkey.com/download.
	Gui, Add, Picture, x310 y170 w300 h104 +BackgroundTrans, arcryptologo.png
	Gui, Tab, Pool Info
	Gui, Add, GroupBox, x12 y30 w420 h170 , Mining Pool 1
	Gui, Add, CheckBox, x342 y50 w70 h30 vnicehash1 Checked%nicehash1%, Use Nicehash
	Gui, Add, CheckBox, x342 y80 w80 h30 vbackground1 Checked%background1%, Run in Background
	Gui, Add, CheckBox, x342 y110 w80 h20 vapiaccess1 Checked%apiaccess1%, API Access
	Gui, Add, CheckBox, x342 y130 w80 h20 vkalive1 Checked%kalive1%, Keep Alive
	Gui, Add, Text, x22 y50 w40 h20 , Pool:
	Gui, Add, Edit, x62 y50 w130 h20 vpool1 hwndEdit1, %pool1%
	Gui, Add, Text, x22 y70 w40 h20 , Wallet:
	Gui, Add, Edit, x62 y70 w130 h20 vaddress1 hwndEdit2, %address1%
	Gui, Add, Text, x22 y90 w40 h20 , Rig ID:
	Gui, Add, Edit, x62 y90 w130 h20 vrigid1 hwndEdit3, %rigid1%
	Gui, Add, Text, x22 y110 w40 h20 , Pass:
	Gui, Add, Edit, x62 y110 w130 h20 vpword1 hwndEdit4, %pword1%
	Gui, Add, Text, x22 y130 w40 h20 , ALGO:
	Gui, Add, Edit, x62 y130 w130 h20 valgo1 hwndEdit5, %algo1%
	Gui, Add, Text, x22 y150 w40 h20 , Port:
	Gui, Add, Edit, x62 y150 w130 h20 vhtport1 hwndEdit6, %htport1%
	Gui, Add, Text, x202 y50 w70 h20 , Token:
	Gui, Add, Edit, x272 y50 w60 h20 vtoken1 hwndEdit7, %token1%
	Gui, Add, Text, x202 y70 w70 h20 , Threads:
	Gui, Add, Edit, x272 y70 w60 h20 vthreads1 hwndEdit8, %threads1%
	Gui, Add, Text, x202 y90 w70 h20 , CPU `%:
	Gui, Add, Edit, x272 y90 w60 h20 vcpuu1 hwndEdit9, %cpuu1%
	Gui, Add, Text, x202 y110 w70 h20 , CPU Priority:
	Gui, Add, Edit, x272 y110 w60 h20 vcpup1 hwndEdit10, %cpup1%
	Gui, Add, Text, x202 y130 w70 h20 , PoW Variant:
	Gui, Add, Edit, x272 y130 w60 h20 vvari1 hwndEdit11, %vari1%
	Gui, Add, Button, x252 y170 w80 h20 gLP1 hwndHLP1, Launch Pool 1
	Opt1 := [6, "Black", "Lime", "Black"]
	Opt2 := [ , "Black", "Black", "Lime"]
	Opt3 := {4: "Red"}
	Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]
	If !ImageButton.Create(HLP1, Opt1, Opt2, Opt3, Opt4)
		MsgBox, 0, ImageButton Error LP1, % ImageButton.LastError
	Gui, Add, GroupBox, x452 y30 w420 h170 , Mining Pool 2
	Gui, Add, CheckBox, x782 y50 w70 h30 vnicehash2 Checked%nicehash2%, Use Nicehash
	Gui, Add, CheckBox, x782 y80 w80 h30 vbackground2 Checked%background2%, Run in Background
	Gui, Add, CheckBox, x782 y110 w80 h20 vapiaccess2 Checked%apiaccess2%, API Access
	Gui, Add, CheckBox, x782 y130 w80 h20 vkalive2 Checked%kalive2%, Keep Alive
	Gui, Add, Text, x462 y50 w40 h20 , Pool:
	Gui, Add, Edit, x502 y50 w130 h20 vpool2 hwndEdit12, %pool2%
	Gui, Add, Text, x462 y70 w40 h20 , Wallet:
	Gui, Add, Edit, x502 y70 w130 h20 vaddress2 hwndEdit13, %address2%
	Gui, Add, Text, x462 y90 w40 h20 , Rig ID:
	Gui, Add, Edit, x502 y90 w130 h20 vrigid2 hwndEdit14, %rigid2%
	Gui, Add, Text, x462 y110 w40 h20 , Pass:
	Gui, Add, Edit, x502 y110 w130 h20 vpword2 hwndEdit15, %pword2%
	Gui, Add, Text, x462 y130 w40 h20 , ALGO:
	Gui, Add, Edit, x502 y130 w130 h20 valgo2 hwndEdit16, %algo2%
	Gui, Add, Text, x462 y150 w30 h20 , Port:
	Gui, Add, Edit, x502 y150 w130 h20 vhtport2 hwndEdit17, %htport2%
	Gui, Add, Text, x642 y50 w70 h20 , Token:
	Gui, Add, Edit, x712 y50 w60 h20 vtoken2 hwndEdit18, %token2%
	Gui, Add, Text, x642 y70 w70 h20 , Threads:
	Gui, Add, Edit, x712 y70 w60 h20 vthreads2 hwndEdit19, %threads2%
	Gui, Add, Text, x642 y90 w70 h20 , CPU `%:
	Gui, Add, Edit, x712 y90 w60 h20 vcpuu2 hwndEdit20, %cpuu2%
	Gui, Add, Text, x642 y110 w70 h20 , CPU Priority:
	Gui, Add, Edit, x712 y110 w60 h20 vcpup2 hwndEdit21, %cpup2%
	Gui, Add, Text, x642 y130 w70 h20 , PoW Variant:
	Gui, Add, Edit, x712 y130 w60 h20 vvari2 hwndEdit22, %vari2%
	Gui, Add, Button, x692 y170 w80 h20 gLP2 hwndHLP2, Launch Pool 2
	Opt1 := [6, "Black", "Lime", "Black"]
	Opt2 := [ , "Black", "Black", "Lime"]
	Opt3 := {4: "Red"}
	Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]
	If !ImageButton.Create(HLP2, Opt1, Opt2, Opt3, Opt4)
		MsgBox, 0, ImageButton Error LP2, % ImageButton.LastError
	Gui, Add, GroupBox, x12 y220 w420 h170 , Mining Pool 3
	Gui, Add, CheckBox, x342 y240 w70 h30 vnicehash3 Checked%nicehash3%,Use Nicehash
	Gui, Add, CheckBox, x342 y270 w80 h30 vbackground3 Checked%background3%, Run in Background
	Gui, Add, CheckBox, x342 y300 w80 h20 vapiaccess3 Checked%apiaccess3%, API Access
	Gui, Add, CheckBox, x342 y320 w80 h20 vkalive3 Checked%kalive3%, Keep Alive
	Gui, Add, Text, x22 y240 w40 h20 , Pool:
	Gui, Add, Edit, x62 y240 w130 h20 vpool3 hwndEdit23, %pool3%
	Gui, Add, Text, x22 y260 w40 h20 , Wallet:
	Gui, Add, Edit, x62 y260 w130 h20 vaddress3 hwndEdit24, %address3%
	Gui, Add, Text, x22 y280 w40 h20 , Rig ID:
	Gui, Add, Edit, x62 y280 w130 h20 vrigid3 hwndEdit25, %rigid3%
	Gui, Add, Text, x22 y300 w40 h20 , Pass:
	Gui, Add, Edit, x62 y300 w130 h20 vpword3 hwndEdit26, %pword3%
	Gui, Add, Text, x22 y320 w40 h20 , ALGO:
	Gui, Add, Edit, x62 y320 w130 h20 valgo3 hwndEdit27, %algo3%
	Gui, Add, Text, x22 y340 w40 h20 , Port:
	Gui, Add, Edit, x62 y340 w130 h20 vhtport3 hwndEdit28, %htport3%
	Gui, Add, Text, x202 y240 w70 h20 , Token:
	Gui, Add, Edit, x272 y240 w60 h20 vtoken3 hwndEdit29, %token3%
	Gui, Add, Text, x202 y260 w70 h20 , Threads:
	Gui, Add, Edit, x272 y260 w60 h20 vthreads3 hwndEdit30, %threads3%
	Gui, Add, Text, x202 y280 w70 h20 , CPU `%:
	Gui, Add, Edit, x272 y280 w60 h20 vcpuu3 hwndEdit31, %cpuu3%
	Gui, Add, Text, x202 y300 w70 h20 , CPU Priority:
	Gui, Add, Edit, x272 y300 w60 h20 vcpup3 hwndEdit32, %cpup3%
	Gui, Add, Text, x202 y320 w70 h20 , PoW Variant:
	Gui, Add, Edit, x272 y320 w60 h20 vvari3 hwndEdit33, %vari3%
	Gui, Add, Button, x252 y360 w80 h20 gLP3 hwndHLP3, Launch Pool 3
	Opt1 := [6, "Black", "Lime", "Black"]
	Opt2 := [ , "Black", "Black", "Lime"]
	Opt3 := {4: "Red"}
	Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]
	If !ImageButton.Create(HLP3, Opt1, Opt2, Opt3, Opt4)
		MsgBox, 0, ImageButton Error LP3, % ImageButton.LastError
	Gui, Add, GroupBox, x452 y220 w420 h170 , Mining Pool 4
	Gui, Add, CheckBox, x782 y240 w70 h30 vnicehash4 Checked%nicehash4%, Use Nicehash
	Gui, Add, CheckBox, x782 y270 w80 h30 vbackground4 Checked%background4%, Run in Background
	Gui, Add, CheckBox, x782 y300 w80 h20 vapiaccess4 Checked%apiaccess4%, API Access
	Gui, Add, CheckBox, x782 y320 w80 h20 vkalive4 Checked%kalive4%, Keep Alive
	Gui, Add, Text, x462 y240 w50 h20 , Pool:
	Gui, Add, Edit, x512 y240 w130 h20 vpool4 hwndEdit34, %pool4%
	Gui, Add, Text, x462 y260 w40 h20 , Wallet:
	Gui, Add, Edit, x512 y260 w130 h20 vaddress4 hwndEdit35, %address4%
	Gui, Add, Text, x462 y280 w40 h20 , Rig ID:
	Gui, Add, Edit, x512 y280 w130 h20 vrigid4 hwndEdit36, %rigid4%
	Gui, Add, Text, x462 y300 w40 h20 , Pass:
	Gui, Add, Edit, x512 y300 w130 h20 vpword4 hwndEdit37, %pword4%
	Gui, Add, Text, x462 y320 w40 h20 , ALGO:
	Gui, Add, Edit, x512 y320 w130 h20 valgo4 hwndEdit38, %algo4%
	Gui, Add, Text, x462 y340 w40 h20 , Port:
	Gui, Add, Edit, x512 y340 w130 h20 vhtport4 hwndEdit39, %htport4%
	Gui, Add, Text, x642 y240 w70 h20 , Token:
	Gui, Add, Edit, x712 y240 w60 h20 vtoken4 hwndEdit40, %token4%
	Gui, Add, Text, x642 y260 w70 h20 , Threads:
	Gui, Add, Edit, x712 y260 w60 h20 vthreads4 hwndEdit41, %threads4%
	Gui, Add, Text, x642 y280 w70 h20 , CPU `%:
	Gui, Add, Edit, x712 y280 w60 h20 vcpuu4 hwndEdit42, %cpuu4%
	Gui, Add, Text, x642 y300 w70 h20 , CPU Priority:
	Gui, Add, Edit, x712 y300 w60 h20 vcpup4 hwndEdit43, %cpup4%
	Gui, Add, Text, x642 y320 w70 h20 , PoW Variant:
	Gui, Add, Edit, x712 y320 w60 h20 vvari4 hwndEdit44, %vari4%
	Gui, Add, Button, x692 y360 w80 h20 gLP4 hwndHLP4, Launch Pool 4
	Opt1 := [6, "Black", "Lime", "Black"]
	Opt2 := [ , "Black", "Black", "Lime"]
	Opt3 := {4: "Red"}
	Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]
	If !ImageButton.Create(HLP4, Opt1, Opt2, Opt3, Opt4)
		MsgBox, 0, ImageButton Error LP4, % ImageButton.LastError
	Gui, Add, Button, x382 y400 w100 h20 gOK hwndHOK, OK
	Opt1 := [6, "Black", "Lime", "Black"]
	Opt2 := [ , "Black", "Black", "Lime"]
	Opt3 := {4: "Red"}
	Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]
	If !ImageButton.Create(HOK, Opt1, Opt2, Opt3, Opt4)
		MsgBox, 0, ImageButton Error OK, % ImageButton.LastError
	Gui, Tab, Directory Info
	Gui, Add, Text, x102 y130 w160 h20 , XMRIG Executable Location
	Gui, Add, Text, x102 y160 w630 h20 vxmrigdir, %xmrigdir%\xmrig.exe
	Gui, Add, Text, x102 y200 w90 h20 , XMRIG Folder
	Gui, Add, Text, x102 y230 w630 h20 , %xmrigdir%
	Gui, Add, Button, x662 y190 w70 h20 hwndHBrowse, Browse
	Opt1 := [6, "Black", "Lime", "Black"]
	Opt2 := [ , "Black", "Black", "Lime"]
	Opt3 := {4: "Red"}
	Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]
	If !ImageButton.Create(HBrowse, Opt1, Opt2, Opt3, Opt4)
		MsgBox, 0, ImageButton Error Browse, % ImageButton.LastError
	Gui, Add, Button, x662 y300 w100 h30 gOK hwndHOK, OK
	Opt1 := [6, "Black", "Lime", "Black"]
	Opt2 := [ , "Black", "Black", "Lime"]
	Opt3 := {4: "Red"}
	Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]
	If !ImageButton.Create(HOK, Opt1, Opt2, Opt3, Opt4)
		MsgBox, 0, ImageButton Error OK, % ImageButton.LastError
	CtlColors.Attach(Edit1, "122710", "00FF00")
	CtlColors.Attach(Edit2, "122710", "00FF00")
	CtlColors.Attach(Edit3, "122710", "00FF00")
	CtlColors.Attach(Edit4, "122710", "00FF00")
	CtlColors.Attach(Edit5, "122710", "00FF00")
	CtlColors.Attach(Edit6, "122710", "00FF00")
	CtlColors.Attach(Edit7, "122710", "00FF00")
	CtlColors.Attach(Edit8, "122710", "00FF00")
	CtlColors.Attach(Edit9, "122710", "00FF00")
	CtlColors.Attach(Edit10, "122710", "00FF00")
	CtlColors.Attach(Edit11, "122710", "00FF00")
	CtlColors.Attach(Edit12, "122710", "00FF00")
	CtlColors.Attach(Edit13, "122710", "00FF00")
	CtlColors.Attach(Edit14, "122710", "00FF00")
	CtlColors.Attach(Edit15, "122710", "00FF00")
	CtlColors.Attach(Edit16, "122710", "00FF00")
	CtlColors.Attach(Edit17, "122710", "00FF00")
	CtlColors.Attach(Edit18, "122710", "00FF00")
	CtlColors.Attach(Edit19, "122710", "00FF00")
	CtlColors.Attach(Edit20, "122710", "00FF00")
	CtlColors.Attach(Edit21, "122710", "00FF00")
	CtlColors.Attach(Edit22, "122710", "00FF00")
	CtlColors.Attach(Edit23, "122710", "00FF00")
	CtlColors.Attach(Edit24, "122710", "00FF00")
	CtlColors.Attach(Edit25, "122710", "00FF00")
	CtlColors.Attach(Edit26, "122710", "00FF00")
	CtlColors.Attach(Edit27, "122710", "00FF00")
	CtlColors.Attach(Edit28, "122710", "00FF00")
	CtlColors.Attach(Edit29, "122710", "00FF00")
	CtlColors.Attach(Edit30, "122710", "00FF00")
	CtlColors.Attach(Edit31, "122710", "00FF00")
	CtlColors.Attach(Edit32, "122710", "00FF00")
	CtlColors.Attach(Edit33, "122710", "00FF00")
	CtlColors.Attach(Edit34, "122710", "00FF00")
	CtlColors.Attach(Edit35, "122710", "00FF00")
	CtlColors.Attach(Edit36, "122710", "00FF00")
	CtlColors.Attach(Edit37, "122710", "00FF00")
	CtlColors.Attach(Edit38, "122710", "00FF00")
	CtlColors.Attach(Edit39, "122710", "00FF00")
	CtlColors.Attach(Edit40, "122710", "00FF00")
	CtlColors.Attach(Edit41, "122710", "00FF00")
	CtlColors.Attach(Edit42, "122710", "00FF00")
	CtlColors.Attach(Edit43, "122710", "00FF00")
	CtlColors.Attach(Edit44, "122710", "00FF00")
	Gui, Margin, 0,0
	Gui +LastFound
	GUI_ID:=WinExist()
	Gui, Show, x341 y133 h611 w887, XMRIG Mining Helper v1.0.0
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
	Gui,Show,Autosize Hide,XMRIG Helper v1.0.0
	DllCall("AnimateWindow",UInt,GUI_ID,Int,500,UInt,0xa0000)
	Sleep 3000
	DllCall("AnimateWindow",UInt,GUI_ID,Int,500,UInt,0x90000)
	Gui, Destroy
	Goto, Main
Return
GuiEscape:
GuiClose:
	DllCall("AnimateWindow",UInt,GUI_ID,UInt,750,UInt,0x90000)
	Gui, Submit, Hide
Return
GuiMinimize:
	DllCall("AnimateWindow",UInt,GUI_ID,UInt,750,UInt,0x90000)
	Gui, Submit, Hide
Return
GuiShow:
	Gui, Margin, 0,0
	Gui +LastFound
	GUI_ID:=WinExist()
	Gui, Show, x341 y133 h611 w887,, XMRIG Mining Helper v1.0.0
	DllCall("AnimateWindow",UInt,GUI_ID,UInt,750,UInt,0xa0000)
Return
#X::
	Gui % (MainGui:=!MainGui) ? "Hide" : "Show", x341 y133 h611 w887, XMRIG Mining Helper v1.0.0
	Goto, OK
return
TrayReload:
	Gui, Submit
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
	Gui, Submit, Hide
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
LP1:
+F5::
	Gui, Submit, NoHide
	SetWorkingDir %xmrigdir%
	if (background1 = 1)
		bkg1 := "-B "
	else
		bkg1 :=
	if (apiaccess1 = 1)
		apiacc1 := "--api-access-token " token1 " --api-no-restricted "
	else
		apiacc1 :=
	if (kalive1 = 1) 
		klive1 := "-k "
	else
		klive1 :=
	if (nicehash1 = 1)
		nh1 := "--nicehash"
	else
		nh1 :=
	Run, %xmrigdir%\xmrig.exe -a %algo1% %bkg1%--api-port %htport1% --api-worker-id %rigid1% --rig-id %rigid1% %apiacc1%-t %threads1% --max-cpu-usage %cpuu1% --cpu-priority %cpup1% -o %pool1% -u %address1% -p %pword1% --variant %vari1% %klive1% %nh1%
return
LP2:
+F6::
	Gui, Submit, NoHide
	SetWorkingDir %xmrigdir%
	if (background2 = 1)
		bkg2 := "-B "
	else
		bkg2 :=
	if (apiaccess2 = 1)
		apiacc2 := "--api-access-token " token2 " --api-no-restricted "
	else
		apiacc2 :=
	if (kalive2 = 1) 
		klive2 := "-k "
	else
		klive2 :=
	if (nicehash2 = 1)
		nh2 := "--nicehash"
	else
		nh2 :=
	Run, %xmrigdir%\xmrig.exe -a %algo2% %bkg2%--api-port %htport2% --api-worker-id %rigid2% --rig-id %rigid2% %apiacc2%-t %threads2% --max-cpu-usage %cpuu2% --cpu-priority %cpup2% -o %pool2% -u %address2% -p %pword2% --variant %vari2% %klive2% %nh2%
return
LP3:
+F7::
	Gui, Submit, NoHide
	SetWorkingDir %xmrigdir%
	if (background3 = 1)
		bkg3 := "-B "
	else
		bkg3 :=
	if (apiaccess3 = 1)
		apiacc3 := "--api-access-token " token3 " --api-no-restricted "
	else
		apiacc3 :=
	if (kalive3 = 1) 
		klive3 := "-k "
	else
		klive3 :=
	if (nicehash3 = 1)
		nh3 := "--nicehash"
	else
		nh3 :=
	Run, %xmrigdir%\xmrig.exe -a %algo3% %bkg3%--api-port %htport3% --api-worker-id %rigid3% --rig-id %rigid3% %apiacc3%-t %threads3% --max-cpu-usage %cpuu3% --cpu-priority %cpup3% -o %pool3% -u %address3% -p %pword3% --variant %vari3% %klive3% %nh3%
return
LP4:
+F8::
	Gui, Submit, NoHide
	SetWorkingDir %xmrigdir%
	if (background4 = 1)
		bkg4 := "-B "
	else
		bkg4 :=
	if (apiaccess4 = 1)
		apiacc4 := "--api-access-token " token4 " --api-no-restricted "
	else
		apiacc4 :=
	if (kalive4 = 1) 
		klive4 := "-k "
	else
		klive4 :=
	if (nicehash4 = 1)
		nh4 := "--nicehash"
	else
		nh4 :=
	Run, %xmrigdir%\xmrig.exe -a %algo4% %bkg4%--api-port %htport4% --api-worker-id %rigid4% --rig-id %rigid4% %apiacc4%-t %threads4% --max-cpu-usage %cpuu4% --cpu-priority %cpup4% -o %pool4% -u %address4% -p %pword4% --variant %vari4% %klive4% %nh4%
Return
;######################## DO NOT EDIT THIS SCRIPT UNLESS YOU KNOW WHAT YOUR ARE DOING! ########################
;####################################### THAT MEANS YOU [^_^] #################################################
Class CtlColors {
   Static Attached := {}
   Static HandledMessages := {Edit: 0, ListBox: 0, Static: 0}
   Static MessageHandler := "CtlColors_OnMessage"
   Static WM_CTLCOLOR := {Edit: 0x0133, ListBox: 0x134, Static: 0x0138}
   Static HTML := {AQUA: 0xFFFF00, BLACK: 0x000000, BLUE: 0xFF0000, FUCHSIA: 0xFF00FF, GRAY: 0x808080, GREEN: 0x008000
                 , LIME: 0x00FF00, MAROON: 0x000080, NAVY: 0x800000, OLIVE: 0x008080, PURPLE: 0x800080, RED: 0x0000FF
                 , SILVER: 0xC0C0C0, TEAL: 0x808000, WHITE: 0xFFFFFF, YELLOW: 0x00FFFF}
   Static NullBrush := DllCall("GetStockObject", "Int", 5, "UPtr")
   Static SYSCOLORS := {Edit: "", ListBox: "", Static: ""}
   Static ErrorMsg := ""
   Static InitClass := CtlColors.ClassInit()
   __New() { ; You must not instantiate this class!
      If (This.InitClass == "!DONE!") { ; external call after class initialization
         This["!Access_Denied!"] := True
         Return False
      }
   }
   __Delete() {
      If This["!Access_Denied!"]
         Return
      This.Free() ; free GDI resources
   }
   ClassInit() {
      CtlColors := New CtlColors
      Return "!DONE!"
   }
   CheckBkColor(ByRef BkColor, Class) {
      This.ErrorMsg := ""
      If (BkColor != "") && !This.HTML.HasKey(BkColor) && !RegExMatch(BkColor, "^[[:xdigit:]]{6}$") {
         This.ErrorMsg := "Invalid parameter BkColor: " . BkColor
         Return False
      }
      BkColor := BkColor = "" ? This.SYSCOLORS[Class]
              :  This.HTML.HasKey(BkColor) ? This.HTML[BkColor]
              :  "0x" . SubStr(BkColor, 5, 2) . SubStr(BkColor, 3, 2) . SubStr(BkColor, 1, 2)
      Return True
   }
   CheckTxColor(ByRef TxColor) {
      This.ErrorMsg := ""
      If (TxColor != "") && !This.HTML.HasKey(TxColor) && !RegExMatch(TxColor, "i)^[[:xdigit:]]{6}$") {
         This.ErrorMsg := "Invalid parameter TextColor: " . TxColor
         Return False
      }
      TxColor := TxColor = "" ? ""
              :  This.HTML.HasKey(TxColor) ? This.HTML[TxColor]
              :  "0x" . SubStr(TxColor, 5, 2) . SubStr(TxColor, 3, 2) . SubStr(TxColor, 1, 2)
      Return True
   }
   Attach(HWND, BkColor, TxColor := "") {
      Static ClassNames := {Button: "", ComboBox: "", Edit: "", ListBox: "", Static: ""}
      Static BS_CHECKBOX := 0x2, BS_RADIOBUTTON := 0x8
      Static ES_READONLY := 0x800
      Static COLOR_3DFACE := 15, COLOR_WINDOW := 5
      If (This.SYSCOLORS.Edit = "") {
         This.SYSCOLORS.Static := DllCall("User32.dll\GetSysColor", "Int", COLOR_3DFACE, "UInt")
         This.SYSCOLORS.Edit := DllCall("User32.dll\GetSysColor", "Int", COLOR_WINDOW, "UInt")
         This.SYSCOLORS.ListBox := This.SYSCOLORS.Edit
      }
      This.ErrorMsg := ""
      If (BkColor = "") && (TxColor = "") {
         This.ErrorMsg := "Both parameters BkColor and TxColor are empty!"
         Return False
      }
      If !(CtrlHwnd := HWND + 0) || !DllCall("User32.dll\IsWindow", "UPtr", HWND, "UInt") {
         This.ErrorMsg := "Invalid parameter HWND: " . HWND
         Return False
      }
      If This.Attached.HasKey(HWND) {
         This.ErrorMsg := "Control " . HWND . " is already registered!"
         Return False
      }
      Hwnds := [CtrlHwnd]
      Classes := ""
      WinGetClass, CtrlClass, ahk_id %CtrlHwnd%
      This.ErrorMsg := "Unsupported control class: " . CtrlClass
      If !ClassNames.HasKey(CtrlClass)
         Return False
      ControlGet, CtrlStyle, Style, , , ahk_id %CtrlHwnd%
      If (CtrlClass = "Edit")
         Classes := ["Edit", "Static"]
      Else If (CtrlClass = "Button") {
         IF (CtrlStyle & BS_RADIOBUTTON) || (CtrlStyle & BS_CHECKBOX)
            Classes := ["Static"]
         Else
            Return False
      }
      Else If (CtrlClass = "ComboBox") {
         VarSetCapacity(CBBI, 40 + (A_PtrSize * 3), 0)
         NumPut(40 + (A_PtrSize * 3), CBBI, 0, "UInt")
         DllCall("User32.dll\GetComboBoxInfo", "Ptr", CtrlHwnd, "Ptr", &CBBI)
         Hwnds.Insert(NumGet(CBBI, 40 + (A_PtrSize * 2, "UPtr")) + 0)
         Hwnds.Insert(Numget(CBBI, 40 + A_PtrSize, "UPtr") + 0)
         Classes := ["Edit", "Static", "ListBox"]
      }
      If !IsObject(Classes)
         Classes := [CtrlClass]
      If (BkColor <> "Trans")
         If !This.CheckBkColor(BkColor, Classes[1])
            Return False
      If !This.CheckTxColor(TxColor)
         Return False
      For I, V In Classes {
         If (This.HandledMessages[V] = 0)
            OnMessage(This.WM_CTLCOLOR[V], This.MessageHandler)
         This.HandledMessages[V] += 1
      }
      If (BkColor = "Trans")
         Brush := This.NullBrush
      Else
         Brush := DllCall("Gdi32.dll\CreateSolidBrush", "UInt", BkColor, "UPtr")
      For I, V In Hwnds
         This.Attached[V] := {Brush: Brush, TxColor: TxColor, BkColor: BkColor, Classes: Classes, Hwnds: Hwnds}
      DllCall("User32.dll\InvalidateRect", "Ptr", HWND, "Ptr", 0, "Int", 1)
      This.ErrorMsg := ""
      Return True
   }
   Change(HWND, BkColor, TxColor := "") {
      This.ErrorMsg := ""
      HWND += 0
      If !This.Attached.HasKey(HWND)
         Return This.Attach(HWND, BkColor, TxColor)
      CTL := This.Attached[HWND]
      If (BkColor <> "Trans")
         If !This.CheckBkColor(BkColor, CTL.Classes[1])
            Return False
      If !This.CheckTxColor(TxColor)
         Return False
      If (BkColor <> CTL.BkColor) {
         If (CTL.Brush) {
            If (Ctl.Brush <> This.NullBrush)
               DllCall("Gdi32.dll\DeleteObject", "Prt", CTL.Brush)
            This.Attached[HWND].Brush := 0
         }
         If (BkColor = "Trans")
            Brush := This.NullBrush
         Else
            Brush := DllCall("Gdi32.dll\CreateSolidBrush", "UInt", BkColor, "UPtr")
         For I, V In CTL.Hwnds {
            This.Attached[V].Brush := Brush
            This.Attached[V].BkColor := BkColor
         }
      }
      For I, V In Ctl.Hwnds
         This.Attached[V].TxColor := TxColor
      This.ErrorMsg := ""
      DllCall("User32.dll\InvalidateRect", "Ptr", HWND, "Ptr", 0, "Int", 1)
      Return True
   }
   Detach(HWND) {
      This.ErrorMsg := ""
      HWND += 0
      If This.Attached.HasKey(HWND) {
         CTL := This.Attached[HWND].Clone()
         If (CTL.Brush) && (CTL.Brush <> This.NullBrush)
            DllCall("Gdi32.dll\DeleteObject", "Prt", CTL.Brush)
         For I, V In CTL.Classes {
            If This.HandledMessages[V] > 0 {
               This.HandledMessages[V] -= 1
               If This.HandledMessages[V] = 0
                  OnMessage(This.WM_CTLCOLOR[V], "")
         }  }
         For I, V In CTL.Hwnds
            This.Attached.Remove(V, "")
         DllCall("User32.dll\InvalidateRect", "Ptr", HWND, "Ptr", 0, "Int", 1)
         CTL := ""
         Return True
      }
      This.ErrorMsg := "Control " . HWND . " is not registered!"
      Return False
   }
   Free() {
      For K, V In This.Attached
         If (V.Brush) && (V.Brush <> This.NullBrush)
            DllCall("Gdi32.dll\DeleteObject", "Ptr", V.Brush)
      For K, V In This.HandledMessages
         If (V > 0) {
            OnMessage(This.WM_CTLCOLOR[K], "")
            This.HandledMessages[K] := 0
         }
      This.Attached := {}
      Return True
   }
   IsAttached(HWND) {
      Return This.Attached.HasKey(HWND)
   }
}
CtlColors_OnMessage(HDC, HWND) {
   Critical
   If CtlColors.IsAttached(HWND) {
      CTL := CtlColors.Attached[HWND]
      If (CTL.TxColor != "")
         DllCall("Gdi32.dll\SetTextColor", "Ptr", HDC, "UInt", CTL.TxColor)
      If (CTL.BkColor = "Trans")
         DllCall("Gdi32.dll\SetBkMode", "Ptr", HDC, "UInt", 1) ; TRANSPARENT = 1
      Else
         DllCall("Gdi32.dll\SetBkColor", "Ptr", HDC, "UInt", CTL.BkColor)
      Return CTL.Brush
   }
}
Class ImageButton {
   Static DefGuiColor  := ""
   Static DefTxtColor := "Black"
   Static LastError := ""
   Static BitMaps := []
   Static GDIPDll := 0
   Static GDIPToken := 0
   Static MaxOptions := 8
   Static HTML := {BLACK: 0x000000, GRAY: 0x808080, SILVER: 0xC0C0C0, WHITE: 0xFFFFFF, MAROON: 0x800000
                 , PURPLE: 0x800080, FUCHSIA: 0xFF00FF, RED: 0xFF0000, GREEN: 0x008000, OLIVE: 0x808000
                 , YELLOW: 0xFFFF00, LIME: 0x00FF00, NAVY: 0x000080, TEAL: 0x008080, AQUA: 0x00FFFF, BLUE: 0x0000FF}
   Static ClassInit := ImageButton.InitClass()
   __New(P*) {
      Return False
   }
   InitClass() {
      GuiColor := DllCall("User32.dll\GetSysColor", "Int", 15, "UInt")
      This.DefGuiColor := ((GuiColor >> 16) & 0xFF) | (GuiColor & 0x00FF00) | ((GuiColor & 0xFF) << 16)
      Return True
   }
   GdiplusStartup() {
      This.GDIPDll := This.GDIPToken := 0
      If (This.GDIPDll := DllCall("Kernel32.dll\LoadLibrary", "Str", "Gdiplus.dll", "Ptr")) {
         VarSetCapacity(SI, 24, 0)
         Numput(1, SI, 0, "Int")
         If !DllCall("Gdiplus.dll\GdiplusStartup", "PtrP", GDIPToken, "Ptr", &SI, "Ptr", 0)
            This.GDIPToken := GDIPToken
         Else
            This.GdiplusShutdown()
      }
      Return This.GDIPToken
   }
   GdiplusShutdown() {
      If This.GDIPToken
         DllCall("Gdiplus.dll\GdiplusShutdown", "Ptr", This.GDIPToken)
      If This.GDIPDll
         DllCall("Kernel32.dll\FreeLibrary", "Ptr", This.GDIPDll)
      This.GDIPDll := This.GDIPToken := 0
   }
   FreeBitmaps() {
      For I, HBITMAP In This.BitMaps
         DllCall("Gdi32.dll\DeleteObject", "Ptr", HBITMAP)
      This.BitMaps := []
   }
   GetARGB(RGB) {
      ARGB := This.HTML.HasKey(RGB) ? This.HTML[RGB] : RGB
      Return (ARGB & 0xFF000000) = 0 ? 0xFF000000 | ARGB : ARGB
   }
   PathAddRectangle(Path, X, Y, W, H) {
      Return DllCall("Gdiplus.dll\GdipAddPathRectangle", "Ptr", Path, "Float", X, "Float", Y, "Float", W, "Float", H)
   }
   PathAddRoundedRect(Path, X1, Y1, X2, Y2, R) {
      D := (R * 2), X2 -= D, Y2 -= D
      DllCall("Gdiplus.dll\GdipAddPathArc"
            , "Ptr", Path, "Float", X1, "Float", Y1, "Float", D, "Float", D, "Float", 180, "Float", 90)
      DllCall("Gdiplus.dll\GdipAddPathArc"
            , "Ptr", Path, "Float", X2, "Float", Y1, "Float", D, "Float", D, "Float", 270, "Float", 90)
      DllCall("Gdiplus.dll\GdipAddPathArc"
            , "Ptr", Path, "Float", X2, "Float", Y2, "Float", D, "Float", D, "Float", 0, "Float", 90)
      DllCall("Gdiplus.dll\GdipAddPathArc"
            , "Ptr", Path, "Float", X1, "Float", Y2, "Float", D, "Float", D, "Float", 90, "Float", 90)
      Return DllCall("Gdiplus.dll\GdipClosePathFigure", "Ptr", Path)
   }
   SetRect(ByRef Rect, X1, Y1, X2, Y2) {
      VarSetCapacity(Rect, 16, 0)
      NumPut(X1, Rect, 0, "Int"), NumPut(Y1, Rect, 4, "Int")
      NumPut(X2, Rect, 8, "Int"), NumPut(Y2, Rect, 12, "Int")
      Return True
   }
   SetRectF(ByRef Rect, X, Y, W, H) {
      VarSetCapacity(Rect, 16, 0)
      NumPut(X, Rect, 0, "Float"), NumPut(Y, Rect, 4, "Float")
      NumPut(W, Rect, 8, "Float"), NumPut(H, Rect, 12, "Float")
      Return True
   }
   SetError(Msg) {
      This.FreeBitmaps()
      This.GdiplusShutdown()
      This.LastError := Msg
      Return False
   }
   Create(HWND, Options*) {
      Static BCM_SETIMAGELIST := 0x1602
           , BS_CHECKBOX := 0x02, BS_RADIOBUTTON := 0x04, BS_GROUPBOX := 0x07, BS_AUTORADIOBUTTON := 0x09
           , BS_LEFT := 0x0100, BS_RIGHT := 0x0200, BS_CENTER := 0x0300, BS_TOP := 0x0400, BS_BOTTOM := 0x0800
           , BS_VCENTER := 0x0C00, BS_BITMAP := 0x0080
           , BUTTON_IMAGELIST_ALIGN_LEFT := 0, BUTTON_IMAGELIST_ALIGN_RIGHT := 1, BUTTON_IMAGELIST_ALIGN_CENTER := 4
           , ILC_COLOR32 := 0x20
           , OBJ_BITMAP := 7
           , RCBUTTONS := BS_CHECKBOX | BS_RADIOBUTTON | BS_AUTORADIOBUTTON
           , SA_LEFT := 0x00, SA_CENTER := 0x01, SA_RIGHT := 0x02
           , WM_GETFONT := 0x31
      This.LastError := ""
      If !DllCall("User32.dll\IsWindow", "Ptr", HWND)
         Return This.SetError("Invalid parameter HWND!")
      If !(IsObject(Options)) || (Options.MinIndex() <> 1) || (Options.MaxIndex() > This.MaxOptions)
         Return This.SetError("Invalid parameter Options!")
      WinGetClass, BtnClass, ahk_id %HWND%
      ControlGet, BtnStyle, Style, , , ahk_id %HWND%
      If (BtnClass != "Button") || ((BtnStyle & 0xF ^ BS_GROUPBOX) = 0) || ((BtnStyle & RCBUTTONS) > 1)
         Return This.SetError("The control must be a pushbutton!")
      If !This.GdiplusStartup()
         Return This.SetError("GDIPlus could not be started!")
      GDIPFont := 0
      HFONT := DllCall("User32.dll\SendMessage", "Ptr", HWND, "UInt", WM_GETFONT, "Ptr", 0, "Ptr", 0, "Ptr")
      DC := DllCall("User32.dll\GetDC", "Ptr", HWND, "Ptr")
      DllCall("Gdi32.dll\SelectObject", "Ptr", DC, "Ptr", HFONT)
      DllCall("Gdiplus.dll\GdipCreateFontFromDC", "Ptr", DC, "PtrP", PFONT)
      DllCall("User32.dll\ReleaseDC", "Ptr", HWND, "Ptr", DC)
      If !(PFONT)
         Return This.SetError("Couldn't get button's font!")
      VarSetCapacity(RECT, 16, 0)
      If !DllCall("User32.dll\GetWindowRect", "Ptr", HWND, "Ptr", &RECT)
         Return This.SetError("Couldn't get button's rectangle!")
      BtnW := NumGet(RECT,  8, "Int") - NumGet(RECT, 0, "Int")
      BtnH := NumGet(RECT, 12, "Int") - NumGet(RECT, 4, "Int")
      ControlGetText, BtnCaption, , ahk_id %HWND%
      If (ErrorLevel)
         Return This.SetError("Couldn't get button's caption!")
      This.BitMaps := []
      For Index, Option In Options {
         If !IsObject(Option)
            Continue
         BkgColor1 := BkgColor2 := TxtColor := Mode := Rounded := GuiColor := Image := ""
         Loop, % This.MaxOptions {
            If (Option[A_Index] = "")
               Option[A_Index] := Options.1[A_Index]
         }
         Mode := SubStr(Option.1, 1 ,1)
         If !InStr("0123456789", Mode)
            Return This.SetError("Invalid value for Mode in Options[" . Index . "]!")
         If (Mode = 0)
         && (FileExist(Option.2) || (DllCall("Gdi32.dll\GetObjectType", "Ptr", Option.2, "UInt") = OBJ_BITMAP))
            Image := Option.2
         Else {
            If !(Option.2 + 0) && !This.HTML.HasKey(Option.2)
               Return This.SetError("Invalid value for StartColor in Options[" . Index . "]!")
            BkgColor1 := This.GetARGB(Option.2)
            If (Option.3 = "")
               Option.3 := Option.2
            If !(Option.3 + 0) && !This.HTML.HasKey(Option.3)
               Return This.SetError("Invalid value for TargetColor in Options[" . Index . "]!")
            BkgColor2 := This.GetARGB(Option.3)
         }
         If (Option.4 = "")
            Option.4 := This.DefTxtColor
         If !(Option.4 + 0) && !This.HTML.HasKey(Option.4)
            Return This.SetError("Invalid value for TxtColor in Options[" . Index . "]!")
         TxtColor := This.GetARGB(Option.4)
         Rounded := Option.5
         If (Rounded = "H")
            Rounded := BtnH * 0.5
         If (Rounded = "W")
            Rounded := BtnW * 0.5
         If !(Rounded + 0)
            Rounded := 0
         If (Option.6 = "")
            Option.6 := This.DefGuiColor
         If !(Option.6 + 0) && !This.HTML.HasKey(Option.6)
            Return This.SetError("Invalid value for GuiColor in Options[" . Index . "]!")
         GuiColor := This.GetARGB(Option.6)
         BorderColor := ""
         If (Option.7 <> "") {
            If !(Option.7 + 0) && !This.HTML.HasKey(Option.7)
               Return This.SetError("Invalid value for BorderColor in Options[" . Index . "]!")
            BorderColor := 0xFF000000 | This.GetARGB(Option.7)
         }
         BorderWidth := Option.8 ? Option.8 : 1
         DllCall("Gdiplus.dll\GdipCreateBitmapFromScan0", "Int", BtnW, "Int", BtnH, "Int", 0
               , "UInt", 0x26200A, "Ptr", 0, "PtrP", PBITMAP)
         DllCall("Gdiplus.dll\GdipGetImageGraphicsContext", "Ptr", PBITMAP, "PtrP", PGRAPHICS)
         DllCall("Gdiplus.dll\GdipSetSmoothingMode", "Ptr", PGRAPHICS, "UInt", 4)
         DllCall("Gdiplus.dll\GdipSetInterpolationMode", "Ptr", PGRAPHICS, "Int", 7)
         DllCall("Gdiplus.dll\GdipSetCompositingQuality", "Ptr", PGRAPHICS, "UInt", 4)
         DllCall("Gdiplus.dll\GdipSetRenderingOrigin", "Ptr", PGRAPHICS, "Int", 0, "Int", 0)
         DllCall("Gdiplus.dll\GdipSetPixelOffsetMode", "Ptr", PGRAPHICS, "UInt", 4)
         DllCall("Gdiplus.dll\GdipGraphicsClear", "Ptr", PGRAPHICS, "UInt", GuiColor)
         If (Image = "") {
            PathX := PathY := 0, PathW := BtnW, PathH := BtnH
            DllCall("Gdiplus.dll\GdipCreatePath", "UInt", 0, "PtrP", PPATH)
            If (Rounded < 1)
               This.PathAddRectangle(PPATH, PathX, PathY, PathW, PathH)
            Else
               This.PathAddRoundedRect(PPATH, PathX, PathY, PathW, PathH, Rounded)
            If (BorderColor <> "") && (BorderWidth > 0) && (Mode <> 7) {
               DllCall("Gdiplus.dll\GdipCreateSolidFill", "UInt", BorderColor, "PtrP", PBRUSH)
               DllCall("Gdiplus.dll\GdipFillPath", "Ptr", PGRAPHICS, "Ptr", PBRUSH, "Ptr", PPATH)
               DllCall("Gdiplus.dll\GdipDeleteBrush", "Ptr", PBRUSH)
               DllCall("Gdiplus.dll\GdipResetPath", "Ptr", PPATH)
               PathX := PathY := BorderWidth, PathW -= BorderWidth, PathH -= BorderWidth, Rounded -= BorderWidth
               If (Rounded < 1)
                  This.PathAddRectangle(PPATH, PathX, PathY, PathW - PathX, PathH - PathY)
               Else
                  This.PathAddRoundedRect(PPATH, PathX, PathY, PathW, PathH, Rounded)
               BkgColor1 := 0xFF000000 | BkgColor1
               BkgColor2 := 0xFF000000 | BkgColor2               
            }
            PathW -= PathX
            PathH -= PathY
            If (Mode = 0) {
               DllCall("Gdiplus.dll\GdipCreateSolidFill", "UInt", BkgColor1, "PtrP", PBRUSH)
               DllCall("Gdiplus.dll\GdipFillPath", "Ptr", PGRAPHICS, "Ptr", PBRUSH, "Ptr", PPATH)
            }
            Else If (Mode = 1) || (Mode = 2) {
               This.SetRectF(RECTF, PathX, PathY, PathW, PathH)
               DllCall("Gdiplus.dll\GdipCreateLineBrushFromRect", "Ptr", &RECTF
                     , "UInt", BkgColor1, "UInt", BkgColor2, "Int", Mode & 1, "Int", 3, "PtrP", PBRUSH)
               DllCall("Gdiplus.dll\GdipSetLineGammaCorrection", "Ptr", PBRUSH, "Int", 1)
               This.SetRect(COLORS, BkgColor1, BkgColor1, BkgColor2, BkgColor2)
               This.SetRectF(POSITIONS, 0, 0.5, 0.5, 1)
               DllCall("Gdiplus.dll\GdipSetLinePresetBlend", "Ptr", PBRUSH
                     , "Ptr", &COLORS, "Ptr", &POSITIONS, "Int", 4)
               DllCall("Gdiplus.dll\GdipFillPath", "Ptr", PGRAPHICS, "Ptr", PBRUSH, "Ptr", PPATH)
            }
            Else If (Mode >= 3) && (Mode <= 6) {
               W := Mode = 6 ? PathW / 2 : PathW
               H := Mode = 5 ? PathH / 2 : PathH
               This.SetRectF(RECTF, PathX, PathY, W, H)
               DllCall("Gdiplus.dll\GdipCreateLineBrushFromRect", "Ptr", &RECTF
                     , "UInt", BkgColor1, "UInt", BkgColor2, "Int", Mode & 1, "Int", 3, "PtrP", PBRUSH)
               DllCall("Gdiplus.dll\GdipSetLineGammaCorrection", "Ptr", PBRUSH, "Int", 1)
               DllCall("Gdiplus.dll\GdipFillPath", "Ptr", PGRAPHICS, "Ptr", PBRUSH, "Ptr", PPATH)
            }
            Else {
               DllCall("Gdiplus.dll\GdipCreatePathGradientFromPath", "Ptr", PPATH, "PtrP", PBRUSH)
               DllCall("Gdiplus.dll\GdipSetPathGradientGammaCorrection", "Ptr", PBRUSH, "UInt", 1)
               VarSetCapacity(ColorArray, 4, 0)
               NumPut(BkgColor1, ColorArray, 0, "UInt")
               DllCall("Gdiplus.dll\GdipSetPathGradientSurroundColorsWithCount", "Ptr", PBRUSH, "Ptr", &ColorArray
                   , "IntP", 1)
               DllCall("Gdiplus.dll\GdipSetPathGradientCenterColor", "Ptr", PBRUSH, "UInt", BkgColor2)
               FS := (BtnH < BtnW ? BtnH : BtnW) / 3
               XScale := (BtnW - FS) / BtnW
               YScale := (BtnH - FS) / BtnH
               DllCall("Gdiplus.dll\GdipSetPathGradientFocusScales", "Ptr", PBRUSH, "Float", XScale, "Float", YScale)
               DllCall("Gdiplus.dll\GdipFillPath", "Ptr", PGRAPHICS, "Ptr", PBRUSH, "Ptr", PPATH)
            }
            DllCall("Gdiplus.dll\GdipDeleteBrush", "Ptr", PBRUSH)
            DllCall("Gdiplus.dll\GdipDeletePath", "Ptr", PPATH)
         } Else {
            If (Image + 0)
               DllCall("Gdiplus.dll\GdipCreateBitmapFromHBITMAP", "Ptr", Image, "Ptr", 0, "PtrP", PBM)
            Else
               DllCall("Gdiplus.dll\GdipCreateBitmapFromFile", "WStr", Image, "PtrP", PBM)
            DllCall("Gdiplus.dll\GdipDrawImageRectI", "Ptr", PGRAPHICS, "Ptr", PBM, "Int", 0, "Int", 0
                  , "Int", BtnW, "Int", BtnH)
            DllCall("Gdiplus.dll\GdipDisposeImage", "Ptr", PBM)
         }
         If (BtnCaption <> "") {
            DllCall("Gdiplus.dll\GdipStringFormatGetGenericTypographic", "PtrP", HFORMAT)
            DllCall("Gdiplus.dll\GdipCreateSolidFill", "UInt", TxtColor, "PtrP", PBRUSH)
            HALIGN := (BtnStyle & BS_CENTER) = BS_CENTER ? SA_CENTER
                    : (BtnStyle & BS_CENTER) = BS_RIGHT  ? SA_RIGHT
                    : (BtnStyle & BS_CENTER) = BS_Left   ? SA_LEFT
                    : SA_CENTER
            DllCall("Gdiplus.dll\GdipSetStringFormatAlign", "Ptr", HFORMAT, "Int", HALIGN)
            VALIGN := (BtnStyle & BS_VCENTER) = BS_TOP ? 0
                    : (BtnStyle & BS_VCENTER) = BS_BOTTOM ? 2
                    : 1
            DllCall("Gdiplus.dll\GdipSetStringFormatLineAlign", "Ptr", HFORMAT, "Int", VALIGN)
            DllCall("Gdiplus.dll\GdipSetTextRenderingHint", "Ptr", PGRAPHICS, "Int", 0)
            VarSetCapacity(RECT, 16, 0)
            NumPut(BtnW, RECT,  8, "Float")
            NumPut(BtnH, RECT, 12, "Float")
            DllCall("Gdiplus.dll\GdipDrawString", "Ptr", PGRAPHICS, "WStr", BtnCaption, "Int", -1
                  , "Ptr", PFONT, "Ptr", &RECT, "Ptr", HFORMAT, "Ptr", PBRUSH)
         }
         DllCall("Gdiplus.dll\GdipCreateHBITMAPFromBitmap", "Ptr", PBITMAP, "PtrP", HBITMAP, "UInt", 0X00FFFFFF)
         This.BitMaps[Index] := HBITMAP
         DllCall("Gdiplus.dll\GdipDisposeImage", "Ptr", PBITMAP)
         DllCall("Gdiplus.dll\GdipDeleteBrush", "Ptr", PBRUSH)
         DllCall("Gdiplus.dll\GdipDeleteStringFormat", "Ptr", HFORMAT)
         DllCall("Gdiplus.dll\GdipDeleteGraphics", "Ptr", PGRAPHICS)
      }
      DllCall("Gdiplus.dll\GdipDeleteFont", "Ptr", PFONT)
      HIL := DllCall("Comctl32.dll\ImageList_Create"
                   , "UInt", BtnW, "UInt", BtnH, "UInt", ILC_COLOR32, "Int", 6, "Int", 0, "Ptr")
      Loop, % (This.BitMaps.MaxIndex() > 1 ? 6 : 1) {
         HBITMAP := This.BitMaps.HasKey(A_Index) ? This.BitMaps[A_Index] : This.BitMaps.1
         DllCall("Comctl32.dll\ImageList_Add", "Ptr", HIL, "Ptr", HBITMAP, "Ptr", 0)
      }
      VarSetCapacity(BIL, 20 + A_PtrSize, 0)
      NumPut(HIL, BIL, 0, "Ptr")
      Numput(BUTTON_IMAGELIST_ALIGN_CENTER, BIL, A_PtrSize + 16, "UInt")
      ControlSetText, , , ahk_id %HWND%
      Control, Style, +%BS_BITMAP%, , ahk_id %HWND%
      SendMessage, %BCM_SETIMAGELIST%, 0, 0, , ahk_id %HWND%
      SendMessage, %BCM_SETIMAGELIST%, 0, % &BIL, , ahk_id %HWND%
      This.FreeBitmaps()
      This.GdiplusShutdown()
      Return True
   }
   SetGuiColor(GuiColor) {
      If !(GuiColor + 0) && !This.HTML.HasKey(GuiColor)
         Return False
      This.DefGuiColor := (This.HTML.HasKey(GuiColor) ? This.HTML[GuiColor] : GuiColor) & 0xFFFFFF
      Return True
   }
   SetTxtColor(TxtColor) {
      If !(TxtColor + 0) && !This.HTML.HasKey(TxtColor)
         Return False
      This.DefTxtColor := (This.HTML.HasKey(TxtColor) ? This.HTML[TxtColor] : TxtColor) & 0xFFFFFF
      Return True
   }
}