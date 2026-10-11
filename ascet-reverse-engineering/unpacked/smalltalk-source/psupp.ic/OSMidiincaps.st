"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002088; bytecode file offset 0x155d58"
!OSMidiincaps methodsFor: 'recovered'!
wMid
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000283c; bytecode file offset 0x1561c4"
!OSMidiincaps methodsFor: 'recovered'!
wPid
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x20002e64; bytecode file offset 0x157170"
!OSMidiincaps methodsFor: 'recovered'!
vDriverVersion
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x200073cc; bytecode file offset 0x15ad48"
!OSMidiincaps methodsFor: 'recovered'!
dwSupport
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (40).
    ^recoveredValue0
! !

"psupp.ic method 0x2000dcac; bytecode file offset 0x161580"
!OSMidiincaps methodsFor: 'recovered'!
szPname
    | recoveredValue0 |
    recoveredValue0 := (self) stringAt: (8) size: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x200105d4; bytecode file offset 0x165330"
!OSMidiincaps methodsFor: 'recovered'!
wMid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011e88; bytecode file offset 0x1657d4"
!OSMidiincaps methodsFor: 'recovered'!
wPid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012f74; bytecode file offset 0x166e00"
!OSMidiincaps methodsFor: 'recovered'!
vDriverVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200188d8; bytecode file offset 0x16c368"
!OSMidiincaps methodsFor: 'recovered'!
dwSupport: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (40) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20023a1c; bytecode file offset 0x1772d8"
!OSMidiincaps methodsFor: 'recovered'!
szPname: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) stringAt: (8) put: (recoveredValue0) size: (32).
    ^self
! !

