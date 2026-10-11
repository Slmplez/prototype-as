"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002034; bytecode file offset 0x155d58"
!OSWsadata methodsFor: 'recovered'!
wVersion
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200027ac; bytecode file offset 0x1561c4"
!OSWsadata methodsFor: 'recovered'!
wHighVersion
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x2000ae9c; bytecode file offset 0x15e734"
!OSWsadata methodsFor: 'recovered'!
iMaxSockets
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (390).
    ^recoveredValue0
! !

"psupp.ic method 0x2000aef0; bytecode file offset 0x15e788"
!OSWsadata methodsFor: 'recovered'!
iMaxUdpDg
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (392).
    ^recoveredValue0
! !

"psupp.ic method 0x2000fd64; bytecode file offset 0x165330"
!OSWsadata methodsFor: 'recovered'!
wVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011c6c; bytecode file offset 0x1657d4"
!OSWsadata methodsFor: 'recovered'!
wHighVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001e8a4; bytecode file offset 0x172144"
!OSWsadata methodsFor: 'recovered'!
lpVendorInfo
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSChar8.
    recoveredValue1 := (self) uint32At: (396).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001ef2c; bytecode file offset 0x1727c4"
!OSWsadata methodsFor: 'recovered'!
szDescription
    | recoveredValue0 |
    recoveredValue0 := (self) stringAt: (4) size: (257).
    ^recoveredValue0
! !

"psupp.ic method 0x2001f5d4; bytecode file offset 0x172e6c"
!OSWsadata methodsFor: 'recovered'!
iMaxSockets: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (390) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001f63c; bytecode file offset 0x172ed4"
!OSWsadata methodsFor: 'recovered'!
iMaxUdpDg: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (392) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001f6a4; bytecode file offset 0x172f3c"
!OSWsadata methodsFor: 'recovered'!
lpVendorInfo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (396) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20025270; bytecode file offset 0x178b08"
!OSWsadata methodsFor: 'recovered'!
szSystemStatus
    | recoveredValue0 |
    recoveredValue0 := (self) stringAt: (261) size: (129).
    ^recoveredValue0
! !

"psupp.ic method 0x20025620; bytecode file offset 0x178eb8"
!OSWsadata methodsFor: 'recovered'!
szDescription: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) stringAt: (4) put: (recoveredValue0) size: (257).
    ^self
! !

"psupp.ic method 0x200290a8; bytecode file offset 0x17c940"
!OSWsadata methodsFor: 'recovered'!
szSystemStatus: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) stringAt: (261) put: (recoveredValue0) size: (129).
    ^self
! !

