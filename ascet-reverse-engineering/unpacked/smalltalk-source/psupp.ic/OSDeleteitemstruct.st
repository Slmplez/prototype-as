"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001be4; bytecode file offset 0x155d58"
!OSDeleteitemstruct methodsFor: 'recovered'!
CtlType
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200033c8; bytecode file offset 0x157170"
!OSDeleteitemstruct methodsFor: 'recovered'!
CtlID
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004504; bytecode file offset 0x157f64"
!OSDeleteitemstruct methodsFor: 'recovered'!
itemID
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20005258; bytecode file offset 0x159294"
!OSDeleteitemstruct methodsFor: 'recovered'!
itemData
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20011528; bytecode file offset 0x165330"
!OSDeleteitemstruct methodsFor: 'recovered'!
CtlType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001253c; bytecode file offset 0x166e00"
!OSDeleteitemstruct methodsFor: 'recovered'!
CtlID: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001382c; bytecode file offset 0x1683c0"
!OSDeleteitemstruct methodsFor: 'recovered'!
itemID: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015224; bytecode file offset 0x169290"
!OSDeleteitemstruct methodsFor: 'recovered'!
hwndItem: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200162e0; bytecode file offset 0x169eb4"
!OSDeleteitemstruct methodsFor: 'recovered'!
itemData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001c4b4; bytecode file offset 0x16fe44"
!OSDeleteitemstruct methodsFor: 'recovered'!
hwndItem
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

