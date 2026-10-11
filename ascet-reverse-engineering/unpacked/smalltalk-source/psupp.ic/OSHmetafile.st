"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200085b8; bytecode file offset 0x15caa4"
!OSHmetafile methodsFor: 'recovered'!
deleteMetaFile
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := DeleteMetaFile.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20020b6c; bytecode file offset 0x174df8"
!OSHmetafile methodsFor: 'recovered'!
getMetaFileBitsEx: recoveredArg1 lpvData: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := GetMetaFileBitsEx.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x2002785c; bytecode file offset 0x17b1e4"
!OSHmetafile methodsFor: 'recovered'!
copyMetaFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OSHmetafile.
    recoveredValue1 := CopyMetaFile.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asPSZ.
    recoveredValue4 := (recoveredValue1) callWith: (self) with: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) immediate: (recoveredValue4).
    ^recoveredValue5
! !

