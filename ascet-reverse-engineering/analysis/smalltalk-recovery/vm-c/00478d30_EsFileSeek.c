/* Ghidra-generated pseudocode; address 00478d30. */

DWORD __cdecl EsFileSeek(HANDLE param_1,LONG param_2,uint param_3)

{
  uint dwMoveMethod;
  DWORD DVar1;
  
                    /* 0x58d30  14  EsFileSeek */
  if (param_3 < 3) {
    dwMoveMethod = param_3;
    if (((param_3 != 0) && (param_3 != 2)) && (dwMoveMethod = 1, param_3 != 1)) {
      dwMoveMethod = param_3;
    }
    DVar1 = SetFilePointer(param_1,param_2,(PLONG)0x0,dwMoveMethod);
    if (DVar1 != 0xffffffff) {
      return DVar1;
    }
  }
  return 0xffffffff;
}

