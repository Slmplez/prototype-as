"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001d04; bytecode file offset 0x155d58"
!OSMciOpenParms methodsFor: 'recovered'!
dwCallback
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200035fc; bytecode file offset 0x157170"
!OSMciOpenParms methodsFor: 'recovered'!
wDeviceID
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20010970; bytecode file offset 0x165330"
!OSMciOpenParms methodsFor: 'recovered'!
dwCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200128cc; bytecode file offset 0x166e00"
!OSMciOpenParms methodsFor: 'recovered'!
wDeviceID: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014000; bytecode file offset 0x1683c0"
!OSMciOpenParms methodsFor: 'recovered'!
lpstrDeviceType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015494; bytecode file offset 0x169290"
!OSMciOpenParms methodsFor: 'recovered'!
lpstrElementName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016358; bytecode file offset 0x169eb4"
!OSMciOpenParms methodsFor: 'recovered'!
lpstrAlias: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ba30; bytecode file offset 0x16f8e8"
!OSMciOpenParms methodsFor: 'recovered'!
lpstrDeviceType
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c2fc; bytecode file offset 0x16fe44"
!OSMciOpenParms methodsFor: 'recovered'!
lpstrElementName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c90c; bytecode file offset 0x170238"
!OSMciOpenParms methodsFor: 'recovered'!
lpstrAlias
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (16).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

