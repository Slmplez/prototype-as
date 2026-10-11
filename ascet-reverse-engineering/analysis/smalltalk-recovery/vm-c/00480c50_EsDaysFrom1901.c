/* Ghidra-generated pseudocode; address 00480c50. */

int EsDaysFrom1901(void)

{
  uint uVar1;
  int iVar2;
  uint local_c;
  uint local_8;
  int local_4;
  
                    /* 0x60c50  8  EsDaysFrom1901 */
  iVar2 = 0;
  FUN_0047d1e0(&local_c);
  if (local_c < 0x76d) {
    return 0;
  }
  if (((2 < local_8) && ((local_c & 3) == 0)) &&
     ((local_c != (local_c / 100) * 100 || (local_c == (local_c / 400) * 400)))) {
    iVar2 = 1;
  }
  uVar1 = local_c - 0x76d;
  return (uVar1 >> 2) +
         uVar1 * 0x16d + local_4 +
         ((*(int *)(s_vmtrap_log_004b4de4 + local_8 * 4 + 8) + (local_c - 0x641) / 400) -
         uVar1 / 100) + -1 + iVar2;
}

