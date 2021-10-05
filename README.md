#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
^]::
	Send , {End}
	Return
^[::
	Send , {Home}
	Return
!h::
	Send , {Left}
	Return
!j::
	Send , {Down}
	Return
!k::
	Send , {Up}
	Return
!l::
	Send , {Right}
	Return
CapsLock & h::
	Send , ^{Left}
	Return
CapsLock & l::
	Send , ^{Right}
	Return

