/* Ghidra-generated pseudocode; address 00479890. */

void EsNotifyOnPost(undefined4 param_1,int param_2)

{
                    /* 0x59890  36  EsNotifyOnPost */
  *(undefined4 *)(*(int *)(*(int *)(param_2 + 0x68) + 0xa0) + 0x20) = param_1;
  FUN_0047d2b0(*(int *)(param_2 + 0x68));
  return;
}

