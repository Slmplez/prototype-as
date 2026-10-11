"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000bdf0; bytecode file offset 0x15f71c"
!OSHkl class methodsFor: 'recovered'!
getKeyboardLayout: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := GetKeyboardLayout.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (recoveredValue1).
    recoveredValue3 := (self) immediate: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x200215c4; bytecode file offset 0x174eb0"
!OSHkl class methodsFor: 'recovered'!
loadKeyboardLayout: recoveredArg1 fuFlags: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := LoadKeyboardLayout.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) callWith: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) immediate: (recoveredValue4).
    ^recoveredValue5
! !

