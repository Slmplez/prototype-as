/* Ghidra-generated pseudocode; address 0048ee70. */

undefined4 __cdecl EsGetString(int *param_1,LPVOID *param_2,int param_3)

{
  uint uVar1;
  LPVOID pvVar2;
  int iVar3;
  uint uVar4;
  
                    /* 0x6ee70  23  EsGetString */
  if (*param_1 != *(int *)(*(int *)(*(int *)(param_3 + 0x38) + 0x2c) + 0x10)) {
    return 1;
  }
  if (((uint)param_1 & 3) == 0) {
    uVar4 = param_1[2];
    uVar1 = param_1[1] & 6;
    if (uVar1 == 0) {
      uVar4 = (uVar4 >> 2) - (*(int *)(*param_1 + 0x18) >> 1);
    }
    else if (uVar1 != 2) {
      if (uVar1 == 6) {
        uVar4 = uVar4 >> 2;
      }
      else {
        uVar4 = uVar4 >> 1;
      }
    }
  }
  else {
    uVar4 = 0;
  }
  pvVar2 = FUN_004795f0(uVar4 + 1);
  if (pvVar2 == (LPVOID)0x0) {
    EsLogMemoryAllocationError(s_EsGetString_>EsAllocateMemory_004b8d38);
    return 0xc;
  }
  iVar3 = 0;
  if (0 < (int)uVar4) {
    iVar3 = 0;
    do {
      *(undefined *)(iVar3 + (int)pvVar2) = *(undefined *)((int)param_1 + iVar3 + 0xc);
      iVar3 = iVar3 + 1;
    } while (iVar3 < (int)uVar4);
  }
  *(undefined *)(iVar3 + (int)pvVar2) = 0;
  *param_2 = pvVar2;
  return 0;
}

