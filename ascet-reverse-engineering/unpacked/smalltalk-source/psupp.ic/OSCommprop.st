"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001ddc; bytecode file offset 0x155d58"
!OSCommprop methodsFor: 'recovered'!
wPacketLength
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002830; bytecode file offset 0x1561c4"
!OSCommprop methodsFor: 'recovered'!
wPacketVersion
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x200030d4; bytecode file offset 0x157170"
!OSCommprop methodsFor: 'recovered'!
dwServiceMask
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003fe8; bytecode file offset 0x157f64"
!OSCommprop methodsFor: 'recovered'!
dwReserved1
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004fb0; bytecode file offset 0x1589a4"
!OSCommprop methodsFor: 'recovered'!
dwMaxTxQueue
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20005780; bytecode file offset 0x159294"
!OSCommprop methodsFor: 'recovered'!
dwMaxRxQueue
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005b6c; bytecode file offset 0x159974"
!OSCommprop methodsFor: 'recovered'!
dwMaxBaud
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x20006450; bytecode file offset 0x159f34"
!OSCommprop methodsFor: 'recovered'!
dwProvSubType
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x20006aac; bytecode file offset 0x15a428"
!OSCommprop methodsFor: 'recovered'!
dwProvCapabilities
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20006de0; bytecode file offset 0x15a780"
!OSCommprop methodsFor: 'recovered'!
dwSettableParams
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x20007038; bytecode file offset 0x15aa74"
!OSCommprop methodsFor: 'recovered'!
dwSettableBaud
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (36).
    ^recoveredValue0
! !

"psupp.ic method 0x20007438; bytecode file offset 0x15ad48"
!OSCommprop methodsFor: 'recovered'!
wSettableData
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (40).
    ^recoveredValue0
! !

"psupp.ic method 0x2000750c; bytecode file offset 0x15adbc"
!OSCommprop methodsFor: 'recovered'!
wSettableStopParity
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (42).
    ^recoveredValue0
! !

"psupp.ic method 0x200076f0; bytecode file offset 0x15b000"
!OSCommprop methodsFor: 'recovered'!
dwCurrentTxQueue
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (44).
    ^recoveredValue0
! !

"psupp.ic method 0x20007890; bytecode file offset 0x15b29c"
!OSCommprop methodsFor: 'recovered'!
dwCurrentRxQueue
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (48).
    ^recoveredValue0
! !

"psupp.ic method 0x20007b98; bytecode file offset 0x15b490"
!OSCommprop methodsFor: 'recovered'!
dwProvSpec1
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (52).
    ^recoveredValue0
! !

"psupp.ic method 0x20007cfc; bytecode file offset 0x15b654"
!OSCommprop methodsFor: 'recovered'!
dwProvSpec2
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (56).
    ^recoveredValue0
! !

"psupp.ic method 0x2000c088; bytecode file offset 0x15fa24"
!OSCommprop methodsFor: 'recovered'!
wcProvChar: recoveredArg1
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000e7c4; bytecode file offset 0x162070"
!OSCommprop methodsFor: 'recovered'!
wcProvChar
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt16.
    recoveredValue1 := (self) arrayAt: (60) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001085c; bytecode file offset 0x165330"
!OSCommprop methodsFor: 'recovered'!
wPacketLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011bdc; bytecode file offset 0x1657d4"
!OSCommprop methodsFor: 'recovered'!
wPacketVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013004; bytecode file offset 0x166e00"
!OSCommprop methodsFor: 'recovered'!
dwServiceMask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013c64; bytecode file offset 0x1683c0"
!OSCommprop methodsFor: 'recovered'!
dwReserved1: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014d2c; bytecode file offset 0x169290"
!OSCommprop methodsFor: 'recovered'!
dwMaxTxQueue: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016418; bytecode file offset 0x169eb4"
!OSCommprop methodsFor: 'recovered'!
dwMaxRxQueue: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016e98; bytecode file offset 0x16a7b4"
!OSCommprop methodsFor: 'recovered'!
dwMaxBaud: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017534; bytecode file offset 0x16afe8"
!OSCommprop methodsFor: 'recovered'!
dwProvSubType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017c18; bytecode file offset 0x16b690"
!OSCommprop methodsFor: 'recovered'!
dwProvCapabilities: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017fc0; bytecode file offset 0x16bb70"
!OSCommprop methodsFor: 'recovered'!
dwSettableParams: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018614; bytecode file offset 0x16bff0"
!OSCommprop methodsFor: 'recovered'!
dwSettableBaud: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200188f0; bytecode file offset 0x16c368"
!OSCommprop methodsFor: 'recovered'!
wSettableData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (40) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018b3c; bytecode file offset 0x16c3e0"
!OSCommprop methodsFor: 'recovered'!
wSettableStopParity: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (42) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018d10; bytecode file offset 0x16c6bc"
!OSCommprop methodsFor: 'recovered'!
dwCurrentTxQueue: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (44) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20019118; bytecode file offset 0x16c9d4"
!OSCommprop methodsFor: 'recovered'!
dwCurrentRxQueue: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (48) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200193ac; bytecode file offset 0x16cc74"
!OSCommprop methodsFor: 'recovered'!
dwProvSpec1: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (52) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20019580; bytecode file offset 0x16ce9c"
!OSCommprop methodsFor: 'recovered'!
dwProvSpec2: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (56) put: (recoveredValue0).
    ^self
! !

