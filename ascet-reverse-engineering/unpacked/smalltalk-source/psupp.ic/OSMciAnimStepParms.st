"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001fec; bytecode file offset 0x155d58"
!OSMciAnimStepParms methodsFor: 'recovered'!
dwCallback
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003290; bytecode file offset 0x157170"
!OSMciAnimStepParms methodsFor: 'recovered'!
dwFrames
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20010a54; bytecode file offset 0x165330"
!OSMciAnimStepParms methodsFor: 'recovered'!
dwCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013154; bytecode file offset 0x166e00"
!OSMciAnimStepParms methodsFor: 'recovered'!
dwFrames: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

