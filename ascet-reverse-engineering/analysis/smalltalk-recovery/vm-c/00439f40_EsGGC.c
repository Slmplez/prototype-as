/* Ghidra-generated pseudocode; address 00439f40. */

undefined4 __cdecl EsGGC(uint **param_1,int param_2)

{
  bool bVar1;
  bool bVar2;
  uint uVar3;
  uint uVar4;
  uint *puVar5;
  int *piVar6;
  undefined3 extraout_var;
  uint *puVar7;
  int iVar8;
  int **ppiVar9;
  undefined4 *puVar10;
  uint *puVar11;
  int *piVar12;
  uint **ppuVar13;
  int **ppiVar14;
  uint uVar15;
  undefined4 *puVar16;
  uint **ppuVar17;
  uint uVar18;
  undefined4 *puVar19;
  int **ppiVar20;
  undefined4 *puVar21;
  int *piVar22;
  int *piVar23;
  uint **ppuVar24;
  undefined *puVar25;
  undefined *puVar26;
  undefined *puVar27;
  uint local_3c;
  uint local_38;
  uint local_30;
  uint **local_28;
  uint local_24;
  uint local_18;
  uint local_14;
  
                    /* 0x19f40  18  EsGGC */
  puVar25 = &stack0xfffffffc;
  puVar26 = &stack0xfffffffc;
  bVar1 = false;
  uVar15 = param_1[0x1a][0x3d];
  puVar27 = &stack0xfffffffc;
  if (((uVar15 & 0x10001) != 1) || (puVar27 = &stack0xfffffffc, (uVar15 & 0x10) == 0))
  goto LAB_0043a1a6;
  puVar11 = param_1[0x13];
  if (puVar11[5] < puVar11[4]) {
    bVar1 = true;
  }
  else if (puVar11[9] == 0) {
    puVar11[4] = puVar11[1] + puVar11[3];
  }
  else {
    puVar11[4] = puVar11[9];
  }
  puVar27 = &stack0xfffffffc;
  if ((uVar15 & 2) != 0) goto LAB_0043a1a6;
  puVar11 = param_1[0xd];
  if (((uint)puVar11 & 1) == 0) {
    if (((uint)puVar11 & 3) == 0) {
      uVar3 = puVar11[5];
      uVar4 = puVar11[6];
      goto LAB_0043a030;
    }
    local_30 = 0;
    puVar27 = &stack0xfffffffc;
  }
  else {
    local_30 = 0;
    uVar3 = FUN_0047fa10((int)param_1,(uint)puVar11);
    uVar4 = FUN_0047fa70((int)param_1,(uint)puVar11);
    puVar27 = puVar25;
    if ((2 < uVar3) && (puVar26 = puVar25, 2 < uVar4)) {
LAB_0043a030:
      local_30 = 0;
      piVar12 = *(int **)(uVar3 + 0xc);
      puVar27 = puVar26;
      if ((((uint)piVar12 & 3) == 0) && (*(int *)(param_1[0xe][10] + 0x10) == *piVar12)) {
        piVar6 = *(int **)(uVar3 + 0x14);
        uVar3 = piVar6[2];
        if (*(int *)(param_1[0xe][0x3b] + 0x10) == *piVar6) {
          puVar5 = (uint *)(piVar6 + 3);
          uVar18 = *(uint *)(uVar4 + 4) >> 0x10 & 0x7fff & (uVar3 >> 3) - 1;
          puVar11 = (uint *)(piVar12 + 3 + uVar18 * 2);
          puVar7 = puVar5 + uVar18 * 2;
          while (*puVar7 != 0xe) {
            if (uVar4 == *puVar7) {
              local_30 = *puVar11;
              break;
            }
            puVar7 = puVar7 + 2;
            puVar11 = puVar11 + 2;
            if (puVar7 == (uint *)((int)puVar5 + uVar3)) {
              puVar11 = (uint *)(piVar12 + 3);
              puVar7 = puVar5;
            }
          }
        }
        else {
          piVar6 = piVar6 + 3;
          uVar18 = *(uint *)(uVar4 + 4) >> 0x10 & 0x7fff & (uVar3 >> 2) - 1;
          puVar11 = (uint *)(piVar12 + 3 + uVar18);
          piVar22 = piVar6 + uVar18;
          while( true ) {
            piVar23 = piVar22 + 1;
            if (*piVar22 == 0xe) break;
            if (uVar4 == *(uint *)(*piVar22 + 0x18)) {
              local_30 = *puVar11;
              break;
            }
            puVar11 = puVar11 + 1;
            piVar22 = piVar23;
            if (piVar23 == (int *)((int)piVar6 + uVar3)) {
              puVar11 = (uint *)(piVar12 + 3);
              piVar22 = piVar6;
            }
          }
        }
      }
    }
  }
  if ((local_30 & 1) == 0) {
    local_30 = 0;
  }
  else {
    local_30 = local_30 & 0xfffffffe;
  }
  if (local_30 != 0) {
    if ((uVar15 & 2) == 0) {
      *(int *)(local_30 + 0x2c) = *(int *)(local_30 + 0x2c) + 1;
    }
    if ((uVar15 & 2) != 0) {
      FUN_0044f0a4(local_30,0xc,puVar27);
    }
  }
LAB_0043a1a6:
  local_3c = 0xe;
  bVar2 = FUN_0047ea30((int)param_1,param_2);
  if (CONCAT31(extraout_var,bVar2) != 0) {
    puVar11 = param_1[0x1a] + 4;
    *puVar11 = *puVar11 | 8;
    return 0;
  }
  puVar11 = param_1[0x1a] + 4;
  *puVar11 = *puVar11 & 0xfffffff7;
  FUN_0047eaf0((int)param_1);
  local_38 = 2;
  FUN_00442e70(param_1);
  puVar11 = param_1[0x14];
  puVar11[6] = puVar11[3];
  puVar11[5] = puVar11[3];
  ppuVar24 = param_1;
  do {
    puVar11 = ppuVar24[4];
    if (((((uint)puVar11 & 3) == 0) && ((*puVar11 & 1) == 0)) && ((puVar11[1] & 0x80f8) != 0x80f8))
    {
      FUN_0043cf9c(puVar27);
    }
    puVar11 = *ppuVar24;
    if (((((uint)puVar11 & 3) == 0) && ((*puVar11 & 1) == 0)) && ((puVar11[1] & 0x80f8) != 0x80f8))
    {
      FUN_0043cf9c(puVar27);
    }
    puVar11 = ppuVar24[5];
    if (((((uint)puVar11 & 3) == 0) && ((*puVar11 & 1) == 0)) && ((puVar11[1] & 0x80f8) != 0x80f8))
    {
      FUN_0043cf9c(puVar27);
    }
    puVar11 = ppuVar24[7];
    if (((((uint)puVar11 & 3) == 0) && ((*puVar11 & 1) == 0)) && ((puVar11[1] & 0x80f8) != 0x80f8))
    {
      FUN_0043cf9c(puVar27);
    }
    puVar11 = ppuVar24[2];
    if (((((uint)puVar11 & 3) == 0) && ((*puVar11 & 1) == 0)) && ((puVar11[1] & 0x80f8) != 0x80f8))
    {
      FUN_0043cf9c(puVar27);
    }
    puVar11 = ppuVar24[1];
    if (((((uint)puVar11 & 3) == 0) && ((*puVar11 & 1) == 0)) && ((puVar11[1] & 0x80f8) != 0x80f8))
    {
      FUN_0043cf9c(puVar27);
    }
    puVar11 = ppuVar24[0xe];
    if (((((uint)puVar11 & 3) == 0) && ((*puVar11 & 1) == 0)) && ((puVar11[1] & 0x80f8) != 0x80f8))
    {
      FUN_0043cf9c(puVar27);
    }
    puVar11 = ppuVar24[0xd];
    if (((((uint)puVar11 & 3) == 0) && ((*puVar11 & 1) == 0)) && ((puVar11[1] & 0x80f8) != 0x80f8))
    {
      FUN_0043cf9c(puVar27);
    }
    puVar11 = ppuVar24[0x17];
    if (((((uint)puVar11 & 3) == 0) && ((*puVar11 & 1) == 0)) && ((puVar11[1] & 0x80f8) != 0x80f8))
    {
      FUN_0043cf9c(puVar27);
    }
    puVar11 = ppuVar24[0x25];
    if (((((uint)puVar11 & 3) == 0) && ((*puVar11 & 1) == 0)) && ((puVar11[1] & 0x80f8) != 0x80f8))
    {
      FUN_0043cf9c(puVar27);
    }
    puVar11 = ppuVar24[8];
    if (((((uint)puVar11 & 3) == 0) && ((*puVar11 & 1) == 0)) && ((puVar11[1] & 0x80f8) != 0x80f8))
    {
      FUN_0043cf9c(puVar27);
    }
    local_28 = (uint **)ppuVar24[0xb];
    if (local_28 != (uint **)&DAT_0000000e) {
      ppuVar17 = (uint **)ppuVar24[10];
      do {
        puVar7 = local_28[-2];
        if (((((uint)puVar7 & 3) == 0) && ((*puVar7 & 1) == 0)) && ((puVar7[1] & 0x80f8) != 0x80f8))
        {
          FUN_0043cf9c(puVar27);
        }
        puVar7 = local_28[-3];
        if (((((uint)puVar7 & 3) == 0) && ((*puVar7 & 1) == 0)) && ((puVar7[1] & 0x80f8) != 0x80f8))
        {
          FUN_0043cf9c(puVar27);
        }
        ppuVar13 = local_28 + -6;
        do {
          puVar7 = *ppuVar13;
          if (((((uint)puVar7 & 3) == 0) && ((*puVar7 & 1) == 0)) &&
             ((puVar7[1] & 0x80f8) != 0x80f8)) {
            FUN_0043cf9c(puVar27);
          }
          ppuVar13 = ppuVar13 + -1;
        } while (ppuVar17 <= ppuVar13);
        ppuVar17 = local_28 + 1;
        local_28 = (uint **)*local_28;
      } while (local_28 != (uint **)&DAT_0000000e);
      ppuVar13 = (uint **)((int)puVar11 + ((puVar11[2] + 0xf & 0xfffffffc) - 4));
      do {
        puVar11 = *ppuVar13;
        if (((((uint)puVar11 & 3) == 0) && ((*puVar11 & 1) == 0)) &&
           ((puVar11[1] & 0x80f8) != 0x80f8)) {
          FUN_0043cf9c(puVar27);
        }
        ppuVar13 = ppuVar13 + -1;
      } while (ppuVar17 <= ppuVar13);
    }
    ppuVar24 = (uint **)ppuVar24[3];
  } while (ppuVar24 != param_1);
  for (puVar11 = *(uint **)(param_1[0x1a][0x13] + 4); puVar11 != (uint *)0x0;
      puVar11 = (uint *)puVar11[0xb]) {
    if ((*puVar11 & 0x10) != 0) {
      puVar11[6] = puVar11[3];
      ppuVar17 = (uint **)puVar11[7];
      for (ppuVar24 = (uint **)puVar11[6]; ppuVar24 != (uint **)puVar11[5];
          ppuVar24 = (uint **)((int)ppuVar24 + ((int)ppuVar24[2] + 0xfU & 0xfffffffc))) {
        if (ppuVar17 == ppuVar24) {
          ppuVar17 = (uint **)*ppuVar17;
        }
        else if (((((uint)ppuVar24 & 3) == 0) && (((uint)*ppuVar24 & 1) == 0)) &&
                (((uint)ppuVar24[1] & 0x80f8) != 0x80f8)) {
          FUN_0043cf9c(puVar27);
        }
      }
      puVar11[6] = (uint)ppuVar24;
    }
  }
  do {
    while (uVar15 = local_3c, local_3c != 0xe) {
      if ((*(uint *)(local_3c + 0x24) & 1) == 0) {
        puVar11 = *(uint **)(local_3c + 0x20);
      }
      else {
        puVar11 = *(uint **)(param_1[0xe][0x36] + *(uint *)(local_3c + 0x24) + 3);
      }
      uVar15 = *puVar11;
      uVar3 = uVar15 & 0xfffffffc;
      *puVar11 = local_3c;
      *puVar11 = *puVar11 | uVar15 & 3;
      if (uVar3 == 0) {
        uVar15 = *(uint *)(local_3c + 0x24);
        if ((uVar15 & 1) != 0) {
          uVar15 = *(uint *)((param_1[0xe][0x36] - 1) + uVar15);
        }
        if ((*(uint *)(local_3c + 0x24) & 1) == 0) {
          *(undefined4 *)(local_3c + 0x24) = 0xe;
        }
        else {
          *(undefined4 *)((param_1[0xe][0x36] - 1) + *(uint *)(local_3c + 0x24)) = 0xe;
        }
        if ((*(uint *)(local_3c + 0x24) & 1) == 0) {
          *(undefined4 *)(local_3c + 0x20) = 0xe;
          local_3c = uVar15;
        }
        else {
          *(undefined4 *)(param_1[0xe][0x36] + *(uint *)(local_3c + 0x24) + 3) = 0xe;
          local_3c = uVar15;
        }
      }
      else if ((*(uint *)(local_3c + 0x24) & 1) == 0) {
        *(uint *)(local_3c + 0x20) = uVar3;
      }
      else {
        *(uint *)(param_1[0xe][0x36] + *(uint *)(local_3c + 0x24) + 3) = uVar3;
      }
      puVar7 = (uint *)(*puVar11 & 0xfffffffc);
      if (((*puVar7 & 1) == 0) && ((puVar7[1] & 0x80f8) != 0x80f8)) {
        if ((puVar7[1] & 0x2000) == 0) {
          if (((*puVar7 & 1) == 0) && ((puVar7[1] & 0x80f8) != 0x80f8)) {
            uVar15 = *puVar7;
            if ((*(uint *)(uVar15 + 0x24) & 1) == 0) {
              uVar3 = *(uint *)(uVar15 + 0x20);
            }
            else {
              uVar3 = *(uint *)(param_1[0xe][0x36] + *(uint *)(uVar15 + 0x24) + 3);
            }
            if (uVar3 == 0xe) {
              if (local_3c != 0xe) {
                if ((*(uint *)(uVar15 + 0x24) & 1) == 0) {
                  *(uint *)(uVar15 + 0x24) = local_3c;
                }
                else {
                  *(uint *)((param_1[0xe][0x36] - 1) + *(uint *)(uVar15 + 0x24)) = local_3c;
                }
              }
              uVar3 = 0;
              local_3c = uVar15;
            }
            *puVar7 = uVar3;
            *puVar7 = *puVar7 | 1;
            if ((*(uint *)(uVar15 + 0x24) & 1) == 0) {
              *(uint **)(uVar15 + 0x20) = puVar7;
            }
            else {
              *(uint **)(param_1[0xe][0x36] + *(uint *)(uVar15 + 0x24) + 3) = puVar7;
            }
          }
        }
        else {
          puVar5 = param_1[0x14];
          ppuVar24 = (uint **)puVar5[5];
          if (ppuVar24 == (uint **)puVar5[4]) {
            if (((*puVar7 & 1) == 0) && ((puVar7[1] & 0x80f8) != 0x80f8)) {
              uVar15 = *puVar7;
              if ((*(uint *)(uVar15 + 0x24) & 1) == 0) {
                uVar3 = *(uint *)(uVar15 + 0x20);
              }
              else {
                uVar3 = *(uint *)(param_1[0xe][0x36] + *(uint *)(uVar15 + 0x24) + 3);
              }
              if (uVar3 == 0xe) {
                if (local_3c != 0xe) {
                  if ((*(uint *)(uVar15 + 0x24) & 1) == 0) {
                    *(uint *)(uVar15 + 0x24) = local_3c;
                  }
                  else {
                    *(uint *)((param_1[0xe][0x36] - 1) + *(uint *)(uVar15 + 0x24)) = local_3c;
                  }
                }
                uVar3 = 0;
                local_3c = uVar15;
              }
              *puVar7 = uVar3;
              *puVar7 = *puVar7 | 1;
              if ((*(uint *)(uVar15 + 0x24) & 1) == 0) {
                *(uint **)(uVar15 + 0x20) = puVar7;
              }
              else {
                *(uint **)(param_1[0xe][0x36] + *(uint *)(uVar15 + 0x24) + 3) = puVar7;
              }
            }
          }
          else {
            *ppuVar24 = puVar7;
            *puVar7 = *puVar7 | 1;
            puVar5[5] = (uint)(ppuVar24 + 1);
          }
        }
      }
      if (((((uint)puVar11 & 3) == 0) && ((puVar11[1] & 6) == 0)) &&
         (uVar15 = puVar11[2] >> 2, uVar15 != 0)) {
        ppuVar24 = (uint **)(puVar11 + 3);
        do {
          puVar11 = *ppuVar24;
          if ((((((uint)puVar11 & 3) == 0) && ((*puVar11 & 1) == 0)) &&
              (((puVar11[1] & 0x80f8) != 0x80f8 &&
               ((((uint)puVar11 & 3) == 0 && ((*puVar11 & 1) == 0)))))) &&
             ((puVar11[1] & 0x80f8) != 0x80f8)) {
            if ((puVar11[1] & 0x2000) == 0) {
              if (((((uint)puVar11 & 3) == 0) && ((*puVar11 & 1) == 0)) &&
                 ((puVar11[1] & 0x80f8) != 0x80f8)) {
                uVar3 = *puVar11;
                if ((*(uint *)(uVar3 + 0x24) & 1) == 0) {
                  uVar4 = *(uint *)(uVar3 + 0x20);
                }
                else {
                  uVar4 = *(uint *)(param_1[0xe][0x36] + *(uint *)(uVar3 + 0x24) + 3);
                }
                if (uVar4 == 0xe) {
                  if (local_3c != 0xe) {
                    if ((*(uint *)(uVar3 + 0x24) & 1) == 0) {
                      *(uint *)(uVar3 + 0x24) = local_3c;
                    }
                    else {
                      *(uint *)((param_1[0xe][0x36] - 1) + *(uint *)(uVar3 + 0x24)) = local_3c;
                    }
                  }
                  uVar4 = 0;
                  local_3c = uVar3;
                }
                *puVar11 = uVar4;
                *puVar11 = *puVar11 | 1;
                if ((*(uint *)(uVar3 + 0x24) & 1) == 0) {
                  *(uint **)(uVar3 + 0x20) = puVar11;
                }
                else {
                  *(uint **)(param_1[0xe][0x36] + *(uint *)(uVar3 + 0x24) + 3) = puVar11;
                }
              }
            }
            else {
              puVar7 = param_1[0x14];
              ppuVar17 = (uint **)puVar7[5];
              if (ppuVar17 == (uint **)puVar7[4]) {
                if (((((uint)puVar11 & 3) == 0) && ((*puVar11 & 1) == 0)) &&
                   ((puVar11[1] & 0x80f8) != 0x80f8)) {
                  uVar3 = *puVar11;
                  if ((*(uint *)(uVar3 + 0x24) & 1) == 0) {
                    uVar4 = *(uint *)(uVar3 + 0x20);
                  }
                  else {
                    uVar4 = *(uint *)(param_1[0xe][0x36] + *(uint *)(uVar3 + 0x24) + 3);
                  }
                  if (uVar4 == 0xe) {
                    if (local_3c != 0xe) {
                      if ((*(uint *)(uVar3 + 0x24) & 1) == 0) {
                        *(uint *)(uVar3 + 0x24) = local_3c;
                      }
                      else {
                        *(uint *)((param_1[0xe][0x36] - 1) + *(uint *)(uVar3 + 0x24)) = local_3c;
                      }
                    }
                    uVar4 = 0;
                    local_3c = uVar3;
                  }
                  *puVar11 = uVar4;
                  *puVar11 = *puVar11 | 1;
                  if ((*(uint *)(uVar3 + 0x24) & 1) == 0) {
                    *(uint **)(uVar3 + 0x20) = puVar11;
                  }
                  else {
                    *(uint **)(param_1[0xe][0x36] + *(uint *)(uVar3 + 0x24) + 3) = puVar11;
                  }
                }
              }
              else {
                *ppuVar17 = puVar11;
                *puVar11 = *puVar11 | 1;
                puVar7[5] = (uint)(ppuVar17 + 1);
              }
            }
          }
          ppuVar24 = ppuVar24 + 1;
          uVar15 = uVar15 - 1;
        } while (uVar15 != 0);
      }
    }
    do {
      if (param_1[0x14][3] != param_1[0x14][5]) {
        ppuVar24 = (uint **)(param_1[0x14][5] - 4);
        param_1[0x14][5] = (uint)ppuVar24;
        puVar11 = *ppuVar24;
        puVar7 = (uint *)(*puVar11 & 0xfffffffc);
        if (((*puVar7 & 1) == 0) && ((puVar7[1] & 0x80f8) != 0x80f8)) {
          if ((puVar7[1] & 0x2000) == 0) {
            if (((*puVar7 & 1) == 0) && ((puVar7[1] & 0x80f8) != 0x80f8)) {
              uVar3 = *puVar7;
              if ((*(uint *)(uVar3 + 0x24) & 1) == 0) {
                uVar4 = *(uint *)(uVar3 + 0x20);
              }
              else {
                uVar4 = *(uint *)(param_1[0xe][0x36] + *(uint *)(uVar3 + 0x24) + 3);
              }
              if (uVar4 == 0xe) {
                if (uVar15 != 0xe) {
                  if ((*(uint *)(uVar3 + 0x24) & 1) == 0) {
                    *(uint *)(uVar3 + 0x24) = uVar15;
                  }
                  else {
                    *(uint *)((param_1[0xe][0x36] - 1) + *(uint *)(uVar3 + 0x24)) = uVar15;
                  }
                }
                uVar4 = 0;
                uVar15 = uVar3;
                local_3c = uVar3;
              }
              *puVar7 = uVar4;
              *puVar7 = *puVar7 | 1;
              if ((*(uint *)(uVar3 + 0x24) & 1) == 0) {
                *(uint **)(uVar3 + 0x20) = puVar7;
              }
              else {
                *(uint **)(param_1[0xe][0x36] + *(uint *)(uVar3 + 0x24) + 3) = puVar7;
              }
            }
          }
          else {
            puVar5 = param_1[0x14];
            ppuVar24 = (uint **)puVar5[5];
            if (ppuVar24 == (uint **)puVar5[4]) {
              if (((*puVar7 & 1) == 0) && ((puVar7[1] & 0x80f8) != 0x80f8)) {
                uVar3 = *puVar7;
                if ((*(uint *)(uVar3 + 0x24) & 1) == 0) {
                  uVar4 = *(uint *)(uVar3 + 0x20);
                }
                else {
                  uVar4 = *(uint *)(param_1[0xe][0x36] + *(uint *)(uVar3 + 0x24) + 3);
                }
                if (uVar4 == 0xe) {
                  if (uVar15 != 0xe) {
                    if ((*(uint *)(uVar3 + 0x24) & 1) == 0) {
                      *(uint *)(uVar3 + 0x24) = uVar15;
                    }
                    else {
                      *(uint *)((param_1[0xe][0x36] - 1) + *(uint *)(uVar3 + 0x24)) = uVar15;
                    }
                  }
                  uVar4 = 0;
                  uVar15 = uVar3;
                  local_3c = uVar3;
                }
                *puVar7 = uVar4;
                *puVar7 = *puVar7 | 1;
                if ((*(uint *)(uVar3 + 0x24) & 1) == 0) {
                  *(uint **)(uVar3 + 0x20) = puVar7;
                }
                else {
                  *(uint **)(param_1[0xe][0x36] + *(uint *)(uVar3 + 0x24) + 3) = puVar7;
                }
              }
            }
            else {
              *ppuVar24 = puVar7;
              *puVar7 = *puVar7 | 1;
              puVar5[5] = (uint)(ppuVar24 + 1);
            }
          }
        }
        if (((((uint)puVar11 & 3) == 0) && ((puVar11[1] & 6) == 0)) &&
           (uVar3 = puVar11[2] >> 2, uVar3 != 0)) {
          ppuVar24 = (uint **)(puVar11 + 3);
          do {
            puVar7 = *ppuVar24;
            if (((((uint)puVar7 & 3) == 0) && ((puVar7[1] & 0x80f8) != 0x80f8)) &&
               (((*puVar7 & 1) == 0 || ((*puVar7 & 2) != 0)))) {
              if (((((uint)puVar7 & 3) == 0) && ((*puVar7 & 1) == 0)) &&
                 ((puVar7[1] & 0x80f8) != 0x80f8)) {
                if ((puVar7[1] & 0x2000) == 0) {
                  if (((((uint)puVar7 & 3) == 0) && ((*puVar7 & 1) == 0)) &&
                     ((puVar7[1] & 0x80f8) != 0x80f8)) {
                    uVar15 = *puVar7;
                    if ((*(uint *)(uVar15 + 0x24) & 1) == 0) {
                      uVar4 = *(uint *)(uVar15 + 0x20);
                    }
                    else {
                      uVar4 = *(uint *)(param_1[0xe][0x36] + *(uint *)(uVar15 + 0x24) + 3);
                    }
                    if (uVar4 == 0xe) {
                      if (local_3c != 0xe) {
                        if ((*(uint *)(uVar15 + 0x24) & 1) == 0) {
                          *(uint *)(uVar15 + 0x24) = local_3c;
                        }
                        else {
                          *(uint *)((param_1[0xe][0x36] - 1) + *(uint *)(uVar15 + 0x24)) = local_3c;
                        }
                      }
                      uVar4 = 0;
                      local_3c = uVar15;
                    }
                    *puVar7 = uVar4;
                    *puVar7 = *puVar7 | 1;
                    if ((*(uint *)(uVar15 + 0x24) & 1) == 0) {
                      *(uint **)(uVar15 + 0x20) = puVar7;
                    }
                    else {
                      *(uint **)(param_1[0xe][0x36] + *(uint *)(uVar15 + 0x24) + 3) = puVar7;
                    }
                  }
                }
                else {
                  puVar5 = param_1[0x14];
                  ppuVar17 = (uint **)puVar5[5];
                  if (ppuVar17 == (uint **)puVar5[4]) {
                    if (((((uint)puVar7 & 3) == 0) && ((*puVar7 & 1) == 0)) &&
                       ((puVar7[1] & 0x80f8) != 0x80f8)) {
                      uVar15 = *puVar7;
                      if ((*(uint *)(uVar15 + 0x24) & 1) == 0) {
                        uVar4 = *(uint *)(uVar15 + 0x20);
                      }
                      else {
                        uVar4 = *(uint *)(param_1[0xe][0x36] + *(uint *)(uVar15 + 0x24) + 3);
                      }
                      if (uVar4 == 0xe) {
                        if (local_3c != 0xe) {
                          if ((*(uint *)(uVar15 + 0x24) & 1) == 0) {
                            *(uint *)(uVar15 + 0x24) = local_3c;
                          }
                          else {
                            *(uint *)((param_1[0xe][0x36] - 1) + *(uint *)(uVar15 + 0x24)) =
                                 local_3c;
                          }
                        }
                        uVar4 = 0;
                        local_3c = uVar15;
                      }
                      *puVar7 = uVar4;
                      *puVar7 = *puVar7 | 1;
                      if ((*(uint *)(uVar15 + 0x24) & 1) == 0) {
                        *(uint **)(uVar15 + 0x20) = puVar7;
                      }
                      else {
                        *(uint **)(param_1[0xe][0x36] + *(uint *)(uVar15 + 0x24) + 3) = puVar7;
                      }
                    }
                  }
                  else {
                    *ppuVar17 = puVar7;
                    *puVar7 = *puVar7 | 1;
                    puVar5[5] = (uint)(ppuVar17 + 1);
                  }
                }
              }
              uVar15 = local_3c;
              if ((param_1[0xe][0x27] == 0xe) ||
                 (iVar8 = FUN_00481f60((int)param_1,param_1[0xe][0x27],(uint)puVar11,
                                       ((uint)((int)ppuVar24 + (-0xc - (int)puVar11)) >> 2) * 2 + 3,
                                       (uint)puVar7), iVar8 == 0)) {
                *ppuVar24 = puVar7;
              }
              else {
                local_38 = local_38 | 8;
                *ppuVar24 = (uint *)&DAT_0000000e;
                *puVar7 = *puVar7 | 2;
              }
            }
            ppuVar24 = ppuVar24 + 1;
            uVar3 = uVar3 - 1;
          } while (uVar3 != 0);
        }
      }
    } while (param_1[0x14][3] != param_1[0x14][5]);
  } while (uVar15 != 0xe);
  for (puVar11 = *(uint **)(param_1[0x1a][0x13] + 4); puVar11 != (uint *)0x0;
      puVar11 = (uint *)puVar11[0xb]) {
    if ((*puVar11 & 9) == 9) {
      ppuVar24 = (uint **)puVar11[10];
      while (ppuVar17 = ppuVar24, ppuVar17 != (uint **)puVar11[9]) {
        ppuVar24 = ppuVar17 + -1;
        if ((**ppuVar24 & 1) == 0) {
          (*ppuVar24)[1] = (*ppuVar24)[1] & 0xffffbfff;
          ppuVar13 = (uint **)puVar11[9];
          *ppuVar24 = *ppuVar13;
          puVar11[9] = (uint)(ppuVar13 + 1);
          ppuVar24 = ppuVar17;
        }
      }
    }
  }
  for (puVar11 = *(uint **)(param_1[0x1a][0x13] + 4); puVar11 != (uint *)0x0;
      puVar11 = (uint *)puVar11[0xb]) {
    if ((*puVar11 & 9) == 9) {
      puVar11[6] = puVar11[3];
      puVar11[7] = 0;
      puVar11[8] = 0;
      for (puVar7 = (uint *)puVar11[6]; puVar7 != (uint *)puVar11[5];
          puVar7 = (uint *)((int)puVar7 + (puVar7[2] + 0xf & 0xfffffffc))) {
        if ((*puVar7 & 1) == 0) {
          uVar15 = puVar11[7];
          puVar7[1] = 2;
          if (uVar15 == 0) {
            puVar11[7] = (uint)puVar7;
            puVar11[8] = (uint)puVar7;
            *puVar7 = 0;
          }
          else {
            ppuVar24 = (uint **)puVar11[8];
            if ((uint *)((int)ppuVar24 + ((int)ppuVar24[2] + 0xfU & 0xfffffffc)) == puVar7) {
              ppuVar24[2] = (uint *)((int)ppuVar24[2] + (puVar7[2] + 0xf & 0xfffffffc));
            }
            else {
              *ppuVar24 = puVar7;
              *puVar7 = 0;
              puVar11[8] = (uint)puVar7;
            }
          }
        }
        else {
          *puVar7 = *puVar7 & 0xfffffffc;
        }
      }
      puVar11[6] = (uint)puVar7;
    }
  }
  for (puVar11 = *(uint **)(param_1[0x1a][0x13] + 4); puVar11 != (uint *)0x0;
      puVar11 = (uint *)puVar11[0xb]) {
    if ((*puVar11 & 2) != 0) {
      puVar11[6] = puVar11[3];
      puVar11[7] = 0;
      puVar11[8] = 0;
      for (puVar7 = (uint *)puVar11[6]; puVar7 != (uint *)puVar11[5];
          puVar7 = (uint *)((int)puVar7 + (puVar7[2] + 0xf & 0xfffffffc))) {
        if ((*puVar7 & 1) == 0) {
          uVar15 = puVar11[7];
          puVar7[1] = 2;
          if (uVar15 == 0) {
            puVar11[7] = (uint)puVar7;
            puVar11[8] = (uint)puVar7;
            *puVar7 = 0;
          }
          else {
            ppuVar24 = (uint **)puVar11[8];
            if ((uint *)((int)ppuVar24 + ((int)ppuVar24[2] + 0xfU & 0xfffffffc)) == puVar7) {
              ppuVar24[2] = (uint *)((int)ppuVar24[2] + (puVar7[2] + 0xf & 0xfffffffc));
            }
            else {
              *ppuVar24 = puVar7;
              *puVar7 = 0;
              puVar11[8] = (uint)puVar7;
            }
          }
        }
        else {
          *puVar7 = *puVar7 & 0xfffffffc;
        }
      }
      puVar11[6] = (uint)puVar7;
    }
  }
  do {
    uVar15 = param_1[0x14][3];
    uVar3 = param_1[0x14][4] - uVar15 >> 2;
    if (0x1ffe < uVar3) {
      uVar3 = 0x1fff;
    }
    uVar4 = 0;
    local_24 = 1;
    for (puVar11 = *(uint **)(param_1[0x1a][0x13] + 4); puVar11 != (uint *)0x0;
        puVar11 = (uint *)puVar11[0xb]) {
      if ((*puVar11 & 9) == 9) {
        if (local_24 == uVar3) {
          uVar4 = 0;
        }
        iVar8 = 0;
        *(undefined4 *)(uVar15 + uVar4) = 0;
        puVar11[6] = puVar11[3];
        ppuVar17 = (uint **)puVar11[7];
        for (ppuVar24 = (uint **)puVar11[6]; ppuVar24 != (uint **)puVar11[5];
            ppuVar24 = (uint **)((int)ppuVar24 + ((int)ppuVar24[2] + 0xfU & 0xfffffffc))) {
          if (ppuVar24 == ppuVar17) {
            if (local_24 == uVar3) {
              uVar4 = 0;
            }
            else {
              iVar8 = iVar8 + ((int)ppuVar17[2] + 0xfU & 0xfffffffc);
              local_24 = local_24 + 1;
              uVar4 = uVar4 + 4;
              *(int *)(uVar15 + uVar4) = iVar8;
            }
            ppuVar17 = (uint **)*ppuVar17;
          }
          else {
            if (((uint)ppuVar24[1] & 0x2000) != 0) {
              *ppuVar24 = (uint *)((uint)*ppuVar24 | 2);
            }
            ppuVar24[1] = (uint *)((uint)ppuVar24[1] & 0xffff0000 | uVar4);
          }
        }
        puVar11[6] = (uint)ppuVar24;
        if (local_24 == uVar3) {
          uVar4 = 0;
        }
        else {
          local_24 = local_24 + 1;
          uVar4 = uVar4 + 4;
        }
      }
    }
    for (puVar11 = *(uint **)(param_1[0x1a][0x13] + 4); puVar11 != (uint *)0x0;
        puVar11 = (uint *)puVar11[0xb]) {
      if ((*puVar11 & 2) != 0) {
        if (local_24 == uVar3) {
          uVar4 = 0;
        }
        iVar8 = 0;
        *(undefined4 *)(uVar15 + uVar4) = 0;
        puVar11[6] = puVar11[3];
        ppuVar17 = (uint **)puVar11[7];
        for (ppuVar24 = (uint **)puVar11[6]; ppuVar24 != (uint **)puVar11[5];
            ppuVar24 = (uint **)((int)ppuVar24 + ((int)ppuVar24[2] + 0xfU & 0xfffffffc))) {
          if (ppuVar24 == ppuVar17) {
            if (local_24 == uVar3) {
              uVar4 = 0;
            }
            else {
              iVar8 = iVar8 + ((int)ppuVar17[2] + 0xfU & 0xfffffffc);
              local_24 = local_24 + 1;
              uVar4 = uVar4 + 4;
              *(int *)(uVar15 + uVar4) = iVar8;
            }
            ppuVar17 = (uint **)*ppuVar17;
          }
          else {
            if (((uint)ppuVar24[1] & 0x2000) != 0) {
              *ppuVar24 = (uint *)((uint)*ppuVar24 | 2);
            }
            ppuVar24[1] = (uint *)((uint)ppuVar24[1] & 0xffff0000 | uVar4);
          }
        }
        puVar11[6] = (uint)ppuVar24;
        if (local_24 == uVar3) {
          uVar4 = 0;
        }
        else {
          local_24 = local_24 + 1;
          uVar4 = uVar4 + 4;
        }
      }
    }
    for (puVar11 = *(uint **)(param_1[0x1a][0x13] + 4); ppuVar24 = param_1, puVar11 != (uint *)0x0;
        puVar11 = (uint *)puVar11[0xb]) {
      if ((*puVar11 & 9) == 9) {
        puVar7 = (uint *)puVar11[10];
        while (puVar7 != (uint *)puVar11[9]) {
          puVar7 = puVar7 + -1;
          uVar3 = *puVar7;
          if ((uVar3 & 3) == 0) {
            uVar4 = 0;
            if (((uVar3 & 3) == 0) && ((*(uint *)(uVar3 + 4) & 0x80f8) != 0x80f8)) {
              uVar4 = *(uint *)(uVar3 + 4) & 0xffff;
            }
            if (*(int *)(uVar15 + uVar4) != 0) {
              *puVar7 = uVar3 - *(int *)(uVar15 + uVar4);
            }
          }
        }
      }
    }
    do {
      if ((((ppuVar24[0xb] != (uint *)&DAT_0000000e) && ((ppuVar24[0xb][-4] & 0x1000000) == 0)) &&
          (((uint)ppuVar24[0xd] & 3) == 0)) && (uVar3 = ppuVar24[0xd][3], (uVar3 & 3) == 0)) {
        uVar4 = 0;
        if (((uVar3 & 3) == 0) && ((*(uint *)(uVar3 + 4) & 0x80f8) != 0x80f8)) {
          uVar4 = *(uint *)(uVar3 + 4) & 0xffff;
        }
        if (*(int *)(uVar15 + uVar4) != 0) {
          ppuVar24[0xc] = (uint *)((int)ppuVar24[0xc] - *(int *)(uVar15 + uVar4));
        }
      }
      puVar11 = ppuVar24[4];
      if (((uint)puVar11 & 3) == 0) {
        uVar3 = 0;
        if ((((uint)puVar11 & 3) == 0) && ((puVar11[1] & 0x80f8) != 0x80f8)) {
          uVar3 = puVar11[1] & 0xffff;
        }
        if (*(int *)(uVar15 + uVar3) != 0) {
          ppuVar24[4] = (uint *)((int)puVar11 - *(int *)(uVar15 + uVar3));
        }
      }
      puVar11 = *ppuVar24;
      if (((uint)puVar11 & 3) == 0) {
        uVar3 = 0;
        if ((((uint)puVar11 & 3) == 0) && ((puVar11[1] & 0x80f8) != 0x80f8)) {
          uVar3 = puVar11[1] & 0xffff;
        }
        if (*(int *)(uVar15 + uVar3) != 0) {
          *ppuVar24 = (uint *)((int)puVar11 - *(int *)(uVar15 + uVar3));
        }
      }
      puVar11 = ppuVar24[5];
      if (((uint)puVar11 & 3) == 0) {
        uVar3 = 0;
        if ((((uint)puVar11 & 3) == 0) && ((puVar11[1] & 0x80f8) != 0x80f8)) {
          uVar3 = puVar11[1] & 0xffff;
        }
        if (*(int *)(uVar15 + uVar3) != 0) {
          ppuVar24[5] = (uint *)((int)puVar11 - *(int *)(uVar15 + uVar3));
        }
      }
      puVar11 = ppuVar24[7];
      if (((uint)puVar11 & 3) == 0) {
        uVar3 = 0;
        if ((((uint)puVar11 & 3) == 0) && ((puVar11[1] & 0x80f8) != 0x80f8)) {
          uVar3 = puVar11[1] & 0xffff;
        }
        if (*(int *)(uVar15 + uVar3) != 0) {
          ppuVar24[7] = (uint *)((int)puVar11 - *(int *)(uVar15 + uVar3));
        }
      }
      puVar11 = ppuVar24[2];
      if (((uint)puVar11 & 3) == 0) {
        uVar3 = 0;
        if ((((uint)puVar11 & 3) == 0) && ((puVar11[1] & 0x80f8) != 0x80f8)) {
          uVar3 = puVar11[1] & 0xffff;
        }
        if (*(int *)(uVar15 + uVar3) != 0) {
          ppuVar24[2] = (uint *)((int)puVar11 - *(int *)(uVar15 + uVar3));
        }
      }
      puVar11 = ppuVar24[1];
      if (((uint)puVar11 & 3) == 0) {
        uVar3 = 0;
        if ((((uint)puVar11 & 3) == 0) && ((puVar11[1] & 0x80f8) != 0x80f8)) {
          uVar3 = puVar11[1] & 0xffff;
        }
        if (*(int *)(uVar15 + uVar3) != 0) {
          ppuVar24[1] = (uint *)((int)puVar11 - *(int *)(uVar15 + uVar3));
        }
      }
      puVar11 = ppuVar24[0xe];
      if (((uint)puVar11 & 3) == 0) {
        uVar3 = 0;
        if ((((uint)puVar11 & 3) == 0) && ((puVar11[1] & 0x80f8) != 0x80f8)) {
          uVar3 = puVar11[1] & 0xffff;
        }
        if (*(int *)(uVar15 + uVar3) != 0) {
          ppuVar24[0xe] = (uint *)((int)puVar11 - *(int *)(uVar15 + uVar3));
        }
      }
      puVar11 = ppuVar24[0xd];
      if (((uint)puVar11 & 3) == 0) {
        uVar3 = 0;
        if ((((uint)puVar11 & 3) == 0) && ((puVar11[1] & 0x80f8) != 0x80f8)) {
          uVar3 = puVar11[1] & 0xffff;
        }
        if (*(int *)(uVar15 + uVar3) != 0) {
          ppuVar24[0xd] = (uint *)((int)puVar11 - *(int *)(uVar15 + uVar3));
        }
      }
      puVar11 = ppuVar24[0x17];
      if (((uint)puVar11 & 3) == 0) {
        uVar3 = 0;
        if ((((uint)puVar11 & 3) == 0) && ((puVar11[1] & 0x80f8) != 0x80f8)) {
          uVar3 = puVar11[1] & 0xffff;
        }
        if (*(int *)(uVar15 + uVar3) != 0) {
          ppuVar24[0x17] = (uint *)((int)puVar11 - *(int *)(uVar15 + uVar3));
        }
      }
      puVar11 = ppuVar24[0x25];
      if (((uint)puVar11 & 3) == 0) {
        uVar3 = 0;
        if ((((uint)puVar11 & 3) == 0) && ((puVar11[1] & 0x80f8) != 0x80f8)) {
          uVar3 = puVar11[1] & 0xffff;
        }
        if (*(int *)(uVar15 + uVar3) != 0) {
          ppuVar24[0x25] = (uint *)((int)puVar11 - *(int *)(uVar15 + uVar3));
        }
      }
      puVar11 = ppuVar24[8];
      ppuVar17 = ppuVar24 + 8;
      puVar7 = *ppuVar17;
      if (((uint)puVar7 & 3) == 0) {
        local_14 = 0;
        if ((((uint)puVar7 & 3) == 0) && (local_14 = 0, (puVar7[1] & 0x80f8) != 0x80f8)) {
          local_14 = puVar7[1] & 0xffff;
        }
        if (*(int *)(uVar15 + local_14) != 0) {
          *ppuVar17 = (uint *)((int)puVar7 - *(int *)(uVar15 + local_14));
        }
      }
      iVar8 = (int)puVar11 - (int)*ppuVar17;
      ppiVar9 = (int **)ppuVar24[0xb];
      ppiVar20 = (int **)ppuVar24[10];
      ppuVar24[10] = (uint *)((int)ppuVar24[10] - iVar8);
      ppuVar24[0xb] = (uint *)((int)ppuVar24[0xb] - iVar8);
      ppuVar24[0x18] = (uint *)((int)ppuVar24[0x18] - iVar8);
      if (ppuVar24[9] != (uint *)0xffffffff) {
        ppuVar24[9] = ppuVar24[0x18];
      }
      if (ppiVar9 != (int **)&DAT_0000000e) {
        do {
          if (((uint)ppiVar9[-2] & 3) == 0) {
            if (*ppiVar9 == (int *)&DAT_0000000e) {
              uVar3 = 0;
            }
            else {
              uVar3 = (*ppiVar9)[-4];
            }
            if ((uVar3 & 0x1000000) == 0) {
              uVar3 = ppiVar9[-2][3];
              if ((uVar3 & 3) == 0) {
                uVar4 = 0;
                if (((uVar3 & 3) == 0) && ((*(uint *)(uVar3 + 4) & 0x80f8) != 0x80f8)) {
                  uVar4 = *(uint *)(uVar3 + 4) & 0xffff;
                }
                if (*(int *)(uVar15 + uVar4) != 0) {
                  ppiVar9[-1] = (int *)((int)ppiVar9[-1] - *(int *)(uVar15 + uVar4));
                }
              }
            }
          }
          piVar12 = ppiVar9[-2];
          if (((uint)piVar12 & 3) == 0) {
            local_18 = 0;
            if ((((uint)piVar12 & 3) == 0) && (local_18 = 0, (piVar12[1] & 0x80f8U) != 0x80f8)) {
              local_18 = piVar12[1] & 0xffff;
            }
            if (*(int *)(uVar15 + local_18) != 0) {
              ppiVar9[-2] = (int *)((int)piVar12 - *(int *)(uVar15 + local_18));
            }
          }
          piVar12 = ppiVar9[-3];
          if (((uint)piVar12 & 3) == 0) {
            local_18 = 0;
            if ((((uint)piVar12 & 3) == 0) && (local_18 = 0, (piVar12[1] & 0x80f8U) != 0x80f8)) {
              local_18 = piVar12[1] & 0xffff;
            }
            if (*(int *)(uVar15 + local_18) != 0) {
              ppiVar9[-3] = (int *)((int)piVar12 - *(int *)(uVar15 + local_18));
            }
          }
          ppiVar9[-5] = (int *)((int)ppiVar9[-5] - iVar8);
          if (*ppiVar9 != (int *)&DAT_0000000e) {
            *ppiVar9 = (int *)((int)*ppiVar9 - iVar8);
          }
          ppiVar14 = ppiVar9 + -6;
          do {
            piVar12 = *ppiVar14;
            if (((uint)piVar12 & 3) == 0) {
              local_18 = 0;
              if ((((uint)piVar12 & 3) == 0) && (local_18 = 0, (piVar12[1] & 0x80f8U) != 0x80f8)) {
                local_18 = piVar12[1] & 0xffff;
              }
              if (*(int *)(uVar15 + local_18) != 0) {
                *ppiVar14 = (int *)((int)piVar12 - *(int *)(uVar15 + local_18));
              }
            }
            ppiVar14 = ppiVar14 + -1;
          } while (ppiVar20 <= ppiVar14);
          ppiVar20 = ppiVar9 + 1;
          ppiVar9 = (int **)*ppiVar9;
          if (ppiVar9 != (int **)&DAT_0000000e) {
            ppiVar9 = (int **)((int)ppiVar9 + iVar8);
          }
        } while (ppiVar9 != (int **)&DAT_0000000e);
        ppiVar9 = (int **)((int)puVar11 + ((puVar11[2] + 0xf & 0xfffffffc) - 4));
        do {
          piVar12 = *ppiVar9;
          if (((uint)piVar12 & 3) == 0) {
            uVar3 = 0;
            if ((((uint)piVar12 & 3) == 0) && ((piVar12[1] & 0x80f8U) != 0x80f8)) {
              uVar3 = piVar12[1] & 0xffff;
            }
            if (*(int *)(uVar15 + uVar3) != 0) {
              *ppiVar9 = (int *)((int)piVar12 - *(int *)(uVar15 + uVar3));
            }
          }
          ppiVar9 = ppiVar9 + -1;
        } while (ppiVar20 <= ppiVar9);
      }
      ppuVar17 = ppuVar24 + 3;
      ppuVar24 = (uint **)*ppuVar17;
    } while ((uint **)*ppuVar17 != param_1);
    for (puVar11 = *(uint **)(param_1[0x1a][0x13] + 4); puVar11 != (uint *)0x0;
        puVar11 = (uint *)puVar11[0xb]) {
      if ((*puVar11 & 9) == 9) {
        puVar11[6] = puVar11[3];
        ppuVar17 = (uint **)puVar11[7];
        for (ppuVar24 = (uint **)puVar11[6]; ppuVar24 != (uint **)puVar11[5];
            ppuVar24 = (uint **)((int)ppuVar24 + ((int)ppuVar24[2] + 0xfU & 0xfffffffc))) {
          if (ppuVar17 == ppuVar24) {
            ppuVar17 = (uint **)*ppuVar17;
          }
          else {
            bVar2 = ((uint)*ppuVar24 & 2) != 0;
            if (bVar2) {
              *ppuVar24 = (uint *)((uint)*ppuVar24 & 0xfffffffd);
            }
            if (((((uint)ppuVar24 & 3) == 0) && (((*ppuVar24)[7] >> 0x10 & 6) == 0)) &&
               (uVar3 = (uint)ppuVar24[2] >> 2, uVar3 != 0)) {
              ppuVar13 = ppuVar24 + 3;
              do {
                puVar7 = *ppuVar13;
                if (((uint)puVar7 & 3) == 0) {
                  uVar4 = 0;
                  if ((((uint)puVar7 & 3) == 0) && ((puVar7[1] & 0x80f8) != 0x80f8)) {
                    uVar4 = puVar7[1] & 0xffff;
                  }
                  if (*(int *)(uVar15 + uVar4) != 0) {
                    *ppuVar13 = (uint *)((int)puVar7 - *(int *)(uVar15 + uVar4));
                  }
                }
                ppuVar13 = ppuVar13 + 1;
                uVar3 = uVar3 - 1;
              } while (uVar3 != 0);
            }
            puVar7 = *ppuVar24;
            if (((uint)puVar7 & 3) == 0) {
              uVar3 = 0;
              if ((((uint)puVar7 & 3) == 0) && ((puVar7[1] & 0x80f8) != 0x80f8)) {
                uVar3 = puVar7[1] & 0xffff;
              }
              if (*(int *)(uVar15 + uVar3) != 0) {
                *ppuVar24 = (uint *)((int)puVar7 - *(int *)(uVar15 + uVar3));
              }
            }
            if (bVar2) {
              *ppuVar24 = (uint *)((uint)*ppuVar24 | 2);
            }
          }
        }
        puVar11[6] = (uint)ppuVar24;
      }
    }
    for (puVar11 = *(uint **)(param_1[0x1a][0x13] + 4); puVar11 != (uint *)0x0;
        puVar11 = (uint *)puVar11[0xb]) {
      if ((*puVar11 & 2) != 0) {
        puVar11[6] = puVar11[3];
        ppuVar17 = (uint **)puVar11[7];
        for (ppuVar24 = (uint **)puVar11[6]; ppuVar24 != (uint **)puVar11[5];
            ppuVar24 = (uint **)((int)ppuVar24 + ((int)ppuVar24[2] + 0xfU & 0xfffffffc))) {
          if (ppuVar17 == ppuVar24) {
            ppuVar17 = (uint **)*ppuVar17;
          }
          else {
            bVar2 = ((uint)*ppuVar24 & 2) != 0;
            if (bVar2) {
              *ppuVar24 = (uint *)((uint)*ppuVar24 & 0xfffffffd);
            }
            if (((((uint)ppuVar24 & 3) == 0) && (((*ppuVar24)[7] >> 0x10 & 6) == 0)) &&
               (uVar3 = (uint)ppuVar24[2] >> 2, uVar3 != 0)) {
              ppuVar13 = ppuVar24 + 3;
              do {
                puVar7 = *ppuVar13;
                if (((uint)puVar7 & 3) == 0) {
                  uVar4 = 0;
                  if ((((uint)puVar7 & 3) == 0) && ((puVar7[1] & 0x80f8) != 0x80f8)) {
                    uVar4 = puVar7[1] & 0xffff;
                  }
                  if (*(int *)(uVar15 + uVar4) != 0) {
                    *ppuVar13 = (uint *)((int)puVar7 - *(int *)(uVar15 + uVar4));
                  }
                }
                ppuVar13 = ppuVar13 + 1;
                uVar3 = uVar3 - 1;
              } while (uVar3 != 0);
            }
            puVar7 = *ppuVar24;
            if (((uint)puVar7 & 3) == 0) {
              uVar3 = 0;
              if ((((uint)puVar7 & 3) == 0) && ((puVar7[1] & 0x80f8) != 0x80f8)) {
                uVar3 = puVar7[1] & 0xffff;
              }
              if (*(int *)(uVar15 + uVar3) != 0) {
                *ppuVar24 = (uint *)((int)puVar7 - *(int *)(uVar15 + uVar3));
              }
            }
            if (bVar2) {
              *ppuVar24 = (uint *)((uint)*ppuVar24 | 2);
            }
          }
        }
        puVar11[6] = (uint)ppuVar24;
      }
    }
    bVar2 = true;
    for (puVar11 = *(uint **)(param_1[0x1a][0x13] + 4); puVar11 != (uint *)0x0;
        puVar11 = (uint *)puVar11[0xb]) {
      if ((*puVar11 & 9) == 9) {
        puVar11[6] = puVar11[3];
        puVar10 = (undefined4 *)puVar11[7];
        puVar21 = puVar10;
        while (puVar10 != (undefined4 *)0x0) {
          puVar19 = (undefined4 *)((int)puVar10 + (puVar10[2] + 0xf & 0xfffffffc));
          if (puVar19 == (undefined4 *)puVar11[5]) {
            puVar10 = (undefined4 *)0x0;
          }
          else {
            uVar15 = 0;
            if ((((uint)puVar19 & 3) == 0) && ((puVar19[1] & 0x80f8) != 0x80f8)) {
              uVar15 = puVar19[1] & 0xffff;
            }
            if (uVar15 == 0) {
              puVar11[7] = (uint)puVar21;
              *puVar21 = *puVar10;
              bVar2 = false;
              puVar21[2] = (int)puVar19 + (-0xc - (int)puVar21);
              puVar10 = (undefined4 *)0x0;
              puVar21 = (undefined4 *)0x0;
            }
            else {
              puVar10 = (undefined4 *)*puVar10;
              puVar16 = puVar10;
              if (puVar10 == (undefined4 *)0x0) {
                puVar16 = (undefined4 *)puVar11[5];
              }
              if ((int)puVar16 - (int)puVar19 != 0) {
                uVar15 = (uint)((int)puVar16 - (int)puVar19) >> 2;
                for (; uVar15 != 0; uVar15 = uVar15 - 1) {
                  *puVar21 = *puVar19;
                  puVar19 = puVar19 + 1;
                  puVar21 = puVar21 + 1;
                }
              }
            }
          }
        }
        if (puVar21 != (undefined4 *)0x0) {
          puVar11[5] = (uint)puVar21;
          puVar11[7] = 0;
          puVar11[8] = 0;
        }
      }
    }
    for (puVar11 = *(uint **)(param_1[0x1a][0x13] + 4); puVar11 != (uint *)0x0;
        puVar11 = (uint *)puVar11[0xb]) {
      if ((*puVar11 & 2) != 0) {
        puVar11[6] = puVar11[3];
        puVar10 = (undefined4 *)puVar11[7];
        puVar21 = puVar10;
        while (puVar10 != (undefined4 *)0x0) {
          puVar19 = (undefined4 *)((int)puVar10 + (puVar10[2] + 0xf & 0xfffffffc));
          if (puVar19 == (undefined4 *)puVar11[5]) {
            puVar10 = (undefined4 *)0x0;
          }
          else {
            uVar15 = 0;
            if ((((uint)puVar19 & 3) == 0) && ((puVar19[1] & 0x80f8) != 0x80f8)) {
              uVar15 = puVar19[1] & 0xffff;
            }
            if (uVar15 == 0) {
              puVar11[7] = (uint)puVar21;
              *puVar21 = *puVar10;
              bVar2 = false;
              puVar21[2] = (int)puVar19 + (-0xc - (int)puVar21);
              puVar10 = (undefined4 *)0x0;
              puVar21 = (undefined4 *)0x0;
            }
            else {
              puVar10 = (undefined4 *)*puVar10;
              puVar16 = puVar10;
              if (puVar10 == (undefined4 *)0x0) {
                puVar16 = (undefined4 *)puVar11[5];
              }
              if ((int)puVar16 - (int)puVar19 != 0) {
                uVar15 = (uint)((int)puVar16 - (int)puVar19) >> 2;
                for (; uVar15 != 0; uVar15 = uVar15 - 1) {
                  *puVar21 = *puVar19;
                  puVar19 = puVar19 + 1;
                  puVar21 = puVar21 + 1;
                }
              }
            }
          }
        }
        if (puVar21 != (undefined4 *)0x0) {
          puVar11[5] = (uint)puVar21;
          puVar11[7] = 0;
          puVar11[8] = 0;
        }
      }
    }
    for (puVar11 = *(uint **)(param_1[0x1a][0x13] + 4); puVar11 != (uint *)0x0;
        puVar11 = (uint *)puVar11[0xb]) {
      if ((*puVar11 & 2) != 0) {
        puVar11[6] = puVar11[3];
        ppuVar17 = (uint **)puVar11[7];
        for (ppuVar24 = (uint **)puVar11[6]; ppuVar24 != (uint **)puVar11[5];
            ppuVar24 = (uint **)((int)ppuVar24 + ((int)ppuVar24[2] + 0xfU & 0xfffffffc))) {
          if (ppuVar17 == ppuVar24) {
            ppuVar17 = (uint **)*ppuVar17;
          }
          else {
            uVar15 = (uint)ppuVar24[1] & 0xffff0000;
            if (((uint)*ppuVar24 & 2) != 0) {
              *ppuVar24 = (uint *)((uint)*ppuVar24 & 0xfffffffd);
              uVar15 = uVar15 | 0x2000;
            }
            ppuVar24[1] = (uint *)(uVar15 | (*ppuVar24)[7] >> 0x10);
          }
        }
        puVar11[6] = (uint)ppuVar24;
      }
    }
    for (puVar11 = *(uint **)(param_1[0x1a][0x13] + 4); puVar11 != (uint *)0x0;
        puVar11 = (uint *)puVar11[0xb]) {
      if ((*puVar11 & 9) == 9) {
        uVar15 = 0x8000;
        if ((*puVar11 & 0x10) != 0) {
          uVar15 = 0x9000;
        }
        puVar11[6] = puVar11[3];
        ppuVar17 = (uint **)puVar11[7];
        for (ppuVar24 = (uint **)puVar11[6]; ppuVar24 != (uint **)puVar11[5];
            ppuVar24 = (uint **)((int)ppuVar24 + ((int)ppuVar24[2] + 0xfU & 0xfffffffc))) {
          if (ppuVar17 == ppuVar24) {
            ppuVar17 = (uint **)*ppuVar17;
          }
          else {
            uVar3 = (uint)ppuVar24[1] & 0xffff0000;
            if (((uint)*ppuVar24 & 2) != 0) {
              *ppuVar24 = (uint *)((uint)*ppuVar24 & 0xfffffffd);
              uVar3 = uVar3 | 0x2000;
            }
            ppuVar24[1] = (uint *)(uVar3 | (*ppuVar24)[7] >> 0x10 | uVar15);
          }
        }
        puVar11[6] = (uint)ppuVar24;
      }
    }
    for (puVar11 = *(uint **)(param_1[0x1a][0x13] + 4); puVar11 != (uint *)0x0;
        puVar11 = (uint *)puVar11[0xb]) {
      if ((*puVar11 & 9) == 9) {
        piVar12 = (int *)puVar11[10];
        while (piVar12 != (int *)puVar11[9]) {
          piVar12 = piVar12 + -1;
          *(uint *)(*piVar12 + 4) = *(uint *)(*piVar12 + 4) | 0x4000;
        }
      }
    }
  } while (!bVar2);
  FUN_0047eaa0(param_1,param_2);
  puVar11 = param_1[0xe];
  if (((((puVar11[0x2e] & 3) == 0) && ((puVar11[0x2d] & 3) == 0)) && ((puVar11[0x2c] & 1) != 0)) &&
     (((int)puVar11[0x2c] >> 1 & local_38) != 0)) {
    EsPostAsyncMessage((int)param_1,puVar11[0x2d],puVar11[0x2e],1);
  }
  if ((((param_1[0x1a][0x3d] & 0x10001) == 1) && ((param_1[0x1a][0x3d] & 0x10) != 0)) && (!bVar1)) {
    param_1[0x13][4] = param_1[0x13][5];
  }
  return 0;
}

