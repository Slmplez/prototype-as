/* Ghidra-generated pseudocode; address 00478d90. */

DWORD __cdecl EsFileWrite(HANDLE param_1,LPCVOID param_2,DWORD param_3)

{
  uint nNumberOfBytesToWrite;
  BOOL BVar1;
  uint uVar2;
  LPCVOID lpBuffer;
  
                    /* 0x58d90  16  EsFileWrite */
  nNumberOfBytesToWrite = param_3;
  if (0xffff < (int)param_3) {
    nNumberOfBytesToWrite = 0x10000;
  }
  uVar2 = param_3;
  lpBuffer = param_2;
  if (param_3 != 0) {
    do {
      BVar1 = WriteFile(param_1,lpBuffer,nNumberOfBytesToWrite,(LPDWORD)&param_2,(LPOVERLAPPED)0x0);
      if (BVar1 == 0) {
        return 0xffffffff;
      }
      if (param_2 == (LPCVOID)0x0) {
        return param_3 - uVar2;
      }
      uVar2 = uVar2 - (int)param_2;
      nNumberOfBytesToWrite = uVar2;
      if (0xffff < uVar2) {
        nNumberOfBytesToWrite = 0x10000;
      }
      lpBuffer = (LPCVOID)((int)lpBuffer + (int)param_2);
    } while (uVar2 != 0);
  }
  return param_3;
}

