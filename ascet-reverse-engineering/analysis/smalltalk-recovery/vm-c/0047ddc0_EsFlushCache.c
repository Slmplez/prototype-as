/* Ghidra-generated pseudocode; address 0047ddc0. */

void __cdecl EsFlushCache(int param_1)

{
  uint *puVar1;
  size_t _Size;
  
                    /* 0x5ddc0  17  EsFlushCache */
  _Size = FUN_0042342c();
  _memset(*(void **)(param_1 + 0x3c),-1,_Size);
  puVar1 = (uint *)(*(int *)(param_1 + 0x68) + 0x10);
  *puVar1 = *puVar1 & 0xfffffffd;
  return;
}

