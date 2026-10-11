"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001a94; bytecode file offset 0x155d58"
!OSMciAnimOpenParms methodsFor: 'recovered'!
dwCallback
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002f48; bytecode file offset 0x157170"
!OSMciAnimOpenParms methodsFor: 'recovered'!
wDeviceID
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20005fb0; bytecode file offset 0x159974"
!OSMciAnimOpenParms methodsFor: 'recovered'!
dwStyle
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x20010040; bytecode file offset 0x165330"
!OSMciAnimOpenParms methodsFor: 'recovered'!
dwCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012110; bytecode file offset 0x166e00"
!OSMciAnimOpenParms methodsFor: 'recovered'!
wDeviceID: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014690; bytecode file offset 0x1683c0"
!OSMciAnimOpenParms methodsFor: 'recovered'!
lpstrDeviceType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015650; bytecode file offset 0x169290"
!OSMciAnimOpenParms methodsFor: 'recovered'!
lpstrElementName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016184; bytecode file offset 0x169eb4"
!OSMciAnimOpenParms methodsFor: 'recovered'!
lpstrAlias: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016c1c; bytecode file offset 0x16a7b4"
!OSMciAnimOpenParms methodsFor: 'recovered'!
dwStyle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001724c; bytecode file offset 0x16afe8"
!OSMciAnimOpenParms methodsFor: 'recovered'!
hWndParent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001be04; bytecode file offset 0x16f8e8"
!OSMciAnimOpenParms methodsFor: 'recovered'!
lpstrDeviceType
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c25c; bytecode file offset 0x16fe44"
!OSMciAnimOpenParms methodsFor: 'recovered'!
lpstrElementName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c718; bytecode file offset 0x170238"
!OSMciAnimOpenParms methodsFor: 'recovered'!
lpstrAlias
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (16).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001ccd0; bytecode file offset 0x170728"
!OSMciAnimOpenParms methodsFor: 'recovered'!
hWndParent
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint32At: (24).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

