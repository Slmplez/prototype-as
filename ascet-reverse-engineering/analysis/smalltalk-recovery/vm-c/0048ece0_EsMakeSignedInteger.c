/* Ghidra-generated pseudocode; address 0048ece0. */

undefined4 __cdecl EsMakeSignedInteger(int param_1,int **param_2,int param_3)

{
  int *piVar1;
  
                    /* 0x6ece0  31  EsMakeSignedInteger */
  if (param_1 + 0x40000000U < 0x80000000) {
    *param_2 = (int *)(param_1 * 2 | 1);
    return 0;
  }
  piVar1 = EsAllocateObject(param_3,*(int *)(*(int *)(*(int *)(param_3 + 0x38) + 0x44) + 0x10),1,0,
                            (undefined4 *)0x0);
  if (piVar1 == (int *)0x0) {
    EsLogMemoryAllocationError(s_EsMakeSignedInteger_>EsAllocateO_004b8cc8);
    return 0xc;
  }
  piVar1[3] = param_1;
  *param_2 = piVar1;
  return 0;
}

