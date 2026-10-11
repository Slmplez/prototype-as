"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200012c0; bytecode file offset 0x155d58"
!OSMciWaveOpenParms methodsFor: 'recovered'!
dwCallback
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002b1c; bytecode file offset 0x157170"
!OSMciWaveOpenParms methodsFor: 'recovered'!
wDeviceID
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20005d7c; bytecode file offset 0x159974"
!OSMciWaveOpenParms methodsFor: 'recovered'!
dwBufferSeconds
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x200112b8; bytecode file offset 0x165330"
!OSMciWaveOpenParms methodsFor: 'recovered'!
dwCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012818; bytecode file offset 0x166e00"
!OSMciWaveOpenParms methodsFor: 'recovered'!
wDeviceID: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013c94; bytecode file offset 0x1683c0"
!OSMciWaveOpenParms methodsFor: 'recovered'!
lpstrDeviceType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014f48; bytecode file offset 0x169290"
!OSMciWaveOpenParms methodsFor: 'recovered'!
lpstrElementName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016388; bytecode file offset 0x169eb4"
!OSMciWaveOpenParms methodsFor: 'recovered'!
lpstrAlias: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016964; bytecode file offset 0x16a7b4"
!OSMciWaveOpenParms methodsFor: 'recovered'!
dwBufferSeconds: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001bf58; bytecode file offset 0x16f8e8"
!OSMciWaveOpenParms methodsFor: 'recovered'!
lpstrDeviceType
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c11c; bytecode file offset 0x16fe44"
!OSMciWaveOpenParms methodsFor: 'recovered'!
lpstrElementName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c6a0; bytecode file offset 0x170238"
!OSMciWaveOpenParms methodsFor: 'recovered'!
lpstrAlias
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (16).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

