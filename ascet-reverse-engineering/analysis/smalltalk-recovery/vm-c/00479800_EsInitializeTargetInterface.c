/* Ghidra-generated pseudocode; address 00479800. */

int __cdecl EsInitializeTargetInterface(int param_1,int param_2,undefined4 param_3,int param_4)

{
  int iVar1;
  
                    /* 0x59800  26  EsInitializeTargetInterface */
  *(int *)(param_4 + 0x90) = param_1;
  *(int *)(param_4 + 0x94) = param_2;
  iVar1 = FUN_0047df90(param_4);
  if (iVar1 != 0) {
    iVar1 = FUN_0047d4b0(param_1,param_2);
    if (iVar1 != 0) {
      FUN_0047df40(param_4);
      return iVar1;
    }
    __controlfp(0x80001,0x8001f);
  }
  return 0;
}

