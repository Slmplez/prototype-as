"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200392c4; bytecode file offset 0x935c54"
!SGCgIntegerExpressionContext methodsFor: 'recovered'!
isCgSameContext: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) isIntContext.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20076214; bytecode file offset 0x9757c8"
!SGCgIntegerExpressionContext methodsFor: 'recovered'!
isIntContext
    ^true
! !

"ASDBase.ic method 0x20090a94; bytecode file offset 0x98d360"
!SGCgIntegerExpressionContext methodsFor: 'recovered'!
representableBits
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) contextType.
    recoveredValue1 := (recoveredValue0) byteSize.
    recoveredValue2 := (recoveredValue1) * (8).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201a6bdc; bytecode file offset 0xaa34ac"
!SGCgIntegerExpressionContext methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) representableBits.
    recoveredValue4 := (recoveredValue3) asString.
    (recoveredValue2) nextPutAll: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) nextPutAll: (' bit integer').
    (recoveredValue1) cr.
    ^self
! !

"ASDBase.ic method 0x202a5c74; bytecode file offset 0xba2540"
!SGCgIntegerExpressionContext methodsFor: 'recovered'!
executeInContext: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) generator.
    recoveredValue1 := (recoveredValue0) expressionContext.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) generator.
    (recoveredValue2) expressionContext: (self).
    recoveredValue3 := [
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 |
    recoveredBlock14Value0 := (self) generator.
    recoveredBlock14Value1 := (self) representableBits.
    recoveredBlock14Value2 := recoveredArg1.
    recoveredBlock14Value3 := (recoveredBlock14Value0) temporarySetToRepresentableBits: (recoveredBlock14Value1) whileExecuting: (recoveredBlock14Value2).
    recoveredBlock14Value3
].
    recoveredValue4 := [
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 |
    recoveredBlock29Value0 := (self) generator.
    recoveredBlock29Value1 := recoveredLocal1.
    recoveredBlock29Value2 := (recoveredBlock29Value0) expressionContext: (recoveredBlock29Value1).
    recoveredBlock29Value2
].
    recoveredValue5 := (recoveredValue3) ensure: (recoveredValue4).
    ^recoveredValue5
! !

