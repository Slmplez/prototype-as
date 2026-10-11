/* Ghidra-generated pseudocode; address 0047d9b0. */

void __cdecl EsSplashShutDown(int param_1)

{
  HWND pHVar1;
  
                    /* 0x5d9b0  58  EsSplashShutDown */
  if (*(int *)(param_1 + 0x118) != 0) {
    pHVar1 = GetForegroundWindow();
    if (*(HWND *)(param_1 + 0x118) == pHVar1) {
      pHVar1 = CreateWindowExA(0,s_BUTTON_004b4a98,&DAT_004bc31d,0x80000000,0,0,0,0,(HWND)0x0,
                               (HMENU)0x0,*(HINSTANCE *)(*(int *)(param_1 + 0xa0) + 0x14c),
                               (LPVOID)0x0);
      SetForegroundWindow(pHVar1);
      DestroyWindow(pHVar1);
    }
    PostMessageA(*(HWND *)(param_1 + 0x118),0x10,0,0);
    *(undefined4 *)(param_1 + 0x118) = 0;
  }
  return;
}

