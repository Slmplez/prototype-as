/* Ghidra-generated pseudocode; address 00443eb0. */

undefined4 __cdecl EsRememberObjectStore(undefined4 param_1,int param_2,uint param_3)

{
                    /* 0x23eb0  45  EsRememberObjectStore */
  if (((((param_3 & 3) == 0) && ((*(uint *)(param_3 + 4) & 0x8000) == 0)) &&
      ((*(uint *)(param_2 + 4) & 0x8000) != 0)) && ((*(uint *)(param_2 + 4) & 0x4000) == 0)) {
    FUN_0044112c(&stack0xfffffffc);
  }
  return 0;
}

