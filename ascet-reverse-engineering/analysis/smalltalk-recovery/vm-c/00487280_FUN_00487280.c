/* Ghidra-generated pseudocode; address 00487280. */

int __cdecl FUN_00487280(int param_1,int param_2,int param_3)

{
  uint *puVar1;
  bool bVar2;
  byte *pbVar3;
  byte *pbVar4;
  uint uVar5;
  int iVar6;
  LPVOID pvVar7;
  uint *puVar8;
  undefined4 unaff_ESI;
  undefined4 unaff_EDI;
  SIZE_T SVar9;
  int local_8;
  uint local_4;
  
  bVar2 = true;
  if (param_1 != 0) {
    EsPrintf(s__Allocate_segment_memory_retry_a_004b6c44,0,0,0,0,0,0,0,0,0,0);
    pbVar4 = *(byte **)(*(int *)(param_2 + 0xd4) + 4);
    while (pbVar3 = pbVar4, pbVar3 != (byte *)0x0) {
      pbVar4 = *(byte **)(pbVar3 + 0x2c);
      if ((*pbVar3 & 0x10) == 0) {
        *(int *)(pbVar3 + 4) =
             ((*(int *)(pbVar3 + 0x28) - *(int *)(pbVar3 + 0x24)) - *(int *)(pbVar3 + 8)) + 0x400 +
             *(int *)(pbVar3 + 0x14);
      }
    }
  }
  if (param_3 != 2) {
    puVar8 = *(uint **)(*(int *)(param_2 + 0xd4) + 4);
    if (puVar8 != (uint *)0x0) {
      do {
        uVar5 = *puVar8;
        puVar1 = (uint *)puVar8[0xb];
        if ((((uVar5 & 0x200) == 0) && ((uVar5 & 0x10) != 0)) && ((uVar5 & 0xf0080) != 0x50000)) {
          uVar5 = FUN_004841c0(param_2,puVar8,&local_4);
          puVar8[3] = uVar5;
          if (uVar5 == 0) {
            puVar8 = *(uint **)(*(int *)(param_2 + 0xd4) + 4);
            while (puVar8 != (uint *)0x0) {
              puVar1 = (uint *)puVar8[0xb];
              FUN_004903c0(param_2,*(int ***)(param_2 + 0x4c),puVar8,0);
              puVar8 = puVar1;
            }
            EsLogMemoryAllocationError(s_allocateSegmentMemory_>allocateF_004b6c7c);
            return 0;
          }
          *puVar8 = *puVar8 | 0x200;
          if (local_4 == 0) {
            bVar2 = false;
          }
        }
        puVar8 = puVar1;
      } while (puVar1 != (uint *)0x0);
      if (!bVar2) {
        if (param_3 == 1) {
          EsLogMemoryAllocationError(s_Failed_to_place_PUBLIC_FIXED_mem_004b6d1c);
          return 0;
        }
        EsPrintf(s__Failed_to_place_FIXED_memory_at_004b6d90,0,0,0,0,0,0,0,0,0,0);
        goto LAB_004874c7;
      }
    }
    puVar8 = *(uint **)(*(int *)(param_2 + 0xd4) + 4);
    while (puVar1 = puVar8, puVar1 != (uint *)0x0) {
      puVar8 = (uint *)puVar1[0xb];
      if (((*puVar1 & 0x200) == 0) && ((*puVar1 & 4) != 0)) {
        uVar5 = FUN_00484420(puVar1,param_2);
        if (uVar5 == 0) goto LAB_004873d7;
        puVar1[3] = uVar5;
      }
    }
    iVar6 = FUN_004870a0(param_2);
    if (iVar6 != 0) {
      puVar8 = *(uint **)(*(int *)(param_2 + 0xd4) + 4);
      while (puVar1 = puVar8, puVar1 != (uint *)0x0) {
        puVar8 = (uint *)puVar1[0xb];
        if (puVar1[0xd] == 0) {
          FUN_004903c0(param_2,*(int ***)(param_2 + 0xd4),puVar1,1);
        }
      }
LAB_004873d7:
      puVar8 = *(uint **)(*(int *)(param_2 + 0xd4) + 4);
      while (puVar1 = puVar8, puVar1 != (uint *)0x0) {
        puVar8 = (uint *)puVar1[0xb];
        if ((*(byte *)puVar1 & 4) != 0) {
          FUN_004903c0(param_2,*(int ***)(param_2 + 0xd4),puVar1,0);
        }
      }
      if (param_3 == 1) {
        EsLogMemoryAllocationError(s_Failed_to_place_PUBLIC_IC_ROM_at_004b6ca8);
        return 0;
      }
      EsPrintf(s__Failed_to_place_IC_ROM_at_requi_004b6cdc,0,0,0,0,0,0,0,0,0,0);
    }
  }
LAB_004874c7:
  local_8 = 1;
  puVar8 = *(uint **)(*(int *)(param_2 + 0xd4) + 4);
  local_4 = 0;
  if (puVar8 == (uint *)0x0) {
    return 1;
  }
  SVar9 = 0;
  do {
    puVar1 = (uint *)puVar8[0xb];
    if ((*puVar8 & 0x200) == 0) {
      if ((*puVar8 == 0x1009) && (puVar8[4] == puVar8[10])) {
        SVar9 = SVar9 + puVar8[1];
        local_4 = local_4 + (puVar8[5] - puVar8[2]);
        *puVar8 = 0x9009;
      }
      else {
        uVar5 = FUN_004900b0(puVar8);
        puVar8[3] = uVar5;
        if (uVar5 == 0) {
          local_8 = 0;
          break;
        }
      }
    }
    puVar8 = puVar1;
  } while (puVar1 != (uint *)0x0);
  if (SVar9 != 0) {
    pvVar7 = thunk_FUN_004795f0(SVar9);
    if (pvVar7 == (LPVOID)0x0) {
      EsPrintf(s__Failed_to_allocate_combined_seg_004b6dd4,0,0,0,0,0,0,0,0,unaff_EDI,unaff_ESI);
      local_8 = 0;
      goto LAB_00487623;
    }
    puVar8 = FUN_0048fb00(*(uint ***)(param_2 + 0x4c));
    if (puVar8 == (uint *)0x0) {
      EsLogMemoryAllocationError(s_allocateSegmentMemory_>allocateM_004b6e08);
      puVar8 = *(uint **)(*(int *)(param_2 + 0xd4) + 4);
      while (puVar1 = puVar8, puVar1 != (uint *)0x0) {
        puVar8 = (uint *)puVar1[0xb];
        if ((*(byte *)puVar1 & 0x40) == 0) {
          FUN_004903c0(param_2,*(int ***)(param_2 + 0x4c),puVar1,0);
          puVar1[3] = puVar1[2];
        }
      }
      return 0;
    }
    *puVar8 = 0x1209;
    puVar8[1] = SVar9;
    puVar8[3] = (uint)pvVar7;
    puVar8[5] = local_4;
    puVar8[10] = SVar9;
    puVar8[9] = SVar9;
    puVar8[4] = SVar9;
    FUN_00484e10(puVar8);
    puVar8[2] = puVar8[3];
    puVar8 = *(uint **)(*(int *)(param_2 + 0xd4) + 4);
    while (puVar1 = puVar8, puVar1 != (uint *)0x0) {
      puVar8 = (uint *)puVar1[0xb];
      if ((*puVar1 & 0x8000) != 0) {
        puVar1[3] = (uint)pvVar7;
        pvVar7 = (LPVOID)((int)pvVar7 + (puVar1[5] - puVar1[2]));
      }
    }
  }
  if (local_8 != 0) {
    return local_8;
  }
LAB_00487623:
  puVar8 = *(uint **)(*(int *)(param_2 + 0xd4) + 4);
  while (puVar1 = puVar8, puVar1 != (uint *)0x0) {
    puVar8 = (uint *)puVar1[0xb];
    if ((*(byte *)puVar1 & 0x40) == 0) {
      FUN_004903c0(param_2,*(int ***)(param_2 + 0x4c),puVar1,0);
      puVar1[3] = puVar1[2];
    }
  }
  if (param_1 != 0) {
    EsLogMemoryAllocationError(s_allocateSegmentMemory_>allocateM_004b6e58);
    return local_8;
  }
  iVar6 = FUN_00487280(1,param_2,param_3);
  return iVar6;
}

