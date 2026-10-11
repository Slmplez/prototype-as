"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200053d8; bytecode file offset 0x664a8"
!Integer methodsFor: 'recovered'!
sstAsQuotedString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) printString.
    recoveredValue1 := ('"%1"') bindWith: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000b96c; bytecode file offset 0x6ca40"
!Integer methodsFor: 'recovered'!
abtMD5Rotate: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) bitShift: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) - (32).
    recoveredValue4 := (self) bitShift: (recoveredValue3).
    recoveredValue5 := (recoveredValue1) bitOr: (recoveredValue4).
    recoveredValue6 := (recoveredValue5) bitAnd: (4294967295).
    ^recoveredValue6
! !

