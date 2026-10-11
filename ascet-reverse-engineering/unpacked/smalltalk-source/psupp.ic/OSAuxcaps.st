"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001b54; bytecode file offset 0x155d58"
!OSAuxcaps methodsFor: 'recovered'!
wMid
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002614; bytecode file offset 0x1561c4"
!OSAuxcaps methodsFor: 'recovered'!
wPid
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x2000314c; bytecode file offset 0x157170"
!OSAuxcaps methodsFor: 'recovered'!
vDriverVersion
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20007300; bytecode file offset 0x15ad48"
!OSAuxcaps methodsFor: 'recovered'!
wTechnology
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (40).
    ^recoveredValue0
! !

"psupp.ic method 0x200074c4; bytecode file offset 0x15adbc"
!OSAuxcaps methodsFor: 'recovered'!
wReserved1
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (42).
    ^recoveredValue0
! !

"psupp.ic method 0x200075e8; bytecode file offset 0x15b000"
!OSAuxcaps methodsFor: 'recovered'!
dwSupport
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (44).
    ^recoveredValue0
! !

"psupp.ic method 0x2000dcdc; bytecode file offset 0x161580"
!OSAuxcaps methodsFor: 'recovered'!
szPname
    | recoveredValue0 |
    recoveredValue0 := (self) stringAt: (8) size: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x2001007c; bytecode file offset 0x165330"
!OSAuxcaps methodsFor: 'recovered'!
wMid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011d50; bytecode file offset 0x1657d4"
!OSAuxcaps methodsFor: 'recovered'!
wPid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012320; bytecode file offset 0x166e00"
!OSAuxcaps methodsFor: 'recovered'!
vDriverVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200189d4; bytecode file offset 0x16c368"
!OSAuxcaps methodsFor: 'recovered'!
wTechnology: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (40) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018b30; bytecode file offset 0x16c3e0"
!OSAuxcaps methodsFor: 'recovered'!
wReserved1: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (42) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018e24; bytecode file offset 0x16c6bc"
!OSAuxcaps methodsFor: 'recovered'!
dwSupport: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (44) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20023a40; bytecode file offset 0x1772d8"
!OSAuxcaps methodsFor: 'recovered'!
szPname: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) stringAt: (8) put: (recoveredValue0) size: (32).
    ^self
! !

