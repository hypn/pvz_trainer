include windows.inc
include user32.inc
include kernel32.inc
include shell32.inc
include comctl32.inc
include comdlg32.inc

includelib user32.lib
includelib kernel32.lib
includelib shell32.lib
includelib comctl32.lib
includelib comdlg32.lib

WinMain				PROTO :DWORD,:DWORD,:DWORD,:DWORD
WndProc				PROTO :DWORD,:DWORD,:DWORD,:DWORD

IDD_DIALOG			equ 1000

IDM_MENU			equ 10000
IDM_FILE_EXIT		equ 10001
IDM_HELP_ABOUT		equ 10101
IDC_BTN1			equ 1001
IDC_BTN2			equ	1002
IDC_BTN3			equ	1003
IDC_BTN4			equ	1004
IDC_BTN5			equ	1005
IDC_BTN6			equ	1006
IDC_BTN7			equ	1007
IDC_BTN8			equ	1080
IDC_BTN9			equ	1009
IDC_BTN10			equ	1010
IDC_BTN11			equ	1011
IDC_BTN12			equ	1012
IDC_BTN13			equ	1013
IDC_BTN14			equ	1014
IDC_BTN15			equ	1015
IDC_BTN16			equ	1016
IDC_BTN17			equ	1017
IDC_BTN18			equ	1018

.const

ClassName			db 'DLGCLASS',0
AppName				db 'Hypn''s Plants Vs Zombies Trainer',0
szName				db 'Plants vs. Zombies',0

szNoOpen			db 'Could not open process!',0
szNoProc			db 'Could not find process!',0
szNoWin				db 'Could find window!',0




szInstantBuildOn	db 090h, 090h, 090h, 090h
szInstantBuildOff	db 0C6h, 045h, 048h, 000h

szFreeBuildOn		db 090h, 090h, 090h, 090h, 090h, 090h
szFreeBuildOff		db 089h, 0B7h, 060h, 055h, 000h, 000h

szStartMaxSunOn		db 0C7h, 085h, 060h, 055h, 000h, 000h, 00Fh, 027h, 000h, 000h 
szStartMaxSunOff	db 0C7h, 085h, 060h, 055h, 000h, 000h, 032h, 000h, 000h, 000h

szGetMaxSunOn		db 0C7h, 080h, 060h, 055h, 000h, 000h, 00Fh, 027h, 000h, 000h, 0B9h, 00Fh, 027h, 000h, 000h, 090h, 090h, 090h, 090h, 090h, 090h, 090h, 090h, 090h, 090h, 090h, 090h, 090h, 090h, 090h
szGetMaxSunOff		db 001h, 088h, 060h, 055h, 000h, 000h, 08Bh, 088h, 060h, 055h, 000h, 000h, 081h, 0F9h, 006h, 027h, 000h, 000h, 07Eh, 078h, 0C7h, 080h, 060h, 055h, 000h, 000h, 006h, 027h, 000h, 000h

szInvincPlantsOn	db 090h, 090h, 090h, 090h
szInvincPlantsOff	db 083h, 046h, 040h, 0FCh

szOneShotZomOn		db 02Bh, 0FFh, 090h, 090h
szOneShotZomOff		db 02Bh, 07Ch, 024h, 020h 

szOneShotConeOn		db 02Bh, 0C9h
szOneShotConeOff	db 02Bh, 0C8h

szOneShotDoorOn		db 089h, 096h, 0DCh, 000h, 000h, 000h
szOneShotDoorOff	db 029h, 086h, 0DCh, 000h, 000h, 000h


szEnablePlantsOn	db 0C6h, 046h, 048h, 001h
szEnablePlantsOff	db 0C6h, 046h, 048h, 000h

;004480A3
szStartAnyPlants1On		db 0EBh, 01Dh
szStartAnyPlants1Off	db 074h, 01Dh

;0044831A
szStartAnyPlants2On		db 090h, 090h
szStartAnyPlants2Off	db 075h, 00Ch

;00447F20
szStartAnyPlants3On		db 0EBh, 004h
szStartAnyPlants3Off	db 074h, 004h

;004868F4
szStartAnyPlants4On		db 090h, 090h
szStartAnyPlants4Off	db 075h, 020h

;00486675
szStartAnyPlants5On		db 090h, 090h
szStartAnyPlants5Off	db 075h, 018h




.data?

hInstance			dd ?
CommandLine			dd ?
hWnd				dd ?
szTemp				dd ?
