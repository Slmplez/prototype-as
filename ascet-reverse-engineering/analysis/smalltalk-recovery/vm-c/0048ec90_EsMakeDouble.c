/* Ghidra-generated pseudocode; address 0048ec90. */

undefined4 __cdecl EsMakeDouble(undefined8 param_1,int **param_2,int param_3)

{
  int *piVar1;
  
                    /* 0x6ec90  30  EsMakeDouble */
  piVar1 = EsAllocateObject(param_3,*(int *)(*(int *)(*(int *)(param_3 + 0x38) + 0x48) + 0x10),8,0,
                            (undefined4 *)0x0);
  if (piVar1 == (int *)0x0) {
    EsLogMemoryAllocationError(s_EsMakeDouble_>EsAllocateObject_004b8ca8);
    return 0xc;
  }
  *(undefined8 *)(piVar1 + 3) = param_1;
  *param_2 = piVar1;
  return 0;
}

