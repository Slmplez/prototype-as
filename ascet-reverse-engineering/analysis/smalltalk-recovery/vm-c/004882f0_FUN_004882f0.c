/* Ghidra-generated pseudocode; address 004882f0. */

int __cdecl FUN_004882f0(int param_1,uint param_2)

{
  uint **ppuVar1;
  uint **ppuVar2;
  int iVar3;
  uint *puVar4;
  int *piVar5;
  uint *puVar6;
  uint **ppuVar7;
  int iVar8;
  int iVar9;
  uint uVar10;
  int *piVar11;
  uint local_30;
  uint local_2c;
  int local_28;
  int local_24;
  uint local_20;
  uint local_1c;
  int *local_14;
  int local_10 [4];
  
  ppuVar2 = *(uint ***)(param_1 + 0x18);
  uVar10 = 1;
  local_1c = 1;
  piVar5 = FUN_0048e990(*(int **)(param_1 + 0x48),local_10);
  do {
    if (piVar5 == (int *)0x0) {
      iVar9 = FUN_00486510(ppuVar2,local_14,uVar10,param_2);
      ppuVar7 = ppuVar2;
      if (iVar9 == 0) {
        do {
          ppuVar7[0x13] = ppuVar2[0x13];
          ppuVar7[0x15] = ppuVar2[0x15];
          ppuVar7[0x14] = ppuVar2[0x14];
          ppuVar7[0x17][4] = (int)ppuVar7 + 1;
          ppuVar1 = ppuVar7 + 3;
          ppuVar7 = (uint **)*ppuVar1;
        } while ((uint **)*ppuVar1 != ppuVar2);
        FUN_0048fbd0(*(LPVOID **)(param_1 + 0xd4));
        *(undefined4 *)(param_1 + 0xd4) = 0;
        piVar5 = FUN_0048e990(*(int **)(param_1 + 0x48),local_10);
        while (piVar5 != (int *)0x0) {
          piVar5[0x44] = piVar5[0x44] | 0x80;
          FUN_0047de40((int)piVar5);
          piVar5 = FUN_0048e9f0(local_10);
        }
        if (ppuVar2[0xe][0x31] != 0xe) {
          *(uint *)(ppuVar2[0xe][0x31] + 0x10) = param_2 * 2 | 1;
        }
        iVar9 = FUN_004232b8((int)ppuVar2);
        if (iVar9 == 0) {
          if (((*(int *)(param_1 + 0x20) != 1) &&
              (iVar9 = FUN_0048e8f0(*(int *)(param_1 + 0x48)), iVar9 == 1)) &&
             (*(int *)(*(int *)(param_1 + 0x4c) + 8) == 0)) {
            *(undefined4 *)(param_1 + 0x7c) = 0;
            FUN_00476e90(ppuVar2);
          }
          *(uint *)(param_1 + 0x10) = *(uint *)(param_1 + 0x10) | 0x2000;
          *(undefined4 *)(param_1 + 0x7c) = 1;
          if (*(HANDLE **)(param_1 + 0xd8) != (HANDLE *)0x0) {
            FUN_00483cf0(*(HANDLE **)(param_1 + 0xd8));
            FUN_00483cb0(*(HANDLE **)(param_1 + 0xd8));
            *(undefined4 *)(param_1 + 0xd8) = 0;
          }
          iVar9 = 0;
        }
      }
      return iVar9;
    }
    if ((piVar5[0x44] & 0x40U) == 0) {
      if ((piVar5[0x44] & 0x20U) != 0) {
        local_14 = (int *)piVar5[0x48];
      }
      local_30 = 0;
      local_2c = 0;
      if (piVar5[0x45] != 0) {
        local_24 = 0;
        do {
          iVar9 = piVar5[0x46];
          local_20 = 0;
          if (*(int *)(iVar9 + local_24) != 0) {
            iVar8 = local_30 << 5;
            local_28 = 0;
            do {
              piVar11 = (int *)(*(int *)(iVar9 + 8 + local_24) + local_28);
              if (((piVar11[6] & 0xf0080U) == 0xc0000) && ((*(byte *)(param_1 + 0x10c) & 8) != 0)) {
                puVar6 = FUN_0048e810(*(uint **)(piVar5[0x48] + 8));
                if (puVar6 == (uint *)0x0) {
                  EsLogMemoryAllocationError(s_finishImageLoad_>newRelocationEn_004b7460);
                  return 0xc;
                }
                puVar6[3] = 0;
                *puVar6 = piVar11[3];
                puVar6[1] = piVar11[4];
                puVar6[3] = 3;
                *(undefined4 *)piVar5[0x48] = 0;
              }
              else {
                if (*piVar11 == 0) {
                  *piVar11 = *(int *)(*(int *)(iVar9 + 4 + local_24) + 0x144);
                }
                iVar9 = *(int *)(*(int *)(param_1 + 0xd4) + 4);
                if (iVar9 != 0) {
                  do {
                    iVar3 = *(int *)(iVar9 + 0x2c);
                    if ((*piVar11 == *(int *)(iVar9 + 0x30)) &&
                       (piVar11[2] == *(int *)(iVar9 + 0x3c))) {
                      piVar11[5] = iVar9;
                    }
                    iVar9 = iVar3;
                  } while (iVar3 != 0);
                }
                if (piVar11[5] == 0) {
                  iVar9 = *(int *)(*(int *)(param_1 + 0x4c) + 4);
                  if (iVar9 != 0) {
                    do {
                      iVar3 = *(int *)(iVar9 + 0x2c);
                      if ((*piVar11 == *(int *)(iVar9 + 0x30)) &&
                         (piVar11[2] == *(int *)(iVar9 + 0x3c))) {
                        piVar11[5] = iVar9;
                      }
                      iVar9 = iVar3;
                    } while (iVar3 != 0);
                  }
                  if (piVar11[5] == 0) {
                    EsPrintf(s__No_match_for_prerequisite__x_of_004b7484,piVar11[2],piVar5,0,0,0,0,0
                             ,0,0,0);
                    return 0x25;
                  }
                }
                puVar6 = FUN_0048e810(*(uint **)(piVar5[0x48] + 8));
                if (puVar6 == (uint *)0x0) {
                  EsLogMemoryAllocationError(s_finishImageLoad_>newRelocationEn_004b74ac);
                  return 0xc;
                }
                puVar6[3] = 0;
                *puVar6 = piVar11[3];
                puVar6[2] = piVar11[3] - *(int *)(piVar11[5] + 0xc);
                puVar6[1] = piVar11[4];
                if (((piVar11[6] & 0xf0080U) == 0x30000) || ((piVar11[6] & 0xf0080U) == 0x80000)) {
                  puVar6[3] = 1;
                  puVar6[4] = piVar11[6];
                }
                if ((piVar11[6] & 0xf0080U) == 0x90000) {
                  puVar6[3] = 2;
                  puVar6[4] = *(uint *)(piVar11[5] + 0x34);
                }
                if ((puVar6[2] != 0) || (puVar6[3] == 1)) {
                  *(undefined4 *)piVar5[0x48] = 0;
                }
                if (((piVar5[0x42] != 0) && ((*(byte *)(piVar5 + 0x44) & 0x10) == 0)) &&
                   ((*(byte *)(piVar11 + 6) & 0x10) != 0)) {
                  if ((uint)piVar5[0x42] <= local_30) {
                    return 0x25;
                  }
                  local_30 = local_30 + 1;
                  *(undefined4 *)(piVar5[0x47] + iVar8) = *(undefined4 *)(piVar11[5] + 0x30);
                  *(int *)(piVar5[0x47] + 4 + iVar8) = piVar11[1];
                  *(int *)(piVar5[0x47] + 8 + iVar8) = piVar11[2];
                  *(int *)(piVar5[0x47] + 0xc + iVar8) = piVar11[3];
                  *(int *)(piVar5[0x47] + 0x10 + iVar8) = piVar11[4];
                  *(int *)(piVar5[0x47] + 0x14 + iVar8) = piVar11[5];
                  iVar8 = iVar8 + 0x20;
                }
              }
              iVar9 = piVar5[0x46];
              local_28 = local_28 + 0x20;
              local_20 = local_20 + 1;
            } while (local_20 < *(uint *)(iVar9 + local_24));
          }
          local_2c = local_2c + 1;
          local_24 = local_24 + 0xc;
        } while (local_2c < (uint)piVar5[0x45]);
      }
      if ((*(byte *)(piVar5 + 0x44) & 0x10) == 0) {
LAB_004886d3:
        iVar9 = piVar5[0x42];
      }
      else {
        local_2c = 0;
        iVar9 = piVar5[0x42];
        if (iVar9 != 0) {
          iVar9 = 0;
          do {
            iVar8 = *(int *)(*(int *)(param_1 + 0xd4) + 4);
            piVar11 = (int *)(piVar5[0x47] + iVar9);
            if (iVar8 != 0) {
              do {
                iVar3 = *(int *)(iVar8 + 0x2c);
                if (((*(int *)(iVar8 + 0x34) == piVar11[1]) && (*piVar11 == *(int *)(iVar8 + 0x30)))
                   && (piVar11[2] == *(int *)(iVar8 + 0x3c))) {
                  piVar11[5] = iVar8;
                }
                iVar8 = iVar3;
              } while (iVar3 != 0);
            }
            if (piVar11[5] == 0) {
              iVar8 = *(int *)(*(int *)(param_1 + 0x4c) + 4);
              if (iVar8 != 0) {
                do {
                  iVar3 = *(int *)(iVar8 + 0x2c);
                  if (((*(int *)(iVar8 + 0x34) == piVar11[1]) &&
                      (*piVar11 == *(int *)(iVar8 + 0x30))) &&
                     (piVar11[2] == *(int *)(iVar8 + 0x3c))) {
                    piVar11[5] = iVar8;
                  }
                  iVar8 = iVar3;
                } while (iVar3 != 0);
              }
              if (piVar11[5] == 0) {
                EsPrintf(s__No_match_for_relocation__x_of___004b74d0,piVar11[2],piVar5,0,0,0,0,0,0,0
                         ,0);
                return 0x25;
              }
            }
            puVar6 = FUN_0048e810(*(uint **)(piVar5[0x48] + 8));
            if (puVar6 == (uint *)0x0) {
              EsLogMemoryAllocationError(s_finishImageLoad_>newRelocationEn_004b74f8);
              return 0xc;
            }
            puVar6[3] = 0;
            *puVar6 = piVar11[3];
            uVar10 = piVar11[3] - *(int *)(piVar11[5] + 0xc);
            puVar6[2] = uVar10;
            puVar6[1] = piVar11[4];
            if (uVar10 != 0) {
              *(undefined4 *)piVar5[0x48] = 0;
            }
            local_2c = local_2c + 1;
            iVar9 = iVar9 + 0x20;
          } while (local_2c < (uint)piVar5[0x42]);
          goto LAB_004886d3;
        }
      }
      if (((iVar9 != 0) && ((*(byte *)(piVar5 + 0x44) & 0x10) == 0)) &&
         (puVar6 = *(uint **)(*(int *)(param_1 + 0xd4) + 4), puVar6 != (uint *)0x0)) {
        iVar9 = local_30 << 5;
        do {
          puVar4 = (uint *)puVar6[0xb];
          if ((((int *)puVar6[0xd] == piVar5) && ((*puVar6 & 0x10) != 0)) &&
             ((*puVar6 & 0xf0080) != 0x50000)) {
            if ((uint)piVar5[0x42] <= local_30) {
              return 0x25;
            }
            *(uint *)(iVar9 + piVar5[0x47]) = puVar6[0xc];
            local_30 = local_30 + 1;
            *(int **)(piVar5[0x47] + 4 + iVar9) = piVar5;
            *(uint *)(piVar5[0x47] + 8 + iVar9) = puVar6[0xf];
            *(uint *)(piVar5[0x47] + 0xc + iVar9) = puVar6[2];
            iVar9 = iVar9 + 0x20;
            *(uint *)(piVar5[0x47] + -0x10 + iVar9) = (puVar6[5] - puVar6[3]) + puVar6[2];
            *(uint **)(piVar5[0x47] + -0xc + iVar9) = puVar6;
          }
          puVar6 = puVar4;
        } while (puVar4 != (uint *)0x0);
      }
      uVar10 = local_1c & *(uint *)piVar5[0x48];
      local_1c = uVar10;
    }
    piVar5 = FUN_0048e9f0(local_10);
  } while( true );
}

