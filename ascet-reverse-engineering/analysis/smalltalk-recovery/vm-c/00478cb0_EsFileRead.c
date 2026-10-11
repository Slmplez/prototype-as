/* Ghidra-generated pseudocode; address 00478cb0. */

DWORD __cdecl EsFileRead(HANDLE param_1,LPVOID param_2,DWORD param_3)

{
  uint nNumberOfBytesToRead;
  BOOL BVar1;
  uint uVar2;
  LPVOID lpBuffer;
  
                    /* 0x58cb0  13  EsFileRead */
  nNumberOfBytesToRead = param_3;
  if (0xffff < (int)param_3) {
    nNumberOfBytesToRead = 0x10000;
  }
  uVar2 = param_3;
  lpBuffer = param_2;
  if (param_3 != 0) {
    do {
      BVar1 = ReadFile(param_1,lpBuffer,nNumberOfBytesToRead,(LPDWORD)&param_2,(LPOVERLAPPED)0x0);
      if (BVar1 == 0) {
        return 0xffffffff;
      }
      if (param_2 == (LPVOID)0x0) {
        return param_3 - uVar2;
      }
      uVar2 = uVar2 - (int)param_2;
      nNumberOfBytesToRead = uVar2;
      if (0xffff < uVar2) {
        nNumberOfBytesToRead = 0x10000;
      }
      lpBuffer = (LPVOID)((int)lpBuffer + (int)param_2);
    } while (uVar2 != 0);
  }
  return param_3;
}

