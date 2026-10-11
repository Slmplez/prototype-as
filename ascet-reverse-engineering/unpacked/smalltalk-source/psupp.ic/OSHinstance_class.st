"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000a19c; bytecode file offset 0x15e0d8"
!OSHinstance class methodsFor: 'recovered'!
loadLibrary: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHmodule.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) loadLibrary: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x200215dc; bytecode file offset 0x174eb0"
!OSHinstance class methodsFor: 'recovered'!
coLoadLibrary: recoveredArg1 bAutoFree: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := CoLoadLibrary.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asOlePSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) callWith: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) immediate: (recoveredValue4).
    ^recoveredValue5
! !

"psupp.ic method 0x20021a7c; bytecode file offset 0x175578"
!OSHinstance class methodsFor: 'recovered'!
loadLibraryEx: recoveredArg1 hFile: recoveredArg2 dwFlags: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OSHmodule.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) loadLibraryEx: (recoveredValue1) hFile: (recoveredValue2) dwFlags: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x200286d8; bytecode file offset 0x17bf94"
!OSHinstance class methodsFor: 'recovered'!
findExecutable: recoveredArg1 lpDirectory: recoveredArg2 lpResult: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := FindExecutable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) asPSZ.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (recoveredValue0) callWith: (recoveredValue2) with: (recoveredValue4) with: (recoveredValue5).
    recoveredValue7 := (self) immediate: (recoveredValue6).
    ^recoveredValue7
! !

