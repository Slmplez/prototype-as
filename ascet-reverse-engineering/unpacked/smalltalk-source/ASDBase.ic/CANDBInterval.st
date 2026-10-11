"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20069950; bytecode file offset 0x966bdc"
!CANDBInterval methodsFor: 'recovered'!
low
    | recoveredValue0 |
    recoveredValue0 := low.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006af84; bytecode file offset 0x967a18"
!CANDBInterval methodsFor: 'recovered'!
high
    | recoveredValue0 |
    recoveredValue0 := high.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20144710; bytecode file offset 0xa40fcc"
!CANDBInterval methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    (self) skipSeparators: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getNumber: (recoveredValue1).
    low := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) getNumber: (recoveredValue3).
    high := recoveredValue4.
    ^self
! !

