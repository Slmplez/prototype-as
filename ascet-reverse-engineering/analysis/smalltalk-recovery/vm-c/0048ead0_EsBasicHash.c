/* Ghidra-generated pseudocode; address 0048ead0. */

uint __cdecl EsBasicHash(uint param_1)

{
  uint uVar1;
  
                    /* 0x6ead0  5  EsBasicHash */
  if ((param_1 & 3) == 0) {
    return *(ushort *)(param_1 + 6) & 0x7fff;
  }
  if (((byte)param_1 & 0xf) == 6) {
    return param_1 >> 4 & 0xffff;
  }
  if ((param_1 & 1) == 0) {
    uVar1 = param_1 & 0x3fffffff;
  }
  else {
    uVar1 = (int)param_1 >> 1;
    if ((int)uVar1 < 0) {
      return -uVar1;
    }
  }
  return uVar1;
}

