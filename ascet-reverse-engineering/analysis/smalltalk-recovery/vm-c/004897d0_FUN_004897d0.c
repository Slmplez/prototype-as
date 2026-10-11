/* Ghidra-generated pseudocode; address 004897d0. */

void __cdecl FUN_004897d0(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  uint *puVar1;
  int iVar2;
  undefined4 local_120;
  undefined4 local_11c;
  undefined4 local_118;
  undefined local_114;
  undefined4 local_14;
  uint local_4;
  
  local_4 = DAT_004b96d0 ^ (uint)&local_120;
  local_114 = 0;
  local_14 = 0;
  puVar1 = FUN_004847d0((uint *)param_1[0x12],(uint *)&local_114);
  if (puVar1 == (uint *)0x0) {
    EsLogMemoryAllocationError(s_loadBufferComponent_>addToCompon_004b7d78);
    ___security_check_cookie_4(local_4 ^ (uint)&local_120);
    return;
  }
  local_11c = param_2;
  local_120 = param_2;
  local_118 = param_3;
  puVar1[0x44] = puVar1[0x44] | 0x400;
  puVar1[0x53] = (uint)&local_120;
  iVar2 = FUN_004891e0(param_1);
  if (iVar2 != 0) {
    FUN_004856c0((int)param_1);
  }
  ___security_check_cookie_4(local_4 ^ (uint)&local_120);
  return;
}

