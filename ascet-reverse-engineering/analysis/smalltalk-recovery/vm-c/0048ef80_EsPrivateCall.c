/* Ghidra-generated pseudocode; address 0048ef80. */

undefined * __cdecl EsPrivateCall(int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
                    /* 0x6ef80  42  EsPrivateCall */
  iVar3 = 0;
  iVar2 = DAT_004b8d58;
  if (DAT_004b8d58 != 0) {
    do {
      if (iVar2 == param_1) {
        return (&PTR_LAB_004b8d5c)[iVar3 * 2];
      }
      iVar1 = iVar3 * 2;
      iVar3 = iVar3 + 1;
      iVar2 = (&DAT_004b8d60)[iVar1];
    } while ((&DAT_004b8d60)[iVar1] != 0);
  }
  return (undefined *)0xffffffff;
}

