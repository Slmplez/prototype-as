/* Ghidra-generated pseudocode; address 0048eb10. */

uint __cdecl EsBasicSize(int *param_1)

{
  uint uVar1;
  
                    /* 0x6eb10  6  EsBasicSize */
  if (((uint)param_1 & 3) != 0) {
    return 0;
  }
  uVar1 = param_1[1] & 6;
  if (uVar1 == 0) {
    return ((uint)param_1[2] >> 2) - (*(int *)(*param_1 + 0x18) >> 1);
  }
  if (uVar1 == 2) {
    return param_1[2];
  }
  if (uVar1 != 6) {
    return (uint)param_1[2] >> 1;
  }
  return (uint)param_1[2] >> 2;
}

