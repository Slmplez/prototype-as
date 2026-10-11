"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000d4bc; bytecode file offset 0x909e08"
!SGCgNonArithmeticExpressionContext methodsFor: 'recovered'!
typeConforms: recoveredArg1
    ^true
! !

"ASDBase.ic method 0x2005643c; bytecode file offset 0x952d3c"
!SGCgNonArithmeticExpressionContext methodsFor: 'recovered'!
isCgSameContext: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) isArithmeticContext.
    recoveredValue2 := (recoveredValue1) not.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20075724; bytecode file offset 0x9757c8"
!SGCgNonArithmeticExpressionContext methodsFor: 'recovered'!
isContextWithBehaviour
    ^true
! !

"ASDBase.ic method 0x20145b88; bytecode file offset 0xa42488"
!SGCgNonArithmeticExpressionContext methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) nextPutAll: ('non-arithmetic').
    (recoveredValue1) cr.
    ^self
! !

