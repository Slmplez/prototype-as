"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001eb4; bytecode file offset 0x155d58"
!OSMixercaps methodsFor: 'recovered'!
wMid
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200028a8; bytecode file offset 0x1561c4"
!OSMixercaps methodsFor: 'recovered'!
wPid
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x20003254; bytecode file offset 0x157170"
!OSMixercaps methodsFor: 'recovered'!
vDriverVersion
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x200072e8; bytecode file offset 0x15ad48"
!OSMixercaps methodsFor: 'recovered'!
fdwSupport
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (40).
    ^recoveredValue0
! !

"psupp.ic method 0x200076b4; bytecode file offset 0x15b000"
!OSMixercaps methodsFor: 'recovered'!
cDestinations
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (44).
    ^recoveredValue0
! !

"psupp.ic method 0x2000dcc4; bytecode file offset 0x161580"
!OSMixercaps methodsFor: 'recovered'!
szPname
    | recoveredValue0 |
    recoveredValue0 := (self) stringAt: (8) size: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x200102c8; bytecode file offset 0x165330"
!OSMixercaps methodsFor: 'recovered'!
wMid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011d5c; bytecode file offset 0x1657d4"
!OSMixercaps methodsFor: 'recovered'!
wPid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012098; bytecode file offset 0x166e00"
!OSMixercaps methodsFor: 'recovered'!
vDriverVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200188b4; bytecode file offset 0x16c368"
!OSMixercaps methodsFor: 'recovered'!
fdwSupport: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (40) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018b9c; bytecode file offset 0x16c6bc"
!OSMixercaps methodsFor: 'recovered'!
cDestinations: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (44) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20023a34; bytecode file offset 0x1772d8"
!OSMixercaps methodsFor: 'recovered'!
szPname: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) stringAt: (8) put: (recoveredValue0) size: (32).
    ^self
! !

