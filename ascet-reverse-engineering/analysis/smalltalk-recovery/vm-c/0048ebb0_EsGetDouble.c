/* Ghidra-generated pseudocode; address 0048ebb0. */

undefined4 __cdecl EsGetDouble(int *param_1,undefined8 *param_2,int param_3)

{
                    /* 0x6ebb0  20  EsGetDouble */
  if ((((uint)param_1 & 3) == 0) &&
     (*param_1 == *(int *)(*(int *)(*(int *)(param_3 + 0x38) + 0x48) + 0x10))) {
    *param_2 = *(undefined8 *)(param_1 + 3);
    return 0;
  }
  return 1;
}

