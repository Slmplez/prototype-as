/* Ghidra-generated pseudocode; address 00472b74. */

/* WARNING (jumptable): Unable to track spacebase fully for stack */
/* WARNING: Unable to track spacebase fully for stack */

void EsSendMessage(int param_1,undefined4 param_2,uint *param_3,uint param_4,uint param_5)

{
  int iVar1;
  undefined4 *puVar2;
  uint *puVar3;
  int iVar4;
  byte *pbVar5;
  undefined *puVar6;
  int iVar7;
  uint uVar8;
  undefined4 *puVar9;
  uint uVar10;
  bool bVar11;
  undefined *puVar12;
  undefined in_stack_fffffea0;
  undefined4 local_70 [2];
  undefined4 local_68;
  undefined4 auStack_58 [17];
  undefined local_14 [4];
  
                    /* 0x52b74  51  EsSendMessage */
  puVar12 = &stack0xfffffffc;
  iVar1 = *(int *)(param_1 + 0x68);
  iVar7 = *(int *)(iVar1 + 0x18);
  puVar2 = (undefined4 *)(iVar7 + 0xa0);
  puVar9 = (undefined4 *)&stack0xfffffea0;
  for (iVar4 = 0x3c; iVar4 != 0; iVar4 = iVar4 + -1) {
    *puVar9 = *puVar2;
    puVar2 = puVar2 + 1;
    puVar9 = puVar9 + 1;
  }
  uVar10 = *(int *)(iVar1 + 0x14) + 0x10000;
  *(uint *)(iVar1 + 0x14) = uVar10;
  local_70[0] = *(undefined4 *)(iVar1 + 0x54);
  local_68 = 0;
  *(undefined4 **)(iVar1 + 0x54) = local_70;
  *(int *)(iVar7 + 0xf0) = iVar1;
  iVar1 = FUN_00491f54(auStack_58);
  if (iVar1 != 0) {
    FUN_0043d45c(in_stack_fffffea0,iVar7);
    return;
  }
  *(undefined **)(iVar7 + 0xf4) = local_14;
  puVar2 = FUN_0047c360();
  **(undefined4 **)(iVar7 + 0xf4) = *puVar2;
  *puVar2 = *(undefined4 *)(iVar7 + 0xf0);
  if ((uVar10 & 0xffff0000) == 0x10000) {
    *(undefined **)(iVar7 + 0xa0) = &stack0xfffffe9c;
    puVar6 = *(undefined **)(iVar7 + 0x2c);
    uVar10 = *(uint *)(iVar7 + 0x74);
  }
  else {
    iVar1 = *(int *)(iVar7 + 0x2c);
    if ((*(uint *)(iVar1 + -0x10) & 0x1000000) != 0) {
      *(uint *)(iVar7 + 0x74) = *(uint *)(iVar7 + 0x74) | 0x1000000;
    }
    uVar10 = *(uint *)(iVar7 + 0x74) | 1;
    *(undefined **)(iVar7 + 0xa0) = &stack0xfffffe9c;
    iVar4 = *(int *)(iVar7 + 0x28);
    *(undefined4 *)(iVar4 + -4) = *(undefined4 *)(iVar7 + 100);
    puVar6 = (undefined *)(iVar4 + -8);
    *(int *)(iVar4 + -8) = iVar1;
    *(undefined4 *)(iVar4 + -0xc) = *(undefined4 *)(iVar7 + 0x30);
    *(undefined4 *)(iVar4 + -0x10) = *(undefined4 *)(iVar7 + 0x34);
    *(undefined4 *)(iVar4 + -0x14) = 0xe;
    *(uint *)(iVar4 + -0x18) = uVar10;
    *(int *)(iVar4 + -0x1c) = iVar4 + -4;
    *(undefined4 *)(iVar4 + -0x20) = 0xe;
    iVar1 = *(int *)(*(int *)(iVar7 + 0x20) + 8);
    *(int *)(iVar7 + 0x28) = iVar4 + -0x20;
    *(int *)(*(int *)(iVar7 + 0xa0) + 0x168) = (*(int *)(iVar7 + 0x20) + iVar1 + 0xc) - (iVar4 + -8)
    ;
  }
  uVar8 = *(uint *)(iVar7 + 100);
  if (((uVar8 & 0x20) == 0) && ((uVar8 & 4) != 0)) {
    *(uint *)(iVar7 + 100) = uVar8 & 0xfffff223;
    *(uint *)(iVar7 + 0x74) = uVar10;
    *(undefined **)(iVar7 + 0x2c) = puVar6;
    EsFlushCache(iVar7);
    *(undefined **)(iVar7 + 0xa0) = &stack0xfffffe9c;
    puVar6 = *(undefined **)(iVar7 + 0x2c);
    uVar10 = *(uint *)(iVar7 + 0x74);
  }
  if (*(int *)(iVar7 + 0x88) == 0) {
    if (((uint)param_3 & 3) == 0) {
      uVar8 = *param_3;
    }
    else if (((uint)param_3 & 1) == 0) {
      if (((uint)param_3 & 4) == 0) {
        uVar8 = *(uint *)(iVar7 + 0x1c);
      }
      else if (((uint)param_3 & 8) == 0) {
        uVar8 = *(uint *)(iVar7 + 0x14);
      }
      else {
        uVar8 = *(uint *)(iVar7 + ((uint)param_3 >> 4) * 4);
      }
    }
    else {
      uVar8 = *(uint *)(iVar7 + 0x10);
    }
    *(undefined **)(iVar7 + 0x2c) = puVar6;
    *(uint **)(iVar7 + 0xec) = param_3;
    puVar3 = (uint *)(*(int *)(iVar7 + 0x3c) + ((param_4 ^ uVar8) & 0x3ffc) * 4);
    if ((param_4 != puVar3[2]) || (uVar8 != *puVar3)) {
      *(uint *)(iVar7 + 0x74) = uVar10;
      puVar3 = (uint *)FUN_004411a4(1,param_4,puVar12);
      *(undefined **)(iVar7 + 0xa0) = &stack0xfffffe9c;
    }
    if ((undefined *)puVar3[3] != &LAB_00438330) {
      uVar10 = puVar3[1];
      if ((uVar10 & 1) == 0) {
        pbVar5 = (byte *)(*(int *)(uVar10 + 0xc) + 0xd);
      }
      else if ((*(uint *)(uVar10 - 1) & 0x80000000) == 0) {
        pbVar5 = (byte *)(uVar10 + 8 + (*(uint *)(uVar10 + 3) & 0xffff));
      }
      else {
        pbVar5 = (byte *)(uVar10 + 1 + (*(uint *)(uVar10 + 3) >> 0x10));
      }
      bVar11 = *pbVar5 != param_5;
      param_5 = (uint)*pbVar5;
      if (bVar11) {
        *(undefined4 *)(*(int *)(iVar7 + 0x28) + -4) = 0xe;
        FUN_00472e98(pbVar5,0x11);
        return;
      }
    }
    iVar1 = *(int *)(iVar7 + 0x28);
    *(uint *)(iVar7 + 200) = param_5;
    *(undefined4 *)(iVar1 + -4) = *(undefined4 *)(iVar7 + 0xec);
    iVar4 = *(int *)(iVar7 + 200);
    if (iVar4 != 0) {
      *(int *)(iVar7 + 0x28) = iVar1 + -4;
      *(uint **)(iVar7 + 0xe8) = puVar3;
      puVar2 = (undefined4 *)(*(int *)(iVar7 + 0xa0) + 0x17c);
      do {
        iVar1 = *(int *)(iVar7 + 0x28);
        *(undefined4 *)(iVar1 + -4) = *puVar2;
        puVar2 = puVar2 + 1;
        iVar4 = iVar4 + -1;
        *(int *)(iVar7 + 0x28) = iVar1 + -4;
      } while (iVar4 != 0);
      puVar3 = *(uint **)(iVar7 + 0xe8);
    }
                    /* WARNING: Could not recover jumptable at 0x00472e01. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (*(code *)puVar3[3])();
    return;
  }
  *(undefined4 *)(*(int *)(iVar7 + 0x28) + -4) = 0xe;
  *(undefined **)(iVar7 + 0x2c) = puVar6;
  FUN_00472e98(uVar10,0x38);
  return;
}

