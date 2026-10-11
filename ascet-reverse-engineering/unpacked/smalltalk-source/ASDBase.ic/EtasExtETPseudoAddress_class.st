"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200724c0; bytecode file offset 0x96ee04"
!EtasExtETPseudoAddress class methodsFor: 'recovered'!
_internalLevels
    ^1
! !

"ASDBase.ic method 0x20184fdc; bytecode file offset 0xa818a0"
!EtasExtETPseudoAddress class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) + (1).
    recoveredValue2 := super create: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) _setClassVariable: (0).
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) _setVariableOffset: (0) value: (0).
    ^recoveredValue2
! !

