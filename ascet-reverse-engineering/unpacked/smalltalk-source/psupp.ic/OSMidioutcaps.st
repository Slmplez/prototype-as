"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001314; bytecode file offset 0x155d58"
!OSMidioutcaps methodsFor: 'recovered'!
wMid
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200026bc; bytecode file offset 0x1561c4"
!OSMidioutcaps methodsFor: 'recovered'!
wPid
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x20002c54; bytecode file offset 0x157170"
!OSMidioutcaps methodsFor: 'recovered'!
vDriverVersion
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x200072dc; bytecode file offset 0x15ad48"
!OSMidioutcaps methodsFor: 'recovered'!
wTechnology
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (40).
    ^recoveredValue0
! !

"psupp.ic method 0x20007518; bytecode file offset 0x15adbc"
!OSMidioutcaps methodsFor: 'recovered'!
wVoices
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (42).
    ^recoveredValue0
! !

"psupp.ic method 0x2000760c; bytecode file offset 0x15b000"
!OSMidioutcaps methodsFor: 'recovered'!
wNotes
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (44).
    ^recoveredValue0
! !

"psupp.ic method 0x20007808; bytecode file offset 0x15b0ac"
!OSMidioutcaps methodsFor: 'recovered'!
wChannelMask
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (46).
    ^recoveredValue0
! !

"psupp.ic method 0x20007944; bytecode file offset 0x15b29c"
!OSMidioutcaps methodsFor: 'recovered'!
dwSupport
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (48).
    ^recoveredValue0
! !

"psupp.ic method 0x2000dcd0; bytecode file offset 0x161580"
!OSMidioutcaps methodsFor: 'recovered'!
szPname
    | recoveredValue0 |
    recoveredValue0 := (self) stringAt: (8) size: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x2000ffa4; bytecode file offset 0x165330"
!OSMidioutcaps methodsFor: 'recovered'!
wMid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011dec; bytecode file offset 0x1657d4"
!OSMidioutcaps methodsFor: 'recovered'!
wPid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001232c; bytecode file offset 0x166e00"
!OSMidioutcaps methodsFor: 'recovered'!
vDriverVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018974; bytecode file offset 0x16c368"
!OSMidioutcaps methodsFor: 'recovered'!
wTechnology: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (40) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018ae8; bytecode file offset 0x16c3e0"
!OSMidioutcaps methodsFor: 'recovered'!
wVoices: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (42) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018c98; bytecode file offset 0x16c6bc"
!OSMidioutcaps methodsFor: 'recovered'!
wNotes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (44) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018ec0; bytecode file offset 0x16c770"
!OSMidioutcaps methodsFor: 'recovered'!
wChannelMask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (46) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20019088; bytecode file offset 0x16c9d4"
!OSMidioutcaps methodsFor: 'recovered'!
dwSupport: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (48) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20023a04; bytecode file offset 0x1772d8"
!OSMidioutcaps methodsFor: 'recovered'!
szPname: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) stringAt: (8) put: (recoveredValue0) size: (32).
    ^self
! !

