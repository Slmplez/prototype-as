/* Ghidra-generated pseudocode; address 00478c10. */

int __cdecl EsFileClose(HANDLE param_1)

{
  BOOL BVar1;
  
                    /* 0x58c10  11  EsFileClose */
  BVar1 = CloseHandle(param_1);
  return (BVar1 != 0) - 1;
}

