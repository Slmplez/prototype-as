/* Ghidra-generated pseudocode; address 00487690. */

int __cdecl FUN_00487690(undefined4 *param_1,uint *param_2,uint param_3)

{
  int *piVar1;
  int *piVar2;
  int *piVar3;
  byte bVar4;
  void *pvVar5;
  int iVar6;
  bool bVar7;
  uint *puVar8;
  uint *puVar9;
  int iVar10;
  size_t sVar11;
  undefined4 *puVar12;
  LPVOID pvVar13;
  uint *puVar14;
  uint *puVar15;
  uint **ppuVar16;
  byte *pbVar17;
  undefined4 *puVar18;
  uint uVar19;
  uint *puVar20;
  int *piVar21;
  int iVar22;
  uint uVar23;
  uint uVar24;
  int iVar25;
  int *piVar26;
  int unaff_ESI;
  SIZE_T SVar27;
  int unaff_EDI;
  undefined4 *puVar28;
  uint local_3c;
  uint local_34;
  int local_30;
  uint local_2c;
  uint local_20;
  uint local_1c;
  int local_18;
  uint local_14;
  undefined4 *local_10;
  uint local_c;
  uint local_8;
  uint local_4;
  
  puVar8 = param_2;
  puVar9 = FUN_0048e6b0(4,1,(undefined4 *)0x0,0);
  param_2[0x49] = (uint)puVar9;
  if (puVar9 == (uint *)0x0) {
    EsLogMemoryAllocationError(s_readImageComponent_>pool_new_for_004b6f84);
    return 0xc;
  }
  if (((param_2[0x44] & 0x400) == 0) && (iVar10 = FUN_00485430((int)param_1,param_2,1), iVar10 != 0)
     ) {
    return iVar10;
  }
  sVar11 = FUN_00485650((int)param_2,&local_20,0x20);
  if (sVar11 != 0x20) {
    return 0x22;
  }
  puVar12 = (undefined4 *)(uint)(local_18 == 0x78563412);
  if (puVar12 != (undefined4 *)0x0) {
    local_20 = ((local_20 & 0xff00) + local_20 * 0x10000) * 0x100 + (local_20 >> 8 & 0xff00) +
               (local_20 >> 0x18);
    local_1c = ((local_1c & 0xff00) + local_1c * 0x10000) * 0x100 + (local_1c >> 8 & 0xff00) +
               (local_1c >> 0x18);
    local_14 = (local_14 * 0x10000 + (local_14 & 0xff00)) * 0x100 + (local_14 >> 8 & 0xff00) +
               (local_14 >> 0x18);
    local_10 = (undefined4 *)
               (((int)local_10 * 0x10000 + ((uint)local_10 & 0xff00)) * 0x100 +
                ((uint)local_10 >> 8 & 0xff00) + ((uint)local_10 >> 0x18));
    local_c = (local_c * 0x10000 + (local_c & 0xff00)) * 0x100 + (local_c >> 8 & 0xff00) +
              (local_c >> 0x18);
    local_8 = ((local_8 & 0xff00) + local_8 * 0x10000) * 0x100 + (local_8 >> 8 & 0xff00) +
              (local_8 >> 0x18);
    local_4 = (local_4 * 0x10000 + (local_4 & 0xff00)) * 0x100 + (local_4 >> 8 & 0xff00) +
              (local_4 >> 0x18);
  }
  if (((local_20 != 0x4f54491a) && (local_20 != 0x49424d24)) ||
     ((uVar24 = local_1c & 0xf, uVar24 != 1 && ((uVar24 != 2 && (uVar24 != 4)))))) {
    EsPrintf(s____s__is_not_an_image_file__004b6fb8,param_2,0,0,0,0,0,0,0,0,0);
    return 0x25;
  }
  param_2[0x44] = param_2[0x44] | local_8 | 8;
  if (param_2[0x40] == 0) {
    param_2[0x40] = local_4;
    puVar9 = FUN_004847d0((uint *)param_1[0x12],param_2);
    if (puVar9 != param_2) {
      FUN_0048e880((int *)param_1[0x12],(int *)param_2);
      return 0x14;
    }
  }
  else if (param_2[0x40] != local_4) {
    EsPrintf(s____s__timeStamp_mismatch__004b6fd4,param_2,0,0,0,0,0,0,0,0,0);
    return 0x25;
  }
  if (((((param_1[4] & 0x2000) == 0) && (uVar24 = FUN_0048e8f0(param_1[0x12]), 1 < uVar24)) &&
      (param_1[6] != 0)) && (param_1[8] == 2)) {
    param_2[0x44] = param_2[0x44] | 0x10;
  }
  if (local_10 != (undefined4 *)0x0) {
    SVar27 = (int)local_10 * 0x80;
    pvVar13 = FUN_004795f0(SVar27);
    if (pvVar13 == (LPVOID)0x0) {
      EsLogMemoryAllocationError(s_readImageComponent_>EsAllocateMe_004b6ff0);
      return 0xc;
    }
    sVar11 = FUN_00485650((int)param_2,pvVar13,SVar27);
    if (sVar11 != SVar27) {
      return 0x22;
    }
    if (param_1[6] == 0) {
      if ((local_1c & 0xf) == 4) {
        param_1[8] = 2;
      }
      else {
        param_1[8] = local_1c & 0xf;
      }
      param_2[0x44] = param_2[0x44] | 0x20;
      iVar10 = FUN_00486380(param_1,pvVar13,local_10,puVar12,unaff_EDI,unaff_ESI);
      if (iVar10 != 0) {
        return iVar10;
      }
    }
    FUN_00479750(pvVar13);
  }
  local_34 = 0;
  if (((byte)local_1c & 0xf) == 4) {
    param_2[0x45] = local_14;
    uVar24 = local_14 * 0x110;
    puVar9 = (uint *)FUN_004795f0(uVar24);
    if (puVar9 == (uint *)0x0) {
      EsLogMemoryAllocationError(s_readImageComponent_>EsAllocateMe_004b7024);
      return 0xc;
    }
    sVar11 = FUN_00485650((int)param_2,puVar9,uVar24);
    if (sVar11 != uVar24) {
      return 0x22;
    }
    if (puVar12 != (undefined4 *)0x0) {
      FUN_00483f70(puVar9,uVar24 >> 2);
    }
    pvVar13 = FUN_004795f0(param_2[0x45] * 0xc);
    param_2[0x46] = (uint)pvVar13;
    if (pvVar13 == (LPVOID)0x0) {
      EsLogMemoryAllocationError(s_readImageComponent_>EsAllocateMe_004b7058);
      return 0xc;
    }
    local_3c = 0;
    if (param_2[0x45] != 0) {
      puVar20 = puVar9 + 0x42;
      param_2 = (uint *)0x0;
      do {
        if (puVar12 != (undefined4 *)0x0) {
          FUN_00483f70(puVar20 + -0x42,0x40);
        }
        if (((puVar8[0x44] ^ param_3) & 1) != 0) {
          puVar15 = puVar20 + -0x42;
          puVar14 = puVar15;
          if ((puVar8[0x44] & 1) == 0) {
            do {
              bVar4 = *(byte *)puVar14;
              puVar14 = (uint *)((int)puVar14 + 1);
            } while (bVar4 != 0);
            FUN_00477c20((byte *)puVar15,(int)puVar14 - ((int)puVar20 + -0x107));
          }
          else {
            do {
              bVar4 = *(byte *)puVar14;
              puVar14 = (uint *)((int)puVar14 + 1);
            } while (bVar4 != 0);
            FUN_00477c50((byte *)puVar15,(int)puVar14 - ((int)puVar20 + -0x107));
          }
        }
        puVar15 = FUN_004847d0((uint *)param_1[0x12],puVar20 + -0x42);
        if (puVar15 == (uint *)0x0) {
          EsLogMemoryAllocationError(s_readImageComponent_>addToCompone_004b7094);
          return 0xc;
        }
        if (puVar15[0x40] != puVar20[-2]) {
          EsPrintf(s____s__timeStamp_mismatch__004b70cc,puVar15,0,0,0,0,0,0,0,0,0);
          return 0x25;
        }
        if (((puVar8[0x44] & 0x400) != 0) && ((*(byte *)(puVar15 + 0x44) & 8) == 0)) {
          return 0x21;
        }
        ppuVar16 = (uint **)FUN_0048e810((uint *)puVar8[0x49]);
        if (ppuVar16 == (uint **)0x0) {
          EsLogMemoryAllocationError(s_readImageComponent_>pool_newElem_004b70e8);
          return 0xc;
        }
        *ppuVar16 = puVar15;
        *(uint *)((int)param_2 + puVar8[0x46]) = puVar20[-1];
        if (*(int *)((int)param_2 + puVar8[0x46]) != 0) {
          ((int *)((int)param_2 + puVar8[0x46]))[1] = (int)puVar15;
          uVar24 = puVar20[-1] << 5;
          pvVar13 = FUN_004795f0(uVar24);
          *(LPVOID *)(puVar8[0x46] + 8 + (int)param_2) = pvVar13;
          pvVar5 = *(void **)(puVar8[0x46] + 8 + (int)param_2);
          if (pvVar5 == (void *)0x0) {
            EsLogMemoryAllocationError(s_readImageComponent_>aEsAllocateM_004b710c);
            return 0xc;
          }
          sVar11 = FUN_00485650((int)puVar8,pvVar5,uVar24);
          if (sVar11 != uVar24) {
            return 0x22;
          }
          if (puVar12 != (undefined4 *)0x0) {
            FUN_00483f70(*(uint **)(puVar8[0x46] + 8 + (int)param_2),uVar24 >> 2);
          }
          if ((*(byte *)(puVar8 + 0x44) & 0x10) == 0) {
            uVar24 = puVar8[0x46];
            if (*(int *)(uVar24 + (int)param_2) != 0) {
              iVar10 = *(int *)((int)param_2 + uVar24);
              pbVar17 = (byte *)(*(int *)((int)param_2 + uVar24 + 8) + 0x18);
              do {
                if ((*pbVar17 & 0x10) != 0) {
                  local_34 = local_34 + 1;
                }
                pbVar17 = pbVar17 + 0x20;
                iVar10 = iVar10 + -1;
              } while (iVar10 != 0);
            }
          }
          else {
            local_30 = 0;
            local_2c = 0;
            if (*(int *)((int)param_2 + puVar8[0x46]) != 0) {
              iVar25 = 0;
              iVar10 = 0;
              do {
                iVar6 = *(int *)(puVar8[0x46] + 8 + (int)param_2);
                if ((*(byte *)(iVar6 + 0x18 + iVar10) & 4) != 0) {
                  local_30 = local_30 + 1;
                  puVar18 = (undefined4 *)(iVar6 + iVar10);
                  puVar28 = (undefined4 *)(iVar6 + iVar25);
                  for (iVar22 = 8; iVar22 != 0; iVar22 = iVar22 + -1) {
                    *puVar28 = *puVar18;
                    puVar18 = puVar18 + 1;
                    puVar28 = puVar28 + 1;
                  }
                  iVar25 = iVar25 + 0x20;
                }
                local_2c = local_2c + 1;
                iVar10 = iVar10 + 0x20;
              } while (local_2c < *(uint *)((int)param_2 + puVar8[0x46]));
            }
            *(int *)((int)param_2 + puVar8[0x46]) = local_30;
          }
        }
        if (*puVar20 != 0) {
          puVar15[0x42] = *puVar20;
          uVar24 = *puVar20 << 5;
          pvVar13 = FUN_004795f0(uVar24);
          puVar15[0x47] = (uint)pvVar13;
          if (pvVar13 == (LPVOID)0x0) {
            EsLogMemoryAllocationError(s_readImageComponent_>EsAllocateMe_004b7148);
            return 0xc;
          }
          sVar11 = FUN_00485650((int)puVar8,pvVar13,uVar24);
          if (sVar11 != uVar24) {
            return 0x22;
          }
          if (puVar12 != (undefined4 *)0x0) {
            FUN_00483f70((uint *)puVar15[0x47],uVar24 >> 2);
          }
          uVar24 = 0;
          if (*puVar20 != 0) {
            iVar10 = 0;
            do {
              *(uint **)(puVar15[0x47] + 4 + iVar10) = puVar8;
              *(undefined4 *)(puVar15[0x47] + 0x14 + iVar10) = 0;
              uVar24 = uVar24 + 1;
              iVar10 = iVar10 + 0x20;
            } while (uVar24 < *puVar20);
          }
        }
        param_2 = param_2 + 3;
        local_3c = local_3c + 1;
        puVar20 = puVar20 + 0x44;
      } while (local_3c < puVar8[0x45]);
    }
    FUN_00479750(puVar9);
  }
  if ((local_1c == 1) || (local_1c == 2)) {
    puVar8[0x45] = 0;
  }
  puVar18 = FUN_00484b90(param_1);
  puVar8[0x48] = (uint)puVar18;
  if (puVar18 == (undefined4 *)0x0) {
    EsLogMemoryAllocationError(s_readImageComponent_>allocateRelo_004b7184);
    return 0xc;
  }
  SVar27 = local_c << 6;
  bVar7 = false;
  if (SVar27 != 0) {
    pvVar13 = FUN_004795f0(SVar27);
    if (pvVar13 == (LPVOID)0x0) {
      EsLogMemoryAllocationError(s_readImageComponent_>EsAllocateMe_004b71b0);
      return 0xc;
    }
    sVar11 = FUN_00485650((int)puVar8,pvVar13,SVar27);
    if (sVar11 != SVar27) {
      return 0x22;
    }
    if ((puVar8[0x44] & 0x400) == 0) {
      puVar9 = (uint *)EsFileSeek((HANDLE)puVar8[0x53],0,1);
    }
    else {
      puVar9 = (uint *)(((int *)puVar8[0x53])[1] - *(int *)puVar8[0x53]);
    }
    local_3c = 0;
    if (local_c != 0) {
      piVar26 = (int *)((int)pvVar13 + 0xc);
      param_2 = puVar9;
      do {
        if (puVar12 != (undefined4 *)0x0) {
          FUN_00483f70((uint *)(piVar26 + -3),0x10);
        }
        uVar24 = piVar26[-3];
        uVar23 = uVar24 & 4;
        if ((uVar23 == 0) ||
           ((((uVar19 = uVar24 & 0xf0080, uVar19 != 0x30000 && (uVar19 != 0x20000)) &&
             (uVar19 != 0x80000)) && (uVar19 != 0x70000)))) {
LAB_0048804f:
          if ((*(byte *)(puVar8 + 0x44) & 0x10) != 0) {
            if (uVar23 == 0) goto LAB_004881fb;
            uVar24 = piVar26[-3];
          }
          uVar24 = uVar24 & 0xf0080;
          if (((uVar24 != 0x50000) || ((*(byte *)(param_1 + 0x43) & 1) == 0)) &&
             ((uVar24 != 0x40000 || ((*(byte *)(param_1 + 0x43) & 2) == 0)))) {
            if (((uVar24 == 0xb0000) && ((*(byte *)(param_1 + 0x43) & 4) != 0)) ||
               ((uVar24 == 0xc0000 && ((*(byte *)(param_1 + 0x43) & 8) != 0)))) {
              piVar21 = (int *)FUN_004841a0(puVar8[0x48]);
              if (piVar21 == (int *)0x0) {
                EsLogMemoryAllocationError(s_readImageComponent_>newRelocatio_004b7214);
                return 0xc;
              }
              *piVar21 = *piVar26;
              piVar21[1] = piVar26[2];
              piVar21[3] = 3;
              *(undefined4 *)puVar8[0x48] = 0;
            }
            else {
              puVar9 = FUN_0048fb00((uint **)param_1[0x35]);
              if (puVar9 == (uint *)0x0) {
                EsLogMemoryAllocationError(s_readImageComponent_>allocateMemo_004b723c);
                return 0xc;
              }
              uVar24 = puVar9[0xb];
              FUN_00484bf0(piVar26 + -3,puVar9);
              *puVar9 = *puVar9 & 0xffffd8ff;
              uVar23 = *puVar9;
              uVar19 = uVar23 & 0xf0080;
              puVar9[0xb] = uVar24;
              puVar9[0xd] = (uint)puVar8;
              if ((uVar19 == 0x30000) && ((uVar23 & 4) != 0)) {
                puVar8[0x4d] = (uint)puVar9;
              }
              else if (uVar19 == 0x20000) {
                puVar8[0x4e] = (uint)puVar9;
              }
              else if (((uVar23 & 4) == 0) && ((uVar19 == 0xc0000 || (uVar19 == 0xb0000)))) {
                *puVar9 = uVar23 & 0xfff0ff7f;
              }
              else if ((uVar19 == 0x80000) && ((uVar23 & 4) != 0)) {
                puVar8[0x4f] = (uint)puVar9;
              }
              else if (uVar19 == 0x70000) {
                puVar8[0x50] = (uint)puVar9;
              }
              else if (uVar19 == 0x90000) {
                param_1[4] = param_1[4] | 0x800;
              }
              else if (((uVar23 & 8) != 0) && ((uVar19 == 0x30000 || (uVar19 == 0x80000)))) {
                puVar9[0xf] = 0;
                puVar9[0xc] = 0;
              }
              puVar9[0xe] = (uint)param_2;
              if ((*(byte *)puVar9 & 4) != 0) {
                bVar7 = true;
                puVar8[0x51] = puVar9[0xc];
              }
              if (((*puVar9 & 0x10) != 0) && ((*puVar9 & 0xf0080) != 0x50000)) {
                local_34 = local_34 + 1;
              }
            }
          }
        }
        else {
          puVar20 = (uint *)FUN_00485110(param_1[0x13],piVar26[9],piVar26[0xc]);
          if (puVar20 == (uint *)0x0) {
            uVar24 = piVar26[-3];
            goto LAB_0048804f;
          }
          *puVar20 = *puVar20 | 1;
          puVar20[0xd] = (uint)puVar8;
          piVar21 = (int *)FUN_004841a0(puVar8[0x48]);
          if (piVar21 == (int *)0x0) {
            EsLogMemoryAllocationError(s_readImageComponent_>newRelocatio_004b71ec);
            return 0xc;
          }
          *piVar21 = piVar26[-1];
          piVar21[1] = (piVar26[2] - *piVar26) + piVar26[-1];
          piVar21[2] = piVar26[-1] - puVar20[3];
          if (((*puVar20 & 0xf0080) == 0x30000) || ((*puVar20 & 0xf0080) == 0x80000)) {
            piVar21[3] = 1;
            piVar21[4] = *puVar20;
          }
          if (piVar21[2] != 0) {
            **(undefined4 **)(puVar9[0xd] + 0x120) = 0;
          }
        }
LAB_004881fb:
        piVar21 = piVar26 + 7;
        piVar1 = piVar26 + 6;
        piVar2 = piVar26 + -1;
        local_3c = local_3c + 1;
        piVar3 = piVar26 + 2;
        piVar26 = piVar26 + 0x10;
        param_2 = (uint *)((int)param_2 + ((*piVar21 - *piVar1) - *piVar2) + *piVar3);
      } while (local_3c < local_c);
    }
    FUN_00479750(pvVar13);
    if ((bVar7) && (local_34 != 0)) {
      puVar8[0x42] = local_34;
      pvVar13 = FUN_004795f0(local_34 << 5);
      puVar8[0x47] = (uint)pvVar13;
      if (pvVar13 != (LPVOID)0x0) {
        return 0;
      }
      EsLogMemoryAllocationError(s_readImageComponent_>EsAllocateMe_004b7270);
      return 0xc;
    }
  }
  if ((*(byte *)(puVar8 + 0x44) & 0x10) == 0) {
    puVar8[0x42] = 0;
  }
  return 0;
}

