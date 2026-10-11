"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20008ef8; bytecode file offset 0x15caa4"
!OSHenhmetafile methodsFor: 'recovered'!
deleteEnhMetaFile
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := DeleteEnhMetaFile.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x200206ec; bytecode file offset 0x174df8"
!OSHenhmetafile methodsFor: 'recovered'!
getEnhMetaFileDescription: recoveredArg1 lpszDescription: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := GetEnhMetaFileDescription.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x200208cc; bytecode file offset 0x174df8"
!OSHenhmetafile methodsFor: 'recovered'!
getEnhMetaFileHeader: recoveredArg1 lpemh: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := GetEnhMetaFileHeader.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x20020dbc; bytecode file offset 0x174df8"
!OSHenhmetafile methodsFor: 'recovered'!
getEnhMetaFilePaletteEntries: recoveredArg1 lppe: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := GetEnhMetaFilePaletteEntries.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x200214dc; bytecode file offset 0x174df8"
!OSHenhmetafile methodsFor: 'recovered'!
getEnhMetaFileBits: recoveredArg1 lpbBuffer: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := GetEnhMetaFileBits.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x2002658c; bytecode file offset 0x179e98"
!OSHenhmetafile methodsFor: 'recovered'!
getWinMetaFileBits: recoveredArg1 lpbBuffer: recoveredArg2 fnMapMode: recoveredArg3 hdcRef: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := GetWinMetaFileBits.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    ^recoveredValue5
! !

"psupp.ic method 0x200278b0; bytecode file offset 0x17b1e4"
!OSHenhmetafile methodsFor: 'recovered'!
copyEnhMetaFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OSHenhmetafile.
    recoveredValue1 := CopyEnhMetaFile.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asPSZ.
    recoveredValue4 := (recoveredValue1) callWith: (self) with: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) immediate: (recoveredValue4).
    ^recoveredValue5
! !

