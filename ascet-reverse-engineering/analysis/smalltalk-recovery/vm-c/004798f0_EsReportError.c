/* Ghidra-generated pseudocode; address 004798f0. */

void __cdecl EsReportError(int param_1,int param_2)

{
  int iVar1;
  CHAR local_84 [128];
  uint local_4;
  
                    /* 0x598f0  47  EsReportError */
  local_4 = DAT_004b96d0 ^ (uint)local_84;
  *(undefined4 *)(*(int *)(param_2 + 0xa0) + 0x18) = 1;
  if (param_1 != 0) {
    iVar1 = LoadStringA(*(HINSTANCE *)(*(int *)(param_2 + 0xa0) + 0x14c),param_1 + 1000,local_84,
                        0x80);
    if (iVar1 == 0) {
      wsprintfA(local_84,s_Exit_due_to_error___d_004b39a4,param_1);
    }
    MessageBoxA((HWND)0x0,local_84,s_Fatal_Application_Error_004b39bc,0x1010);
    EsPrintf(&DAT_004b39d4,local_84,0,0,0,0,0,0,0,0,0);
  }
  ___security_check_cookie_4(local_4 ^ (uint)local_84);
  return;
}

