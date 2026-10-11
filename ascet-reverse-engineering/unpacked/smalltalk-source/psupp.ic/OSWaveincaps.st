"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200019b0; bytecode file offset 0x155d58"
!OSWaveincaps methodsFor: 'recovered'!
wMid
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002710; bytecode file offset 0x1561c4"
!OSWaveincaps methodsFor: 'recovered'!
wPid
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x20002d74; bytecode file offset 0x157170"
!OSWaveincaps methodsFor: 'recovered'!
vDriverVersion
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20007348; bytecode file offset 0x15ad48"
!OSWaveincaps methodsFor: 'recovered'!
dwFormats
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (40).
    ^recoveredValue0
! !

"psupp.ic method 0x200075b8; bytecode file offset 0x15b000"
!OSWaveincaps methodsFor: 'recovered'!
wChannels
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (44).
    ^recoveredValue0
! !

"psupp.ic method 0x200077c0; bytecode file offset 0x15b0ac"
!OSWaveincaps methodsFor: 'recovered'!
wReserved1
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (46).
    ^recoveredValue0
! !

"psupp.ic method 0x2000dcb8; bytecode file offset 0x161580"
!OSWaveincaps methodsFor: 'recovered'!
szPname
    | recoveredValue0 |
    recoveredValue0 := (self) stringAt: (8) size: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x20011a68; bytecode file offset 0x165330"
!OSWaveincaps methodsFor: 'recovered'!
wMid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011d98; bytecode file offset 0x1657d4"
!OSWaveincaps methodsFor: 'recovered'!
wPid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200132f8; bytecode file offset 0x166e00"
!OSWaveincaps methodsFor: 'recovered'!
vDriverVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018aa0; bytecode file offset 0x16c368"
!OSWaveincaps methodsFor: 'recovered'!
dwFormats: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (40) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018b84; bytecode file offset 0x16c6bc"
!OSWaveincaps methodsFor: 'recovered'!
wChannels: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (44) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018e84; bytecode file offset 0x16c770"
!OSWaveincaps methodsFor: 'recovered'!
wReserved1: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (46) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20023a28; bytecode file offset 0x1772d8"
!OSWaveincaps methodsFor: 'recovered'!
szPname: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) stringAt: (8) put: (recoveredValue0) size: (32).
    ^self
! !

