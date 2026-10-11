"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x200017d8; bytecode file offset 0x4c844"
!SmallInteger class methodsFor: 'recovered'!
largest
    | recoveredValue0 |
    recoveredValue0 := LargestSmallInt.
    ^recoveredValue0
! !

"kernel.ic method 0x20001808; bytecode file offset 0x4c844"
!SmallInteger class methodsFor: 'recovered'!
smallest
    | recoveredValue0 |
    recoveredValue0 := SmallestSmallInt.
    ^recoveredValue0
! !

"kernel.ic method 0x20004b10; bytecode file offset 0x4fa2c"
!SmallInteger class methodsFor: 'recovered'!
largest: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    LargestSmallInt := recoveredValue1.
    ^recoveredValue0
! !

"kernel.ic method 0x20004b1c; bytecode file offset 0x4fa2c"
!SmallInteger class methodsFor: 'recovered'!
smallest: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    SmallestSmallInt := recoveredValue1.
    ^recoveredValue0
! !

"kernel.ic method 0x2000ec20; bytecode file offset 0x59b3c"
!SmallInteger class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (2) raisedToInteger: (30).
    recoveredValue1 := (recoveredValue0) negated.
    (self) smallest: (recoveredValue1).
    recoveredValue2 := (2) raisedToInteger: (30).
    recoveredValue3 := (recoveredValue2) + (-1).
    (self) largest: (recoveredValue3).
    ^self
! !

