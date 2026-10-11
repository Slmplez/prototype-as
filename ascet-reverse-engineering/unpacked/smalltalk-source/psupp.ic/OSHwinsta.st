"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20008408; bytecode file offset 0x15caa4"
!OSHwinsta methodsFor: 'recovered'!
setProcessWindowStation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SetProcessWindowStation.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20008e18; bytecode file offset 0x15caa4"
!OSHwinsta methodsFor: 'recovered'!
closeWindowStation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := CloseWindowStation.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2002090c; bytecode file offset 0x174df8"
!OSHwinsta methodsFor: 'recovered'!
enumDesktops: recoveredArg1 lParam: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EnumDesktops.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

