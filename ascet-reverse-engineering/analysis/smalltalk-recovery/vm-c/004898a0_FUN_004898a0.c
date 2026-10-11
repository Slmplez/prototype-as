/* Ghidra-generated pseudocode; address 004898a0. */

void __cdecl FUN_004898a0(undefined4 *param_1,char *param_2)

{
  char cVar1;
  uint *puVar2;
  int iVar3;
  uint local_114 [64];
  undefined4 local_14;
  uint local_4;
  
  local_4 = DAT_004b96d0 ^ (uint)local_114;
  iVar3 = (int)local_114 - (int)param_2;
  do {
    cVar1 = *param_2;
    param_2[iVar3] = cVar1;
    param_2 = param_2 + 1;
  } while (cVar1 != '\0');
  local_14 = 0;
  puVar2 = FUN_004847d0((uint *)param_1[0x12],local_114);
  if (puVar2 == (uint *)0x0) {
    EsLogMemoryAllocationError(s_loadFileComponent_>addToComponen_004b7b40);
  }
  else {
    FUN_004891e0(param_1);
  }
  ___security_check_cookie_4(local_4 ^ (uint)local_114);
  return;
}

