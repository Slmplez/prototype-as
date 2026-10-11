/* Ghidra-generated pseudocode; address 0047da30. */

void __cdecl
EsPrintf(char *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5,
        undefined4 param_6,undefined4 param_7,undefined4 param_8,undefined4 param_9,
        undefined4 param_10,undefined4 param_11)

{
  undefined4 *puVar1;
  char local_204 [512];
  uint local_4;
  
                    /* 0x5da30  41  EsPrintf */
  local_4 = DAT_004b96d0 ^ (uint)local_204;
  puVar1 = FUN_0047c360();
  if (puVar1[0x26] != 0) {
    __snprintf(local_204,0x200,param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,
               param_9,param_10,param_11);
    FUN_0047d760(local_204);
  }
  ___security_check_cookie_4(local_4 ^ (uint)local_204);
  return;
}

