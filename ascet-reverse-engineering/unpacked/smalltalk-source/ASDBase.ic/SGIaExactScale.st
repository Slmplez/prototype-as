"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002a104; bytecode file offset 0x934580"
!SGIaExactScale methodsFor: 'recovered'!
implType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) interval.
    recoveredValue1 := (recoveredValue0) integerType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20067ef4; bytecode file offset 0x965b90"
!SGIaExactScale methodsFor: 'recovered'!
implInterval
    | recoveredValue0 |
    recoveredValue0 := implInterval.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20076edc; bytecode file offset 0x9757c8"
!SGIaExactScale methodsFor: 'recovered'!
isExact
    ^true
! !

"ASDBase.ic method 0x200bfd24; bytecode file offset 0x9bd228"
!SGIaExactScale methodsFor: 'recovered'!
implInterval: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    implInterval := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2010dd54; bytecode file offset 0xa0a618"
!SGIaExactScale methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPutAll: ('exact: ').
    recoveredValue1 := recoveredArg1.
    super printOn: (recoveredValue1).
    ^self
! !

