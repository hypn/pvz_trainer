.386
.model flat,stdcall
option casemap:none

include PvZtrainer.inc

.code

start:

	invoke	GetModuleHandle, NULL
	mov	hInstance, eax
	invoke	GetCommandLine
	invoke	InitCommonControls
	mov	CommandLine, eax
	invoke	WinMain, hInstance, NULL, CommandLine, SW_SHOWDEFAULT
	invoke	ExitProcess, eax

ToggleInstantBuild proc state:dword

	LOCAL dwPid		:dword
	LOCAL hOpen		:HANDLE
	LOCAL hWindow	:HANDLE
		
	mov dwPid, 0
	mov hOpen, 0
	mov hWindow, 0
	
	invoke FindWindow, NULL, addr szName
	mov hWindow, eax
	invoke GetWindowThreadProcessId, hWindow, dwPid
	.if hWindow != 0
		invoke GetWindowThreadProcessId, hWindow, addr dwPid
		.if dwPid!= 0
			invoke OpenProcess, PROCESS_ALL_ACCESS, FALSE, dwPid
			mov hOpen, eax
			.if hOpen != 0
				.if state != 0
					invoke WriteProcessMemory, hOpen, 00488E73h, addr szInstantBuildOn, 4, NULL;
				.else
					invoke WriteProcessMemory, hOpen, 00488E73h, addr szInstantBuildOff, 4, NULL;
				.endif
			.elseif
				invoke MessageBox, 0, addr szNoOpen, addr AppName, MB_OK
			.endif
		.elseif
			invoke MessageBox, 0, addr szNoProc, addr AppName, MB_OK
		.endif
	.elseif
		invoke MessageBox, 0, addr szNoWin, addr AppName, MB_OK
	.endif

	ret

ToggleInstantBuild endp

ToggleFreeBuild proc state:dword

	LOCAL dwPid		:dword
	LOCAL hOpen		:HANDLE
	LOCAL hWindow	:HANDLE
		
	mov dwPid, 0
	mov hOpen, 0
	mov hWindow, 0
	
	invoke FindWindow, NULL, addr szName
	mov hWindow, eax
	invoke GetWindowThreadProcessId, hWindow, dwPid
	.if hWindow != 0
		invoke GetWindowThreadProcessId, hWindow, addr dwPid
		.if dwPid!= 0
			invoke OpenProcess, PROCESS_ALL_ACCESS, FALSE, dwPid
			mov hOpen, eax
			.if hOpen != 0
				.if state != 0
					invoke WriteProcessMemory, hOpen, 0041BA76h, addr szFreeBuildOn, 6, NULL;
				.else
					invoke WriteProcessMemory, hOpen, 0041BA76h, addr szFreeBuildOff, 6, NULL;
				.endif
			.elseif
				invoke MessageBox, 0, addr szNoOpen, addr AppName, MB_OK
			.endif
		.elseif
			invoke MessageBox, 0, addr szNoProc, addr AppName, MB_OK
		.endif
	.elseif
		invoke MessageBox, 0, addr szNoWin, addr AppName, MB_OK
	.endif

	ret

ToggleFreeBuild endp
ToggleStartMaxSun proc state:dword

	LOCAL dwPid		:dword
	LOCAL hOpen		:HANDLE
	LOCAL hWindow	:HANDLE
		
	mov dwPid, 0
	mov hOpen, 0
	mov hWindow, 0
	
	invoke FindWindow, NULL, addr szName
	mov hWindow, eax
	invoke GetWindowThreadProcessId, hWindow, dwPid
	.if hWindow != 0
		invoke GetWindowThreadProcessId, hWindow, addr dwPid
		.if dwPid!= 0
			invoke OpenProcess, PROCESS_ALL_ACCESS, FALSE, dwPid
			mov hOpen, eax
			.if hOpen != 0
				.if state != 0
					invoke WriteProcessMemory, hOpen, 0040B095h, addr szStartMaxSunOn, 10, NULL;
				.else
					invoke WriteProcessMemory, hOpen, 0040B095h, addr szStartMaxSunOff, 10, NULL;
				.endif
			.elseif
				invoke MessageBox, 0, addr szNoOpen, addr AppName, MB_OK
			.endif
		.elseif
			invoke MessageBox, 0, addr szNoProc, addr AppName, MB_OK
		.endif
	.elseif
		invoke MessageBox, 0, addr szNoWin, addr AppName, MB_OK
	.endif

	ret

ToggleStartMaxSun endp

ToggleGetMaxSun proc state:dword

	LOCAL dwPid		:dword
	LOCAL hOpen		:HANDLE
	LOCAL hWindow	:HANDLE
		
	mov dwPid, 0
	mov hOpen, 0
	mov hWindow, 0
	
	invoke FindWindow, NULL, addr szName
	mov hWindow, eax
	invoke GetWindowThreadProcessId, hWindow, dwPid
	.if hWindow != 0
		invoke GetWindowThreadProcessId, hWindow, addr dwPid
		.if dwPid!= 0
			invoke OpenProcess, PROCESS_ALL_ACCESS, FALSE, dwPid
			mov hOpen, eax
			.if hOpen != 0
				.if state != 0
					invoke WriteProcessMemory, hOpen, 00430A11h, addr szGetMaxSunOn, 30, NULL;
				.else
					invoke WriteProcessMemory, hOpen, 00430A11h, addr szGetMaxSunOff, 30, NULL;
				.endif
			.elseif
				invoke MessageBox, 0, addr szNoOpen, addr AppName, MB_OK
			.endif
		.elseif
			invoke MessageBox, 0, addr szNoProc, addr AppName, MB_OK
		.endif
	.elseif
		invoke MessageBox, 0, addr szNoWin, addr AppName, MB_OK
	.endif

	ret

ToggleGetMaxSun endp

ToggleInvinciblePlants proc state:dword

	LOCAL dwPid		:dword
	LOCAL hOpen		:HANDLE
	LOCAL hWindow	:HANDLE
		
	mov dwPid, 0
	mov hOpen, 0
	mov hWindow, 0
	
	invoke FindWindow, NULL, addr szName
	mov hWindow, eax
	invoke GetWindowThreadProcessId, hWindow, dwPid
	.if hWindow != 0
		invoke GetWindowThreadProcessId, hWindow, addr dwPid
		.if dwPid!= 0
			invoke OpenProcess, PROCESS_ALL_ACCESS, FALSE, dwPid
			mov hOpen, eax
			.if hOpen != 0
				.if state != 0
					invoke WriteProcessMemory, hOpen, 0052FCF0h, addr szInvincPlantsOn, 4, NULL;
				.else
					invoke WriteProcessMemory, hOpen, 0052FCF0h, addr szInvincPlantsOff, 4, NULL;
				.endif
			.elseif
				invoke MessageBox, 0, addr szNoOpen, addr AppName, MB_OK
			.endif
		.elseif
			invoke MessageBox, 0, addr szNoProc, addr AppName, MB_OK
		.endif
	.elseif
		invoke MessageBox, 0, addr szNoWin, addr AppName, MB_OK
	.endif

	ret

ToggleInvinciblePlants endp

ToggleOneShotZombies proc state:dword

	LOCAL dwPid		:dword
	LOCAL hOpen		:HANDLE
	LOCAL hWindow	:HANDLE
		
	mov dwPid, 0
	mov hOpen, 0
	mov hWindow, 0
	
	invoke FindWindow, NULL, addr szName
	mov hWindow, eax
	invoke GetWindowThreadProcessId, hWindow, dwPid
	.if hWindow != 0
		invoke GetWindowThreadProcessId, hWindow, addr dwPid
		.if dwPid!= 0
			invoke OpenProcess, PROCESS_ALL_ACCESS, FALSE, dwPid
			mov hOpen, eax
			.if hOpen != 0
				.if state != 0
					invoke WriteProcessMemory, hOpen, 0053130Fh, addr szOneShotZomOn, 4, NULL;
					invoke WriteProcessMemory, hOpen, 00531044h, addr szOneShotConeOn, 2, NULL;
					invoke WriteProcessMemory, hOpen, 00530CA1h, addr szOneShotDoorOn, 6, NULL;
				.else
					invoke WriteProcessMemory, hOpen, 0053130Fh, addr szOneShotZomOff, 4, NULL;
					invoke WriteProcessMemory, hOpen, 00531044h, addr szOneShotConeOff, 2, NULL;
					invoke WriteProcessMemory, hOpen, 00530CA1h, addr szOneShotDoorOff, 6, NULL;
				.endif
			.elseif
				invoke MessageBox, 0, addr szNoOpen, addr AppName, MB_OK
			.endif
		.elseif
			invoke MessageBox, 0, addr szNoProc, addr AppName, MB_OK
		.endif
	.elseif
		invoke MessageBox, 0, addr szNoWin, addr AppName, MB_OK
	.endif

	ret

ToggleOneShotZombies endp


ToggleAllPlants proc state:dword

	LOCAL dwPid		:dword
	LOCAL hOpen		:HANDLE
	LOCAL hWindow	:HANDLE
		
	mov dwPid, 0
	mov hOpen, 0
	mov hWindow, 0
	
	invoke FindWindow, NULL, addr szName
	mov hWindow, eax
	invoke GetWindowThreadProcessId, hWindow, dwPid
	.if hWindow != 0
		invoke GetWindowThreadProcessId, hWindow, addr dwPid
		.if dwPid!= 0
			invoke OpenProcess, PROCESS_ALL_ACCESS, FALSE, dwPid
			mov hOpen, eax
			.if hOpen != 0
				.if state != 0
					invoke WriteProcessMemory, hOpen, 00489C1Ch, addr szEnablePlantsOn, 4, NULL;
					invoke WriteProcessMemory, hOpen, 00489C3Dh, addr szEnablePlantsOn, 4, NULL;
					invoke WriteProcessMemory, hOpen, 00489C5Ch, addr szEnablePlantsOn, 4, NULL;
				.else
					invoke WriteProcessMemory, hOpen, 00489C1Ch, addr szEnablePlantsOff, 4, NULL;
					invoke WriteProcessMemory, hOpen, 00489C3Dh, addr szEnablePlantsOff, 4, NULL;
					invoke WriteProcessMemory, hOpen, 00489C5Ch, addr szEnablePlantsOff, 4, NULL;
				.endif
			.elseif
				invoke MessageBox, 0, addr szNoOpen, addr AppName, MB_OK
			.endif
		.elseif
			invoke MessageBox, 0, addr szNoProc, addr AppName, MB_OK
		.endif
	.elseif
		invoke MessageBox, 0, addr szNoWin, addr AppName, MB_OK
	.endif

	ret

ToggleAllPlants endp


ToggleStartWithNoPlants proc state:dword

	LOCAL dwPid		:dword
	LOCAL hOpen		:HANDLE
	LOCAL hWindow	:HANDLE
		
	mov dwPid, 0
	mov hOpen, 0
	mov hWindow, 0
	
	invoke FindWindow, NULL, addr szName
	mov hWindow, eax
	invoke GetWindowThreadProcessId, hWindow, dwPid
	.if hWindow != 0
		invoke GetWindowThreadProcessId, hWindow, addr dwPid
		.if dwPid!= 0
			invoke OpenProcess, PROCESS_ALL_ACCESS, FALSE, dwPid
			mov hOpen, eax
			.if hOpen != 0
				.if state != 0
					invoke WriteProcessMemory, hOpen, 004480A3h, addr szStartAnyPlants1On, 2, NULL;
					invoke WriteProcessMemory, hOpen, 0044831Ah, addr szStartAnyPlants2On, 2, NULL;
					invoke WriteProcessMemory, hOpen, 00447F20h, addr szStartAnyPlants3On, 2, NULL;
					invoke WriteProcessMemory, hOpen, 004868F4h, addr szStartAnyPlants4On, 2, NULL;
					invoke WriteProcessMemory, hOpen, 00486675h, addr szStartAnyPlants5On, 2, NULL;
				.else
					invoke WriteProcessMemory, hOpen, 004480A3h, addr szStartAnyPlants1Off, 2, NULL;
					invoke WriteProcessMemory, hOpen, 0044831Ah, addr szStartAnyPlants2Off, 2, NULL;
					invoke WriteProcessMemory, hOpen, 00447F20h, addr szStartAnyPlants3Off, 2, NULL;
					invoke WriteProcessMemory, hOpen, 004868F4h, addr szStartAnyPlants4Off, 2, NULL;
					invoke WriteProcessMemory, hOpen, 00486675h, addr szStartAnyPlants5Off, 2, NULL;
				.endif
			.elseif
				invoke MessageBox, 0, addr szNoOpen, addr AppName, MB_OK
			.endif
		.elseif
			invoke MessageBox, 0, addr szNoProc, addr AppName, MB_OK
		.endif
	.elseif
		invoke MessageBox, 0, addr szNoWin, addr AppName, MB_OK
	.endif

	ret

ToggleStartWithNoPlants endp



EnableInstantBuild proc
	invoke ToggleInstantBuild, 1
	ret
EnableInstantBuild endp
DisableInstantBuild proc
	invoke ToggleInstantBuild, 0
	ret
DisableInstantBuild endp


EnableFreeBuild proc
	invoke ToggleFreeBuild, 1
	ret
EnableFreeBuild endp
DisableFreeBuild proc
	invoke ToggleFreeBuild, 0
	ret
DisableFreeBuild endp


EnableStartMaxSun proc
	invoke ToggleStartMaxSun, 1
	ret
EnableStartMaxSun endp
DisableStartMaxSun proc
	invoke ToggleStartMaxSun, 0
	ret
DisableStartMaxSun endp


EnableGetMaxSun proc
	invoke ToggleGetMaxSun, 1
	ret
EnableGetMaxSun endp
DisableGetMaxSun proc
	invoke ToggleGetMaxSun, 0
	ret
DisableGetMaxSun endp


EnableInvinciblePlants proc
	invoke ToggleInvinciblePlants, 1
	ret
EnableInvinciblePlants endp
DisableInvinciblePlants proc
	invoke ToggleInvinciblePlants, 0
	ret
DisableInvinciblePlants endp


EnableOneShot proc
	invoke ToggleOneShotZombies, 1
	ret
EnableOneShot endp
DisableOneShot proc
	invoke ToggleOneShotZombies, 0
	ret
DisableOneShot endp


EnableAllPlants proc
	invoke ToggleAllPlants, 1
	ret
EnableAllPlants endp
DisableAllPlants proc
	invoke ToggleAllPlants, 0
	ret
DisableAllPlants endp


EnableStartWithNoPlants proc
	invoke ToggleStartWithNoPlants, 1
	ret
EnableStartWithNoPlants endp
DisableStartWithNoPlants proc
	invoke ToggleStartWithNoPlants, 0
	ret
DisableStartWithNoPlants endp


WinMain proc hInst:HINSTANCE,hPrevInst:HINSTANCE,CmdLine:LPSTR,CmdShow:DWORD
	LOCAL	wc:WNDCLASSEX
	LOCAL	msg:MSG

	mov		wc.cbSize,sizeof WNDCLASSEX
	mov		wc.style,CS_HREDRAW or CS_VREDRAW
	mov		wc.lpfnWndProc,offset WndProc
	mov		wc.cbClsExtra,NULL
	mov		wc.cbWndExtra,DLGWINDOWEXTRA
	push	hInst
	pop		wc.hInstance
	mov		wc.hbrBackground,COLOR_BTNFACE+1
	mov		wc.lpszMenuName,IDM_MENU
	mov		wc.lpszClassName,offset ClassName
	invoke LoadIcon,NULL,IDI_APPLICATION
	mov		wc.hIcon,eax
	mov		wc.hIconSm,eax
	invoke LoadCursor,NULL,IDC_ARROW
	mov		wc.hCursor,eax
	invoke RegisterClassEx,addr wc
	invoke CreateDialogParam,hInstance,IDD_DIALOG,NULL,addr WndProc,NULL
	invoke ShowWindow,hWnd,SW_SHOWNORMAL
	invoke UpdateWindow,hWnd
	.while TRUE
		invoke GetMessage,addr msg,NULL,0,0
	  .BREAK .if !eax
		invoke TranslateMessage,addr msg
		invoke DispatchMessage,addr msg
	.endw
	mov		eax,msg.wParam
	ret

WinMain endp

WndProc proc hWin:HWND,uMsg:UINT,wParam:WPARAM,lParam:LPARAM

	mov		eax,uMsg
	.if eax==WM_INITDIALOG
		push	hWin
		pop		hWnd
		
		; register hokeys
	    invoke RegisterHotKey,hWin, 101h, MOD_ALT, VK_C
	    ;invoke RegisterHotKey,hWin, 102h, MOD_CONTROL, VK_H

	.elseif eax==WM_COMMAND
		mov		eax,wParam
		and		eax,0FFFFh

		.if     eax==IDC_BTN1
			invoke EnableStartMaxSun
		.elseif eax==IDC_BTN2
			invoke DisableStartMaxSun
			
		.elseif eax==IDC_BTN3
			invoke EnableGetMaxSun
		.elseif eax==IDC_BTN4
			invoke DisableGetMaxSun
			
		.elseif eax==IDC_BTN5
			invoke EnableFreeBuild
		.elseif eax==IDC_BTN6
			invoke DisableFreeBuild
			
		.elseif eax==IDC_BTN7
			invoke EnableInstantBuild
		.elseif eax==IDC_BTN8
			invoke DisableInstantBuild
		
		.elseif eax==IDC_BTN9
			invoke EnableInvinciblePlants
		.elseif eax==IDC_BTN10
			invoke DisableInvinciblePlants
			
		.elseif eax==IDC_BTN11
			invoke EnableAllPlants
		.elseif eax==IDC_BTN12
			invoke DisableAllPlants
			
		.elseif eax==IDC_BTN13
			invoke EnableOneShot
		.elseif eax==IDC_BTN14
			invoke DisableOneShot
			
		.elseif eax==IDC_BTN15
			invoke EnableStartWithNoPlants
		.elseif eax==IDC_BTN16
			invoke DisableStartWithNoPlants
			
		.elseif eax==IDC_BTN17
			invoke EnableStartMaxSun
			invoke EnableGetMaxSun
			invoke EnableFreeBuild
			invoke EnableInstantBuild
			invoke EnableInvinciblePlants
			invoke EnableAllPlants
			invoke EnableOneShot
			invoke EnableStartWithNoPlants
		.elseif eax==IDC_BTN18
			invoke DisableStartMaxSun
			invoke DisableGetMaxSun
			invoke DisableFreeBuild
			invoke DisableInstantBuild
			invoke DisableInvinciblePlants
			invoke DisableAllPlants
			invoke DisableOneShot
			invoke DisableStartWithNoPlants			
		.endif
;	.elseif eax==WM_SIZE
	.elseif eax==WM_CLOSE
		invoke DestroyWindow,hWin
	.elseif uMsg==WM_DESTROY
		invoke PostQuitMessage,NULL
	.elseif uMsg==WM_HOTKEY
		; hotkey code
		;.if wParam==101h
			;invoke ToggleCashHack
		;.elseif wParam==102h
		;	invoke DisableMapHack	
		;.endif
	.else
		invoke DefWindowProc,hWin,uMsg,wParam,lParam
		ret
	.endif
	xor    eax,eax
	ret

WndProc endp

end start
