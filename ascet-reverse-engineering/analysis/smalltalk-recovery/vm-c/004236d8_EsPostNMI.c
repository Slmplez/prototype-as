/* Ghidra-generated pseudocode; address 004236d8. */

void __cdecl EsPostNMI(int param_1)

{
  uint *puVar1;
  uint uVar2;
  
                    /* 0x36d8  40  EsPostNMI */
  puVar1 = *(uint **)(param_1 + 0x68);
  *puVar1 = *puVar1 | 8;
  uVar2 = puVar1[6];
  *(undefined4 *)(uVar2 + 0x24) = 0xffffffff;
  FUN_004797f0(uVar2);
  return;
}

