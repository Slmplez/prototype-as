"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20008f68; bytecode file offset 0x15caa4"
!OSHkl methodsFor: 'recovered'!
unloadKeyboardLayout
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := UnloadKeyboardLayout.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x200227b4; bytecode file offset 0x1760d0"
!OSHkl methodsFor: 'recovered'!
activateKeyboardLayout: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OSHkl.
    recoveredValue1 := ActivateKeyboardLayout.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) callWith: (self) with: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) immediate: (recoveredValue3).
    ^recoveredValue4
! !

