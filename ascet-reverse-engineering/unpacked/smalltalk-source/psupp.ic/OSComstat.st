"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000305c; bytecode file offset 0x157170"
!OSComstat methodsFor: 'recovered'!
cbInQue
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003f7c; bytecode file offset 0x157f64"
!OSComstat methodsFor: 'recovered'!
cbOutQue
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20012f68; bytecode file offset 0x166e00"
!OSComstat methodsFor: 'recovered'!
cbInQue: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014330; bytecode file offset 0x1683c0"
!OSComstat methodsFor: 'recovered'!
cbOutQue: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20026dd4; bytecode file offset 0x17a670"
!OSComstat methodsFor: 'recovered'!
fCtsHold
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint32At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (0) bitWidth: (1).
    ^recoveredValue1
! !

"psupp.ic method 0x20026ed4; bytecode file offset 0x17a770"
!OSComstat methodsFor: 'recovered'!
fDsrHold
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint32At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (1) bitWidth: (1).
    ^recoveredValue1
! !

"psupp.ic method 0x20026ef4; bytecode file offset 0x17a790"
!OSComstat methodsFor: 'recovered'!
fRlsdHold
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint32At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (2) bitWidth: (1).
    ^recoveredValue1
! !

"psupp.ic method 0x20026f14; bytecode file offset 0x17a7b0"
!OSComstat methodsFor: 'recovered'!
fXoffHold
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint32At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (3) bitWidth: (1).
    ^recoveredValue1
! !

"psupp.ic method 0x20026f34; bytecode file offset 0x17a7d0"
!OSComstat methodsFor: 'recovered'!
fXoffSent
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint32At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (4) bitWidth: (1).
    ^recoveredValue1
! !

"psupp.ic method 0x20026f54; bytecode file offset 0x17a7f0"
!OSComstat methodsFor: 'recovered'!
fEof
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint32At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (5) bitWidth: (1).
    ^recoveredValue1
! !

"psupp.ic method 0x20026f74; bytecode file offset 0x17a810"
!OSComstat methodsFor: 'recovered'!
fTxim
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint32At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (6) bitWidth: (1).
    ^recoveredValue1
! !

"psupp.ic method 0x20026f94; bytecode file offset 0x17a830"
!OSComstat methodsFor: 'recovered'!
fReserved
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint32At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (7) bitWidth: (25).
    ^recoveredValue1
! !

"psupp.ic method 0x2002d5d8; bytecode file offset 0x180e78"
!OSComstat methodsFor: 'recovered'!
fCtsHold: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (0) bitWidth: (1).
    (self) uint32At: (0) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002d730; bytecode file offset 0x180fd0"
!OSComstat methodsFor: 'recovered'!
fDsrHold: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (1) bitWidth: (1).
    (self) uint32At: (0) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002d75c; bytecode file offset 0x180ffc"
!OSComstat methodsFor: 'recovered'!
fRlsdHold: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (2) bitWidth: (1).
    (self) uint32At: (0) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002d788; bytecode file offset 0x181028"
!OSComstat methodsFor: 'recovered'!
fXoffHold: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (3) bitWidth: (1).
    (self) uint32At: (0) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002d7b4; bytecode file offset 0x181054"
!OSComstat methodsFor: 'recovered'!
fXoffSent: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (4) bitWidth: (1).
    (self) uint32At: (0) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002d7e0; bytecode file offset 0x181080"
!OSComstat methodsFor: 'recovered'!
fEof: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (5) bitWidth: (1).
    (self) uint32At: (0) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002d80c; bytecode file offset 0x1810ac"
!OSComstat methodsFor: 'recovered'!
fTxim: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (6) bitWidth: (1).
    (self) uint32At: (0) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002d838; bytecode file offset 0x1810d8"
!OSComstat methodsFor: 'recovered'!
fReserved: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (7) bitWidth: (25).
    (self) uint32At: (0) put: (recoveredValue2).
    ^self
! !

