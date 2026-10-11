"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000f8d8; bytecode file offset 0x163194"
!OSHmetafile class methodsFor: 'recovered'!
getMetaFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := GetMetaFile.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := (recoveredValue0) callWith: (recoveredValue2).
    recoveredValue4 := (self) immediate: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x2001e4c0; bytecode file offset 0x171d88"
!OSHmetafile class methodsFor: 'recovered'!
setMetaFileBitsEx: recoveredArg1 lpData: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SetMetaFileBitsEx.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) immediate: (recoveredValue3).
    ^recoveredValue4
! !

