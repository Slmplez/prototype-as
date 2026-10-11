/* Ghidra-generated pseudocode; address 0047cf10. */

undefined4 __cdecl EsCloseSharedLibrary(HMODULE param_1)

{
                    /* 0x5cf10  7  EsCloseSharedLibrary */
  if (param_1 < (HMODULE)0x20) {
    return 2;
  }
  FreeLibrary(param_1);
  return 0;
}

