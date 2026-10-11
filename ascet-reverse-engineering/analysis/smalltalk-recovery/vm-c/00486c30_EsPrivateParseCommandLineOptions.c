/* Ghidra-generated pseudocode; address 00486c30. */

void __cdecl
EsPrivateParseCommandLineOptions(int param_1,int param_2,undefined4 param_3,int param_4)

{
  char *pcVar1;
  int iVar2;
  int iVar3;
  char **ppcVar4;
  undefined4 local_4;
  
                    /* 0x66c30  44  EsPrivateParseCommandLineOptions */
  EsPrintf(s__Commandline_args___004b7a68,0,0,0,0,0,0,0,0,0,0);
  iVar3 = 1;
  if (1 < param_1) {
    do {
      EsPrintf(s___s_004b7a7c,*(undefined4 *)(param_2 + iVar3 * 4),0,0,0,0,0,0,0,0,0);
      pcVar1 = *(char **)(param_2 + iVar3 * 4);
      if (*pcVar1 != '-') goto switchD_00486ce1_caseD_1;
      iVar2 = _tolower((int)pcVar1[1]);
      if (iVar2 != 0x6d) {
        if (iVar2 == 0x72) {
          switch(*(undefined *)(*(int *)(param_2 + iVar3 * 4) + 2)) {
          case 0:
            *(uint *)(param_4 + 0x10c) = *(uint *)(param_4 + 0x10c) | 0xf;
            break;
          case 0x61:
            *(uint *)(param_4 + 0x10c) = *(uint *)(param_4 + 0x10c) | 0xc;
            break;
          case 99:
            *(uint *)(param_4 + 0x10c) = *(uint *)(param_4 + 0x10c) | 4;
            break;
          case 100:
            *(uint *)(param_4 + 0x10c) = *(uint *)(param_4 + 0x10c) | 0x10;
            break;
          case 0x66:
            *(uint *)(param_4 + 0x10c) = *(uint *)(param_4 + 0x10c) | 1;
            break;
          case 0x6d:
            *(uint *)(param_4 + 0x10c) = *(uint *)(param_4 + 0x10c) | 2;
          }
        }
        else if (iVar2 == 0x76) {
          *(uint *)(param_4 + 0x120) = *(uint *)(param_4 + 0x120) | 0x10;
        }
        goto switchD_00486ce1_caseD_1;
      }
      iVar2 = *(int *)(param_2 + iVar3 * 4);
      switch(*(undefined *)(iVar2 + 2)) {
      case 0x43:
      case 99:
        if ((*(char *)(iVar2 + 3) != 'd') && (*(char *)(iVar2 + 3) != 'D')) {
          ppcVar4 = (char **)(param_4 + 0x80);
          break;
        }
        *(undefined4 *)(param_4 + 0x80) = 0;
      default:
        goto switchD_00486ce1_caseD_1;
      case 0x45:
      case 0x65:
        if (((*(char *)(iVar2 + 3) == 'x') || (*(char *)(iVar2 + 3) == 'X')) &&
           ((*(char *)(iVar2 + 4) == 'p' || (*(char *)(iVar2 + 4) == 'P')))) {
          *(uint *)(param_4 + 0x10) = *(uint *)(param_4 + 0x10) | 0x10000;
        }
        goto switchD_00486ce1_caseD_1;
      case 0x46:
      case 0x66:
        ppcVar4 = (char **)(param_4 + 0x68);
        break;
      case 0x49:
      case 0x69:
        ppcVar4 = (char **)(param_4 + 0x70);
        break;
      case 0x4c:
      case 0x6c:
        ppcVar4 = (char **)(param_4 + 0x74);
        break;
      case 0x4e:
      case 0x6e:
        ppcVar4 = (char **)(param_4 + 100);
        break;
      case 0x4f:
      case 0x6f:
        ppcVar4 = (char **)(param_4 + 0x6c);
        break;
      case 0x53:
      case 0x73:
        if ((*(char *)(iVar2 + 3) == 'd') || (*(char *)(iVar2 + 3) == 'D')) {
          *(uint *)(param_4 + 0x10) = *(uint *)(param_4 + 0x10) | 0x20000;
        }
        goto switchD_00486ce1_caseD_1;
      case 0x54:
      case 0x74:
        ppcVar4 = (char **)(param_4 + 0x134);
        break;
      case 0x58:
      case 0x78:
        ppcVar4 = (char **)(param_4 + 0x78);
      }
      FUN_00485160((char *)(iVar2 + 3),&local_4,ppcVar4);
switchD_00486ce1_caseD_1:
      iVar3 = iVar3 + 1;
    } while (iVar3 < param_1);
  }
  EsPrintf(s____004b7a84,0,0,0,0,0,0,0,0,0,0);
  return;
}

