/* Ghidra-generated pseudocode; address 0047f9d0. */

undefined * EsVMVersionString(void)

{
  int iVar1;
  undefined *puVar2;
  
                    /* 0x5f9d0  60  EsVMVersionString */
  puVar2 = &DAT_004bc521;
  iVar1 = FUN_00423444();
  if (iVar1 != 0) {
    puVar2 = &DAT_004b53f8;
  }
  _sprintf(&DAT_004bc320,s__d__d_s__s__s_004b5410,4,0,&DAT_004bc522,puVar2,s_1_25_2011__81__004b5400
          );
  return &DAT_004bc320;
}

