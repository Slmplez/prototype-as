"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002fb4; bytecode file offset 0x157170"
!OSMidlServerInfo methodsFor: 'recovered'!
DispatchTable
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x200054e0; bytecode file offset 0x159294"
!OSMidlServerInfo methodsFor: 'recovered'!
ThunkTable
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20010d78; bytecode file offset 0x165330"
!OSMidlServerInfo methodsFor: 'recovered'!
pStubDesc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012230; bytecode file offset 0x166e00"
!OSMidlServerInfo methodsFor: 'recovered'!
DispatchTable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013b50; bytecode file offset 0x1683c0"
!OSMidlServerInfo methodsFor: 'recovered'!
ProcString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200156bc; bytecode file offset 0x169290"
!OSMidlServerInfo methodsFor: 'recovered'!
FmtStringOffset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015e84; bytecode file offset 0x169eb4"
!OSMidlServerInfo methodsFor: 'recovered'!
ThunkTable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b1d0; bytecode file offset 0x16ea70"
!OSMidlServerInfo methodsFor: 'recovered'!
pStubDesc
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSMidlStubDesc.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001bd64; bytecode file offset 0x16f8e8"
!OSMidlServerInfo methodsFor: 'recovered'!
ProcString
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c130; bytecode file offset 0x16fe44"
!OSMidlServerInfo methodsFor: 'recovered'!
FmtStringOffset
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSUInt16.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

