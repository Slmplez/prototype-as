"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001e0c; bytecode file offset 0x155d58"
!OSFormatetc methodsFor: 'recovered'!
cfFormat
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003c28; bytecode file offset 0x157f64"
!OSFormatetc methodsFor: 'recovered'!
dwAspect
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004950; bytecode file offset 0x1589a4"
!OSFormatetc methodsFor: 'recovered'!
lindex
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x2000554c; bytecode file offset 0x159294"
!OSFormatetc methodsFor: 'recovered'!
tymed
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x2000fe48; bytecode file offset 0x165330"
!OSFormatetc methodsFor: 'recovered'!
cfFormat: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012ba8; bytecode file offset 0x166e00"
!OSFormatetc methodsFor: 'recovered'!
ptd: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014774; bytecode file offset 0x1683c0"
!OSFormatetc methodsFor: 'recovered'!
dwAspect: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200159f8; bytecode file offset 0x169290"
!OSFormatetc methodsFor: 'recovered'!
lindex: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200160c4; bytecode file offset 0x169eb4"
!OSFormatetc methodsFor: 'recovered'!
tymed: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b650; bytecode file offset 0x16f1fc"
!OSFormatetc methodsFor: 'recovered'!
ptd
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSDvtargetdevice.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

