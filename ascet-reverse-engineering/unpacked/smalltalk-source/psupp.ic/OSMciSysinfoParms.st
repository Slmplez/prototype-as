"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001410; bytecode file offset 0x155d58"
!OSMciSysinfoParms methodsFor: 'recovered'!
dwCallback
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20004528; bytecode file offset 0x157f64"
!OSMciSysinfoParms methodsFor: 'recovered'!
dwRetSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004ddc; bytecode file offset 0x1589a4"
!OSMciSysinfoParms methodsFor: 'recovered'!
dwNumber
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20005600; bytecode file offset 0x159294"
!OSMciSysinfoParms methodsFor: 'recovered'!
wDeviceType
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x2000fc98; bytecode file offset 0x165330"
!OSMciSysinfoParms methodsFor: 'recovered'!
dwCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200124ac; bytecode file offset 0x166e00"
!OSMciSysinfoParms methodsFor: 'recovered'!
lpstrReturn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200142a0; bytecode file offset 0x1683c0"
!OSMciSysinfoParms methodsFor: 'recovered'!
dwRetSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001511c; bytecode file offset 0x169290"
!OSMciSysinfoParms methodsFor: 'recovered'!
dwNumber: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015da0; bytecode file offset 0x169eb4"
!OSMciSysinfoParms methodsFor: 'recovered'!
wDeviceType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b880; bytecode file offset 0x16f1fc"
!OSMciSysinfoParms methodsFor: 'recovered'!
lpstrReturn
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

