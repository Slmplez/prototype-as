"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200011c4; bytecode file offset 0x155d58"
!OSValContext methodsFor: 'recovered'!
valuelen
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002e34; bytecode file offset 0x157170"
!OSValContext methodsFor: 'recovered'!
valueContext
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003f70; bytecode file offset 0x157f64"
!OSValContext methodsFor: 'recovered'!
valBuffPtr
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20011144; bytecode file offset 0x165330"
!OSValContext methodsFor: 'recovered'!
valuelen: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200127ac; bytecode file offset 0x166e00"
!OSValContext methodsFor: 'recovered'!
valueContext: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200142dc; bytecode file offset 0x1683c0"
!OSValContext methodsFor: 'recovered'!
valBuffPtr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

