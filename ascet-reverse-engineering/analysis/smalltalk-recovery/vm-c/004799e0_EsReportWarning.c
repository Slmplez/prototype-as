/* Ghidra-generated pseudocode; address 004799e0. */

void __cdecl EsReportWarning(LPCSTR param_1)

{
                    /* 0x599e0  48  EsReportWarning */
  if (param_1 != (LPCSTR)0x0) {
    MessageBoxA((HWND)0x0,param_1,s_Warning_004b39d8,0x1030);
    EsPrintf(&DAT_004b39e0,param_1,0,0,0,0,0,0,0,0,0);
  }
  return;
}

