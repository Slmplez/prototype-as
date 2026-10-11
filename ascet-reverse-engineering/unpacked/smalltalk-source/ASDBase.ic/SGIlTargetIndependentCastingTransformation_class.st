"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012498; bytecode file offset 0x912098"
!SGIlTargetIndependentCastingTransformation class methodsFor: 'recovered'!
defaultArithServiceTransformation
    | recoveredValue0 |
    recoveredValue0 := SGIlTargetOptimizedArithServiceCastingTransformation.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016ab4; bytecode file offset 0x92209c"
!SGIlTargetIndependentCastingTransformation class methodsFor: 'recovered'!
label
    ^'TargetIndependent'
! !

"ASDBase.ic method 0x20016c7c; bytecode file offset 0x92209c"
!SGIlTargetIndependentCastingTransformation class methodsFor: 'recovered'!
optionString
    ^'Target Independent'
! !

"ASDBase.ic method 0x2003c6c4; bytecode file offset 0x939180"
!SGIlTargetIndependentCastingTransformation class methodsFor: 'recovered'!
isAbstract
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIlTargetIndependentCastingTransformation.
    recoveredValue1 := (self) = (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2007aae4; bytecode file offset 0x97c330"
!SGIlTargetIndependentCastingTransformation class methodsFor: 'recovered'!
isReleased
    ^false
! !

"ASDBase.ic method 0x20081994; bytecode file offset 0x97e254"
!SGIlTargetIndependentCastingTransformation class methodsFor: 'recovered'!
createForCodeGenerator: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGIlIntegerSize16Bit.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (self) create: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200961e0; bytecode file offset 0x992bec"
!SGIlTargetIndependentCastingTransformation class methodsFor: 'recovered'!
checkRestrictions: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) target.
    (self) check16Or32Bit: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20096ba0; bytecode file offset 0x9937fc"
!SGIlTargetIndependentCastingTransformation class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) bitSize: (recoveredValue2).
    ^recoveredValue0
! !

