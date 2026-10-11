/* Ghidra-generated pseudocode; address 004234b8. */

uint __cdecl EsPostAsyncMessage(int param_1,undefined4 param_2,undefined4 param_3,uint param_4)

{
  uint *puVar1;
  uint uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  uint local_14;
  
                    /* 0x34b8  39  EsPostAsyncMessage */
  puVar1 = *(uint **)(param_1 + 0x68);
  local_14 = 0;
  if (((*puVar1 & 2) != 0) && (param_4 < 0x100)) {
    uVar2 = puVar1[2];
    local_14 = puVar1[6];
    uVar4 = FUN_00479550(local_14);
    puVar6 = *(undefined4 **)(uVar2 + 0xc);
    if (*(undefined4 **)(uVar2 + 4) < puVar6 + param_4 + 3) {
      *puVar1 = *puVar1 | 0x10;
      FUN_00479530(uVar4,local_14);
      uVar2 = puVar1[6];
      *(undefined4 *)(uVar2 + 0x24) = 0xffffffff;
      FUN_004797f0(uVar2);
    }
    else {
      *puVar6 = param_2;
      puVar6[1] = param_3;
      puVar6[2] = param_4 * 2 + 1;
      puVar6 = puVar6 + 3;
      if (param_4 != 0) {
        puVar5 = (undefined4 *)&stack0x00000014;
        do {
          uVar3 = *puVar5;
          puVar5 = puVar5 + 1;
          *puVar6 = uVar3;
          puVar6 = puVar6 + 1;
          param_4 = param_4 - 1;
        } while (param_4 != 0);
      }
      *(undefined4 **)(uVar2 + 0xc) = puVar6;
      *puVar1 = *puVar1 | 4;
      uVar2 = puVar1[6];
      *(undefined4 *)(uVar2 + 0x24) = 0xffffffff;
      FUN_004797f0(uVar2);
      FUN_00479530(uVar4,uVar2);
      local_14 = 1;
    }
  }
  return local_14;
}

