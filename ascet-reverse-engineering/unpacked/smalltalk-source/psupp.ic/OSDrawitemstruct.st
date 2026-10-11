"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200020a0; bytecode file offset 0x155d58"
!OSDrawitemstruct methodsFor: 'recovered'!
CtlType
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200029fc; bytecode file offset 0x157170"
!OSDrawitemstruct methodsFor: 'recovered'!
CtlID
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x2000427c; bytecode file offset 0x157f64"
!OSDrawitemstruct methodsFor: 'recovered'!
itemID
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004ae8; bytecode file offset 0x1589a4"
!OSDrawitemstruct methodsFor: 'recovered'!
itemAction
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20005678; bytecode file offset 0x159294"
!OSDrawitemstruct methodsFor: 'recovered'!
itemState
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20007768; bytecode file offset 0x15b000"
!OSDrawitemstruct methodsFor: 'recovered'!
itemData
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (44).
    ^recoveredValue0
! !

"psupp.ic method 0x2000e428; bytecode file offset 0x161d04"
!OSDrawitemstruct methodsFor: 'recovered'!
rcItem
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRect.
    recoveredValue1 := (self) structAt: (28) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200110c0; bytecode file offset 0x165330"
!OSDrawitemstruct methodsFor: 'recovered'!
CtlType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013388; bytecode file offset 0x166e00"
!OSDrawitemstruct methodsFor: 'recovered'!
CtlID: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200141d4; bytecode file offset 0x1683c0"
!OSDrawitemstruct methodsFor: 'recovered'!
itemID: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014ff0; bytecode file offset 0x169290"
!OSDrawitemstruct methodsFor: 'recovered'!
itemAction: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015dd0; bytecode file offset 0x169eb4"
!OSDrawitemstruct methodsFor: 'recovered'!
itemState: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016b20; bytecode file offset 0x16a7b4"
!OSDrawitemstruct methodsFor: 'recovered'!
hwndItem: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200170cc; bytecode file offset 0x16afe8"
!OSDrawitemstruct methodsFor: 'recovered'!
hDC: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001793c; bytecode file offset 0x16b690"
!OSDrawitemstruct methodsFor: 'recovered'!
rcItem: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018d88; bytecode file offset 0x16c6bc"
!OSDrawitemstruct methodsFor: 'recovered'!
itemData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (44) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ca44; bytecode file offset 0x17049c"
!OSDrawitemstruct methodsFor: 'recovered'!
hwndItem
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint32At: (20).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001ce10; bytecode file offset 0x170728"
!OSDrawitemstruct methodsFor: 'recovered'!
hDC
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHdc.
    recoveredValue1 := (self) uint32At: (24).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

