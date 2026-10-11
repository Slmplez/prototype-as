/* Ghidra-generated pseudocode; address 0048ebe0. */

undefined4 __cdecl EsGetI32(int *param_1,int *param_2,int param_3)

{
                    /* 0x6ebe0  21  EsGetI32 */
  if (((uint)param_1 & 1) != 0) {
    *param_2 = (int)param_1 >> 1;
    return 0;
  }
  if ((((uint)param_1 & 3) == 0) &&
     (*param_1 == *(int *)(*(int *)(*(int *)(param_3 + 0x38) + 0x44) + 0x10))) {
    if (param_1[2] == 4) {
      *param_2 = param_1[3];
      return 0;
    }
    return 4;
  }
  return 1;
}

