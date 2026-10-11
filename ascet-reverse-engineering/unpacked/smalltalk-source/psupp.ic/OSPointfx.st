"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000d160; bytecode file offset 0x160b8c"
!OSPointfx methodsFor: 'recovered'!
x
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSFixed.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000d514; bytecode file offset 0x160f90"
!OSPointfx methodsFor: 'recovered'!
y
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSFixed.
    recoveredValue1 := (self) structAt: (4) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010f58; bytecode file offset 0x165330"
!OSPointfx methodsFor: 'recovered'!
x: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012f5c; bytecode file offset 0x166e00"
!OSPointfx methodsFor: 'recovered'!
y: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (4) put: (recoveredValue0).
    ^self
! !

