"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2029f3c0; bytecode file offset 0xb9bc9c"
!SGIlCastingApp class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := SGIlAbstractCastExprTransformation.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := SGIlAbstractCastExprTransformation.
    recoveredValue3 := SGIlRBDGSArithServiceCastingTransformation.
    (recoveredValue1) castingCompatible: (recoveredValue2) with: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := SGIlTargetOptimizedCastingTransformation.
    recoveredValue6 := SGIlTargetOptimizedArithServiceCastingTransformation.
    (recoveredValue4) castingCompatible: (recoveredValue5) with: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := SGIlTargetIndependentCastingTransformation.
    recoveredValue9 := SGIlTargetOptimizedArithServiceCastingTransformation.
    (recoveredValue7) castingCompatible: (recoveredValue8) with: (recoveredValue9).
    recoveredValue10 := RBIntSignedControllerSize.
    recoveredValue11 := RBIntSignedControllerSize.
    recoveredValue12 := (recoveredValue11) getInterval.
    (recoveredValue10) interval: (recoveredValue12).
    recoveredValue13 := RBIntUnsignedContollerSize.
    recoveredValue14 := RBIntUnsignedContollerSize.
    recoveredValue15 := (recoveredValue14) getInterval.
    (recoveredValue13) interval: (recoveredValue15).
    ^self
! !

