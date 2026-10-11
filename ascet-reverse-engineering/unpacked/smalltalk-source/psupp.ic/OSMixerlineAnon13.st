"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001a4c; bytecode file offset 0x155d58"
!OSMixerlineAnon13 methodsFor: 'recovered'!
dwType
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002d98; bytecode file offset 0x157170"
!OSMixerlineAnon13 methodsFor: 'recovered'!
dwDeviceID
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004534; bytecode file offset 0x157f64"
!OSMixerlineAnon13 methodsFor: 'recovered'!
wMid
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000473c; bytecode file offset 0x1580a0"
!OSMixerlineAnon13 methodsFor: 'recovered'!
wPid
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (10).
    ^recoveredValue0
! !

"psupp.ic method 0x20004e48; bytecode file offset 0x1589a4"
!OSMixerlineAnon13 methodsFor: 'recovered'!
vDriverVersion
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x2000e0b8; bytecode file offset 0x161950"
!OSMixerlineAnon13 methodsFor: 'recovered'!
szPname
    | recoveredValue0 |
    recoveredValue0 := (self) stringAt: (16) size: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x2000faa0; bytecode file offset 0x165330"
!OSMixerlineAnon13 methodsFor: 'recovered'!
dwType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012518; bytecode file offset 0x166e00"
!OSMixerlineAnon13 methodsFor: 'recovered'!
dwDeviceID: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013f7c; bytecode file offset 0x1683c0"
!OSMixerlineAnon13 methodsFor: 'recovered'!
wMid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014c54; bytecode file offset 0x168528"
!OSMixerlineAnon13 methodsFor: 'recovered'!
wPid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (10) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200150bc; bytecode file offset 0x169290"
!OSMixerlineAnon13 methodsFor: 'recovered'!
vDriverVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20023b54; bytecode file offset 0x1773ec"
!OSMixerlineAnon13 methodsFor: 'recovered'!
szPname: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) stringAt: (16) put: (recoveredValue0) size: (32).
    ^self
! !

