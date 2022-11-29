#SingleInstance force
  gui, flasher: add, picture,% "x" 0 " y" -8 "vflasher w" A_ScreenWidth " h"  A_ScreenHeight, C:\Users\GalacticWafer\Documents\pink.png
~LAlt::
 {
   KeyWait, LAlt
   KeyWait, LAlt, D T.3
   If (!ErrorLevel)
    {
		ToolTip % "test"
      goto, sub
    }
 }
return
sub:
 {
   activewin := WinExist("A")
   wingetpos, x, y, w, h, ahk_id %activewin%
 
   Gui, Color, ffc0cb
   gui, flasher: -DPIScale +AlwaysOnTop +Caption -ToolWindow -Border
    Gui, flasher: Show,% "x" x " y" y " w" w " h" h , flasher
	c := 255
	while c > 0 {
	WinSet, Transparent, % c, flasher
	c-= 60
	}
 }
reload
^Q::ExitApp