"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200118f4; bytecode file offset 0x165330"
!OSMidlStublessProxyInfo methodsFor: 'recovered'!
pStubDesc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001316c; bytecode file offset 0x166e00"
!OSMidlStublessProxyInfo methodsFor: 'recovered'!
ProcFormatString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014138; bytecode file offset 0x1683c0"
!OSMidlStublessProxyInfo methodsFor: 'recovered'!
FormatStringOffset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001af28; bytecode file offset 0x16ea70"
!OSMidlStublessProxyInfo methodsFor: 'recovered'!
pStubDesc
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSMidlStubDesc.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001b344; bytecode file offset 0x16f1fc"
!OSMidlStublessProxyInfo methodsFor: 'recovered'!
ProcFormatString
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001baf8; bytecode file offset 0x16f8e8"
!OSMidlStublessProxyInfo methodsFor: 'recovered'!
FormatStringOffset
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSUInt16.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

