/* Ghidra-generated pseudocode; address 004411a4. */

void __fastcall FUN_004411a4(uint param_1,uint param_2,undefined4 param_3)

{
  int *piVar1;
  uint uVar2;
  int *piVar3;
  int *in_EAX;
  int iVar4;
  uint uVar5;
  uint **ppuVar7;
  uint *puVar8;
  uint uVar9;
  uint *puVar10;
  uint **ppuVar11;
  uint *extraout_EDX;
  uint uVar12;
  uint uVar13;
  int unaff_EBP;
  int unaff_ESI;
  uint *puVar14;
  uint *puVar15;
  uint *puVar16;
  uint local_34;
  uint local_1c;
  uint *local_10;
  undefined *puVar6;
  
  local_34 = 0;
  puVar16 = (uint *)(((uint)((int)in_EAX - *(int *)(unaff_EBP + 0x3c)) >> 2) +
                     *(int *)(unaff_EBP + 0x3c) + 0x10000);
  if ((*(uint *)(param_2 + 4) & 0x8000) == 0) {
    local_34 = 0x82;
  }
  if (unaff_ESI != 0xe) {
    if ((*(uint *)(unaff_ESI + 4) & 0x8000) == 0) {
      local_34 = 0x82;
    }
    uVar12 = *(uint *)(param_2 + 4) >> 0x10 & 0x7fff;
    uVar5 = *(uint *)(*(int *)(unaff_EBP + 0x38) + 0xec);
    iVar4 = unaff_ESI;
    if ((uVar5 & 3) == 0) {
      uVar5 = *(uint *)(uVar5 + 0x10);
    }
LAB_00441244:
    puVar8 = *(uint **)(iVar4 + 0x20);
    if (((uint)puVar8 & 1) != 0) {
      puVar8 = *(uint **)(*(int *)(*(int *)(unaff_EBP + 0x38) + 0xd8) + -1 + (int)puVar8);
    }
    if ((((uint)puVar8 & 3) == 0) && (uVar2 = puVar8[2], uVar2 != 0)) {
      if (uVar5 == *puVar8) {
        puVar8 = puVar8 + 3;
        puVar15 = puVar8 + (uVar12 & (uVar2 >> 3) - 1) * 2;
        while( true ) {
          if (*puVar15 == 0xe) break;
          if (param_2 == *puVar15) {
            puVar8 = (uint *)puVar15[1];
            goto LAB_004412c2;
          }
          puVar15 = puVar15 + 2;
          if (puVar15 == (uint *)((int)puVar8 + uVar2)) {
            puVar15 = puVar8;
          }
        }
      }
      else {
        ppuVar11 = (uint **)(puVar8 + 3);
        ppuVar7 = ppuVar11 + (uVar12 & (uVar2 >> 2) - 1);
        while( true ) {
          puVar8 = *ppuVar7;
          ppuVar7 = ppuVar7 + 1;
          if (puVar8 == (uint *)&DAT_0000000e) break;
          if (param_2 == puVar8[6]) goto LAB_004412c2;
          if (ppuVar7 == (uint **)((int)ppuVar11 + uVar2)) {
            ppuVar7 = ppuVar11;
          }
        }
      }
    }
    puVar8 = *(uint **)(iVar4 + 0x14);
    uVar2 = puVar8[2];
    if (uVar2 != 0) {
      if (uVar5 == *puVar8) {
        puVar8 = puVar8 + 3;
        puVar15 = puVar8 + (uVar12 & (uVar2 >> 3) - 1) * 2;
        while( true ) {
          if (*puVar15 == 0xe) break;
          if (param_2 == *puVar15) {
            puVar8 = (uint *)puVar15[1];
            goto LAB_004412c2;
          }
          puVar15 = puVar15 + 2;
          if (puVar15 == (uint *)((int)puVar8 + uVar2)) {
            puVar15 = puVar8;
          }
        }
      }
      else {
        ppuVar11 = (uint **)(puVar8 + 3);
        ppuVar7 = ppuVar11 + (uVar12 & (uVar2 >> 2) - 1);
        while( true ) {
          puVar8 = *ppuVar7;
          ppuVar7 = ppuVar7 + 1;
          if (puVar8 == (uint *)&DAT_0000000e) break;
          if (param_2 == puVar8[6]) goto LAB_004412c2;
          if (ppuVar7 == (uint **)((int)ppuVar11 + uVar2)) {
            ppuVar7 = ppuVar11;
          }
        }
      }
    }
    goto LAB_00441833;
  }
LAB_0044187b:
  in_EAX[1] = param_2;
  in_EAX[3] = (int)&LAB_00438330;
  *puVar16 = (uint)&LAB_0043831c;
  goto LAB_00441897;
LAB_004412c2:
  uVar2 = *(uint *)(*(int *)(unaff_EBP + 0x68) + 0xf4);
  if (((uVar2 & 0x10001) == 1) && ((uVar2 & 8) != 0)) {
    piVar1 = *(int **)(iVar4 + 0xc);
    if ((((uint)piVar1 & 3) == 0) &&
       (*(int *)(*(int *)(*(int *)(unaff_EBP + 0x38) + 0x28) + 0x10) == *piVar1)) {
      piVar3 = *(int **)(iVar4 + 0x14);
      uVar13 = piVar3[2];
      if (*(int *)(*(int *)(*(int *)(unaff_EBP + 0x38) + 0xec) + 0x10) == *piVar3) {
        puVar14 = (uint *)(piVar3 + 3);
        uVar9 = *(uint *)(param_2 + 4) >> 0x10 & 0x7fff & (uVar13 >> 3) - 1;
        puVar15 = puVar14 + uVar9 * 2;
        puVar10 = (uint *)(piVar1 + 3 + uVar9 * 2);
        while (*puVar15 != 0xe) {
          if (param_2 == *puVar15) {
            uVar13 = *puVar10;
            goto LAB_00441430;
          }
          puVar15 = puVar15 + 2;
          puVar10 = puVar10 + 2;
          if (puVar15 == (uint *)((int)puVar14 + uVar13)) {
            puVar15 = puVar14;
            puVar10 = (uint *)(piVar1 + 3);
          }
        }
      }
      else {
        puVar14 = (uint *)(piVar3 + 3);
        uVar9 = *(uint *)(param_2 + 4) >> 0x10 & 0x7fff & (uVar13 >> 2) - 1;
        puVar15 = (uint *)(piVar1 + 3 + uVar9);
        local_10 = puVar14 + uVar9;
        while( true ) {
          puVar10 = local_10 + 1;
          if (*local_10 == 0xe) break;
          if (param_2 == *(uint *)(*local_10 + 0x18)) {
            uVar13 = *puVar15;
            goto LAB_00441430;
          }
          puVar15 = puVar15 + 1;
          local_10 = puVar10;
          if (puVar10 == (uint *)((int)puVar14 + uVar13)) {
            puVar15 = (uint *)(piVar1 + 3);
            local_10 = puVar14;
          }
        }
      }
    }
    uVar13 = 0;
    puVar10 = puVar8;
LAB_00441430:
    if ((uVar13 & 1) == 0) {
      local_1c = 0;
    }
    else {
      local_1c = uVar13 & 0xfffffffe;
    }
    if (local_1c != 0) {
      if ((uVar2 & 2) == 0) {
        *(int *)(local_1c + 0xc) = *(int *)(local_1c + 0xc) + 1;
      }
      if ((uVar2 & 2) != 0) {
        FUN_0044f0a4(puVar10,6,param_3);
      }
    }
  }
  if (((uint)puVar8 & 1) == 0) {
    if ((puVar8[1] & 0x8000) == 0) {
      local_34 = 0x82;
    }
    puVar6 = (undefined *)puVar8[3];
    if (puVar6 == (undefined *)0xe) {
LAB_00441833:
      if (((param_1 & 3) == 3) || (piVar1 = (int *)(iVar4 + 0x10), iVar4 = *piVar1, *piVar1 == 0xe))
      goto LAB_0044187b;
      goto LAB_00441244;
    }
  }
  else if ((*(uint *)((int)puVar8 + -1) & 0x80000000) == 0) {
    puVar6 = (undefined *)((int)puVar8 + ((*(uint *)((int)puVar8 + 3) & 0xffff) - 5));
  }
  else {
    puVar6 = (undefined *)((int)puVar8 + ((*(uint *)((int)puVar8 + 3) >> 0x10) - 0xc));
  }
  uVar5 = (uint)(byte)puVar6[0xe];
  if (uVar5 == 0x6d) {
    uVar12 = *(uint *)(unaff_ESI + 0x1c) >> 0x10;
    if ((uVar12 & 1) != 0) {
      uVar12 = uVar12 & 6;
      if (uVar12 == 0) {
        if (*(int *)(unaff_ESI + 0x18) == 1) {
          uVar5 = 0x7f;
        }
        else {
          uVar5 = 0x7e;
        }
      }
      else if (uVar12 == 2) {
        uVar5 = 0x75;
      }
    }
  }
  else if ((uVar5 == 0x4a) && (uVar12 = *(uint *)(unaff_ESI + 0x1c) >> 0x10, (uVar12 & 1) != 0)) {
    uVar12 = uVar12 & 6;
    if (uVar12 == 0) {
      if (*(int *)(unaff_ESI + 0x18) == 1) {
        uVar5 = 0x93;
      }
      else {
        uVar5 = 0x92;
      }
    }
    else if (uVar12 == 2) {
      uVar5 = 0x89;
    }
  }
  if ((*(uint *)(unaff_EBP + 100) & 0x24) == 4) {
    in_EAX[1] = (int)puVar8;
    in_EAX[3] = (int)(&PTR_LAB_004577b0)[uVar5];
    goto LAB_00441897;
  }
  if ((3 < uVar5) && ((uVar5 < 0x10 || (0x13 < uVar5)))) goto LAB_0044162c;
  if (((uint)puVar8 & 1) != 0) {
    puVar15 = *(uint **)(*(int *)(*(int *)(unaff_EBP + 0x68) + 0x4c) + 8);
    goto LAB_004415a7;
  }
  puVar15 = puVar8 + 4;
  goto LAB_004415e2;
LAB_004415a7:
  if (puVar15 == (uint *)0x0) goto LAB_004415c7;
  if ((((*puVar15 & 0x80) != 0) && ((uint *)puVar15[3] <= puVar8)) && (puVar8 < (uint *)puVar15[5]))
  goto LAB_004415c9;
  puVar15 = (uint *)puVar15[0xe];
  goto LAB_004415a7;
LAB_004415c7:
  puVar15 = (uint *)0x0;
LAB_004415c9:
  puVar15 = (uint *)((puVar15[0x11] - 4) + (*(uint *)((int)puVar8 + -1) & 0xffff) * 4);
LAB_004415e2:
  if (((*puVar15 & 2) == 0) &&
     (FUN_00452dd0(puVar8,puVar15,param_3), puVar15 = extraout_EDX, (*extraout_EDX & 2) == 0)) {
LAB_0044162c:
    in_EAX[1] = (int)puVar8;
    uVar12 = *(uint *)(*(int *)(unaff_EBP + 0x68) + 0xf4);
    if (((((uVar12 & 0x10001) == 1) && (((uVar12 & 4) != 0 || ((uVar12 & 8) != 0)))) && (3 < uVar5))
       && (((uVar5 < 0x10 || (0x13 < uVar5)) && (local_1c != 0)))) {
      *puVar16 = (uint)&LAB_0044ec58;
    }
    else {
      *puVar16 = (uint)(&PTR_LAB_00457bb0)[uVar5];
    }
    uVar12 = *(uint *)(*(int *)(unaff_EBP + 0x68) + 0xf4);
    if ((((uVar12 & 0x10001) == 1) && (((uVar12 & 4) != 0 || ((uVar12 & 8) != 0)))) &&
       ((3 < uVar5 && (((uVar5 < 0x10 || (0x13 < uVar5)) && (local_1c != 0)))))) {
      in_EAX[3] = (int)&LAB_0044e98f;
    }
    else {
      in_EAX[3] = (int)(&PTR_LAB_004573b0)[uVar5];
    }
  }
  else {
    in_EAX[1] = (int)puVar8;
    uVar5 = *puVar15;
    *puVar16 = uVar5 & 0xfffffff0;
    in_EAX[3] = *(int *)((uVar5 & 0xfffffff0) - 4);
  }
LAB_00441897:
  *in_EAX = unaff_ESI;
  in_EAX[2] = param_2;
  puVar16 = (uint *)(*(int *)(unaff_EBP + 0x68) + 0x10);
  *puVar16 = *puVar16 | local_34;
  return;
}

