/* Ghidra-generated pseudocode; address 004891e0. */

int __cdecl FUN_004891e0(undefined4 *param_1)

{
  uint *puVar1;
  undefined4 *puVar2;
  bool bVar3;
  uint **ppuVar4;
  uint *puVar5;
  int iVar6;
  int *piVar7;
  int *piVar8;
  size_t sVar9;
  uint *puVar10;
  uint uVar11;
  char *pcVar12;
  int local_20 [4];
  int local_10 [4];
  
  FUN_004855e0((int)param_1);
  ppuVar4 = FUN_0048fab0(0x40);
  param_1[0x35] = ppuVar4;
  if (ppuVar4 == (uint **)0x0) {
    EsLogMemoryAllocationError(s_loadComponents_>allocateMemorySe_004b7b68);
    return 0xc;
  }
  puVar5 = (uint *)FUN_0048e990((int *)param_1[0x12],local_20);
  while (puVar5 != (uint *)0x0) {
    if ((*(byte *)(puVar5 + 0x44) & 8) == 0) {
      iVar6 = FUN_00487690(param_1,puVar5,0);
      if (iVar6 != 0x14) {
        if (iVar6 != 0) {
          return iVar6;
        }
        if (puVar5[0x45] == 0) {
          if ((param_1[4] & 0x2000) != 0) {
            return 0x25;
          }
          param_1[0x41] = puVar5;
        }
      }
      puVar5 = (uint *)FUN_0048e990((int *)param_1[0x12],local_20);
    }
    else {
      puVar5 = (uint *)FUN_0048e9f0(local_20);
    }
  }
  piVar7 = FUN_0048e990((int *)param_1[0x12],local_20);
  while (piVar7 != (int *)0x0) {
    if (((*(byte *)(piVar7 + 0x44) & 0x40) == 0) && ((int *)piVar7[0x49] != (int *)0x0)) {
      piVar8 = FUN_0048e990((int *)piVar7[0x49],local_10);
      while (piVar8 != (int *)0x0) {
        if (((piVar7[0x52] & 0x80000000U) != 0) && ((*(uint *)(*piVar8 + 0x144) & 0x80000000) != 0))
        {
          piVar7[0x52] = piVar7[0x52] + 1;
        }
        piVar7[0x52] = piVar7[0x52] + *(int *)(*piVar8 + 0x144);
        piVar8 = FUN_0048e9f0(local_10);
      }
    }
    piVar7 = FUN_0048e9f0(local_20);
  }
  if ((param_1[4] & 0x2000) == 0) {
    FUN_00486ab0((int)param_1);
  }
  bVar3 = false;
  if ((param_1[0x38] == 0) && ((param_1[4] & 0x800) != 0)) {
    puVar5 = FUN_0048fb00((uint **)param_1[0x35]);
    if (puVar5 == (uint *)0x0) {
      EsLogMemoryAllocationError(s_loadComponents_>allocateMemorySe_004b7ba8);
      return 0xc;
    }
    param_1[0x38] = puVar5;
    *puVar5 = 4;
    puVar5[1] = 0x8024;
    puVar5[2] = 4;
    puVar5[4] = 0x8024;
    puVar5[5] = 0;
    puVar5[6] = 0;
    puVar5[9] = 0x8024;
    puVar5[10] = 0x8024;
    puVar5[0xc] = *(uint *)(param_1[0x41] + 0x144);
    puVar5[0xd] = param_1[0x41];
    puVar5[0xf] = 0x10000000;
    bVar3 = true;
    puVar5 = FUN_0048fb00((uint **)param_1[0x35]);
    if (puVar5 == (uint *)0x0) {
      EsLogMemoryAllocationError(s_loadComponents_>allocateMemorySe_004b7be8);
      return 0xc;
    }
    param_1[0x39] = puVar5;
    *puVar5 = 4;
    puVar5[1] = 0x8024;
    puVar5[2] = 8;
    puVar5[4] = 0x8024;
    puVar5[5] = 0;
    puVar5[6] = 0;
    puVar5[9] = 0x8024;
    puVar5[10] = 0x8024;
    puVar5[0xc] = *(uint *)(param_1[0x41] + 0x144);
    puVar5[0xd] = param_1[0x41];
    puVar5[0xf] = 0x20000000;
  }
  if ((param_1[4] & 0x20000) == 0) {
    if ((param_1[4] & 0x2000) == 0) {
      iVar6 = FUN_00487280(0,(int)param_1,0);
      if (iVar6 == 0) {
        return 0xc;
      }
      goto LAB_004894a2;
    }
    iVar6 = 2 - (uint)(*(int *)(param_1[0x38] + 0x40) != 0);
  }
  else {
    iVar6 = 2;
  }
  iVar6 = FUN_00487280(0,(int)param_1,iVar6);
  if (iVar6 == 0) {
    return 0xc;
  }
LAB_004894a2:
  if (bVar3) {
    *(undefined4 *)(param_1[0x38] + 8) = 0;
    *(uint *)param_1[0x38] = *(uint *)param_1[0x38] & 0xfffffffb;
    *(uint *)param_1[0x38] = *(uint *)param_1[0x38] | 8;
    *(undefined4 *)(param_1[0x39] + 8) = 0;
    *(uint *)param_1[0x39] = *(uint *)param_1[0x39] & 0xfffffffb;
    *(uint *)param_1[0x39] = *(uint *)param_1[0x39] | 8;
  }
  puVar5 = *(uint **)(param_1[0x35] + 4);
  while (puVar5 != (uint *)0x0) {
    puVar1 = (uint *)puVar5[0xb];
    if (((*(byte *)(param_1 + 0x48) & 0x10) != 0) && ((*puVar5 & 0xf0080) == 0x80)) {
      EsPrintf(s____s____x__is_004b7c28,puVar5[0xd],*(undefined4 *)(puVar5[0xd] + 0x148),0,0,0,0,0,0
               ,0,0);
      if (puVar5[0x10] == 0) {
        pcVar12 = s_private__004b7c38;
      }
      else if ((*puVar5 & 0x400) == 0) {
        pcVar12 = s_public__004b7c4c;
      }
      else {
        pcVar12 = s_shared__004b7c44;
      }
      EsPrintf(pcVar12,0,0,0,0,0,0,0,0,0,0);
    }
    FUN_00484e10(puVar5);
    puVar5 = puVar1;
  }
  puVar5 = *(uint **)(param_1[0x35] + 4);
  do {
    puVar1 = puVar5;
    if (puVar1 == (uint *)0x0) {
      FUN_00484540((int)param_1);
      iVar6 = FUN_004882f0((int)param_1,0);
      return iVar6;
    }
    puVar2 = (undefined4 *)puVar1[0xd];
    puVar5 = (uint *)puVar1[0xb];
    if ((puVar2 != (undefined4 *)0x0) && ((*puVar1 & 0x400) == 0)) {
      if ((puVar2[0x53] == 0) && (iVar6 = FUN_00485430((int)param_1,puVar2,1), iVar6 != 0)) {
        return iVar6;
      }
      uVar11 = puVar1[0xe];
      piVar7 = *(int **)(puVar1[0xd] + 0x14c);
      if ((*(uint *)(puVar1[0xd] + 0x110) & 0x400) == 0) {
        EsFileSeek(piVar7,uVar11,0);
      }
      else if (uVar11 <= (uint)piVar7[2]) {
        piVar7[1] = *piVar7 + uVar11;
      }
      uVar11 = puVar1[5] - (int)(void *)puVar1[3];
      if (uVar11 != 0) {
        sVar9 = FUN_00485650(puVar1[0xd],(void *)puVar1[3],uVar11);
        if ((int)sVar9 < 0) {
          EsPrintf(s__readComponent_failed_with_rc___0_004b7c54,sVar9,0,0,0,0,0,0,0,0,0);
          return 0x22;
        }
        if (sVar9 != uVar11) {
          EsPrintf(s__Read_0x_08x_image_bytes__does_n_004b7c80,sVar9,uVar11,0,0,0,0,0,0,0,0);
          return 0x22;
        }
      }
      uVar11 = puVar1[10] - (int)(void *)puVar1[9];
      if (uVar11 != 0) {
        sVar9 = FUN_00485650(puVar1[0xd],(void *)puVar1[9],uVar11);
        if ((int)sVar9 < 0) {
          EsPrintf(s__readComponent_failed_with_rc___0_004b7cc4,sVar9,0,0,0,0,0,0,0,0,0);
          return 0x22;
        }
        if (sVar9 != uVar11) {
          EsPrintf(s__Read_0x_08x_image_bytes__does_n_004b7cf0,sVar9,uVar11,0,0,0,0,0,0,0,0);
          return 0x22;
        }
      }
      if ((((*(byte *)puVar1 & 3) != 0) && ((*(byte *)(puVar1[0xd] + 0x110) & 4) != 0)) &&
         (FUN_00438b88((int)puVar1), (*(byte *)puVar1 & 1) != 0)) {
        FUN_00483f70((uint *)puVar1[9],puVar1[10] - (int)(uint *)puVar1[9] >> 2);
      }
    }
    if ((puVar1[0xd] != 0) && (puVar1[3] < puVar1[5])) {
      puVar10 = FUN_0048e810(*(uint **)(*(int *)(puVar1[0xd] + 0x120) + 8));
      if (puVar10 == (uint *)0x0) {
        EsLogMemoryAllocationError(s_loadComponents_>newRelocationEnt_004b7d34);
        return 0xc;
      }
      puVar10[3] = 0;
      *puVar10 = puVar1[2];
      puVar10[1] = (puVar1[2] - puVar1[3]) + puVar1[5];
      puVar10[2] = puVar1[2] - puVar1[3];
      if (((*puVar1 & 0xf0080) == 0x30000) || ((*puVar1 & 0xf0080) == 0x80000)) {
        puVar10[3] = 1;
        puVar10[4] = *puVar1;
      }
      if (puVar10[2] != 0) {
        **(undefined4 **)(puVar1[0xd] + 0x120) = 0;
      }
    }
  } while( true );
}

