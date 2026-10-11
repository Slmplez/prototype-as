"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000177c; bytecode file offset 0x155d58"
!OSMciOvlyOpenParms methodsFor: 'recovered'!
dwCallback
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200032cc; bytecode file offset 0x157170"
!OSMciOvlyOpenParms methodsFor: 'recovered'!
wDeviceID
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20005f14; bytecode file offset 0x159974"
!OSMciOvlyOpenParms methodsFor: 'recovered'!
dwStyle
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x20010b8c; bytecode file offset 0x165330"
!OSMciOvlyOpenParms methodsFor: 'recovered'!
dwCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200130a0; bytecode file offset 0x166e00"
!OSMciOvlyOpenParms methodsFor: 'recovered'!
wDeviceID: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200138b0; bytecode file offset 0x1683c0"
!OSMciOvlyOpenParms methodsFor: 'recovered'!
lpstrDeviceType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015794; bytecode file offset 0x169290"
!OSMciOvlyOpenParms methodsFor: 'recovered'!
lpstrElementName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016334; bytecode file offset 0x169eb4"
!OSMciOvlyOpenParms methodsFor: 'recovered'!
lpstrAlias: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016f04; bytecode file offset 0x16a7b4"
!OSMciOvlyOpenParms methodsFor: 'recovered'!
dwStyle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200170fc; bytecode file offset 0x16afe8"
!OSMciOvlyOpenParms methodsFor: 'recovered'!
hWndParent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001be68; bytecode file offset 0x16f8e8"
!OSMciOvlyOpenParms methodsFor: 'recovered'!
lpstrDeviceType
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c234; bytecode file offset 0x16fe44"
!OSMciOvlyOpenParms methodsFor: 'recovered'!
lpstrElementName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c920; bytecode file offset 0x170238"
!OSMciOvlyOpenParms methodsFor: 'recovered'!
lpstrAlias
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (16).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001cc6c; bytecode file offset 0x170728"
!OSMciOvlyOpenParms methodsFor: 'recovered'!
hWndParent
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint32At: (24).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

