"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001c2c; bytecode file offset 0x155d58"
!OSEmrformat methodsFor: 'recovered'!
dSignature
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200034e8; bytecode file offset 0x157170"
!OSEmrformat methodsFor: 'recovered'!
nVersion
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004540; bytecode file offset 0x157f64"
!OSEmrformat methodsFor: 'recovered'!
cbData
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004e84; bytecode file offset 0x1589a4"
!OSEmrformat methodsFor: 'recovered'!
offData
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20010814; bytecode file offset 0x165330"
!OSEmrformat methodsFor: 'recovered'!
dSignature: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200126c8; bytecode file offset 0x166e00"
!OSEmrformat methodsFor: 'recovered'!
nVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014a68; bytecode file offset 0x1683c0"
!OSEmrformat methodsFor: 'recovered'!
cbData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015200; bytecode file offset 0x169290"
!OSEmrformat methodsFor: 'recovered'!
offData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

