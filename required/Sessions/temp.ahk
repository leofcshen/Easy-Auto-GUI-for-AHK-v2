﻿
#Requires Autohotkey v2
;AutoGUI 2.5.8 
;Auto-GUI-v2 credit to Alguimist autohotkey.com/boards/viewtopic.php?f=64&t=89901
;AHKv2converter credit to github.com/mmikeww/AHK-v2-script-converter

myGui := Gui()
DateTime_1 := myGui.Add("DateTime", "x414 y150 w100 h24")
myGui.Add("DateTime", "x414 y150 w100 h24")
myGui.Add("GroupBox", "x232 y222 w120 h80", "GroupBox")
SB := myGui.Add("StatusBar", , "Status Bar")
CheckBox_1 := myGui.Add("CheckBox", "x253 y28 w120 h23", "CheckBox")
myGui.Add("CheckBox", "x253 y28 w120 h23", "CheckBox")
myGui.Add("Progress", "x127 y34 w120 h20 -Smooth", "33")
ogcButtonOK := myGui.Add("Button", "x57 y118 w80 h23", "&OK")
ogcButtonOK.OnEvent("Click", OnEventHandler)
Edit_1 := myGui.Add("Edit", "x160 y142 w120 h21")
myGui.Add("Edit", "x160 y142 w120 h21")
myGui.Add("Hotkey", "x140 y253 w120 h21")
myGui.Add("Link", "x103 y205 w120 h23", "<a href=`"https://autohotkey.com`">autohotkey.com</a>")
Edit_2 := myGui.Add("Edit", "x376 y107 w120 h21")
myGui.Add("Edit", "x376 y107 w120 h21")
myGui.Add("Hotkey", "x303 y72 w120 h21")
myGui.Add("UpDown", "x218 y692 w193 h0  -16", "1")
DateTime_2 := myGui.Add("DateTime", "x288 y183 w100 h24")
myGui.Add("DateTime", "x288 y183 w100 h24")
CheckBox_2 := myGui.Add("CheckBox", "x147 y164 w120 h21", "CheckBox")
myGui.Add("CheckBox", "x147 y164 w120 h21", "CheckBox")
ComboBox_1 := myGui.Add("ComboBox", "x255 y280 w120", ["ComboBox"])
myGui.Add("ComboBox", "x255 y280 w120", ["ComboBox"])
myGui.Title := "Window"
DateTime_1.OnEvent("Change", OnEventHandler)
CheckBox_1.OnEvent("Click", OnEventHandler)
Edit_1.OnEvent("Change", OnEventHandler)
Edit_2.OnEvent("Change", OnEventHandler)
DateTime_2.OnEvent("Change", OnEventHandler)
CheckBox_2.OnEvent("Click", OnEventHandler)
ComboBox_1.OnEvent("Change", OnEventHandler)
myGui.OnEvent('Close', (*) => ExitApp())
myGui.Show("w620 h420")
Return

OnEventHandler(*)
{
	ToolTip("Click! This is a sample action.`n"
	. "Active GUI element values include:`n"  
	. "DateTime_1 => " DateTime_1.Value "`n" 
	. "CheckBox_1 => " CheckBox_1.Value "`n" 
	. "Edit_1 => " Edit_1.Value "`n" 
	. "Edit_2 => " Edit_2.Value "`n" 
	. "DateTime_2 => " DateTime_2.Value "`n" 
	. "CheckBox_2 => " CheckBox_2.Value "`n" 
	. "ComboBox_1 => " ComboBox_1.Value "`n", 77, 277)
	SetTimer () => ToolTip(), -3000 ; tooltip timer
}
