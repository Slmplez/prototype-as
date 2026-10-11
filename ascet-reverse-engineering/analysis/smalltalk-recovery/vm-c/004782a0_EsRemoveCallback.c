/* Ghidra-generated pseudocode; address 004782a0. */

undefined4 __cdecl EsRemoveCallback(int param_1,int *param_2,int param_3)

{
  int *piVar1;
  int iVar2;
  
                    /* 0x582a0  46  EsRemoveCallback */
  iVar2 = 0;
  FUN_00479480(param_1);
  if (0 < *param_2) {
    piVar1 = (int *)param_2[2];
    do {
      if (*piVar1 == param_3) {
        ((int *)param_2[2])[iVar2] = 0;
        if (iVar2 == *param_2 + -1) {
          *param_2 = *param_2 + -1;
        }
        FUN_004794a0(param_1);
        return 0;
      }
      iVar2 = iVar2 + 1;
      piVar1 = piVar1 + 1;
    } while (iVar2 < *param_2);
  }
  FUN_004794a0(param_1);
  return 1;
}

