/* Ghidra-generated pseudocode; address 0047e0b0. */

undefined4 * __cdecl EsInitializeImage(undefined4 param_1,undefined4 param_2)

{
  bool bVar1;
  undefined4 *puVar2;
  undefined4 *puVar3;
  LPVOID pvVar4;
  undefined *puVar5;
  int iVar6;
  undefined3 extraout_var;
  undefined4 unaff_EBX;
  undefined4 unaff_ESI;
  undefined4 unaff_retaddr;
  
                    /* 0x5e0b0  25  EsInitializeImage */
  puVar2 = (undefined4 *)FUN_0047dfc0();
  if (puVar2 == (undefined4 *)0x0) {
    EsLogMemoryAllocationError(s_EsInitializeImage_>allocateGloba_004b4b40);
    return (undefined4 *)0x0;
  }
  puVar3 = FUN_00478e10();
  puVar2[0x28] = puVar3;
  if (puVar3 == (undefined4 *)0x0) {
    EsLogMemoryAllocationError(s_EsInitializeImage_>EsInitialized_004b4b68);
    return (undefined4 *)0x0;
  }
  pvVar4 = FUN_004795f0(0x74);
  puVar2[3] = pvVar4;
  if (pvVar4 == (LPVOID)0x0) {
    EsLogMemoryAllocationError(s_EsInitializeImage_>EsAllocateMem_004b4b98);
    return (undefined4 *)0x0;
  }
  _memset(pvVar4,0,0x74);
  pvVar4 = FUN_004795f0(0x800);
  puVar2[0x18] = pvVar4;
  if (pvVar4 == (LPVOID)0x0) {
    EsLogMemoryAllocationError(s_EsInitializeImage_>EsAllocateMem_004b4bc8);
    return (undefined4 *)0x0;
  }
  _memset(pvVar4,0,0x800);
  pvVar4 = FUN_004795f0(0x800);
  puVar2[0x3c] = pvVar4;
  if (pvVar4 == (LPVOID)0x0) {
    EsLogMemoryAllocationError(s_EsInitializeImage_>EsAllocateMem_004b4bfc);
    return (undefined4 *)0x0;
  }
  _memset(pvVar4,0,0x800);
  pvVar4 = FUN_004795f0(0x800);
  puVar2[0x45] = pvVar4;
  if (pvVar4 == (LPVOID)0x0) {
    EsLogMemoryAllocationError(s_EsInitializeImage_>EsAllocateMem_004b4c30);
    return (undefined4 *)0x0;
  }
  _memset(pvVar4,0,0x800);
  puVar5 = (undefined *)FUN_004795f0(0x800);
  puVar2[0x4a] = puVar5;
  if (puVar5 == (undefined *)0x0) {
    EsLogMemoryAllocationError(s_EsInitializeImage_>EsAllocateMem_004b4c6c);
    return (undefined4 *)0x0;
  }
  puVar2[0x48] = 0;
  *puVar5 = 0;
  puVar2[0x19] = 0xffffffff;
  puVar2[0x1a] = 0xffffffff;
  puVar2[0x44] = 0x10000;
  puVar2[0x4c] = 0;
  puVar2[0x4d] = 10;
  puVar2[0x1c] = 0x200000;
  puVar2[0x1b] = 0x200000;
  puVar2[0x1d] = 0x7d000;
  puVar2[0x1e] = 0;
  puVar2[0x2b] = 0;
  puVar2[0x20] = 2000000;
  puVar2[4] = 1;
  *puVar2 = 1;
  puVar2[5] = 0;
  puVar2[0x3b] = 0;
  iVar6 = FUN_00479110();
  if (iVar6 != 0) {
    iVar6 = FUN_0047e040();
    puVar2[0x16] = iVar6;
    if (iVar6 == 0) {
      EsLogMemoryAllocationError(s_EsInitializeImage_>EsAllocateMem_004b4c9c);
      return (undefined4 *)0x0;
    }
  }
  puVar2[0x3d] = 0;
  puVar2[0x3e] = 0;
  FUN_0047dec0((LPVOID *)(puVar2 + 1),2000);
  FUN_0047dec0((LPVOID *)(puVar2 + 2),2000);
  bVar1 = FUN_00477080((int)puVar2);
  if (CONCAT31(extraout_var,bVar1) == 0) {
    EsLogMemoryAllocationError(s_EsInitializeImage_>initializeVMC_004b4cd0);
    return (undefined4 *)0x0;
  }
  iVar6 = FUN_004794d0((int)puVar2);
  if (iVar6 == 0) {
    EsLogMemoryAllocationError(s_EsInitializeImage_>EsInitializeS_004b4cfc);
    return (undefined4 *)0x0;
  }
  FUN_004917f0((int)puVar2);
  FUN_00477fd0((int)puVar2,8);
  iVar6 = FUN_00423444();
  if (iVar6 != 0) {
    pvVar4 = FUN_004795f0(0x1000);
    puVar2[0x40] = pvVar4;
    if (pvVar4 == (LPVOID)0x0) {
      EsLogMemoryAllocationError(s_EsInitializeImage_>EsAllocateMem_004b4d2c);
      return (undefined4 *)0x0;
    }
  }
  FUN_00491420((int)puVar2,unaff_ESI,unaff_EBX,unaff_retaddr,param_1,param_2);
  return puVar2;
}

