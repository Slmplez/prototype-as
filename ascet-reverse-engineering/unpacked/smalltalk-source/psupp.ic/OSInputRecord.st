"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001680; bytecode file offset 0x155d58"
!OSInputRecord methodsFor: 'recovered'!
EventType
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d474; bytecode file offset 0x160f90"
!OSInputRecord methodsFor: 'recovered'!
Event
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSInputRecordAnon2.
    recoveredValue1 := (self) structAt: (4) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200113a8; bytecode file offset 0x165330"
!OSInputRecord methodsFor: 'recovered'!
EventType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001271c; bytecode file offset 0x166e00"
!OSInputRecord methodsFor: 'recovered'!
Event: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (4) put: (recoveredValue0).
    ^self
! !

