/* Ghidra-generated pseudocode; address 0047e330. */

undefined4 __cdecl EsShutdownImage(int param_1)

{
  char cVar1;
  int iVar2;
  uint *puVar3;
  int **ppiVar4;
  uint *puVar5;
  bool bVar6;
  HANDLE *ppvVar7;
  undefined3 extraout_var;
  int *piVar8;
  char *pcVar9;
  int local_10 [4];
  
                    /* 0x5e330  56  EsShutdownImage */
  iVar2 = *(int *)(param_1 + 0x18);
  FUN_00479500(param_1);
  if (*(int *)(param_1 + 0xd8) == 0) {
    ppvVar7 = FUN_00483c20(s_EsStartupMutex_004b4d60,1);
    *(HANDLE **)(param_1 + 0xd8) = ppvVar7;
    if (ppvVar7 == (HANDLE *)0x0) {
      ppvVar7 = (HANDLE *)FUN_00483c80(s_EsStartupMutex_004b4d60);
      *(HANDLE **)(param_1 + 0xd8) = ppvVar7;
      if (ppvVar7 != (HANDLE *)0x0) {
        bVar6 = FUN_00483cd0(ppvVar7);
        if (CONCAT31(extraout_var,bVar6) != 0) goto LAB_0047e3a6;
        FUN_00483cb0(*(HANDLE **)(param_1 + 0xd8));
      }
      *(undefined4 *)(param_1 + 0xd8) = 0;
    }
  }
LAB_0047e3a6:
  puVar3 = *(uint **)(param_1 + 0xe0);
  if (puVar3 != (uint *)0x0) {
    *puVar3 = *puVar3 | 4;
  }
  puVar3 = *(uint **)(param_1 + 0xe4);
  if (puVar3 != (uint *)0x0) {
    *puVar3 = *puVar3 | 4;
  }
  if (*(int *)(param_1 + 0xd4) != 0) {
    puVar3 = *(uint **)(*(int *)(param_1 + 0xd4) + 4);
    while (puVar3 != (uint *)0x0) {
      ppiVar4 = *(int ***)(param_1 + 0xd4);
      puVar5 = (uint *)puVar3[0xb];
      if (((*puVar3 & 0xf0080) == 0x80) && ((LPVOID)puVar3[0x11] != (LPVOID)0x0)) {
        FUN_00479750((LPVOID)puVar3[0x11]);
        puVar3[0x11] = 0;
      }
      FUN_004903c0(param_1,ppiVar4,puVar3,1);
      puVar3 = puVar5;
    }
  }
  if (*(int *)(param_1 + 0x4c) != 0) {
    puVar3 = *(uint **)(*(int *)(param_1 + 0x4c) + 4);
    while (puVar3 != (uint *)0x0) {
      ppiVar4 = *(int ***)(param_1 + 0x4c);
      puVar5 = (uint *)puVar3[0xb];
      if (((*puVar3 & 0xf0080) == 0x80) && ((LPVOID)puVar3[0x11] != (LPVOID)0x0)) {
        FUN_00479750((LPVOID)puVar3[0x11]);
        puVar3[0x11] = 0;
      }
      FUN_004903c0(param_1,ppiVar4,puVar3,1);
      puVar3 = puVar5;
    }
  }
  if (*(LPVOID **)(param_1 + 0xd4) != (LPVOID *)0x0) {
    FUN_0048fbd0(*(LPVOID **)(param_1 + 0xd4));
  }
  if (*(LPVOID **)(param_1 + 0x4c) != (LPVOID *)0x0) {
    FUN_0048fbd0(*(LPVOID **)(param_1 + 0x4c));
  }
  if (*(LPCVOID **)(param_1 + 0xec) != (LPCVOID *)0x0) {
    FUN_0047cb10(*(LPCVOID **)(param_1 + 0xec));
  }
  if (*(HANDLE **)(param_1 + 0xd8) != (HANDLE *)0x0) {
    FUN_00483cf0(*(HANDLE **)(param_1 + 0xd8));
    FUN_00483cb0(*(HANDLE **)(param_1 + 0xd8));
    *(undefined4 *)(param_1 + 0xd8) = 0;
  }
  if (*(int **)(param_1 + 0x48) != (int *)0x0) {
    piVar8 = FUN_0048e990(*(int **)(param_1 + 0x48),local_10);
    while (piVar8 != (int *)0x0) {
      if ((HANDLE)piVar8[0x53] != (HANDLE)0x0) {
        EsFileClose((HANDLE)piVar8[0x53]);
        piVar8[0x53] = 0;
      }
      FUN_0047de40((int)piVar8);
      if ((LPVOID)piVar8[0x49] != (LPVOID)0x0) {
        FUN_0048e7e0((LPVOID)piVar8[0x49]);
        piVar8[0x49] = 0;
      }
      if ((LPVOID)piVar8[0x47] != (LPVOID)0x0) {
        FUN_00479750((LPVOID)piVar8[0x47]);
        piVar8[0x47] = 0;
      }
      piVar8 = FUN_0048e9f0(local_10);
    }
    FUN_0048e7e0(*(LPVOID *)(param_1 + 0x48));
  }
  if ((iVar2 != 0) && (*(LPVOID *)(iVar2 + 0x3c) != (LPVOID)0x0)) {
    FUN_00479750(*(LPVOID *)(iVar2 + 0x3c));
    *(undefined4 *)(iVar2 + 0x3c) = 0;
  }
  FUN_00477050(param_1);
  if (*(LPVOID *)(param_1 + 0xf0) != (LPVOID)0x0) {
    FUN_00479750(*(LPVOID *)(param_1 + 0xf0));
    *(undefined4 *)(param_1 + 0xf0) = 0;
  }
  if (*(LPVOID *)(param_1 + 0x60) != (LPVOID)0x0) {
    FUN_00479750(*(LPVOID *)(param_1 + 0x60));
    *(undefined4 *)(param_1 + 0x60) = 0;
  }
  if (*(LPVOID *)(param_1 + 0x114) != (LPVOID)0x0) {
    FUN_00479750(*(LPVOID *)(param_1 + 0x114));
    *(undefined4 *)(param_1 + 0x114) = 0;
  }
  if (*(LPVOID *)(param_1 + 0x128) != (LPVOID)0x0) {
    FUN_00479750(*(LPVOID *)(param_1 + 0x128));
    *(undefined4 *)(param_1 + 0x128) = 0;
  }
  if (*(LPVOID *)(param_1 + 0xc) != (LPVOID)0x0) {
    FUN_00479750(*(LPVOID *)(param_1 + 0xc));
    *(undefined4 *)(param_1 + 0xc) = 0;
  }
  if (**(LPVOID **)(param_1 + 4) != (LPVOID)0x0) {
    FUN_00479750(**(LPVOID **)(param_1 + 4));
    **(undefined4 **)(param_1 + 4) = 0;
  }
  if (*(LPVOID *)(param_1 + 4) != (LPVOID)0x0) {
    FUN_00479750(*(LPVOID *)(param_1 + 4));
    *(undefined4 *)(param_1 + 4) = 0;
  }
  if (**(LPVOID **)(param_1 + 8) != (LPVOID)0x0) {
    FUN_00479750(**(LPVOID **)(param_1 + 8));
    **(undefined4 **)(param_1 + 8) = 0;
  }
  if (*(LPVOID *)(param_1 + 8) != (LPVOID)0x0) {
    FUN_00479750(*(LPVOID *)(param_1 + 8));
    *(undefined4 *)(param_1 + 8) = 0;
  }
  if (*(LPVOID *)(param_1 + 0x58) != (LPVOID)0x0) {
    FUN_00479750(*(LPVOID *)(param_1 + 0x58));
    *(undefined4 *)(param_1 + 0x58) = 0;
  }
  if (*(LPVOID *)(param_1 + 0x100) != (LPVOID)0x0) {
    FUN_00479750(*(LPVOID *)(param_1 + 0x100));
    *(undefined4 *)(param_1 + 0x100) = 0;
  }
  if (*(int *)(param_1 + 0xfc) != 0) {
    FUN_00483070(param_1);
  }
  FUN_00477cf0(param_1);
  FUN_00491510(param_1);
  FUN_00478e50(0,*(LPVOID *)(param_1 + 0xa0));
  *(undefined4 *)(param_1 + 0xa0) = 0;
  FUN_00491a40(param_1);
  FUN_00478160(param_1);
  pcVar9 = PTR_s__EsGlobalInfo__004b4ab0;
  do {
    cVar1 = *pcVar9;
    pcVar9 = pcVar9 + 1;
  } while (cVar1 != '\0');
  FUN_00479750((LPVOID)(param_1 -
                       ((uint)(pcVar9 + (8 - (int)(PTR_s__EsGlobalInfo__004b4ab0 + 1))) & 0xfffffff8
                       )));
  return 0;
}

