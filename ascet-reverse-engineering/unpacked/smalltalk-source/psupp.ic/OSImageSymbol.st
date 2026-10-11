"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200042e8; bytecode file offset 0x157f64"
!OSImageSymbol methodsFor: 'recovered'!
Value
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x200049c8; bytecode file offset 0x1589a4"
!OSImageSymbol methodsFor: 'recovered'!
SectionNumber
    | recoveredValue0 |
    recoveredValue0 := (self) int16At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x2000520c; bytecode file offset 0x158aa4"
!OSImageSymbol methodsFor: 'recovered'!
Type
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (14).
    ^recoveredValue0
! !

"psupp.ic method 0x200053f0; bytecode file offset 0x159294"
!OSImageSymbol methodsFor: 'recovered'!
StorageClass
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005a1c; bytecode file offset 0x1592c0"
!OSImageSymbol methodsFor: 'recovered'!
NumberOfAuxSymbols
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (17).
    ^recoveredValue0
! !

"psupp.ic method 0x2000cb40; bytecode file offset 0x160b8c"
!OSImageSymbol methodsFor: 'recovered'!
N
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSImageSymbolAnon1.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200113e4; bytecode file offset 0x165330"
!OSImageSymbol methodsFor: 'recovered'!
N: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200139b8; bytecode file offset 0x1683c0"
!OSImageSymbol methodsFor: 'recovered'!
Value: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200159d4; bytecode file offset 0x169290"
!OSImageSymbol methodsFor: 'recovered'!
SectionNumber: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int16At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015ac4; bytecode file offset 0x169398"
!OSImageSymbol methodsFor: 'recovered'!
Type: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (14) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015c50; bytecode file offset 0x169eb4"
!OSImageSymbol methodsFor: 'recovered'!
StorageClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016640; bytecode file offset 0x169ee4"
!OSImageSymbol methodsFor: 'recovered'!
NumberOfAuxSymbols: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (17) put: (recoveredValue0).
    ^self
! !

