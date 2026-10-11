/* Ghidra-generated pseudocode; address 004771e0. */

DWORD EsVMpid(void)

{
  DWORD DVar1;
  
                    /* 0x571e0  61  EsVMpid */
                    /* WARNING: Could not recover jumptable at 0x0049419b. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  DVar1 = GetCurrentProcessId();
  return DVar1;
}

