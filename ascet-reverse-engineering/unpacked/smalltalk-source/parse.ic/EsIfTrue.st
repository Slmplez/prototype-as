"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"parse.ic method 0x200026fc; bytecode file offset 0x17d70"
!EsIfTrue methodsFor: 'recovered'!
generateOptimizedCodeOn: recoveredArg1 valueRequired: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := receiver.
    recoveredValue2 := messagePattern.
    recoveredValue3 := (recoveredValue2) arguments.
    recoveredValue4 := (recoveredValue3) first.
    recoveredValue5 := recoveredArg2.
    (recoveredValue0) ifTrueReceiver: (recoveredValue1) block: (recoveredValue4) valueRequired: (recoveredValue5).
    ^self
! !

