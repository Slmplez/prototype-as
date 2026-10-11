/* Ghidra-generated pseudocode; address 00478d70. */

int __cdecl EsFileUnlink(LPCSTR param_1)

{
  BOOL BVar1;
  
                    /* 0x58d70  15  EsFileUnlink */
  BVar1 = DeleteFileA(param_1);
  return (BVar1 != 0) - 1;
}

