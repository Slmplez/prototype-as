/* Ghidra-generated pseudocode; address 00443920. */

undefined4 __cdecl EsNewObjectsDo(int param_1,undefined *param_2,undefined4 param_3)

{
  uint *puVar1;
  undefined4 *puVar2;
  undefined4 *puVar3;
  undefined *puVar4;
  
                    /* 0x23920  35  EsNewObjectsDo */
  puVar4 = &stack0xfffffffc;
  for (puVar1 = *(uint **)(*(int *)(*(int *)(param_1 + 0x68) + 0x4c) + 4); puVar1 != (uint *)0x0;
      puVar1 = (uint *)puVar1[0xb]) {
    if ((*puVar1 & 2) != 0) {
      puVar1[6] = puVar1[3];
      puVar3 = (undefined4 *)puVar1[7];
      for (puVar2 = (undefined4 *)puVar1[6]; puVar2 != (undefined4 *)puVar1[5];
          puVar2 = (undefined4 *)((int)puVar2 + (puVar2[2] + 0xf & 0xfffffffc))) {
        if (puVar3 == puVar2) {
          puVar3 = (undefined4 *)*puVar3;
        }
        else {
          (*(code *)param_2)(puVar2,param_3,puVar4);
        }
      }
      puVar1[6] = (uint)puVar2;
    }
  }
  return 0;
}

