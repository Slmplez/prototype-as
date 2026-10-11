"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000243c; bytecode file offset 0x155d58"
!OSControlinfo methodsFor: 'recovered'!
cb
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000415c; bytecode file offset 0x157f64"
!OSControlinfo methodsFor: 'recovered'!
cAccel
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004e24; bytecode file offset 0x1589a4"
!OSControlinfo methodsFor: 'recovered'!
dwFlags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x200101cc; bytecode file offset 0x165330"
!OSControlinfo methodsFor: 'recovered'!
cb: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012404; bytecode file offset 0x166e00"
!OSControlinfo methodsFor: 'recovered'!
hAccel: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014018; bytecode file offset 0x1683c0"
!OSControlinfo methodsFor: 'recovered'!
cAccel: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015800; bytecode file offset 0x169290"
!OSControlinfo methodsFor: 'recovered'!
dwFlags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b858; bytecode file offset 0x16f1fc"
!OSControlinfo methodsFor: 'recovered'!
hAccel
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHaccel.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

