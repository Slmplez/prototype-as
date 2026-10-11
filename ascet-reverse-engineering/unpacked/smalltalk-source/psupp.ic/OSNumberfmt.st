"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001e78; bytecode file offset 0x155d58"
!OSNumberfmt methodsFor: 'recovered'!
NumDigits
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002f6c; bytecode file offset 0x157170"
!OSNumberfmt methodsFor: 'recovered'!
LeadingZero
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x2000442c; bytecode file offset 0x157f64"
!OSNumberfmt methodsFor: 'recovered'!
Grouping
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20005b60; bytecode file offset 0x159974"
!OSNumberfmt methodsFor: 'recovered'!
NegativeOrder
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x20010718; bytecode file offset 0x165330"
!OSNumberfmt methodsFor: 'recovered'!
NumDigits: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200132a4; bytecode file offset 0x166e00"
!OSNumberfmt methodsFor: 'recovered'!
LeadingZero: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013af0; bytecode file offset 0x1683c0"
!OSNumberfmt methodsFor: 'recovered'!
Grouping: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014da4; bytecode file offset 0x169290"
!OSNumberfmt methodsFor: 'recovered'!
lpDecimalSep: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015ca4; bytecode file offset 0x169eb4"
!OSNumberfmt methodsFor: 'recovered'!
lpThousandSep: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016e38; bytecode file offset 0x16a7b4"
!OSNumberfmt methodsFor: 'recovered'!
NegativeOrder: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001c3b0; bytecode file offset 0x16fe44"
!OSNumberfmt methodsFor: 'recovered'!
lpDecimalSep
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c95c; bytecode file offset 0x170238"
!OSNumberfmt methodsFor: 'recovered'!
lpThousandSep
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (16).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

