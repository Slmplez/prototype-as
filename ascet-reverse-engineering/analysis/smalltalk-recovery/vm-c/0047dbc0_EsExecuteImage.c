/* Ghidra-generated pseudocode; address 0047dbc0. */

int __cdecl EsExecuteImage(uint *param_1)

{
  uint uVar1;
  undefined4 *puVar2;
  int iVar3;
  int iVar4;
  void *local_14;
  code *pcStack_10;
  uint local_c;
  undefined4 local_8;
  
                    /* 0x5dbc0  10  EsExecuteImage */
  pcStack_10 = __except_handler4;
  local_14 = ExceptionList;
  local_c = DAT_004b96d0 ^ 0x4b0758;
  ExceptionList = &local_14;
  local_8 = 0;
  uVar1 = param_1[6];
  if ((param_1[8] == 1) || (param_1[8] == 3)) {
    *(undefined4 *)(uVar1 + 0x2c) = 0xe;
    *(undefined4 *)(uVar1 + 0x30) = 0;
    *(undefined4 *)(uVar1 + 0x34) = 0xe;
    *param_1 = *param_1 | 2;
    iVar3 = EsSendMessage(uVar1,&stack0xffffffdc,*(uint **)(*(int *)(uVar1 + 0x38) + 0x20),
                          *(uint *)(*(int *)(uVar1 + 0x38) + 0x24),0);
  }
  else {
    iVar3 = FUN_00472a10(uVar1);
  }
  puVar2 = (undefined4 *)param_1[6];
  if (iVar3 != 0) {
    if (((iVar3 < 0x2000) && (iVar3 != 0x3c)) && (iVar3 != 0x3e)) {
      EsPrintf(s__Debug__Dump_stack_trace_due_to_e_004b4ab4,iVar3,0,0,0,0,0,0,0,0,0);
      FUN_00477580((int)puVar2,32000,(HANDLE)0xffffffff);
      EsPrintf(s__End_Debug__Stack_Trace_End_004b4ae0,0,0,0,0,0,0,0,0,0,0);
    }
    if (((((iVar3 != 0) && ((*(byte *)(param_1 + 0x43) & 0x10) != 0)) &&
         ((iVar3 < 0x2000 && ((iVar3 != 0x3e && (iVar3 != 0x34)))))) && (iVar3 != 0x35)) &&
       ((iVar3 != 0x36 && (iVar3 != 0x37)))) {
      param_1[5] = 0x10000;
      iVar4 = FUN_00423444();
      if (iVar4 != 0) {
        FUN_00442e70(puVar2);
      }
      iVar4 = FUN_0048f820(puVar2,s_fatalerr_img_004b4afc,2);
      if (iVar4 == 0) {
        EsPrintf(s__Image_dumped_004b4b0c,0,0,0,0,0,0,0,0,0,0);
        ExceptionList = local_14;
        return iVar3;
      }
      EsPrintf(s__Cannot_dump_image__error_code___004b4b1c,iVar4,0,0,0,0,0,0,0,0,0);
    }
  }
  ExceptionList = local_14;
  return iVar3;
}

