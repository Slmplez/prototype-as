/* Ghidra-generated pseudocode; address 00421a7c. */

int * __cdecl EsAllocateObject(int param_1,int param_2,uint param_3,int param_4,undefined4 *param_5)

{
  undefined4 *puVar1;
  bool bVar2;
  undefined4 *puVar3;
  uint uVar4;
  uint *puVar5;
  uint *puVar6;
  uint *puVar7;
  int *piVar8;
  int *piVar9;
  undefined4 *puVar10;
  int iVar11;
  int *piVar12;
  int *extraout_EDX;
  uint uVar13;
  uint uVar14;
  ushort uVar15;
  uint uVar16;
  int *piVar17;
  ulonglong uVar18;
  undefined *puVar19;
  undefined *puVar20;
  undefined *puVar21;
  uint local_1c;
  
                    /* 0x1a7c  4  EsAllocateObject */
  puVar19 = &stack0xfffffffc;
  puVar20 = &stack0xfffffffc;
  if (param_4 != 0) {
    puVar10 = *(undefined4 **)(param_1 + 0x28);
    puVar3 = param_5;
    iVar11 = param_4;
    do {
      puVar1 = (undefined4 *)*puVar3;
      puVar3 = puVar3 + 1;
      puVar10 = puVar10 + -1;
      *puVar10 = *puVar1;
      iVar11 = iVar11 + -1;
    } while (iVar11 != 0);
    *(undefined4 **)(param_1 + 0x28) = puVar10;
  }
  if (0x3fffffff < param_3) {
    piVar12 = (int *)0x0;
    goto LAB_004220bc;
  }
  bVar2 = false;
  uVar16 = *(uint *)(*(int *)(param_1 + 0x68) + 0xf4);
  puVar21 = &stack0xfffffffc;
  if (((uVar16 & 0x10001) == 1) && (puVar21 = &stack0xfffffffc, (uVar16 & 0x10) != 0)) {
    iVar11 = *(int *)(param_1 + 0x4c);
    if (*(uint *)(iVar11 + 0x14) < *(uint *)(iVar11 + 0x10)) {
      bVar2 = true;
    }
    else if (*(int *)(iVar11 + 0x24) == 0) {
      *(int *)(iVar11 + 0x10) = *(int *)(iVar11 + 4) + *(int *)(iVar11 + 0xc);
    }
    else {
      *(undefined4 *)(iVar11 + 0x10) = *(undefined4 *)(iVar11 + 0x24);
    }
    puVar21 = &stack0xfffffffc;
    if (((uVar16 & 2) == 0) &&
       (puVar21 = &stack0xfffffffc,
       param_2 != *(int *)(*(int *)(*(int *)(param_1 + 0x38) + 0x38) + 0x10))) {
      uVar4 = *(uint *)(param_1 + 0x34);
      uVar13 = 0;
      if ((uVar4 & 1) == 0) {
        puVar19 = &stack0xfffffffc;
        if ((uVar4 & 3) == 0) {
          local_1c = *(uint *)(uVar4 + 0x14);
          uVar4 = *(uint *)(uVar4 + 0x18);
          goto LAB_00421be1;
        }
      }
      else {
        local_1c = FUN_0047fa10(param_1,uVar4);
        uVar4 = FUN_0047fa70(param_1,uVar4);
        if ((2 < local_1c) && (puVar20 = puVar19, 2 < uVar4)) {
LAB_00421be1:
          piVar12 = *(int **)(local_1c + 0xc);
          puVar19 = puVar20;
          if ((((uint)piVar12 & 3) == 0) &&
             (*(int *)(*(int *)(*(int *)(param_1 + 0x38) + 0x28) + 0x10) == *piVar12)) {
            piVar17 = *(int **)(local_1c + 0x14);
            uVar13 = piVar17[2];
            if (*(int *)(*(int *)(*(int *)(param_1 + 0x38) + 0xec) + 0x10) == *piVar17) {
              puVar5 = (uint *)(piVar17 + 3);
              uVar14 = *(uint *)(uVar4 + 4) >> 0x10 & 0x7fff & (uVar13 >> 3) - 1;
              puVar6 = (uint *)(piVar12 + 3 + uVar14 * 2);
              puVar7 = puVar5 + uVar14 * 2;
              while (*puVar7 != 0xe) {
                if (uVar4 == *puVar7) {
                  uVar13 = *puVar6;
                  goto LAB_00421cfc;
                }
                puVar7 = puVar7 + 2;
                puVar6 = puVar6 + 2;
                if (puVar7 == (uint *)((int)puVar5 + uVar13)) {
                  puVar6 = (uint *)(piVar12 + 3);
                  puVar7 = puVar5;
                }
              }
            }
            else {
              piVar17 = piVar17 + 3;
              uVar14 = *(uint *)(uVar4 + 4) >> 0x10 & 0x7fff & (uVar13 >> 2) - 1;
              puVar6 = (uint *)(piVar12 + 3 + uVar14);
              piVar8 = piVar17 + uVar14;
              while( true ) {
                piVar9 = piVar8 + 1;
                if (*piVar8 == 0xe) break;
                if (uVar4 == *(uint *)(*piVar8 + 0x18)) {
                  uVar13 = *puVar6;
                  goto LAB_00421cfc;
                }
                puVar6 = puVar6 + 1;
                piVar8 = piVar9;
                if (piVar9 == (int *)((int)piVar17 + uVar13)) {
                  puVar6 = (uint *)(piVar12 + 3);
                  piVar8 = piVar17;
                }
              }
            }
            uVar13 = 0;
          }
        }
      }
LAB_00421cfc:
      if ((uVar13 & 1) == 0) {
        uVar13 = 0;
      }
      else {
        uVar13 = uVar13 & 0xfffffffe;
      }
      puVar21 = puVar19;
      if (uVar13 != 0) {
        uVar15 = *(ushort *)(param_2 + 0x1e) & 6;
        uVar4 = param_3;
        if ((uVar15 != 6) && ((*(ushort *)(param_2 + 0x1e) & 6) != 0)) {
          if (uVar15 == 4) {
            uVar4 = param_3 + 1 >> 1;
          }
          else {
            uVar4 = param_3 + 3 >> 2;
          }
        }
        iVar11 = uVar4 + *(int *)(param_2 + 0x18) + 3;
        if ((uVar16 & 2) == 0) {
          *(int *)(uVar13 + 0x1c) = *(int *)(uVar13 + 0x1c) + iVar11;
          *(int *)(uVar13 + 0x18) = *(int *)(uVar13 + 0x18) + 1;
        }
        if (((uVar16 & 2) != 0) &&
           (FUN_0044f0a4(param_2,8,puVar19), puVar21 = puVar19, extraout_EDX != (int *)0x0)) {
          *extraout_EDX = iVar11;
        }
      }
    }
  }
  uVar15 = *(ushort *)(param_2 + 0x1e) & 6;
  if ((*(ushort *)(param_2 + 0x1e) & 6) == 0) {
    uVar16 = (*(int *)(param_2 + 0x18) >> 1) + param_3;
    if (uVar16 < 0x3ffffffd) {
      uVar4 = uVar16 * 4 + 0xc;
      iVar11 = *(int *)(param_1 + 0x4c);
      uVar13 = *(uint *)(iVar11 + 0x14);
      uVar18 = (ulonglong)uVar13;
      uVar14 = uVar13 + (uVar16 + 3) * 4;
      if ((CARRY4(uVar13,uVar4)) || (*(uint *)(iVar11 + 0x10) <= uVar14)) {
        piVar12 = (int *)(*(int *)(param_1 + 0x28) + -4);
        *piVar12 = param_2;
        *(int **)(param_1 + 0x28) = piVar12;
        uVar18 = FUN_0042213c(param_2,uVar4,puVar21);
        param_2 = **(int **)(param_1 + 0x28);
        *(int **)(param_1 + 0x28) = *(int **)(param_1 + 0x28) + 1;
      }
      else {
        *(uint *)(iVar11 + 0x14) = uVar14;
      }
      piVar12 = (int *)uVar18;
      if (piVar12 != (int *)0x0) {
        uVar4 = (uint)(uVar18 >> 0x20) | (int)(uVar18 & 0x80000001fffc) << 0xe;
        *piVar12 = param_2;
        if (((int)((uVar18 & 0x80000001fffc) >> 0x20) != 0) &&
           ((*(uint *)(param_2 + 4) & 0x8000) == 0)) {
          puVar6 = *(uint **)(param_1 + 0x54);
          uVar13 = puVar6[9];
          if (puVar6[4] < uVar13) {
LAB_00421eb6:
            *(int **)(uVar13 - 4) = piVar12;
            puVar6[9] = (uint)(int **)(uVar13 - 4);
            uVar4 = uVar4 | 0x4000;
          }
          else {
            iVar11 = *(int *)(param_1 + 0x68);
            if ((*(uint *)(iVar11 + 0x10) & 0x100) == 0) {
              puVar6 = *(uint **)(param_1 + 0x54);
              if (puVar6[5] < puVar6[4] - 4) {
                puVar6[4] = puVar6[4] - 4;
              }
              else {
                puVar6 = FUN_0048f9e0(param_1);
              }
              if (puVar6 != (uint *)0x0) {
                uVar13 = puVar6[9];
                goto LAB_00421eb6;
              }
              puVar6 = (uint *)(iVar11 + 0x10);
              *puVar6 = *puVar6 | 0x100;
            }
          }
        }
        piVar12[2] = uVar16 * 4;
        piVar12[1] = *(ushort *)(param_2 + 0x1e) | uVar4;
        piVar17 = piVar12 + 3;
        if (uVar16 != 0) {
          for (; uVar16 != 0; uVar16 = uVar16 - 1) {
            *piVar17 = 0xe;
            piVar17 = piVar17 + 1;
          }
        }
      }
    }
    else {
      piVar12 = (int *)0x0;
    }
  }
  else {
    if (uVar15 == 4) {
      param_3 = param_3 * 2;
    }
    else if (uVar15 == 6) {
      if (0x3ffffffc < param_3) {
        piVar12 = (int *)0x0;
        goto LAB_00422089;
      }
      param_3 = param_3 * 4;
    }
    uVar4 = param_3 + 3 >> 2;
    uVar13 = (param_3 + 3 & 0xfffffffc) + 0xc;
    iVar11 = *(int *)(param_1 + 0x4c);
    uVar16 = *(uint *)(iVar11 + 0x14);
    uVar18 = (ulonglong)uVar16;
    if ((CARRY4(uVar16,uVar13)) || (*(uint *)(iVar11 + 0x10) <= uVar16 + uVar13)) {
      piVar12 = (int *)(*(int *)(param_1 + 0x28) + -4);
      *piVar12 = param_2;
      *(int **)(param_1 + 0x28) = piVar12;
      uVar18 = FUN_0042213c(param_2,uVar13,puVar21);
      param_2 = **(int **)(param_1 + 0x28);
      *(int **)(param_1 + 0x28) = *(int **)(param_1 + 0x28) + 1;
    }
    else {
      *(uint *)(iVar11 + 0x14) = uVar16 + uVar13;
    }
    piVar12 = (int *)uVar18;
    if (piVar12 != (int *)0x0) {
      uVar16 = (uint)(uVar18 >> 0x20) | (int)(uVar18 & 0x80000001fffc) << 0xe;
      *piVar12 = param_2;
      if (((int)((uVar18 & 0x80000001fffc) >> 0x20) != 0) &&
         ((*(uint *)(param_2 + 4) & 0x8000) == 0)) {
        puVar6 = *(uint **)(param_1 + 0x54);
        uVar13 = puVar6[9];
        if (puVar6[4] < uVar13) {
LAB_0042204c:
          *(int **)(uVar13 - 4) = piVar12;
          puVar6[9] = (uint)(int **)(uVar13 - 4);
          uVar16 = uVar16 | 0x4000;
        }
        else {
          iVar11 = *(int *)(param_1 + 0x68);
          if ((*(uint *)(iVar11 + 0x10) & 0x100) == 0) {
            puVar6 = *(uint **)(param_1 + 0x54);
            if (puVar6[5] < puVar6[4] - 4) {
              puVar6[4] = puVar6[4] - 4;
            }
            else {
              puVar6 = FUN_0048f9e0(param_1);
            }
            if (puVar6 != (uint *)0x0) {
              uVar13 = puVar6[9];
              goto LAB_0042204c;
            }
            puVar6 = (uint *)(iVar11 + 0x10);
            *puVar6 = *puVar6 | 0x100;
          }
        }
      }
      piVar12[2] = param_3;
      piVar12[1] = *(ushort *)(param_2 + 0x1e) | uVar16;
      piVar17 = piVar12 + 3;
      if (uVar4 != 0) {
        for (; uVar4 != 0; uVar4 = uVar4 - 1) {
          *piVar17 = 0;
          piVar17 = piVar17 + 1;
        }
      }
    }
  }
LAB_00422089:
  uVar16 = *(uint *)(*(int *)(param_1 + 0x68) + 0xf4);
  if ((((uVar16 & 0x10001) == 1) && ((uVar16 & 0x10) != 0)) && (!bVar2)) {
    *(undefined4 *)(*(int *)(param_1 + 0x4c) + 0x10) =
         *(undefined4 *)(*(int *)(param_1 + 0x4c) + 0x14);
  }
LAB_004220bc:
  if ((param_4 != 0) && (param_4 != 0)) {
    puVar10 = (undefined4 *)(*(int *)(param_1 + 0x28) + param_4 * 4);
    *(undefined4 **)(param_1 + 0x28) = puVar10;
    do {
      puVar3 = (undefined4 *)*param_5;
      param_5 = param_5 + 1;
      puVar10 = puVar10 + -1;
      *puVar3 = *puVar10;
      param_4 = param_4 + -1;
    } while (param_4 != 0);
  }
  return piVar12;
}

