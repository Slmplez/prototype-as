"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001884; bytecode file offset 0x155d58"
!OSWaveoutcaps methodsFor: 'recovered'!
wMid
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200027a0; bytecode file offset 0x1561c4"
!OSWaveoutcaps methodsFor: 'recovered'!
wPid
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x20003734; bytecode file offset 0x157170"
!OSWaveoutcaps methodsFor: 'recovered'!
vDriverVersion
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20007444; bytecode file offset 0x15ad48"
!OSWaveoutcaps methodsFor: 'recovered'!
dwFormats
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (40).
    ^recoveredValue0
! !

"psupp.ic method 0x20007750; bytecode file offset 0x15b000"
!OSWaveoutcaps methodsFor: 'recovered'!
wChannels
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (44).
    ^recoveredValue0
! !

"psupp.ic method 0x200077d8; bytecode file offset 0x15b0ac"
!OSWaveoutcaps methodsFor: 'recovered'!
wReserved1
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (46).
    ^recoveredValue0
! !

"psupp.ic method 0x200079c8; bytecode file offset 0x15b29c"
!OSWaveoutcaps methodsFor: 'recovered'!
dwSupport
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (48).
    ^recoveredValue0
! !

"psupp.ic method 0x2000dce8; bytecode file offset 0x161580"
!OSWaveoutcaps methodsFor: 'recovered'!
szPname
    | recoveredValue0 |
    recoveredValue0 := (self) stringAt: (8) size: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x20011a44; bytecode file offset 0x165330"
!OSWaveoutcaps methodsFor: 'recovered'!
wMid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011cc0; bytecode file offset 0x1657d4"
!OSWaveoutcaps methodsFor: 'recovered'!
wPid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012308; bytecode file offset 0x166e00"
!OSWaveoutcaps methodsFor: 'recovered'!
vDriverVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018ab8; bytecode file offset 0x16c368"
!OSWaveoutcaps methodsFor: 'recovered'!
dwFormats: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (40) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018d94; bytecode file offset 0x16c6bc"
!OSWaveoutcaps methodsFor: 'recovered'!
wChannels: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (44) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018e78; bytecode file offset 0x16c770"
!OSWaveoutcaps methodsFor: 'recovered'!
wReserved1: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (46) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200190dc; bytecode file offset 0x16c9d4"
!OSWaveoutcaps methodsFor: 'recovered'!
dwSupport: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (48) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20023a10; bytecode file offset 0x1772d8"
!OSWaveoutcaps methodsFor: 'recovered'!
szPname: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) stringAt: (8) put: (recoveredValue0) size: (32).
    ^self
! !

