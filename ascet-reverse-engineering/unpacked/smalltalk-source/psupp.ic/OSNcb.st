"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001a04; bytecode file offset 0x155d58"
!OSNcb methodsFor: 'recovered'!
ncbCommand
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002510; bytecode file offset 0x155e38"
!OSNcb methodsFor: 'recovered'!
ncbRetcode
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (1).
    ^recoveredValue0
! !

"psupp.ic method 0x20002608; bytecode file offset 0x1561c4"
!OSNcb methodsFor: 'recovered'!
ncbLsn
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x20002970; bytecode file offset 0x156280"
!OSNcb methodsFor: 'recovered'!
ncbNum
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (3).
    ^recoveredValue0
! !

"psupp.ic method 0x20003e2c; bytecode file offset 0x157f64"
!OSNcb methodsFor: 'recovered'!
ncbLength
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20007500; bytecode file offset 0x15adbc"
!OSNcb methodsFor: 'recovered'!
ncbRto
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (42).
    ^recoveredValue0
! !

"psupp.ic method 0x20007538; bytecode file offset 0x15add0"
!OSNcb methodsFor: 'recovered'!
ncbSto
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (43).
    ^recoveredValue0
! !

"psupp.ic method 0x20007714; bytecode file offset 0x15b000"
!OSNcb methodsFor: 'recovered'!
ncbPost
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (44).
    ^recoveredValue0
! !

"psupp.ic method 0x20007860; bytecode file offset 0x15b29c"
!OSNcb methodsFor: 'recovered'!
ncbLanaNum
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (48).
    ^recoveredValue0
! !

"psupp.ic method 0x20007a30; bytecode file offset 0x15b2c8"
!OSNcb methodsFor: 'recovered'!
ncbCmdCplt
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (49).
    ^recoveredValue0
! !

"psupp.ic method 0x20008c18; bytecode file offset 0x15caa4"
!OSNcb methodsFor: 'recovered'!
netbios
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Netbios.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20010a30; bytecode file offset 0x165330"
!OSNcb methodsFor: 'recovered'!
ncbCommand: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011ac8; bytecode file offset 0x16542c"
!OSNcb methodsFor: 'recovered'!
ncbRetcode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (1) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011da4; bytecode file offset 0x1657d4"
!OSNcb methodsFor: 'recovered'!
ncbLsn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011fcc; bytecode file offset 0x1658ac"
!OSNcb methodsFor: 'recovered'!
ncbNum: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (3) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200127c4; bytecode file offset 0x166e00"
!OSNcb methodsFor: 'recovered'!
ncbBuffer: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200143a8; bytecode file offset 0x1683c0"
!OSNcb methodsFor: 'recovered'!
ncbLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018b24; bytecode file offset 0x16c3e0"
!OSNcb methodsFor: 'recovered'!
ncbRto: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (42) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018b60; bytecode file offset 0x16c3f8"
!OSNcb methodsFor: 'recovered'!
ncbSto: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (43) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018c14; bytecode file offset 0x16c6bc"
!OSNcb methodsFor: 'recovered'!
ncbPost: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (44) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20019058; bytecode file offset 0x16c9d4"
!OSNcb methodsFor: 'recovered'!
ncbLanaNum: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (48) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001916c; bytecode file offset 0x16ca04"
!OSNcb methodsFor: 'recovered'!
ncbCmdCplt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (49) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200196d0; bytecode file offset 0x16d088"
!OSNcb methodsFor: 'recovered'!
ncbEvent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (60) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b8d0; bytecode file offset 0x16f1fc"
!OSNcb methodsFor: 'recovered'!
ncbBuffer
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d854; bytecode file offset 0x17111c"
!OSNcb methodsFor: 'recovered'!
ncbEvent
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHandle.
    recoveredValue1 := (self) uint32At: (60).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x200221c8; bytecode file offset 0x175a64"
!OSNcb methodsFor: 'recovered'!
ncbCallname
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (10) size: (16) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20022358; bytecode file offset 0x175bf4"
!OSNcb methodsFor: 'recovered'!
ncbName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (26) size: (16) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20022538; bytecode file offset 0x175dd4"
!OSNcb methodsFor: 'recovered'!
ncbReserve
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (50) size: (10) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20023ab0; bytecode file offset 0x177348"
!OSNcb methodsFor: 'recovered'!
ncbCallname: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (10) put: (recoveredValue0) size: (16).
    ^self
! !

"psupp.ic method 0x20023c54; bytecode file offset 0x1774ec"
!OSNcb methodsFor: 'recovered'!
ncbName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (26) put: (recoveredValue0) size: (16).
    ^self
! !

"psupp.ic method 0x20023e20; bytecode file offset 0x1776b8"
!OSNcb methodsFor: 'recovered'!
ncbReserve: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (50) put: (recoveredValue0) size: (10).
    ^self
! !

