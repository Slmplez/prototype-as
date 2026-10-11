"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001368; bytecode file offset 0x155d58"
!OSRemSTGMEDIUM methodsFor: 'recovered'!
tymed
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003548; bytecode file offset 0x157170"
!OSRemSTGMEDIUM methodsFor: 'recovered'!
dwHandleType
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003d3c; bytecode file offset 0x157f64"
!OSRemSTGMEDIUM methodsFor: 'recovered'!
pData
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004b6c; bytecode file offset 0x1589a4"
!OSRemSTGMEDIUM methodsFor: 'recovered'!
pUnkForRelease
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x200056fc; bytecode file offset 0x159294"
!OSRemSTGMEDIUM methodsFor: 'recovered'!
cbData
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x2000e208; bytecode file offset 0x161aa4"
!OSRemSTGMEDIUM methodsFor: 'recovered'!
data
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (20) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000fdac; bytecode file offset 0x165330"
!OSRemSTGMEDIUM methodsFor: 'recovered'!
tymed: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012f44; bytecode file offset 0x166e00"
!OSRemSTGMEDIUM methodsFor: 'recovered'!
dwHandleType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200140e4; bytecode file offset 0x1683c0"
!OSRemSTGMEDIUM methodsFor: 'recovered'!
pData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014ef4; bytecode file offset 0x169290"
!OSRemSTGMEDIUM methodsFor: 'recovered'!
pUnkForRelease: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200161d8; bytecode file offset 0x169eb4"
!OSRemSTGMEDIUM methodsFor: 'recovered'!
cbData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

