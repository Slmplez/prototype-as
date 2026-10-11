"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012888; bytecode file offset 0x912098"
!SGIlTargetOptimizedCastingTransformation class methodsFor: 'recovered'!
defaultArithServiceTransformation
    | recoveredValue0 |
    recoveredValue0 := SGIlTargetOptimizedArithServiceCastingTransformation.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001733c; bytecode file offset 0x92209c"
!SGIlTargetOptimizedCastingTransformation class methodsFor: 'recovered'!
label
    ^'TargetOptimized'
! !

"ASDBase.ic method 0x200216e0; bytecode file offset 0x92209c"
!SGIlTargetOptimizedCastingTransformation class methodsFor: 'recovered'!
optionString
    ^'Target Optimized'
! !

"ASDBase.ic method 0x20078544; bytecode file offset 0x9757c8"
!SGIlTargetOptimizedCastingTransformation class methodsFor: 'recovered'!
isReleased
    ^true
! !

"ASDBase.ic method 0x200922ec; bytecode file offset 0x98ebfc"
!SGIlTargetOptimizedCastingTransformation class methodsFor: 'recovered'!
createForCodeGenerator: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGIlAbstractIntegerSize.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createDefault: (recoveredValue1).
    recoveredValue3 := (self) create: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20096ed0; bytecode file offset 0x9937fc"
!SGIlTargetOptimizedCastingTransformation class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) bitSize: (recoveredValue2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200e9f50; bytecode file offset 0x9e6810"
!SGIlTargetOptimizedCastingTransformation class methodsFor: 'recovered'!
checkRestrictions: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) target.
    (self) checkCompilerBitsizeDefined: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) checkNoServices: (recoveredValue2).
    ^self
! !

