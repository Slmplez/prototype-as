"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000f848; bytecode file offset 0x163194"
!OSHmodule class methodsFor: 'recovered'!
loadLibrary: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := LoadLibrary.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := (recoveredValue0) callWith: (recoveredValue2).
    recoveredValue4 := (self) immediate: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x2000f8c0; bytecode file offset 0x163194"
!OSHmodule class methodsFor: 'recovered'!
getModuleHandle: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := GetModuleHandle.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := (recoveredValue0) callWith: (recoveredValue2).
    recoveredValue4 := (self) immediate: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x200260dc; bytecode file offset 0x179980"
!OSHmodule class methodsFor: 'recovered'!
loadLibraryEx: recoveredArg1 hFile: recoveredArg2 dwFlags: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := LoadLibraryEx.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue0) callWith: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    recoveredValue6 := (self) immediate: (recoveredValue5).
    ^recoveredValue6
! !

