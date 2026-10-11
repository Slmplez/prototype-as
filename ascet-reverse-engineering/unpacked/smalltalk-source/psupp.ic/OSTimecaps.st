"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200010d4; bytecode file offset 0x155d58"
!OSTimecaps methodsFor: 'recovered'!
wPeriodMin
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200033bc; bytecode file offset 0x157170"
!OSTimecaps methodsFor: 'recovered'!
wPeriodMax
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x2000f09c; bytecode file offset 0x163098"
!OSTimecaps methodsFor: 'recovered'!
timeGetDevCaps: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := TimeGetDevCaps.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2000fda0; bytecode file offset 0x165330"
!OSTimecaps methodsFor: 'recovered'!
wPeriodMin: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012590; bytecode file offset 0x166e00"
!OSTimecaps methodsFor: 'recovered'!
wPeriodMax: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

