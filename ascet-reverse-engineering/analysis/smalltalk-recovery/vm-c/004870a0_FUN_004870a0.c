/* Ghidra-generated pseudocode; address 004870a0. */

int __cdecl FUN_004870a0(int param_1)

{
  uint *puVar1;
  int iVar2;
  uint *puVar3;
  uint uVar4;
  uint *puVar5;
  uint *local_8;
  uint *local_4;
  
  if ((*(uint *)(param_1 + 0x10) & 0x800) != 0) {
    puVar1 = (uint *)(*(uint **)(param_1 + 0xe0))[3];
    if ((**(uint **)(param_1 + 0xe0) & 0x400) == 0) {
      *puVar1 = 0;
    }
    uVar4 = 1;
    if (1 < *puVar1) {
      local_4 = puVar1 + 0xc;
      local_8 = puVar1 + 0x11;
      puVar5 = puVar1 + 0xf;
      puVar3 = puVar1 + 9;
      do {
        *puVar5 = *puVar5 & 0x7fffffff;
        iVar2 = FUN_004860c0(param_1,puVar3,0x30005,0);
        if (iVar2 == 0x34) {
          _memcpy(puVar3,local_8,((*puVar1 - uVar4) + -1) * 0x20);
          *puVar1 = *puVar1 - 1;
          local_8 = local_8 + -8;
          uVar4 = uVar4 - 1;
          puVar3 = puVar3 + -8;
          puVar5 = puVar5 + -8;
          local_4 = local_4 + -8;
        }
        else {
          if (iVar2 != 0) {
            if (iVar2 != 5) {
              return iVar2;
            }
            *puVar5 = *puVar5 | 0x80000000;
          }
          iVar2 = FUN_004860c0(param_1,local_4,0x20005,1);
          if ((iVar2 != 0) && (iVar2 != 5)) {
            return iVar2;
          }
        }
        local_8 = local_8 + 8;
        local_4 = local_4 + 8;
        uVar4 = uVar4 + 1;
        puVar3 = puVar3 + 8;
        puVar5 = puVar5 + 8;
      } while (uVar4 < *puVar1);
    }
    puVar1 = (uint *)(*(uint **)(param_1 + 0xe4))[3];
    if ((**(uint **)(param_1 + 0xe4) & 0x400) == 0) {
      *puVar1 = 0;
    }
    uVar4 = 1;
    if (1 < *puVar1) {
      local_8 = puVar1 + 0xc;
      local_4 = puVar1 + 0x11;
      puVar5 = puVar1 + 0xf;
      puVar3 = puVar1 + 9;
      do {
        *puVar5 = *puVar5 & 0x7fffffff;
        iVar2 = FUN_004860c0(param_1,puVar3,0x80005,0);
        if (iVar2 == 0x34) {
          _memcpy(puVar3,local_4,((*puVar1 - uVar4) + -1) * 0x20);
          *puVar1 = *puVar1 - 1;
          local_4 = local_4 + -8;
          uVar4 = uVar4 - 1;
          puVar3 = puVar3 + -8;
          puVar5 = puVar5 + -8;
          local_8 = local_8 + -8;
        }
        else {
          if (iVar2 != 0) {
            if (iVar2 != 5) {
              return iVar2;
            }
            *puVar5 = *puVar5 | 0x80000000;
          }
          iVar2 = FUN_004860c0(param_1,local_8,0x70005,1);
          if ((iVar2 != 0) && (iVar2 != 5)) {
            return iVar2;
          }
        }
        local_4 = local_4 + 8;
        local_8 = local_8 + 8;
        uVar4 = uVar4 + 1;
        puVar3 = puVar3 + 8;
        puVar5 = puVar5 + 8;
      } while (uVar4 < *puVar1);
    }
  }
  return 0;
}

