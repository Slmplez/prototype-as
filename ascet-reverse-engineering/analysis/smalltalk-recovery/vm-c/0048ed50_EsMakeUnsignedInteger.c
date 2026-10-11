/* Ghidra-generated pseudocode; address 0048ed50. */

undefined4 __cdecl EsMakeUnsignedInteger(uint param_1,int **param_2,int param_3)

{
  int *piVar1;
  
                    /* 0x6ed50  33  EsMakeUnsignedInteger */
  if (param_1 < 0x40000000) {
    *param_2 = (int *)(param_1 * 2 | 1);
    return 0;
  }
  piVar1 = EsAllocateObject(param_3,*(int *)(*(int *)(*(int *)(param_3 + 0x38) + 0x44) + 0x10),
                            ((param_1 & 0x80000000) != 0) + 1,0,(undefined4 *)0x0);
  if (piVar1 == (int *)0x0) {
    EsLogMemoryAllocationError(s_EsMakeUnsignedInteger_>EsAllocat_004b8cf0);
    return 0xc;
  }
  piVar1[3] = param_1;
  *param_2 = piVar1;
  return 0;
}

