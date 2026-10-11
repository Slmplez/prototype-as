/* Ghidra-generated pseudocode; address 0047d110. */

undefined4 __cdecl EsSharedLibraryLookupName(HMODULE param_1,uint *param_2,FARPROC *param_3)

{
  FARPROC pFVar1;
  DWORD dwMessageId;
  
                    /* 0x5d110  54  EsSharedLibraryLookupName */
  if (param_1 < (HMODULE)0x20) {
    return 3;
  }
  pFVar1 = GetProcAddress(param_1,(LPCSTR)param_2);
  if (pFVar1 == (FARPROC)0x0) {
    dwMessageId = GetLastError();
    FormatMessageA(0x1200,(LPCVOID)0x0,dwMessageId,0x400,&DAT_004be3c0,0x200,(va_list *)0x0);
    FUN_0048e510(param_2,&DAT_004be3c0);
    return 4;
  }
  *param_3 = pFVar1;
  return 0;
}

