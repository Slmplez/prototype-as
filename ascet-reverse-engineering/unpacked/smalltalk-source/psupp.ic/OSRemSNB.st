"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001800; bytecode file offset 0x155d58"
!OSRemSNB methodsFor: 'recovered'!
ulCntStr
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000377c; bytecode file offset 0x157170"
!OSRemSNB methodsFor: 'recovered'!
ulCntChar
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d9e8; bytecode file offset 0x161514"
!OSRemSNB methodsFor: 'recovered'!
rgString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSChar16.
    recoveredValue1 := (self) arrayAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010a0c; bytecode file offset 0x165330"
!OSRemSNB methodsFor: 'recovered'!
ulCntStr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001238c; bytecode file offset 0x166e00"
!OSRemSNB methodsFor: 'recovered'!
ulCntChar: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

