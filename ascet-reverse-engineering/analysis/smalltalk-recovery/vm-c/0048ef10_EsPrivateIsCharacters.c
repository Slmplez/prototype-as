/* Ghidra-generated pseudocode; address 0048ef10. */

uint __cdecl EsPrivateIsCharacters(undefined4 *param_1,int *param_2)

{
  uint uVar1;
  int iVar2;
  int *extraout_EDX;
  int *extraout_EDX_00;
  
                    /* 0x6ef10  43  EsPrivateIsCharacters */
  if (((uint)param_2 & 3) == 0) {
    uVar1 = param_2[1];
    if (((uVar1 & 6) == 2) &&
       (iVar2 = FUN_0048edd0(param_2,*(int *)(*(int *)(param_1[0xe] + 0x2c) + 0x10)),
       param_2 = extraout_EDX, iVar2 != 0)) {
      return 1;
    }
    if (((uVar1 & 6) == 4) &&
       (iVar2 = FUN_0048edd0(param_2,*(int *)(*(int *)(param_1[0xe] + 0xa8) + 0x10)),
       param_2 = extraout_EDX_00, iVar2 != 0)) {
      return 1;
    }
  }
  iVar2 = EsGetClass(param_2,param_1);
  return *(uint *)(iVar2 + 0x1c) & 0x8000;
}

