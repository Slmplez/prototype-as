"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000d2c4; bytecode file offset 0x909e08"
!SGCgVoidExpressionContext methodsFor: 'recovered'!
isCgSameContext: recoveredArg1
    ^true
! !

"ASDBase.ic method 0x2000d49c; bytecode file offset 0x909e08"
!SGCgVoidExpressionContext methodsFor: 'recovered'!
typeConforms: recoveredArg1
    ^true
! !

"ASDBase.ic method 0x200749b4; bytecode file offset 0x9757c8"
!SGCgVoidExpressionContext methodsFor: 'recovered'!
isArithmeticContext
    ^true
! !

"ASDBase.ic method 0x200754bc; bytecode file offset 0x9757c8"
!SGCgVoidExpressionContext methodsFor: 'recovered'!
isVoidContext
    ^true
! !

"ASDBase.ic method 0x20075d5c; bytecode file offset 0x9757c8"
!SGCgVoidExpressionContext methodsFor: 'recovered'!
isLimitNecessary
    ^true
! !

"ASDBase.ic method 0x20076dac; bytecode file offset 0x9757c8"
!SGCgVoidExpressionContext methodsFor: 'recovered'!
isFloatContext
    ^true
! !

"ASDBase.ic method 0x20145ba4; bytecode file offset 0xa42488"
!SGCgVoidExpressionContext methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) nextPutAll: ('void').
    (recoveredValue1) cr.
    ^self
! !

