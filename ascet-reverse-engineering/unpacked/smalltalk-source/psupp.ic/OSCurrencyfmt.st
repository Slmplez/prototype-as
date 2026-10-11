"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001854; bytecode file offset 0x155d58"
!OSCurrencyfmt methodsFor: 'recovered'!
NumDigits
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200031d0; bytecode file offset 0x157170"
!OSCurrencyfmt methodsFor: 'recovered'!
LeadingZero
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x2000418c; bytecode file offset 0x157f64"
!OSCurrencyfmt methodsFor: 'recovered'!
Grouping
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20005c5c; bytecode file offset 0x159974"
!OSCurrencyfmt methodsFor: 'recovered'!
NegativeOrder
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x200062dc; bytecode file offset 0x159f34"
!OSCurrencyfmt methodsFor: 'recovered'!
PositiveOrder
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x20010b44; bytecode file offset 0x165330"
!OSCurrencyfmt methodsFor: 'recovered'!
NumDigits: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012e0c; bytecode file offset 0x166e00"
!OSCurrencyfmt methodsFor: 'recovered'!
LeadingZero: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014618; bytecode file offset 0x1683c0"
!OSCurrencyfmt methodsFor: 'recovered'!
Grouping: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001514c; bytecode file offset 0x169290"
!OSCurrencyfmt methodsFor: 'recovered'!
lpDecimalSep: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016304; bytecode file offset 0x169eb4"
!OSCurrencyfmt methodsFor: 'recovered'!
lpThousandSep: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016af0; bytecode file offset 0x16a7b4"
!OSCurrencyfmt methodsFor: 'recovered'!
NegativeOrder: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200171d4; bytecode file offset 0x16afe8"
!OSCurrencyfmt methodsFor: 'recovered'!
PositiveOrder: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017c54; bytecode file offset 0x16b690"
!OSCurrencyfmt methodsFor: 'recovered'!
lpCurrencySymbol: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001c220; bytecode file offset 0x16fe44"
!OSCurrencyfmt methodsFor: 'recovered'!
lpDecimalSep
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c63c; bytecode file offset 0x170238"
!OSCurrencyfmt methodsFor: 'recovered'!
lpThousandSep
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (16).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001cfb8; bytecode file offset 0x170948"
!OSCurrencyfmt methodsFor: 'recovered'!
lpCurrencySymbol
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (28).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

