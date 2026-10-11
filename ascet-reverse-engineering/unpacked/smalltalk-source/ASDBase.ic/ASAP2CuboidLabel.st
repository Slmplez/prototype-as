"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20125674; bytecode file offset 0xa21f40"
!ASAP2CuboidLabel methodsFor: 'recovered'!
childrenA2lEdit
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super childrenA2lEdit.
    recoveredValue1 := (self) mapList.
    recoveredValue2 := (recoveredValue1) defaultReturn: (#()).
    recoveredValue3 := (recoveredValue0) , (recoveredValue2).
    ^recoveredValue3
! !

