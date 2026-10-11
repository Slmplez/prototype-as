/* Ghidra-generated pseudocode; address 00489de0. */

int * __cdecl FUN_00489de0(int param_1,int param_2,int param_3)

{
  int *piVar1;
  int iVar2;
  
  iVar2 = (param_1 >> 1) + (param_2 >> 1);
  if (iVar2 + 0x40000000U < 0x80000000) {
    return (int *)(iVar2 * 2 | 1);
  }
  piVar1 = EsAllocateObject(param_3,*(int *)(*(int *)(*(int *)(param_3 + 0x38) + 0x44) + 0x10),1,0,
                            (undefined4 *)0x0);
  piVar1[3] = iVar2;
  return piVar1;
}

