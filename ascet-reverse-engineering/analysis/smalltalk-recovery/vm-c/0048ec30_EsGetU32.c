/* Ghidra-generated pseudocode; address 0048ec30. */

undefined4 __cdecl EsGetU32(int *param_1,int *param_2,int param_3)

{
  int iVar1;
  
                    /* 0x6ec30  24  EsGetU32 */
  if (((uint)param_1 & 1) == 0) {
    if ((((uint)param_1 & 3) != 0) ||
       (*param_1 != *(int *)(*(int *)(*(int *)(param_3 + 0x38) + 0x44) + 0x10))) {
      return 1;
    }
    if (param_1[2] == 4) {
      if (-1 < param_1[3]) {
        *param_2 = param_1[3];
        return 0;
      }
    }
    else if ((param_1[2] == 8) && (param_1[4] == 0)) {
      iVar1 = param_1[3];
      goto LAB_0048ec7d;
    }
  }
  else {
    iVar1 = (int)param_1 >> 1;
    if (-1 < iVar1) {
LAB_0048ec7d:
      *param_2 = iVar1;
      return 0;
    }
  }
  return 4;
}

