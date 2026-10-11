/* Ghidra-generated pseudocode; address 0047bfe0. */

HGLOBAL EsEnumFontFamilies(HDC param_1,LPCSTR param_2)

{
  HGLOBAL hMem;
  undefined4 local_c;
  int local_8;
  int *piStack_4;
  
                    /* 0x5bfe0  9  EsEnumFontFamilies */
  local_8 = 0;
  local_c = 0;
  EnumFontFamiliesA(param_1,param_2,(FONTENUMPROCA)&LAB_0047bf30,(LPARAM)&local_c);
  hMem = GlobalAlloc(0x42,local_8 * 0x88 + 4);
  if (hMem != (HGLOBAL)0x0) {
    piStack_4 = (int *)GlobalLock(hMem);
    if (piStack_4 != (int *)0x0) {
      *piStack_4 = local_8;
      piStack_4 = piStack_4 + 1;
      local_8 = 0;
      local_c = 1;
      EnumFontFamiliesA(param_1,param_2,(FONTENUMPROCA)&LAB_0047bf30,(LPARAM)&local_c);
      GlobalUnlock(hMem);
      return hMem;
    }
    GlobalFree(hMem);
  }
  return (HGLOBAL)0x0;
}

