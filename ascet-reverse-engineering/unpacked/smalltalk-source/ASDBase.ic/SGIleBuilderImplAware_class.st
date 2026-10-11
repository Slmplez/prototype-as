"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x201960f0; bytecode file offset 0xa929cc"
!SGIleBuilderImplAware class methodsFor: 'recovered'!
optimizationPhaseDo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGIlTransformationFactory.
    recoveredValue1 := (recoveredValue0) current.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := super optimizationPhaseDo: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    recoveredValue3 := (recoveredValue1) optimizationPhaseDo: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20196108; bytecode file offset 0xa929cc"
!SGIleBuilderImplAware class methodsFor: 'recovered'!
expansionPreparationPhaseDo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGIlTransformationFactory.
    recoveredValue1 := (recoveredValue0) current.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := super expansionPreparationPhaseDo: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    recoveredValue3 := (recoveredValue1) expansionPreparationPhaseDo: (recoveredValue2).
    ^recoveredValue3
! !

