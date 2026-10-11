"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20003c08; bytecode file offset 0x4ec04"
!EsCallbackBallot methodsFor: 'recovered'!
doit
    | recoveredValue0 |
    recoveredValue0 := hasBeenVetoed.
    ^recoveredValue0
! !

"kernel.ic method 0x2000756c; bytecode file offset 0x52538"
!EsCallbackBallot methodsFor: 'recovered'!
doit: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    hasBeenVetoed := recoveredValue0.
    ^self
! !

