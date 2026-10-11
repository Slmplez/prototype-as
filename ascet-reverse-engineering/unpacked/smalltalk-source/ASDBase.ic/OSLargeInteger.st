"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004abd4; bytecode file offset 0x947768"
!OSLargeInteger methodsFor: 'recovered'!
low
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b8e0; bytecode file offset 0x948384"
!OSLargeInteger methodsFor: 'recovered'!
high
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200b50f0; bytecode file offset 0x9b19b0"
!OSLargeInteger methodsFor: 'recovered'!
asInteger
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) high.
    recoveredValue1 := (recoveredValue0) bitShift: (32).
    recoveredValue2 := (self) low.
    recoveredValue3 := (recoveredValue1) + (recoveredValue2).
    ^recoveredValue3
! !

