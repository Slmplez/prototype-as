"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001a58; bytecode file offset 0x155d58"
!OSGcpResults methodsFor: 'recovered'!
lStructSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20006b78; bytecode file offset 0x15a428"
!OSGcpResults methodsFor: 'recovered'!
nGlyphs
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20006dd4; bytecode file offset 0x15a780"
!OSGcpResults methodsFor: 'recovered'!
nMaxFit
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x2001040c; bytecode file offset 0x165330"
!OSGcpResults methodsFor: 'recovered'!
lStructSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200130b8; bytecode file offset 0x166e00"
!OSGcpResults methodsFor: 'recovered'!
lpOutString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014570; bytecode file offset 0x1683c0"
!OSGcpResults methodsFor: 'recovered'!
lpOrder: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200157dc; bytecode file offset 0x169290"
!OSGcpResults methodsFor: 'recovered'!
lpDx: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015c2c; bytecode file offset 0x169eb4"
!OSGcpResults methodsFor: 'recovered'!
lpCaretPos: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016a3c; bytecode file offset 0x16a7b4"
!OSGcpResults methodsFor: 'recovered'!
lpClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017360; bytecode file offset 0x16afe8"
!OSGcpResults methodsFor: 'recovered'!
lpGlyphs: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017af8; bytecode file offset 0x16b690"
!OSGcpResults methodsFor: 'recovered'!
nGlyphs: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017ffc; bytecode file offset 0x16bb70"
!OSGcpResults methodsFor: 'recovered'!
nMaxFit: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b6c8; bytecode file offset 0x16f1fc"
!OSGcpResults methodsFor: 'recovered'!
lpOutString
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001bff8; bytecode file offset 0x16f8e8"
!OSGcpResults methodsFor: 'recovered'!
lpOrder
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSUInt32.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c270; bytecode file offset 0x16fe44"
!OSGcpResults methodsFor: 'recovered'!
lpDx
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSInt32.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c740; bytecode file offset 0x170238"
!OSGcpResults methodsFor: 'recovered'!
lpCaretPos
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSInt32.
    recoveredValue1 := (self) uint32At: (16).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001ca58; bytecode file offset 0x17049c"
!OSGcpResults methodsFor: 'recovered'!
lpClass
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (20).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001cdd4; bytecode file offset 0x170728"
!OSGcpResults methodsFor: 'recovered'!
lpGlyphs
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSUInt16.
    recoveredValue1 := (self) uint32At: (24).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

