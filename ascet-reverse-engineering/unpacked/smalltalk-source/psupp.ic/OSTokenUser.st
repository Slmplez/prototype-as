"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000ca00; bytecode file offset 0x160b8c"
!OSTokenUser methodsFor: 'recovered'!
User
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSSidAndAttributes.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010d3c; bytecode file offset 0x165330"
!OSTokenUser methodsFor: 'recovered'!
User: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

