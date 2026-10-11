/* Ghidra-generated pseudocode; address 0048ee00. */

undefined4 __cdecl EsMakeString(char *param_1,int **param_2,int param_3)

{
  char cVar1;
  char *pcVar2;
  uint uVar3;
  int *piVar4;
  int iVar5;
  
                    /* 0x6ee00  32  EsMakeString */
  pcVar2 = param_1;
  do {
    cVar1 = *pcVar2;
    pcVar2 = pcVar2 + 1;
  } while (cVar1 != '\0');
  uVar3 = (int)pcVar2 - (int)(param_1 + 1);
  piVar4 = EsAllocateObject(param_3,*(int *)(*(int *)(*(int *)(param_3 + 0x38) + 0x2c) + 0x10),uVar3
                            ,0,(undefined4 *)0x0);
  if (piVar4 == (int *)0x0) {
    EsLogMemoryAllocationError(s_EsMakeString_>EsAllocateString_004b8d18);
    return 0xc;
  }
  iVar5 = 0;
  if (0 < (int)uVar3) {
    do {
      *(char *)((int)piVar4 + iVar5 + 0xc) = param_1[iVar5];
      iVar5 = iVar5 + 1;
    } while (iVar5 < (int)uVar3);
  }
  *param_2 = piVar4;
  return 0;
}

