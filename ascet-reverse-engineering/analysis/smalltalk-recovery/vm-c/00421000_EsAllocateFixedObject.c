/* Ghidra-generated pseudocode; address 00421000. */

int * __cdecl
EsAllocateFixedObject(int param_1,int param_2,uint param_3,int param_4,undefined4 *param_5)

{
  undefined4 *puVar1;
  ushort uVar2;
  int iVar3;
  uint *puVar4;
  uint uVar5;
  uint uVar6;
  undefined4 *puVar7;
  undefined4 *puVar8;
  int *piVar9;
  uint uVar10;
  uint uVar11;
  int *piVar12;
  
                    /* 0x1000  3  EsAllocateFixedObject */
  if (param_4 != 0) {
    puVar8 = *(undefined4 **)(param_1 + 0x28);
    iVar3 = param_4;
    puVar7 = param_5;
    do {
      puVar1 = (undefined4 *)*puVar7;
      puVar7 = puVar7 + 1;
      puVar8 = puVar8 + -1;
      *puVar8 = *puVar1;
      iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    *(undefined4 **)(param_1 + 0x28) = puVar8;
  }
  if (0x3fffffff < param_3) {
    piVar9 = (int *)0x0;
    goto LAB_00421470;
  }
  uVar2 = *(ushort *)(param_2 + 0x1e) & 6;
  if ((*(ushort *)(param_2 + 0x1e) & 6) == 0) {
    uVar11 = (*(int *)(param_2 + 0x18) >> 1) + param_3;
    if (0x3ffffffc < uVar11) {
      piVar9 = (int *)0x0;
      goto LAB_00421470;
    }
    uVar5 = uVar11 * 4 + 0xc;
    piVar9 = (int *)0x0;
    for (puVar4 = *(uint **)(*(int *)(*(int *)(param_1 + 0x68) + 0x4c) + 4); puVar4 != (uint *)0x0;
        puVar4 = (uint *)puVar4[0xb]) {
      if (((*puVar4 & 0x10) != 0) && (piVar9 == (int *)0x0)) {
        piVar9 = (int *)puVar4[5];
        if ((CARRY4((uint)piVar9,uVar5)) || ((int *)puVar4[4] <= piVar9 + uVar11 + 3)) {
          piVar9 = (int *)0x0;
        }
        else {
          puVar4[5] = (uint)(piVar9 + uVar11 + 3);
        }
      }
    }
    if (piVar9 == (int *)0x0) {
      uVar10 = *(uint *)(*(int *)(param_1 + 0x68) + 0x110);
      if (uVar10 < uVar5) {
        uVar10 = uVar5;
      }
      puVar4 = FUN_004902a0(*(int *)(param_1 + 0x68),uVar10,0x19,0);
      if (puVar4 != (uint *)0x0) {
        piVar9 = (int *)puVar4[5];
        if ((CARRY4((uint)piVar9,uVar5)) || ((int *)puVar4[4] <= piVar9 + uVar11 + 3)) {
          piVar9 = (int *)0x0;
        }
        else {
          puVar4[5] = (uint)(piVar9 + uVar11 + 3);
        }
      }
    }
    if (piVar9 == (int *)0x0) goto LAB_00421470;
    uVar5 = ((uint)piVar9 & 0x1fffc) << 0xe;
    uVar10 = uVar5 | 0x9000;
    *piVar9 = param_2;
    if ((*(uint *)(param_2 + 4) & 0x8000) == 0) {
      puVar4 = *(uint **)(param_1 + 0x54);
      uVar6 = puVar4[9];
      if (puVar4[4] < uVar6) {
LAB_0042120d:
        *(int **)(uVar6 - 4) = piVar9;
        puVar4[9] = (uint)(int **)(uVar6 - 4);
        uVar10 = uVar5 | 0xd000;
      }
      else {
        iVar3 = *(int *)(param_1 + 0x68);
        if ((*(uint *)(iVar3 + 0x10) & 0x100) == 0) {
          puVar4 = *(uint **)(param_1 + 0x54);
          if (puVar4[5] < puVar4[4] - 4) {
            puVar4[4] = puVar4[4] - 4;
          }
          else {
            puVar4 = FUN_0048f9e0(param_1);
          }
          if (puVar4 != (uint *)0x0) {
            uVar6 = puVar4[9];
            goto LAB_0042120d;
          }
          puVar4 = (uint *)(iVar3 + 0x10);
          *puVar4 = *puVar4 | 0x100;
        }
      }
    }
    piVar9[2] = uVar11 * 4;
    piVar9[1] = *(ushort *)(param_2 + 0x1e) | uVar10;
    piVar12 = piVar9 + 3;
    if (uVar11 != 0) {
      for (; uVar11 != 0; uVar11 = uVar11 - 1) {
        *piVar12 = 0xe;
        piVar12 = piVar12 + 1;
      }
    }
    goto LAB_00421470;
  }
  if (uVar2 == 4) {
    param_3 = param_3 * 2;
  }
  else if (uVar2 == 6) {
    if (0x3ffffffc < param_3) {
      piVar9 = (int *)0x0;
      goto LAB_00421470;
    }
    param_3 = param_3 * 4;
  }
  uVar11 = param_3 + 3 >> 2;
  uVar5 = (param_3 + 3 & 0xfffffffc) + 0xc;
  piVar9 = (int *)0x0;
  for (puVar4 = *(uint **)(*(int *)(*(int *)(param_1 + 0x68) + 0x4c) + 4); puVar4 != (uint *)0x0;
      puVar4 = (uint *)puVar4[0xb]) {
    if (((*puVar4 & 0x10) != 0) && (piVar9 == (int *)0x0)) {
      piVar9 = (int *)puVar4[5];
      if ((CARRY4((uint)piVar9,uVar5)) || (puVar4[4] <= (int)piVar9 + uVar5)) {
        piVar9 = (int *)0x0;
      }
      else {
        puVar4[5] = (int)piVar9 + uVar5;
      }
    }
  }
  if (piVar9 == (int *)0x0) {
    uVar10 = *(uint *)(*(int *)(param_1 + 0x68) + 0x110);
    if (uVar10 < uVar5) {
      uVar10 = uVar5;
    }
    puVar4 = FUN_004902a0(*(int *)(param_1 + 0x68),uVar10,0x19,0);
    if (puVar4 != (uint *)0x0) {
      piVar9 = (int *)puVar4[5];
      if ((CARRY4((uint)piVar9,uVar5)) || (puVar4[4] <= (int)piVar9 + uVar5)) {
        piVar9 = (int *)0x0;
      }
      else {
        puVar4[5] = (int)piVar9 + uVar5;
      }
    }
  }
  if (piVar9 == (int *)0x0) goto LAB_00421470;
  uVar5 = ((uint)piVar9 & 0x1fffc) << 0xe;
  uVar10 = uVar5 | 0x9000;
  *piVar9 = param_2;
  if ((*(uint *)(param_2 + 4) & 0x8000) == 0) {
    puVar4 = *(uint **)(param_1 + 0x54);
    uVar6 = puVar4[9];
    if (puVar4[4] < uVar6) {
LAB_0042142f:
      *(int **)(uVar6 - 4) = piVar9;
      puVar4[9] = (uint)(int **)(uVar6 - 4);
      uVar10 = uVar5 | 0xd000;
    }
    else {
      iVar3 = *(int *)(param_1 + 0x68);
      if ((*(uint *)(iVar3 + 0x10) & 0x100) == 0) {
        puVar4 = *(uint **)(param_1 + 0x54);
        if (puVar4[5] < puVar4[4] - 4) {
          puVar4[4] = puVar4[4] - 4;
        }
        else {
          puVar4 = FUN_0048f9e0(param_1);
        }
        if (puVar4 != (uint *)0x0) {
          uVar6 = puVar4[9];
          goto LAB_0042142f;
        }
        puVar4 = (uint *)(iVar3 + 0x10);
        *puVar4 = *puVar4 | 0x100;
      }
    }
  }
  piVar9[2] = param_3;
  piVar9[1] = *(ushort *)(param_2 + 0x1e) | uVar10;
  piVar12 = piVar9 + 3;
  if (uVar11 != 0) {
    for (; uVar11 != 0; uVar11 = uVar11 - 1) {
      *piVar12 = 0;
      piVar12 = piVar12 + 1;
    }
  }
LAB_00421470:
  if ((param_4 != 0) && (param_4 != 0)) {
    puVar8 = (undefined4 *)(*(int *)(param_1 + 0x28) + param_4 * 4);
    *(undefined4 **)(param_1 + 0x28) = puVar8;
    do {
      puVar7 = (undefined4 *)*param_5;
      param_5 = param_5 + 1;
      puVar8 = puVar8 + -1;
      *puVar7 = *puVar8;
      param_4 = param_4 + -1;
    } while (param_4 != 0);
  }
  return piVar9;
}

