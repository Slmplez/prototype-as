"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000d30c; bytecode file offset 0x160ba4"
!OSTokenSource methodsFor: 'recovered'!
SourceName
    | recoveredValue0 |
    recoveredValue0 := (self) stringAt: (0) size: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d848; bytecode file offset 0x161514"
!OSTokenSource methodsFor: 'recovered'!
SourceIdentifier
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSLuid.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200139d0; bytecode file offset 0x1683c0"
!OSTokenSource methodsFor: 'recovered'!
SourceIdentifier: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2002381c; bytecode file offset 0x1770cc"
!OSTokenSource methodsFor: 'recovered'!
SourceName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) stringAt: (0) put: (recoveredValue0) size: (8).
    ^self
! !

