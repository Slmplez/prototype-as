/* Ghidra-generated pseudocode; address 0045e120. */

undefined4 __cdecl EsScavenge(int param_1,int param_2)

{
  int **ppiVar1;
  uint **ppuVar2;
  bool bVar3;
  bool bVar4;
  uint uVar5;
  uint uVar6;
  undefined3 extraout_var;
  uint uVar7;
  uint *puVar8;
  int *piVar9;
  uint *puVar10;
  int iVar11;
  int iVar12;
  uint *puVar13;
  int iVar14;
  int **ppiVar15;
  uint **ppuVar16;
  int *piVar17;
  uint *puVar18;
  uint uVar19;
  int *piVar20;
  int *piVar21;
  uint **ppuVar22;
  bool bVar23;
  undefined *puVar24;
  undefined *puVar25;
  undefined *puVar26;
  uint **local_58;
  uint *local_4c;
  uint local_48;
  
                    /* 0x3e120  49  EsScavenge */
  puVar24 = &stack0xfffffffc;
  puVar25 = &stack0xfffffffc;
  bVar3 = false;
  uVar7 = *(uint *)(*(int *)(param_1 + 0x68) + 0xf4);
  puVar26 = &stack0xfffffffc;
  if (((uVar7 & 0x10001) != 1) || (puVar26 = &stack0xfffffffc, (uVar7 & 0x10) == 0))
  goto LAB_0045e377;
  iVar11 = *(int *)(param_1 + 0x4c);
  if (*(uint *)(iVar11 + 0x14) < *(uint *)(iVar11 + 0x10)) {
    bVar3 = true;
  }
  else if (*(int *)(iVar11 + 0x24) == 0) {
    *(int *)(iVar11 + 0x10) = *(int *)(iVar11 + 4) + *(int *)(iVar11 + 0xc);
  }
  else {
    *(undefined4 *)(iVar11 + 0x10) = *(undefined4 *)(iVar11 + 0x24);
  }
  puVar26 = &stack0xfffffffc;
  if ((uVar7 & 2) != 0) goto LAB_0045e377;
  uVar6 = *(uint *)(param_1 + 0x34);
  uVar19 = 0;
  if ((uVar6 & 1) == 0) {
    puVar26 = &stack0xfffffffc;
    if ((uVar6 & 3) == 0) {
      uVar5 = *(uint *)(uVar6 + 0x14);
      uVar6 = *(uint *)(uVar6 + 0x18);
      goto LAB_0045e20d;
    }
  }
  else {
    uVar5 = FUN_0047fa10(param_1,uVar6);
    uVar6 = FUN_0047fa70(param_1,uVar6);
    puVar26 = puVar24;
    if ((2 < uVar5) && (puVar25 = puVar24, 2 < uVar6)) {
LAB_0045e20d:
      piVar9 = *(int **)(uVar5 + 0xc);
      puVar26 = puVar25;
      if (((uint)piVar9 & 3) == 0) {
        if (*(int *)(*(int *)(*(int *)(param_1 + 0x38) + 0x28) + 0x10) == *piVar9) {
          piVar17 = *(int **)(uVar5 + 0x14);
          uVar19 = piVar17[2];
          if (*(int *)(*(int *)(*(int *)(param_1 + 0x38) + 0xec) + 0x10) == *piVar17) {
            puVar8 = (uint *)(piVar17 + 3);
            uVar5 = *(uint *)(uVar6 + 4) >> 0x10 & 0x7fff & (uVar19 >> 3) - 1;
            puVar18 = (uint *)(piVar9 + 3 + uVar5 * 2);
            puVar10 = puVar8 + uVar5 * 2;
            while (*puVar10 != 0xe) {
              if (uVar6 == *puVar10) {
                uVar19 = *puVar18;
                goto LAB_0045e32d;
              }
              puVar10 = puVar10 + 2;
              puVar18 = puVar18 + 2;
              if (puVar10 == (uint *)((int)puVar8 + uVar19)) {
                puVar18 = (uint *)(piVar9 + 3);
                puVar10 = puVar8;
              }
            }
          }
          else {
            piVar17 = piVar17 + 3;
            uVar5 = *(uint *)(uVar6 + 4) >> 0x10 & 0x7fff & (uVar19 >> 2) - 1;
            puVar18 = (uint *)(piVar9 + 3 + uVar5);
            piVar20 = piVar17 + uVar5;
            while( true ) {
              piVar21 = piVar20 + 1;
              if (*piVar20 == 0xe) break;
              if (uVar6 == *(uint *)(*piVar20 + 0x18)) {
                uVar19 = *puVar18;
                goto LAB_0045e32d;
              }
              puVar18 = puVar18 + 1;
              piVar20 = piVar21;
              if (piVar21 == (int *)((int)piVar17 + uVar19)) {
                puVar18 = (uint *)(piVar9 + 3);
                piVar20 = piVar17;
              }
            }
          }
        }
        uVar19 = 0;
      }
    }
  }
LAB_0045e32d:
  if ((uVar19 & 1) == 0) {
    uVar19 = 0;
  }
  else {
    uVar19 = uVar19 & 0xfffffffe;
  }
  if (uVar19 != 0) {
    if ((uVar7 & 2) == 0) {
      *(int *)(uVar19 + 0x28) = *(int *)(uVar19 + 0x28) + 1;
    }
    if ((uVar7 & 2) != 0) {
      FUN_0044f0a4(uVar7,0xb,puVar26);
    }
  }
LAB_0045e377:
  puVar18 = (uint *)&DAT_0000000e;
  local_58 = (uint **)0x0;
  bVar4 = FUN_0047ea80(param_1);
  if (CONCAT31(extraout_var,bVar4) != 0) {
    puVar18 = (uint *)(*(int *)(param_1 + 0x68) + 0x10);
    *puVar18 = *puVar18 | 8;
    return 0;
  }
  puVar10 = (uint *)(*(int *)(param_1 + 0x68) + 0x10);
  *puVar10 = *puVar10 & 0xfffffff7;
  FUN_0047eb70(param_1,param_2);
  local_48 = 1;
  if ((*(uint *)(*(int *)(param_1 + 0x68) + 0x10) & 0x82) != 0) {
    FUN_00442e70(param_1);
  }
  iVar11 = *(int *)(param_1 + 0x50);
  *(undefined4 *)(iVar11 + 0x18) = *(undefined4 *)(iVar11 + 0xc);
  *(undefined4 *)(iVar11 + 0x14) = *(undefined4 *)(iVar11 + 0xc);
  *(undefined4 *)(*(int *)(param_1 + 0x54) + 0x18) =
       *(undefined4 *)(*(int *)(param_1 + 0x54) + 0x14);
  iVar11 = param_1;
  do {
    if (((*(int *)(iVar11 + 0x2c) != 0xe) &&
        ((*(uint *)(*(int *)(iVar11 + 0x2c) + -0x10) & 0x1000000) == 0)) &&
       ((*(uint *)(iVar11 + 0x34) & 3) == 0)) {
      ppuVar22 = *(uint ***)(*(uint *)(iVar11 + 0x34) + 0xc);
      piVar9 = (int *)(iVar11 + 0x30);
      if (((uint)ppuVar22 & 3) == 0) {
        if ((ppuVar22 < *(uint ***)(*(int *)(param_1 + 0x4c) + 0xc)) ||
           (*(uint ***)(*(int *)(param_1 + 0x4c) + 0x14) <= ppuVar22)) {
          if (((uint)ppuVar22[1] & 0x8000) == 0) {
            *piVar9 = *piVar9;
          }
        }
        else {
          if (((uint)*ppuVar22 & 1) == 0) {
            puVar10 = FUN_0045e0ac(puVar26);
            if (((uint)ppuVar22[1] & 0x2000) != 0) {
              *ppuVar22 = (uint *)local_58;
              *ppuVar22 = (uint *)((uint)*ppuVar22 | 1);
              local_58 = ppuVar22;
            }
          }
          else {
            puVar10 = ppuVar22[2];
          }
          *piVar9 = *piVar9 - ((int)ppuVar22 - (int)puVar10);
        }
      }
    }
    FUN_0045e000(puVar26);
    FUN_0045e000(puVar26);
    FUN_0045e000(puVar26);
    FUN_0045e000(puVar26);
    FUN_0045e000(puVar26);
    FUN_0045e000(puVar26);
    FUN_0045e000(puVar26);
    FUN_0045e000(puVar26);
    FUN_0045e000(puVar26);
    FUN_0045e000(puVar26);
    iVar12 = *(int *)(iVar11 + 0x20);
    ppuVar22 = (uint **)(iVar11 + 0x20);
    ppuVar16 = (uint **)*ppuVar22;
    if (((uint)ppuVar16 & 3) == 0) {
      if ((ppuVar16 < *(uint ***)(*(int *)(param_1 + 0x4c) + 0xc)) ||
         (*(uint ***)(*(int *)(param_1 + 0x4c) + 0x14) <= ppuVar16)) {
        if (((uint)ppuVar16[1] & 0x8000) == 0) {
          *ppuVar22 = (uint *)ppuVar16;
        }
      }
      else {
        if (((uint)*ppuVar16 & 1) == 0) {
          puVar10 = FUN_0045e0ac(puVar26);
          if (((uint)ppuVar16[1] & 0x2000) != 0) {
            *ppuVar16 = (uint *)local_58;
            *ppuVar16 = (uint *)((uint)*ppuVar16 | 1);
            local_58 = ppuVar16;
          }
        }
        else {
          puVar10 = ppuVar16[2];
        }
        *ppuVar22 = puVar10;
      }
    }
    puVar10 = *ppuVar22;
    iVar12 = iVar12 - (int)puVar10;
    *(int *)(iVar11 + 0x28) = *(int *)(iVar11 + 0x28) - iVar12;
    *(int *)(iVar11 + 0x60) = *(int *)(iVar11 + 0x60) - iVar12;
    if (*(int *)(iVar11 + 0x24) != -1) {
      *(undefined4 *)(iVar11 + 0x24) = *(undefined4 *)(iVar11 + 0x60);
    }
    if (*(int *)(iVar11 + 0x2c) != 0xe) {
      ppiVar15 = (int **)(*(int *)(iVar11 + 0x2c) - iVar12);
      *(int ***)(iVar11 + 0x2c) = ppiVar15;
      ppuVar22 = *(uint ***)(iVar11 + 0x28);
      do {
        if (((uint)ppiVar15[-2] & 3) == 0) {
          if (*ppiVar15 == (int *)&DAT_0000000e) {
            uVar7 = 0;
          }
          else {
            uVar7 = (*ppiVar15)[-4];
          }
          if ((uVar7 & 0x1000000) == 0) {
            ppuVar16 = (uint **)ppiVar15[-2][3];
            ppiVar1 = ppiVar15 + -1;
            if (((uint)ppuVar16 & 3) == 0) {
              if ((ppuVar16 < *(uint ***)(*(int *)(param_1 + 0x4c) + 0xc)) ||
                 (*(uint ***)(*(int *)(param_1 + 0x4c) + 0x14) <= ppuVar16)) {
                if (((uint)ppuVar16[1] & 0x8000) == 0) {
                  *ppiVar1 = *ppiVar1;
                }
              }
              else {
                if (((uint)*ppuVar16 & 1) == 0) {
                  puVar8 = FUN_0045e0ac(puVar26);
                  if (((uint)ppuVar16[1] & 0x2000) != 0) {
                    *ppuVar16 = (uint *)local_58;
                    *ppuVar16 = (uint *)((uint)*ppuVar16 | 1);
                    local_58 = ppuVar16;
                  }
                }
                else {
                  puVar8 = ppuVar16[2];
                }
                *ppiVar1 = (int *)((int)*ppiVar1 - ((int)ppuVar16 - (int)puVar8));
              }
            }
          }
        }
        ppuVar16 = (uint **)(ppiVar15 + -2);
        ppuVar2 = (uint **)*ppuVar16;
        if (((uint)ppuVar2 & 3) == 0) {
          if ((ppuVar2 < *(uint ***)(*(int *)(param_1 + 0x4c) + 0xc)) ||
             (*(uint ***)(*(int *)(param_1 + 0x4c) + 0x14) <= ppuVar2)) {
            if (((uint)ppuVar2[1] & 0x8000) == 0) {
              *ppuVar16 = (uint *)ppuVar2;
            }
          }
          else {
            if (((uint)*ppuVar2 & 1) == 0) {
              puVar8 = FUN_0045e0ac(puVar26);
              if (((uint)ppuVar2[1] & 0x2000) != 0) {
                *ppuVar2 = (uint *)local_58;
                *ppuVar2 = (uint *)((uint)*ppuVar2 | 1);
                local_58 = ppuVar2;
              }
            }
            else {
              puVar8 = ppuVar2[2];
            }
            *ppuVar16 = puVar8;
          }
        }
        ppuVar16 = (uint **)(ppiVar15 + -3);
        ppuVar2 = (uint **)*ppuVar16;
        if (((uint)ppuVar2 & 3) == 0) {
          if ((ppuVar2 < *(uint ***)(*(int *)(param_1 + 0x4c) + 0xc)) ||
             (*(uint ***)(*(int *)(param_1 + 0x4c) + 0x14) <= ppuVar2)) {
            if (((uint)ppuVar2[1] & 0x8000) == 0) {
              *ppuVar16 = (uint *)ppuVar2;
            }
          }
          else {
            if (((uint)*ppuVar2 & 1) == 0) {
              puVar8 = FUN_0045e0ac(puVar26);
              if (((uint)ppuVar2[1] & 0x2000) != 0) {
                *ppuVar2 = (uint *)local_58;
                *ppuVar2 = (uint *)((uint)*ppuVar2 | 1);
                local_58 = ppuVar2;
              }
            }
            else {
              puVar8 = ppuVar2[2];
            }
            *ppuVar16 = puVar8;
          }
        }
        ppiVar15[-5] = (int *)((int)ppiVar15[-5] - iVar12);
        if (*ppiVar15 != (int *)&DAT_0000000e) {
          *ppiVar15 = (int *)((int)*ppiVar15 - iVar12);
        }
        ppuVar16 = (uint **)(ppiVar15 + -6);
        do {
          ppuVar2 = (uint **)*ppuVar16;
          if (((uint)ppuVar2 & 3) == 0) {
            if ((ppuVar2 < *(uint ***)(*(int *)(param_1 + 0x4c) + 0xc)) ||
               (*(uint ***)(*(int *)(param_1 + 0x4c) + 0x14) <= ppuVar2)) {
              if (((uint)ppuVar2[1] & 0x8000) == 0) {
                *ppuVar16 = (uint *)ppuVar2;
              }
            }
            else {
              if (((uint)*ppuVar2 & 1) == 0) {
                puVar8 = FUN_0045e0ac(puVar26);
                if (((uint)ppuVar2[1] & 0x2000) != 0) {
                  *ppuVar2 = (uint *)local_58;
                  *ppuVar2 = (uint *)((uint)*ppuVar2 | 1);
                  local_58 = ppuVar2;
                }
              }
              else {
                puVar8 = ppuVar2[2];
              }
              *ppuVar16 = puVar8;
            }
          }
          ppuVar16 = ppuVar16 + -1;
        } while (ppuVar22 <= ppuVar16);
        ppuVar22 = (uint **)(ppiVar15 + 1);
        ppiVar15 = (int **)*ppiVar15;
      } while (ppiVar15 != (int **)&DAT_0000000e);
      ppuVar16 = (uint **)((int)puVar10 + ((puVar10[2] + 0xf & 0xfffffffc) - 4));
      do {
        ppuVar2 = (uint **)*ppuVar16;
        if (((uint)ppuVar2 & 3) == 0) {
          if ((ppuVar2 < *(uint ***)(*(int *)(param_1 + 0x4c) + 0xc)) ||
             (*(uint ***)(*(int *)(param_1 + 0x4c) + 0x14) <= ppuVar2)) {
            if (((uint)ppuVar2[1] & 0x8000) == 0) {
              *ppuVar16 = (uint *)ppuVar2;
            }
          }
          else {
            if (((uint)*ppuVar2 & 1) == 0) {
              puVar10 = FUN_0045e0ac(puVar26);
              if (((uint)ppuVar2[1] & 0x2000) != 0) {
                *ppuVar2 = (uint *)local_58;
                *ppuVar2 = (uint *)((uint)*ppuVar2 | 1);
                local_58 = ppuVar2;
              }
            }
            else {
              puVar10 = ppuVar2[2];
            }
            *ppuVar16 = puVar10;
          }
        }
        ppuVar16 = ppuVar16 + -1;
      } while (ppuVar22 <= ppuVar16);
    }
    iVar11 = *(int *)(iVar11 + 0xc);
  } while (iVar11 != param_1);
  for (puVar10 = *(uint **)(*(int *)(*(int *)(param_1 + 0x68) + 0x4c) + 4); puVar10 != (uint *)0x0;
      puVar10 = (uint *)puVar10[0xb]) {
    if ((((*puVar10 & 10) == 10) && (puVar10 != *(uint **)(param_1 + 0x4c))) &&
       (puVar10 != *(uint **)(param_1 + 0x50))) {
      puVar10[6] = puVar10[3];
      while (puVar10[6] != puVar10[5]) {
        ppuVar22 = (uint **)puVar10[6];
        ppuVar16 = (uint **)*ppuVar22;
        if (((uint)ppuVar16 & 3) == 0) {
          if ((ppuVar16 < *(uint ***)(*(int *)(param_1 + 0x4c) + 0xc)) ||
             (*(uint ***)(*(int *)(param_1 + 0x4c) + 0x14) <= ppuVar16)) {
            if (((uint)ppuVar16[1] & 0x8000) == 0) {
              *ppuVar22 = (uint *)ppuVar16;
            }
          }
          else {
            if (((uint)*ppuVar16 & 1) == 0) {
              puVar8 = FUN_0045e0ac(puVar26);
              if (((uint)ppuVar16[1] & 0x2000) != 0) {
                *ppuVar16 = (uint *)local_58;
                *ppuVar16 = (uint *)((uint)*ppuVar16 | 1);
                local_58 = ppuVar16;
              }
            }
            else {
              puVar8 = ppuVar16[2];
            }
            *ppuVar22 = puVar8;
          }
        }
        if (((((uint)ppuVar22 & 3) == 0) && (((uint)ppuVar22[1] & 6) == 0)) &&
           (uVar7 = (uint)ppuVar22[2] >> 2, uVar7 != 0)) {
          ppuVar16 = ppuVar22 + 3;
          do {
            ppuVar2 = (uint **)*ppuVar16;
            if (((uint)ppuVar2 & 3) == 0) {
              if ((ppuVar2 < *(uint ***)(*(int *)(param_1 + 0x4c) + 0xc)) ||
                 (*(uint ***)(*(int *)(param_1 + 0x4c) + 0x14) <= ppuVar2)) {
                if (((uint)ppuVar2[1] & 0x8000) == 0) {
                  *ppuVar16 = (uint *)ppuVar2;
                }
              }
              else {
                if (((uint)*ppuVar2 & 1) == 0) {
                  puVar8 = FUN_0045e0ac(puVar26);
                  if (((uint)ppuVar2[1] & 0x2000) != 0) {
                    *ppuVar2 = (uint *)local_58;
                    *ppuVar2 = (uint *)((uint)*ppuVar2 | 1);
                    local_58 = ppuVar2;
                  }
                }
                else {
                  puVar8 = ppuVar2[2];
                }
                *ppuVar16 = puVar8;
              }
            }
            ppuVar16 = ppuVar16 + 1;
            uVar7 = uVar7 - 1;
          } while (uVar7 != 0);
        }
        puVar10[6] = (int)ppuVar22 + ((int)ppuVar22[2] + 0xfU & 0xfffffffc);
      }
    }
  }
  local_4c = puVar18;
  if ((*(uint *)(*(int *)(param_1 + 0x68) + 0x10) & 0x100) == 0) {
    for (puVar10 = *(uint **)(*(int *)(*(int *)(param_1 + 0x68) + 0x4c) + 4); puVar10 != (uint *)0x0
        ; puVar10 = (uint *)puVar10[0xb]) {
      if ((*puVar10 & 9) == 9) {
        piVar9 = (int *)puVar10[10];
        while (piVar17 = piVar9, piVar17 != (int *)puVar10[9]) {
          piVar9 = piVar17 + -1;
          ppuVar22 = (uint **)*piVar9;
          if (((uint)ppuVar22[1] & 0x2000) == 0) {
            bVar4 = false;
            ppuVar16 = (uint **)*ppuVar22;
            if (((uint)ppuVar16 & 3) == 0) {
              if ((ppuVar16 < *(uint ***)(*(int *)(param_1 + 0x4c) + 0xc)) ||
                 (*(uint ***)(*(int *)(param_1 + 0x4c) + 0x14) <= ppuVar16)) {
                if (((uint)ppuVar16[1] & 0x8000) == 0) {
                  *ppuVar22 = (uint *)ppuVar16;
                  bVar4 = true;
                }
              }
              else {
                if (((uint)*ppuVar16 & 1) == 0) {
                  puVar18 = FUN_0045e0ac(puVar26);
                  if (((uint)ppuVar16[1] & 0x2000) != 0) {
                    *ppuVar16 = (uint *)local_58;
                    *ppuVar16 = (uint *)((uint)*ppuVar16 | 1);
                    local_58 = ppuVar16;
                  }
                }
                else {
                  puVar18 = ppuVar16[2];
                }
                *ppuVar22 = puVar18;
                bVar4 = true;
              }
            }
            if (((((uint)ppuVar22 & 3) == 0) && (((uint)ppuVar22[1] & 6) == 0)) &&
               (uVar7 = (uint)ppuVar22[2] >> 2, uVar7 != 0)) {
              ppuVar22 = ppuVar22 + 3;
              do {
                ppuVar16 = (uint **)*ppuVar22;
                if (((uint)ppuVar16 & 3) == 0) {
                  if ((ppuVar16 < *(uint ***)(*(int *)(param_1 + 0x4c) + 0xc)) ||
                     (*(uint ***)(*(int *)(param_1 + 0x4c) + 0x14) <= ppuVar16)) {
                    if (((uint)ppuVar16[1] & 0x8000) == 0) {
                      *ppuVar22 = (uint *)ppuVar16;
                      bVar4 = true;
                    }
                  }
                  else {
                    if (((uint)*ppuVar16 & 1) == 0) {
                      puVar18 = FUN_0045e0ac(puVar26);
                      if (((uint)ppuVar16[1] & 0x2000) != 0) {
                        *ppuVar16 = (uint *)local_58;
                        *ppuVar16 = (uint *)((uint)*ppuVar16 | 1);
                        local_58 = ppuVar16;
                      }
                    }
                    else {
                      puVar18 = ppuVar16[2];
                    }
                    *ppuVar22 = puVar18;
                    bVar4 = true;
                  }
                }
                ppuVar22 = ppuVar22 + 1;
                uVar7 = uVar7 - 1;
              } while (uVar7 != 0);
            }
            puVar18 = local_4c;
            if (!bVar4) {
              *(uint *)(*piVar9 + 4) = *(uint *)(*piVar9 + 4) & 0xffffbfff;
              piVar20 = (int *)puVar10[9];
              *piVar9 = *piVar20;
              puVar10[9] = (uint)(piVar20 + 1);
              piVar9 = piVar17;
            }
          }
          else {
            *(uint *)(*piVar9 + 4) = *(uint *)(*piVar9 + 4) & 0xffffbfff;
            piVar20 = (int *)puVar10[9];
            *piVar9 = *piVar20;
            puVar10[9] = (uint)(piVar20 + 1);
            piVar9 = piVar17;
            if (((((uint)ppuVar22 & 3) == 0) && (((uint)*ppuVar22 & 1) == 0)) &&
               (((uint)ppuVar22[1] & 0x80f8) != 0x80f8)) {
              puVar8 = *ppuVar22;
              if ((puVar8[9] & 1) == 0) {
                puVar13 = (uint *)puVar8[8];
              }
              else {
                puVar13 = *(uint **)(*(int *)(*(int *)(param_1 + 0x38) + 0xd8) + puVar8[9] + 3);
              }
              if (puVar13 == (uint *)&DAT_0000000e) {
                if (puVar18 != (uint *)&DAT_0000000e) {
                  if ((puVar8[9] & 1) == 0) {
                    puVar8[9] = (uint)puVar18;
                  }
                  else {
                    *(uint **)(*(int *)(*(int *)(param_1 + 0x38) + 0xd8) + -1 + puVar8[9]) = puVar18
                    ;
                  }
                }
                puVar13 = (uint *)0x0;
                puVar18 = puVar8;
                local_4c = puVar8;
              }
              *ppuVar22 = puVar13;
              *ppuVar22 = (uint *)((uint)*ppuVar22 | 1);
              if ((puVar8[9] & 1) == 0) {
                puVar8[8] = (uint)ppuVar22;
              }
              else {
                *(uint ***)(*(int *)(*(int *)(param_1 + 0x38) + 0xd8) + puVar8[9] + 3) = ppuVar22;
              }
            }
          }
        }
      }
    }
  }
  else {
    puVar10 = (uint *)(*(int *)(param_1 + 0x68) + 0x10);
    *puVar10 = *puVar10 & 0xfffffeff;
    for (puVar10 = *(uint **)(*(int *)(*(int *)(param_1 + 0x68) + 0x4c) + 4); puVar10 != (uint *)0x0
        ; puVar10 = (uint *)puVar10[0xb]) {
      if ((*puVar10 & 9) == 9) {
        uVar7 = puVar10[10];
        while (uVar7 != puVar10[9]) {
          piVar17 = (int *)(uVar7 - 4);
          puVar8 = (uint *)(*piVar17 + 4);
          *puVar8 = *puVar8 & 0xffffbfff;
          piVar9 = (int *)puVar10[9];
          *piVar17 = *piVar9;
          puVar10[9] = (uint)(piVar9 + 1);
        }
      }
    }
    for (puVar10 = *(uint **)(*(int *)(*(int *)(param_1 + 0x68) + 0x4c) + 4); puVar10 != (uint *)0x0
        ; puVar10 = (uint *)puVar10[0xb]) {
      if ((*puVar10 & 9) == 9) {
        puVar10[6] = puVar10[3];
        while (puVar10[6] != puVar10[5]) {
          ppuVar22 = (uint **)puVar10[6];
          bVar4 = false;
          ppuVar16 = (uint **)*ppuVar22;
          if (((uint)ppuVar16 & 3) == 0) {
            if ((ppuVar16 < *(uint ***)(*(int *)(param_1 + 0x4c) + 0xc)) ||
               (*(uint ***)(*(int *)(param_1 + 0x4c) + 0x14) <= ppuVar16)) {
              bVar4 = ((uint)ppuVar16[1] & 0x8000) == 0;
              if (bVar4) {
                *ppuVar22 = (uint *)ppuVar16;
              }
            }
            else {
              if (((uint)*ppuVar16 & 1) == 0) {
                puVar8 = FUN_0045e0ac(puVar26);
                if (((uint)ppuVar16[1] & 0x2000) != 0) {
                  *ppuVar16 = (uint *)local_58;
                  *ppuVar16 = (uint *)((uint)*ppuVar16 | 1);
                  local_58 = ppuVar16;
                }
              }
              else {
                puVar8 = ppuVar16[2];
              }
              *ppuVar22 = puVar8;
              bVar4 = true;
            }
          }
          if (((((uint)ppuVar22 & 3) == 0) && (((uint)ppuVar22[1] & 6) == 0)) &&
             (uVar7 = (uint)ppuVar22[2] >> 2, uVar7 != 0)) {
            ppuVar16 = ppuVar22 + 3;
            do {
              ppuVar2 = (uint **)*ppuVar16;
              if (((uint)ppuVar2 & 3) == 0) {
                if ((ppuVar2 < *(uint ***)(*(int *)(param_1 + 0x4c) + 0xc)) ||
                   (*(uint ***)(*(int *)(param_1 + 0x4c) + 0x14) <= ppuVar2)) {
                  if (((uint)ppuVar2[1] & 0x8000) == 0) {
                    *ppuVar16 = (uint *)ppuVar2;
                    bVar4 = true;
                  }
                }
                else {
                  if (((uint)*ppuVar2 & 1) == 0) {
                    puVar8 = FUN_0045e0ac(puVar26);
                    if (((uint)ppuVar2[1] & 0x2000) != 0) {
                      *ppuVar2 = (uint *)local_58;
                      *ppuVar2 = (uint *)((uint)*ppuVar2 | 1);
                      local_58 = ppuVar2;
                    }
                  }
                  else {
                    puVar8 = ppuVar2[2];
                  }
                  *ppuVar16 = puVar8;
                  bVar4 = true;
                }
              }
              ppuVar16 = ppuVar16 + 1;
              uVar7 = uVar7 - 1;
            } while (uVar7 != 0);
          }
          if (bVar4) {
            FUN_0044112c(puVar26);
          }
          puVar10[6] = (int)ppuVar22 + ((int)ppuVar22[2] + 0xfU & 0xfffffffc);
        }
      }
    }
  }
  do {
    do {
      iVar11 = *(int *)(param_1 + 0x54);
      for (ppuVar22 = *(uint ***)(iVar11 + 0x18); ppuVar22 != *(uint ***)(iVar11 + 0x14);
          ppuVar22 = (uint **)((int)ppuVar22 + ((int)ppuVar22[2] + 0xfU & 0xfffffffc))) {
        if (((uint)ppuVar22[1] & 0x2000) == 0) {
          bVar4 = false;
          ppuVar16 = (uint **)*ppuVar22;
          if (((uint)ppuVar16 & 3) == 0) {
            if ((ppuVar16 < *(uint ***)(*(int *)(param_1 + 0x4c) + 0xc)) ||
               (*(uint ***)(*(int *)(param_1 + 0x4c) + 0x14) <= ppuVar16)) {
              if (((uint)ppuVar16[1] & 0x8000) == 0) {
                *ppuVar22 = (uint *)ppuVar16;
                bVar4 = true;
              }
            }
            else {
              if (((uint)*ppuVar16 & 1) == 0) {
                puVar10 = FUN_0045e0ac(puVar26);
                puVar18 = local_4c;
                if (((uint)ppuVar16[1] & 0x2000) != 0) {
                  *ppuVar16 = (uint *)local_58;
                  *ppuVar16 = (uint *)((uint)*ppuVar16 | 1);
                  local_58 = ppuVar16;
                }
              }
              else {
                puVar10 = ppuVar16[2];
              }
              *ppuVar22 = puVar10;
              bVar4 = true;
            }
          }
          if (((((uint)ppuVar22 & 3) == 0) && (((uint)ppuVar22[1] & 6) == 0)) &&
             (uVar7 = (uint)ppuVar22[2] >> 2, puVar18 = local_4c, uVar7 != 0)) {
            ppuVar16 = ppuVar22 + 3;
            do {
              ppuVar2 = (uint **)*ppuVar16;
              if (((uint)ppuVar2 & 3) == 0) {
                if ((ppuVar2 < *(uint ***)(*(int *)(param_1 + 0x4c) + 0xc)) ||
                   (*(uint ***)(*(int *)(param_1 + 0x4c) + 0x14) <= ppuVar2)) {
                  if (((uint)ppuVar2[1] & 0x8000) == 0) {
                    *ppuVar16 = (uint *)ppuVar2;
                    bVar4 = true;
                  }
                }
                else {
                  if (((uint)*ppuVar2 & 1) == 0) {
                    puVar18 = FUN_0045e0ac(puVar26);
                    if (((uint)ppuVar2[1] & 0x2000) != 0) {
                      *ppuVar2 = (uint *)local_58;
                      *ppuVar2 = (uint *)((uint)*ppuVar2 | 1);
                      local_58 = ppuVar2;
                    }
                  }
                  else {
                    puVar18 = ppuVar2[2];
                  }
                  *ppuVar16 = puVar18;
                  bVar4 = true;
                }
              }
              ppuVar16 = ppuVar16 + 1;
              uVar7 = uVar7 - 1;
              puVar18 = local_4c;
            } while (uVar7 != 0);
          }
          if (((bVar4) && (((uint)ppuVar22[1] & 0x8000) != 0)) &&
             ((((uint)ppuVar22[1] & 6) == 0 && (((uint)ppuVar22[1] & 0x4000) == 0)))) {
            FUN_0044112c(puVar26);
            puVar18 = local_4c;
          }
        }
      }
      *(uint ***)(iVar11 + 0x18) = ppuVar22;
      iVar11 = *(int *)(param_1 + 0x50);
      for (ppuVar22 = *(uint ***)(iVar11 + 0x18); ppuVar22 != *(uint ***)(iVar11 + 0x14);
          ppuVar22 = (uint **)((int)ppuVar22 + ((int)ppuVar22[2] + 0xfU & 0xfffffffc))) {
        if (((uint)ppuVar22[1] & 0x2000) == 0) {
          ppuVar16 = (uint **)*ppuVar22;
          if (((uint)ppuVar16 & 3) == 0) {
            if ((ppuVar16 < *(uint ***)(*(int *)(param_1 + 0x4c) + 0xc)) ||
               (*(uint ***)(*(int *)(param_1 + 0x4c) + 0x14) <= ppuVar16)) {
              if (((uint)ppuVar16[1] & 0x8000) == 0) {
                *ppuVar22 = (uint *)ppuVar16;
              }
            }
            else {
              if (((uint)*ppuVar16 & 1) == 0) {
                puVar10 = FUN_0045e0ac(puVar26);
                puVar18 = local_4c;
                if (((uint)ppuVar16[1] & 0x2000) != 0) {
                  *ppuVar16 = (uint *)local_58;
                  *ppuVar16 = (uint *)((uint)*ppuVar16 | 1);
                  local_58 = ppuVar16;
                }
              }
              else {
                puVar10 = ppuVar16[2];
              }
              *ppuVar22 = puVar10;
            }
          }
          if (((((uint)ppuVar22 & 3) == 0) && (((uint)ppuVar22[1] & 6) == 0)) &&
             (uVar7 = (uint)ppuVar22[2] >> 2, puVar18 = local_4c, uVar7 != 0)) {
            ppuVar16 = ppuVar22 + 3;
            do {
              ppuVar2 = (uint **)*ppuVar16;
              if (((uint)ppuVar2 & 3) == 0) {
                if ((ppuVar2 < *(uint ***)(*(int *)(param_1 + 0x4c) + 0xc)) ||
                   (*(uint ***)(*(int *)(param_1 + 0x4c) + 0x14) <= ppuVar2)) {
                  if (((uint)ppuVar2[1] & 0x8000) == 0) {
                    *ppuVar16 = (uint *)ppuVar2;
                  }
                }
                else {
                  if (((uint)*ppuVar2 & 1) == 0) {
                    puVar18 = FUN_0045e0ac(puVar26);
                    if (((uint)ppuVar2[1] & 0x2000) != 0) {
                      *ppuVar2 = (uint *)local_58;
                      *ppuVar2 = (uint *)((uint)*ppuVar2 | 1);
                      local_58 = ppuVar2;
                    }
                  }
                  else {
                    puVar18 = ppuVar2[2];
                  }
                  *ppuVar16 = puVar18;
                }
              }
              ppuVar16 = ppuVar16 + 1;
              uVar7 = uVar7 - 1;
              puVar18 = local_4c;
            } while (uVar7 != 0);
          }
        }
      }
      *(uint ***)(iVar11 + 0x18) = ppuVar22;
    } while ((*(int *)(*(int *)(param_1 + 0x50) + 0x18) != *(int *)(*(int *)(param_1 + 0x50) + 0x14)
             ) || (*(int *)(*(int *)(param_1 + 0x54) + 0x18) !=
                   *(int *)(*(int *)(param_1 + 0x54) + 0x14)));
    do {
      if ((puVar18 != (uint *)&DAT_0000000e) || (local_58 != (uint **)0x0)) {
        if (puVar18 == (uint *)&DAT_0000000e) {
          ppuVar22 = (uint **)local_58[2];
          local_58 = (uint **)((uint)*local_58 & 0xfffffffc);
        }
        else {
          if ((puVar18[9] & 1) == 0) {
            ppuVar22 = (uint **)puVar18[8];
          }
          else {
            ppuVar22 = *(uint ***)(*(int *)(*(int *)(param_1 + 0x38) + 0xd8) + puVar18[9] + 3);
          }
          puVar10 = *ppuVar22;
          uVar7 = (uint)puVar10 & 0xfffffffc;
          *ppuVar22 = puVar18;
          *ppuVar22 = (uint *)((uint)*ppuVar22 | (uint)puVar10 & 3);
          if (uVar7 == 0) {
            puVar10 = (uint *)puVar18[9];
            if (((uint)puVar10 & 1) != 0) {
              puVar10 = *(uint **)(*(int *)(*(int *)(param_1 + 0x38) + 0xd8) + -1 + (int)puVar10);
            }
            if ((puVar18[9] & 1) == 0) {
              puVar18[9] = 0xe;
            }
            else {
              *(undefined4 *)(*(int *)(*(int *)(param_1 + 0x38) + 0xd8) + -1 + puVar18[9]) = 0xe;
            }
            if ((puVar18[9] & 1) == 0) {
              puVar18[8] = 0xe;
              puVar18 = puVar10;
            }
            else {
              *(undefined4 *)(*(int *)(*(int *)(param_1 + 0x38) + 0xd8) + puVar18[9] + 3) = 0xe;
              puVar18 = puVar10;
            }
          }
          else if ((puVar18[9] & 1) == 0) {
            puVar18[8] = uVar7;
          }
          else {
            *(uint *)(*(int *)(*(int *)(param_1 + 0x38) + 0xd8) + puVar18[9] + 3) = uVar7;
          }
          *ppuVar22 = (uint *)((uint)*ppuVar22 & 0xfffffffe);
          local_4c = puVar18;
        }
        ppuVar16 = (uint **)*ppuVar22;
        if (((uint)ppuVar16 & 3) == 0) {
          if ((ppuVar16 < *(uint ***)(*(int *)(param_1 + 0x4c) + 0xc)) ||
             (*(uint ***)(*(int *)(param_1 + 0x4c) + 0x14) <= ppuVar16)) {
            puVar18 = local_4c;
            if (((uint)ppuVar16[1] & 0x8000) == 0) {
              *ppuVar22 = (uint *)ppuVar16;
            }
          }
          else {
            if (((uint)*ppuVar16 & 1) == 0) {
              puVar18 = FUN_0045e0ac(puVar26);
              if (((uint)ppuVar16[1] & 0x2000) != 0) {
                *ppuVar16 = (uint *)local_58;
                *ppuVar16 = (uint *)((uint)*ppuVar16 | 1);
                local_58 = ppuVar16;
              }
            }
            else {
              puVar18 = ppuVar16[2];
            }
            *ppuVar22 = puVar18;
            puVar18 = local_4c;
          }
        }
        bVar4 = false;
        if (((((uint)ppuVar22 & 3) == 0) && (((uint)ppuVar22[1] & 6) == 0)) &&
           (uVar7 = (uint)ppuVar22[2] >> 2, puVar18 = local_4c, uVar7 != 0)) {
          ppuVar16 = ppuVar22 + 3;
          do {
            bVar23 = false;
            ppuVar2 = (uint **)*ppuVar16;
            if (((uint)ppuVar2 & 3) == 0) {
              if ((ppuVar2 < *(uint ***)(*(int *)(param_1 + 0x4c) + 0xc)) ||
                 (*(uint ***)(*(int *)(param_1 + 0x4c) + 0x14) <= ppuVar2)) {
                if (((uint)ppuVar2[1] & 0x8000) == 0) {
                  bVar23 = ((uint)*ppuVar2 & 2) != 0;
                  bVar4 = true;
                  *ppuVar16 = (uint *)ppuVar2;
                }
              }
              else {
                if (((uint)*ppuVar2 & 1) == 0) {
                  puVar18 = FUN_0045e0ac(puVar26);
                  if (((uint)ppuVar2[1] & 0x2000) != 0) {
                    *ppuVar2 = (uint *)local_58;
                    *ppuVar2 = (uint *)((uint)*ppuVar2 | 1);
                    local_58 = ppuVar2;
                  }
                  bVar23 = true;
                }
                else {
                  puVar18 = ppuVar2[2];
                }
                if (((uint)*ppuVar2 & 2) != 0) {
                  bVar23 = true;
                }
                bVar4 = true;
                *ppuVar16 = puVar18;
              }
            }
            if (bVar23) {
              puVar18 = *ppuVar16;
              iVar11 = *(int *)(*(int *)(param_1 + 0x38) + 0x9c);
              if ((iVar11 == 0xe) ||
                 (iVar11 = FUN_00481f60(param_1,iVar11,(uint)ppuVar22,
                                        ((uint)((int)ppuVar16 + (-0xc - (int)ppuVar22)) >> 2) * 2 +
                                        3,(uint)puVar18), iVar11 == 0)) {
                *ppuVar16 = puVar18;
              }
              else {
                local_48 = local_48 | 8;
                *ppuVar16 = (uint *)&DAT_0000000e;
                *ppuVar2 = (uint *)((uint)*ppuVar2 | 2);
              }
            }
            ppuVar16 = ppuVar16 + 1;
            uVar7 = uVar7 - 1;
            puVar18 = local_4c;
          } while (uVar7 != 0);
        }
        if ((((bVar4) && (((uint)ppuVar22[1] & 0x8000) != 0)) && (((uint)ppuVar22[1] & 6) == 0)) &&
           (((uint)ppuVar22[1] & 0x4000) == 0)) {
          FUN_0044112c(puVar26);
          puVar18 = local_4c;
        }
      }
    } while ((puVar18 != (uint *)&DAT_0000000e) || (local_58 != (uint **)0x0));
  } while ((*(int *)(*(int *)(param_1 + 0x50) + 0x18) != *(int *)(*(int *)(param_1 + 0x50) + 0x14))
          || (*(int *)(*(int *)(param_1 + 0x54) + 0x18) != *(int *)(*(int *)(param_1 + 0x54) + 0x14)
             ));
  iVar11 = *(int *)(param_1 + 0x50);
  iVar12 = *(int *)(param_1 + 0x4c);
  iVar14 = param_1;
  do {
    if (iVar11 == *(int *)(iVar14 + 0x50)) {
      *(int *)(iVar14 + 0x50) = iVar12;
    }
    if (iVar12 == *(int *)(iVar14 + 0x4c)) {
      *(int *)(iVar14 + 0x4c) = iVar11;
    }
    iVar14 = *(int *)(iVar14 + 0xc);
  } while (iVar14 != param_1);
  iVar11 = *(int *)(param_1 + 0x50);
  *(undefined4 *)(iVar11 + 0x18) = *(undefined4 *)(iVar11 + 0xc);
  *(undefined4 *)(iVar11 + 0x14) = *(undefined4 *)(iVar11 + 0xc);
  *(undefined4 *)(*(int *)(param_1 + 0x54) + 0x18) =
       *(undefined4 *)(*(int *)(param_1 + 0x54) + 0x14);
  FUN_0047eb10(param_1);
  iVar11 = *(int *)(param_1 + 0x38);
  if ((((*(uint *)(iVar11 + 0xb8) & 3) == 0) && ((*(uint *)(iVar11 + 0xb4) & 3) == 0)) &&
     (((*(uint *)(iVar11 + 0xb0) & 1) != 0 && (((int)*(uint *)(iVar11 + 0xb0) >> 1 & local_48) != 0)
      ))) {
    EsPostAsyncMessage(param_1,*(uint *)(iVar11 + 0xb4),*(uint *)(iVar11 + 0xb8),1);
  }
  uVar7 = *(uint *)(*(int *)(param_1 + 0x68) + 0xf4);
  if ((((uVar7 & 0x10001) == 1) && ((uVar7 & 0x10) != 0)) && (!bVar3)) {
    *(undefined4 *)(*(int *)(param_1 + 0x4c) + 0x10) =
         *(undefined4 *)(*(int *)(param_1 + 0x4c) + 0x14);
  }
  return 0;
}

