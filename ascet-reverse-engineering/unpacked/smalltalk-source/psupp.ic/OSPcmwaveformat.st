"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200051dc; bytecode file offset 0x158aa4"
!OSPcmwaveformat methodsFor: 'recovered'!
wBitsPerSample
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (14).
    ^recoveredValue0
! !

"psupp.ic method 0x2000cfe0; bytecode file offset 0x160b8c"
!OSPcmwaveformat methodsFor: 'recovered'!
wf
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSWaveformat.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010d9c; bytecode file offset 0x165330"
!OSPcmwaveformat methodsFor: 'recovered'!
wf: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015a70; bytecode file offset 0x169398"
!OSPcmwaveformat methodsFor: 'recovered'!
wBitsPerSample: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (14) put: (recoveredValue0).
    ^self
! !

