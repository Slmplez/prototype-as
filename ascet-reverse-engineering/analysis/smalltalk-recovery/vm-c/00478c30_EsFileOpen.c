/* Ghidra-generated pseudocode; address 00478c30. */

HANDLE __cdecl EsFileOpen(LPCSTR param_1,byte param_2)

{
  HANDLE pvVar1;
  DWORD dwDesiredAccess;
  
                    /* 0x58c30  12  EsFileOpen */
  dwDesiredAccess = 0;
  if ((param_2 & 1) != 0) {
    dwDesiredAccess = 0x80000000;
  }
  if ((param_2 & 2) != 0) {
    dwDesiredAccess = dwDesiredAccess | 0x40000000;
  }
  pvVar1 = CreateFileA(param_1,dwDesiredAccess,3,(LPSECURITY_ATTRIBUTES)0x0,((param_2 & 4) == 4) + 3
                       ,0x80,(HANDLE)0x0);
  if (pvVar1 != (HANDLE)0xffffffff) {
    if ((param_2 & 8) == 0) {
      return pvVar1;
    }
    CloseHandle(pvVar1);
    pvVar1 = CreateFileA(param_1,dwDesiredAccess,3,(LPSECURITY_ATTRIBUTES)0x0,5,0x80,(HANDLE)0x0);
    if (pvVar1 != (HANDLE)0xffffffff) {
      return pvVar1;
    }
  }
  return (HANDLE)0xffffffff;
}

