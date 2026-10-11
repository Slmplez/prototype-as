"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20021ee8; bytecode file offset 0x175784"
!OSLocalesignature methodsFor: 'recovered'!
lsUsb
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt32.
    recoveredValue1 := (self) arrayAt: (0) size: (4) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20022238; bytecode file offset 0x175ad4"
!OSLocalesignature methodsFor: 'recovered'!
lsCsbDefault
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt32.
    recoveredValue1 := (self) arrayAt: (16) size: (2) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200222d8; bytecode file offset 0x175b84"
!OSLocalesignature methodsFor: 'recovered'!
lsCsbSupported
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt32.
    recoveredValue1 := (self) arrayAt: (24) size: (2) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20023790; bytecode file offset 0x177034"
!OSLocalesignature methodsFor: 'recovered'!
lsUsb: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (0) put: (recoveredValue0) size: (4).
    ^self
! !

"psupp.ic method 0x20023b10; bytecode file offset 0x1773a8"
!OSLocalesignature methodsFor: 'recovered'!
lsCsbDefault: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (16) put: (recoveredValue0) size: (2).
    ^self
! !

"psupp.ic method 0x20023bec; bytecode file offset 0x177490"
!OSLocalesignature methodsFor: 'recovered'!
lsCsbSupported: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (24) put: (recoveredValue0) size: (2).
    ^self
! !

