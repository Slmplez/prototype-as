/* Ghidra-generated pseudocode; address 0047d880. */

void __cdecl
EsSplashPrintf(int param_1,uint param_2,char *param_3,undefined4 param_4,undefined4 param_5,
              undefined4 param_6,undefined4 param_7,undefined4 param_8,undefined4 param_9,
              undefined4 param_10,undefined4 param_11,undefined4 param_12,undefined4 param_13)

{
  undefined4 local_124;
  undefined4 local_120;
  undefined4 local_11c;
  undefined4 local_118;
  undefined4 local_114;
  undefined4 local_110;
  undefined4 local_10c;
  undefined4 local_108;
  char local_104 [256];
  uint local_4;
  
                    /* 0x5d880  57  EsSplashPrintf */
  local_4 = DAT_004b96d0 ^ (uint)&local_124;
  local_10c = param_6;
  local_114 = param_7;
  local_11c = param_8;
  local_124 = param_9;
  local_108 = param_10;
  local_118 = param_11;
  local_110 = param_12;
  local_120 = param_13;
  if ((*(int *)(param_1 + 0x11c) != 0) && (param_2 <= *(uint *)(param_1 + 0x120))) {
    _memset(local_104,0,0x100);
    _sprintf(local_104,param_3,param_4,param_5,local_10c,local_114,local_11c,local_124,local_108,
             local_118,local_110,local_120);
    ShowWindow(*(HWND *)(param_1 + 0x11c),5);
    SetWindowTextA(*(HWND *)(param_1 + 0x11c),local_104);
  }
  ___security_check_cookie_4(local_4 ^ (uint)&local_124);
  return;
}

