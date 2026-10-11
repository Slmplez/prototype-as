/* Ghidra-generated pseudocode; address 00486f10. */

void __cdecl EsParseIniFileOptions(int param_1,char **param_2)

{
  char **ppcVar1;
  undefined4 *puVar2;
  char *pcVar3;
  int iVar4;
  char **ppcVar5;
  int iVar6;
  
                    /* 0x66f10  38  EsParseIniFileOptions */
  EsPrintf(s__VM_Options___004b7a8c,0,0,0,0,0,0,0,0,0,0);
  if (*(int *)(param_1 + 0xfc) == 0) {
    FUN_004833b0(param_1);
  }
  ppcVar5 = param_2;
  if ((*(undefined4 **)(param_1 + 0xfc) != (undefined4 *)0x0) &&
     (puVar2 = FUN_00483ea0(*(undefined4 **)(param_1 + 0xfc),s_VM_Options_004b7a9c),
     puVar2 != (undefined4 *)0x0)) {
    puVar2 = (undefined4 *)FUN_00483ef0((int)puVar2);
    for (puVar2 = (undefined4 *)FUN_00483f20(puVar2); puVar2 != (undefined4 *)0x0;
        puVar2 = (undefined4 *)FUN_00483f10(puVar2)) {
      iVar6 = 0;
      pcVar3 = *param_2;
      ppcVar1 = param_2;
      while (pcVar3 != (char *)0x0) {
        pcVar3 = (char *)FUN_00483f00((int)puVar2);
        iVar4 = FUN_004851b0(*ppcVar1,pcVar3);
        if ((iVar4 == 0) && (iVar4 = FUN_00483ef0((int)puVar2), iVar4 != 0)) {
          pcVar3 = (char *)FUN_00483ef0((int)puVar2);
          ppcVar5 = (char **)_atol(pcVar3);
          if (ppcVar5 != (char **)0x0) {
            *(char ***)ppcVar1[1] = ppcVar5;
            EsPrintf(s___s_set_to__d_004b7aa8,*ppcVar1,ppcVar5,0,0,0,0,0,0,0,0);
          }
        }
        iVar6 = iVar6 + 1;
        ppcVar1 = param_2 + iVar6 * 3;
        pcVar3 = param_2[iVar6 * 3];
      }
    }
  }
  iVar6 = 0;
  pcVar3 = *param_2;
  ppcVar1 = param_2;
  while (pcVar3 != (char *)0x0) {
    if (ppcVar1[2] != (char *)0xffffffff) {
      *(char **)ppcVar1[1] = ppcVar1[2];
      EsPrintf(s___s_set_to__d_by_default_004b7ab8,*ppcVar1,ppcVar5,0,0,0,0,0,0,0,0);
    }
    iVar6 = iVar6 + 1;
    ppcVar1 = param_2 + iVar6 * 3;
    pcVar3 = param_2[iVar6 * 3];
  }
  EsPrintf(s____004b7ad4,0,0,0,0,0,0,0,0,0,0);
  return;
}

