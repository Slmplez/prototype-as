"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20010d0c; bytecode file offset 0x165330"
!OSHszpair methodsFor: 'recovered'!
hszSvc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012c38; bytecode file offset 0x166e00"
!OSHszpair methodsFor: 'recovered'!
hszTopic: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001af00; bytecode file offset 0x16ea70"
!OSHszpair methodsFor: 'recovered'!
hszSvc
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHsz.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001b830; bytecode file offset 0x16f1fc"
!OSHszpair methodsFor: 'recovered'!
hszTopic
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHsz.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

