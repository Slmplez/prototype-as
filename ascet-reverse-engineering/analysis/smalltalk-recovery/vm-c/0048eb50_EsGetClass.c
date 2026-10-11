/* Ghidra-generated pseudocode; address 0048eb50. */

undefined4 __cdecl EsGetClass(undefined4 *param_1,undefined4 *param_2)

{
                    /* 0x6eb50  19  EsGetClass */
  if (((uint)param_1 & 3) == 0) {
    return *param_1;
  }
  if (((uint)param_1 & 1) != 0) {
    return param_2[4];
  }
  if (((byte)param_1 & 0xf) == 6) {
    return param_2[5];
  }
  if (param_1 == (undefined4 *)&DAT_0000001e) {
    return param_2[1];
  }
  if (param_1 == (undefined4 *)&DAT_0000002e) {
    return param_2[2];
  }
  if (param_1 == (undefined4 *)&DAT_0000000e) {
    return *param_2;
  }
  return param_2[7];
}

