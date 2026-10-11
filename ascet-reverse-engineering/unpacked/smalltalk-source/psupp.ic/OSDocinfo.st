"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002130; bytecode file offset 0x155d58"
!OSDocinfo methodsFor: 'recovered'!
cbSize
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20005630; bytecode file offset 0x159294"
!OSDocinfo methodsFor: 'recovered'!
fwType
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x2001046c; bytecode file offset 0x165330"
!OSDocinfo methodsFor: 'recovered'!
cbSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012b78; bytecode file offset 0x166e00"
!OSDocinfo methodsFor: 'recovered'!
lpszDocName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014204; bytecode file offset 0x1683c0"
!OSDocinfo methodsFor: 'recovered'!
lpszOutput: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200155f0; bytecode file offset 0x169290"
!OSDocinfo methodsFor: 'recovered'!
lpszDatatype: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016550; bytecode file offset 0x169eb4"
!OSDocinfo methodsFor: 'recovered'!
fwType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b95c; bytecode file offset 0x16f1fc"
!OSDocinfo methodsFor: 'recovered'!
lpszDocName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001bf30; bytecode file offset 0x16f8e8"
!OSDocinfo methodsFor: 'recovered'!
lpszOutput
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c2e8; bytecode file offset 0x16fe44"
!OSDocinfo methodsFor: 'recovered'!
lpszDatatype
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

