/* Ghidra-generated pseudocode; address 0047cf60. */

/* WARNING: Function: __alloca_probe_16 replaced with injection: alloca_probe */
/* WARNING: Unable to track spacebase fully for stack */

void __cdecl EsOpenSharedLibrary(uint *param_1,HMODULE *param_2)

{
  char cVar1;
  int iVar2;
  HMODULE pHVar3;
  DWORD DVar4;
  uint *puVar5;
  char *pcVar6;
  int iVar7;
  char *pcVar8;
  undefined *puVar9;
  uint uVar10;
  undefined *puVar11;
  undefined *puVar12;
  undefined *puVar13;
  undefined *puVar14;
  undefined4 *puVar15;
  undefined4 *puVar16;
  UINT local_c;
  uint local_8;
  
                    /* 0x5cf60  37  EsOpenSharedLibrary */
  local_8 = DAT_004b96d0 ^ (uint)&stack0xfffffffc;
  local_c = SetErrorMode(0x8001);
  pHVar3 = LoadLibraryA((LPCSTR)param_1);
  if ((HMODULE)0x1f < pHVar3) {
    *param_2 = pHVar3;
    SetErrorMode(local_c);
    ___security_check_cookie_4(local_8 ^ (uint)&stack0xfffffffc);
    return;
  }
  DVar4 = GetLastError();
  FormatMessageA(0x1200,(LPCVOID)0x0,DVar4,0x400,&DAT_004be3c0,0x200,(va_list *)0x0);
  FUN_0048e370(param_1,&DAT_004be3c0);
  puVar5 = param_1;
  do {
    cVar1 = *(char *)puVar5;
    puVar5 = (uint *)((int)puVar5 + 1);
  } while (cVar1 != '\0');
  pcVar6 = (char *)((int)puVar5 + (5 - ((int)param_1 + 1)));
  iVar2 = -(int)pcVar6;
  if (&stack0xffffffe4 == pcVar6) {
    *(UINT *)(&stack0xffffffe0 + iVar2) = local_c;
    puVar11 = &stack0xffffffdc + iVar2;
    *(undefined4 *)(&stack0xffffffdc + iVar2) = 0x47d011;
    SetErrorMode(*(UINT *)(&stack0xffffffe0 + iVar2));
    *(char **)(puVar11 + -4) = s_Ran_out_of_stack_memory_004b49e0;
    *(uint **)(puVar11 + -8) = param_1;
    *(undefined4 *)(puVar11 + -0xc) = 0x47d01c;
    FUN_0048e370(*(uint **)(puVar11 + -8),*(char **)(puVar11 + -4));
    goto LAB_0047d0ec;
  }
  iVar7 = iVar2 - (int)param_1;
  do {
    cVar1 = *(char *)param_1;
    (&stack0xffffffe4 + iVar7)[(int)param_1] = cVar1;
    param_1 = (uint *)((int)param_1 + 1);
  } while (cVar1 != '\0');
  *(undefined **)(&stack0xffffffe0 + iVar2) = &stack0xffffffe4 + iVar2;
  *(undefined4 *)(&stack0xffffffdc + iVar2) = 0x47d040;
  __strupr(*(char **)(&stack0xffffffe0 + iVar2));
  *(undefined4 *)(&stack0xffffffdc + iVar2) = 0x2e;
  *(undefined **)(&stack0xffffffd8 + iVar2) = &stack0xffffffe4 + iVar2;
  *(undefined4 *)(&stack0xffffffd4 + iVar2) = 0x47d048;
  pcVar6 = _strrchr(*(char **)(&stack0xffffffd8 + iVar2),*(int *)(&stack0xffffffdc + iVar2));
  if (pcVar6 == (char *)0x0) {
LAB_0047d067:
    pcVar6 = &DAT_004b4a00;
    do {
      pcVar8 = pcVar6;
      pcVar6 = pcVar8 + 1;
    } while (*pcVar8 != '\0');
    puVar16 = (undefined4 *)(&stack0xffffffe3 + iVar2);
    do {
      pcVar6 = (char *)((int)puVar16 + 1);
      puVar16 = (undefined4 *)((int)puVar16 + 1);
    } while (*pcVar6 != '\0');
    puVar15 = (undefined4 *)&DAT_004b4a00;
    for (uVar10 = (uint)(pcVar8 + -0x4b49ff) >> 2; uVar10 != 0; uVar10 = uVar10 - 1) {
      *puVar16 = *puVar15;
      puVar15 = puVar15 + 1;
      puVar16 = puVar16 + 1;
    }
    for (uVar10 = (uint)(pcVar8 + -0x4b49ff) & 3; uVar10 != 0; uVar10 = uVar10 - 1) {
      *(undefined *)puVar16 = *(undefined *)puVar15;
      puVar15 = (undefined4 *)((int)puVar15 + 1);
      puVar16 = (undefined4 *)((int)puVar16 + 1);
    }
  }
  else {
    *(char **)(&stack0xffffffe0 + iVar2) = pcVar6;
    *(undefined **)(&stack0xffffffdc + iVar2) = &DAT_004b49f8;
    *(undefined4 *)(&stack0xffffffd8 + iVar2) = 0x47d05c;
    iVar7 = __stricmp(*(char **)(&stack0xffffffdc + iVar2),*(char **)(&stack0xffffffe0 + iVar2));
    if (iVar7 != 0) goto LAB_0047d067;
    *pcVar6 = '\0';
  }
  *(undefined **)(&stack0xffffffe0 + iVar2) = &stack0xffffffe4 + iVar2;
  puVar12 = &stack0xffffffdc + iVar2;
  *(undefined4 *)(&stack0xffffffdc + iVar2) = 0x47d0a2;
  pHVar3 = LoadLibraryA(*(LPCSTR *)(&stack0xffffffe0 + iVar2));
  if ((HMODULE)0x1f < pHVar3) {
    *(UINT *)(puVar12 + -4) = local_c;
    *param_2 = pHVar3;
    *(undefined4 *)(puVar12 + -8) = 0x47d0b6;
    SetErrorMode(*(UINT *)(puVar12 + -4));
    ___security_check_cookie_4(local_8 ^ (uint)&stack0xfffffffc);
    return;
  }
  *(UINT *)(puVar12 + -4) = local_c;
  puVar13 = puVar12 + -8;
  *(undefined4 *)(puVar12 + -8) = 0x47d0d6;
  SetErrorMode(*(UINT *)(puVar12 + -4));
  puVar14 = puVar13 + -4;
  *(undefined4 *)(puVar13 + -4) = 0x47d0dc;
  DVar4 = GetLastError();
  *(DWORD *)(puVar14 + -4) = DVar4;
  *(undefined4 *)(puVar14 + -8) = 0x47d0e2;
  puVar9 = FUN_0047cf30(*(DWORD *)(puVar14 + -4));
  *(undefined **)(puVar14 + -8) = puVar9;
  *(undefined **)(puVar14 + -0xc) = &stack0xffffffe4 + iVar2;
  *(undefined4 *)(puVar14 + -0x10) = 0x47d0e9;
  FUN_0048e370(*(uint **)(puVar14 + -0xc),*(char **)(puVar14 + -8));
LAB_0047d0ec:
  ___security_check_cookie_4(local_8 ^ (uint)&stack0xfffffffc);
  return;
}

