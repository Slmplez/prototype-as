/* Ghidra-generated pseudocode; address 00478200. */

undefined4 __cdecl EsAddCallback(int param_1,int *param_2,int param_3)

{
  int iVar1;
  int *piVar2;
  int iVar3;
  int iVar4;
  
                    /* 0x58200  1  EsAddCallback */
  iVar3 = 0;
  iVar4 = -1;
  FUN_00479480(param_1);
  iVar1 = *param_2;
  if (0 < iVar1) {
    piVar2 = (int *)param_2[2];
    do {
      if ((*piVar2 == 0) && (iVar4 == -1)) {
        iVar4 = iVar3;
      }
      if (*piVar2 == param_3) {
        return 1;
      }
      iVar3 = iVar3 + 1;
      piVar2 = piVar2 + 1;
    } while (iVar3 < iVar1);
  }
  if (param_2[1] <= iVar1) {
    FUN_004794a0(param_1);
    return 1;
  }
  *param_2 = iVar1 + 1;
  if (iVar4 == -1) {
    *(int *)(param_2[2] + -4 + (iVar1 + 1) * 4) = param_3;
    FUN_004794a0(param_1);
    return 0;
  }
  *(int *)(param_2[2] + iVar4 * 4) = param_3;
  FUN_004794a0(param_1);
  return 0;
}

