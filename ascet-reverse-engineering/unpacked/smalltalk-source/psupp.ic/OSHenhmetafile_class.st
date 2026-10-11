"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000f8a8; bytecode file offset 0x163194"
!OSHenhmetafile class methodsFor: 'recovered'!
getEnhMetaFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := GetEnhMetaFile.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := (recoveredValue0) callWith: (recoveredValue2).
    recoveredValue4 := (self) immediate: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x2001e470; bytecode file offset 0x171d88"
!OSHenhmetafile class methodsFor: 'recovered'!
setEnhMetaFileBits: recoveredArg1 lpData: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SetEnhMetaFileBits.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) immediate: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x20026658; bytecode file offset 0x179f5c"
!OSHenhmetafile class methodsFor: 'recovered'!
setWinMetaFileBits: recoveredArg1 lpbBuffer: recoveredArg2 hdcRef: recoveredArg3 lpmfp: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SetWinMetaFileBits.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue0) callWith: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    recoveredValue6 := (self) immediate: (recoveredValue5).
    ^recoveredValue6
! !

