"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20014484; bytecode file offset 0x912098"
!SGIlTransformationFactory class methodsFor: 'recovered'!
castingTransformationClass
    | recoveredValue0 |
    recoveredValue0 := CastingTransformationClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200144cc; bytecode file offset 0x912098"
!SGIlTransformationFactory class methodsFor: 'recovered'!
current
    | recoveredValue0 |
    recoveredValue0 := Current.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20048d08; bytecode file offset 0x945728"
!SGIlTransformationFactory class methodsFor: 'recovered'!
prepareCodeGeneration
    Current := nil.
    ^self
! !

"ASDBase.ic method 0x20054224; bytecode file offset 0x951190"
!SGIlTransformationFactory class methodsFor: 'recovered'!
castingTransformationClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    CastingTransformationClass := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200abd3c; bytecode file offset 0x9a8610"
!SGIlTransformationFactory class methodsFor: 'recovered'!
createCurrent: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) initialize: (recoveredValue1).
    Current := recoveredValue2.
    ^self
! !

