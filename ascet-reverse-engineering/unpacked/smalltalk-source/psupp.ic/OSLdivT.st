"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200020b8; bytecode file offset 0x155d58"
!OSLdivT methodsFor: 'recovered'!
quot
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003380; bytecode file offset 0x157170"
!OSLdivT methodsFor: 'recovered'!
rem
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20010400; bytecode file offset 0x165330"
!OSLdivT methodsFor: 'recovered'!
quot: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200125cc; bytecode file offset 0x166e00"
!OSLdivT methodsFor: 'recovered'!
rem: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (4) put: (recoveredValue0).
    ^self
! !

