"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000758c; bytecode file offset 0x908be4"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
isMdlImplementationType
    | recoveredValue0 |
    recoveredValue0 := (self) isCgImplTemplateType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009068; bytecode file offset 0x908be4"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
physModelInterval
    | recoveredValue0 |
    recoveredValue0 := (self) getPhysInterval.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009a58; bytecode file offset 0x908be4"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
isMdlArtificialType
    | recoveredValue0 |
    recoveredValue0 := (self) isCgArtificialType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000cfd4; bytecode file offset 0x909ab8"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
cgNeg: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2000cfdc; bytecode file offset 0x909ab8"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
cgAbs: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2000f294; bytecode file offset 0x90bc70"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
cgPostInc: recoveredArg1 attributes: recoveredArg2
    ^nil
! !

"ASDBase.ic method 0x2000f2a4; bytecode file offset 0x90bc70"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
cgRem: recoveredArg1 and: recoveredArg2
    ^nil
! !

"ASDBase.ic method 0x2000f2b4; bytecode file offset 0x90bc70"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
cgPostDec: recoveredArg1 attributes: recoveredArg2
    ^nil
! !

"ASDBase.ic method 0x2000f2bc; bytecode file offset 0x90bc70"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
cgMul: recoveredArg1 and: recoveredArg2
    ^nil
! !

"ASDBase.ic method 0x2000f314; bytecode file offset 0x90bc70"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
cgPreDec: recoveredArg1 attributes: recoveredArg2
    ^nil
! !

"ASDBase.ic method 0x2000f344; bytecode file offset 0x90bc70"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
cgSub: recoveredArg1 and: recoveredArg2
    ^nil
! !

"ASDBase.ic method 0x2000f38c; bytecode file offset 0x90bc70"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
cgPreInc: recoveredArg1 attributes: recoveredArg2
    ^nil
! !

"ASDBase.ic method 0x2000f3a4; bytecode file offset 0x90bc70"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
cgAdd: recoveredArg1 and: recoveredArg2
    ^nil
! !

"ASDBase.ic method 0x2000f3ac; bytecode file offset 0x90bc70"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
cgDiv: recoveredArg1 and: recoveredArg2
    ^nil
! !

"ASDBase.ic method 0x2001069c; bytecode file offset 0x90cf68"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
cgAssignmentConversionToLimitedDiscrete: recoveredArg1 expr: recoveredArg2 generator: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := recoveredArg2.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20011520; bytecode file offset 0x90ddf4"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
cgBetween: recoveredArg1 left: recoveredArg2 right: recoveredArg3 source: recoveredArg4
    ^nil
! !

"ASDBase.ic method 0x20024bc0; bytecode file offset 0x92209c"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
basicTemplateScalarType
    ^'Scalar_%BASETYPE.NAME%'
! !

"ASDBase.ic method 0x200271d8; bytecode file offset 0x923b14"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
asDtTargetType
    | recoveredValue0 |
    recoveredValue0 := (self) asDtTargetType: (nil).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002d7f4; bytecode file offset 0x934580"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
basicTemplate
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) basicTemplate.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030c24; bytecode file offset 0x934580"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
implTemplateName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) extraImplInfo.
    recoveredValue1 := (recoveredValue0) referencedImplTypeName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031404; bytecode file offset 0x934580"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
asDbType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) cgUniqueTypeIdentifier.
    recoveredValue1 := (recoveredValue0) asString.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031d24; bytecode file offset 0x934580"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
formulaName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) formula.
    recoveredValue1 := (recoveredValue0) name.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033794; bytecode file offset 0x934580"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
hasLinearFormula
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) formula.
    recoveredValue1 := (recoveredValue0) isLinearAndInvertible.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200348d4; bytecode file offset 0x934580"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
isImplementationMaster
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) extraImplInfo.
    recoveredValue1 := (recoveredValue0) isImplementationMaster.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034ab4; bytecode file offset 0x934580"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
isCgTypeWithGenericPhysicalUnitWithOffset
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) physicalUnit.
    recoveredValue1 := (recoveredValue0) isGenericPhysicalUnitWithOffset.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034c54; bytecode file offset 0x934580"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
isOriginalImplementationRescaled
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) extraImplInfo.
    recoveredValue1 := (recoveredValue0) isRescaled.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200490ac; bytecode file offset 0x945960"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
setBaseType
    attribute := nil.
    ^self
! !

"ASDBase.ic method 0x2004ede0; bytecode file offset 0x94d048"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
errLabelBasic
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20052ba8; bytecode file offset 0x9505d0"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
createWithPhysInterval: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20058208; bytecode file offset 0x956284"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
copyWithPhysicalUnit: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) copyImplementation.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) physicalUnit: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20059178; bytecode file offset 0x956284"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
transformConstant: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) formula.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) appliedToNumber: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005e63c; bytecode file offset 0x95af24"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
setArtificialType
    attribute := 'ArtificialType'.
    ^self
! !

"ASDBase.ic method 0x2005e660; bytecode file offset 0x95af24"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
setImplTemplateType
    attribute := 'ImplTemplateType'.
    ^self
! !

"ASDBase.ic method 0x20060478; bytecode file offset 0x95cf04"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
asArtificialType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) copyImplementation.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setArtificialType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200604f8; bytecode file offset 0x95cf04"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
asTemplateType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) copyImplementation.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setImplTemplateType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20060598; bytecode file offset 0x95cf04"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
asBaseClassType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) copyImplementation.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setBaseType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007576c; bytecode file offset 0x9757c8"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
isMdlArithmetic
    ^true
! !

"ASDBase.ic method 0x20076524; bytecode file offset 0x9757c8"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
needsIntegerCode
    ^true
! !

"ASDBase.ic method 0x2007738c; bytecode file offset 0x9757c8"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
isArithmeticElement
    ^true
! !

"ASDBase.ic method 0x20077a84; bytecode file offset 0x9757c8"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
isCgArithmeticType
    ^true
! !

"ASDBase.ic method 0x2007858c; bytecode file offset 0x9757c8"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
isIleArithmeticType
    ^true
! !

"ASDBase.ic method 0x2008b89c; bytecode file offset 0x988178"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
isCgArtificialType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := attribute.
    recoveredValue1 := (recoveredValue0) == ('ArtificialType').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008b8b4; bytecode file offset 0x988178"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
isCgImplTemplateType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := attribute.
    recoveredValue1 := (recoveredValue0) == ('ImplTemplateType').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20094e1c; bytecode file offset 0x991c58"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
asBaseType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) basicTemplate.
    recoveredValue2 := (self) asBaseType: (recoveredValue0) template: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a553c; bytecode file offset 0x9a1dfc"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
mdlResolveGenericUnitWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) physicalUnit.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) physicalUnit.
    recoveredValue3 := (recoveredValue0) resolveGenericUnitWith: (recoveredValue2).
    recoveredValue4 := (self) copyWithPhysicalUnit: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200c4a94; bytecode file offset 0x9c16b0"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
physicalUnit: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    physicalUnit := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d8c38; bytecode file offset 0x9d54f8"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
convertCgTypeWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) physicalUnit.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) physicalUnit.
    recoveredValue4 := (recoveredValue1) convertCgPhysicalUnitWith: (recoveredValue3).
    recoveredValue5 := (self) convertCgTypeWith: (recoveredValue0) physicalUnit: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ec340; bytecode file offset 0x9e8c08"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
computeImplDataFor: recoveredArg1 withImpl: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) getImplType.
    recoveredValue1 := (self) getImplInterval.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) transformConstant: (recoveredValue2).
    recoveredValue4 := (recoveredValue1) adjustValue: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) convert: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ff848; bytecode file offset 0x9fc108"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
mdlConvert: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) physicalUnit.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) mdlConvert: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := super mdlConvert: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20100d78; bytecode file offset 0x9fd654"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
isCgTypeCompatibleNoImpl: recoveredArg1 generator: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAnsiCType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgArithmeticType.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20118aa4; bytecode file offset 0xa15490"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
isCgTypeWithGenericPhysicalUnit
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) physicalUnit.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isGenericPhysicalUnit.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) physicalUnit.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGenericPhysicalUnitWithOffset.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20122a1c; bytecode file offset 0xa1f2d8"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
convertCgTypeWith: recoveredArg1 physicalUnit: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgContType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyWithPhysicalUnit: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyWithPhysicalUnit: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012a4d0; bytecode file offset 0xa26dec"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
physicalUnit
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := physicalUnit.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGCgNoPhysicalUnit.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            physicalUnit := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := physicalUnit.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20187d00; bytecode file offset 0xa845c0"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
isCgTypeAssignmentCompatibleTo: recoveredArg1 generator: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAnsiCType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) isCgArithmeticType.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgRescalableLinearFixedPointType.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201a1b80; bytecode file offset 0xa9e44c"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
errLabelWithImpl
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgImplTemplateType.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) implTemplateName.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := super errLabelWithImpl.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) physicalUnitErrLabel.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a8010; bytecode file offset 0xaa491c"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
createIdentWithInterval: recoveredArg1 type: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    false
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [
    'Override method if needed!!'
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b0614; bytecode file offset 0xaacee8"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
createUniqueTypeIdentifier
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgArtificialType.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) asBaseClassType.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) createUniqueBaseTypeIdentifier.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) asBaseType: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) basicTemplateScalarType.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) asBaseType: (recoveredStack1) template: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := super createUniqueTypeIdentifier.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d6fe0; bytecode file offset 0xad38ac"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
asTempVarType
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlImplementationType.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlArtificialType.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyImplementation.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) setBaseType.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := super asTempVarType.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f80b4; bytecode file offset 0xaf4984"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
semAnaOperation: recoveredArg1 leftLabel: recoveredArg2 leftSource: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) physicalUnit.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isGenericPhysicalUnitWithOffset.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 613.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) operator.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := super semAnaOperation: (recoveredStack1) leftLabel: (recoveredStack2) leftSource: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020b760; bytecode file offset 0xb08030"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
createUniqueBaseTypeIdentifier
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgArtificialType.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) asBaseClassType.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) createUniqueBaseTypeIdentifier.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) asBaseType: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgImplTemplateType.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) implTemplateName.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := super createUniqueBaseTypeIdentifier.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020bf74; bytecode file offset 0xb08848"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
physicalUnitErrLabel
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) physicalUnit.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgNoPhysicalUnit.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) physicalUnit.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgAnyPhysicalUnit.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := '['.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) physicalUnit.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) errLabel.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := ']'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023e818; bytecode file offset 0xb3b0e0"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
isCgTypeIdenticalAllowWiderIntervalIn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgArithmeticType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplInterval.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplInterval.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20261acc; bytecode file offset 0xb5e3a0"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
isLiteralOrConstant: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgArithmeticLiteralType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlMethodCall.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodDecl.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgDirectAccessMethod.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodDecl.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) directAccessOrigin.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlConstant.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20263904; bytecode file offset 0xb60200"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
generateScoopIX: recoveredArg1 signed: recoveredArg2 kind: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := 'type'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack4 := 'discrete'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) attribute: (recoveredStack3) with: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 'signedness'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack4) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := 'signed'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := 'unsigned'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2) attribute: (recoveredStack3) with: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := 'kind'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack2) attribute: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) writeHeaderEnd.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026fc90; bytecode file offset 0xb6c564"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
defaultPhysicalValueForArrayCompletion
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) formula.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDefaultValue.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) appliedInverseToNumber: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInfinite.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPhysInterval.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPhysInterval.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20277318; bytecode file offset 0xb73bf0"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
updateForFormula: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) deepCopy.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) formula: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isImplementationMaster.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) formula.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasInverse.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) updatePhysicsInterval.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) formula.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasVerse.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) updateImplementationInterval.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202992d0; bytecode file offset 0xb95b9c"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
isCgTypeCompatibleTo: recoveredArg1 generator: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAnsiCType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgArithmeticType.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) physicalUnit.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) physicalUnit.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgPhysicalUnitCompatibleTo: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgRescalableLinearFixedPointType.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgContMoebiusFixedPointType.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) not.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c5c24; bytecode file offset 0xbc24f0"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
isCgTypeIdentical: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgArithmeticType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplInterval.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplInterval.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) physicalUnit.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) physicalUnit.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgPhysicalUnitIdentical: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d5974; bytecode file offset 0xbd2244"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
symmetricConvertCgTypeNoPhysicalUnitWith: recoveredArg1 do: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGCgNoPhysicalUnit.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyWithPhysicalUnit: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGCgNoPhysicalUnit.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyWithPhysicalUnit: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) generator.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgTypeCompatibleTo: (recoveredStack1) generator: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) convertCgTypeWith: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) generator.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgTypeCompatibleTo: (recoveredStack1) generator: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) convertCgTypeWith: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d77a8; bytecode file offset 0xbd4084"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
errLabel
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgImplTemplateType.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) implTemplateName.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) physicalUnit.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgNoPhysicalUnit.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) physicalUnit.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgAnyPhysicalUnit.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) errLabelBasic.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) errLabelBasic.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := '['.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) physicalUnit.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) errLabel.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := ']'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034f8b0; bytecode file offset 0xc4c1b0"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
asDtTargetType: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RBFormulaLinear.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) c0: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 1000000.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) c1: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := SGReservedNames.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) dtName.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) name: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := 's'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack2) unit: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := RBInterval.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := #[0 0 0 0 0 0 0 0].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := #[240 167 198 75 247 198 160 64].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) left: (recoveredStack2) right: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) intersect: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := SGCgTypeFactory.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := RBInt32Unsigned.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) createDefault.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack5 := (recoveredStack5) physicalUnit.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack6 := true.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) createContType: (recoveredStack2) physInterval: (recoveredStack3) formula: (recoveredStack4) physicalUnit: (recoveredStack5) isDeltaT: (recoveredStack6).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203c661c; bytecode file offset 0xcc2efc"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
typeAndImplHash
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) hash.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) formula.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLinearAndInvertible.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) scale.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) hash.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) offset.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) hash.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) formula.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) parameterArray.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := [:recoveredBlock42Arg1 | 
    | recoveredBlock42Value0 recoveredBlock42Value1 recoveredBlock42Value2 recoveredBlock42Value3 recoveredBlock42Value4 |
    recoveredBlock42Value0 := recoveredLocal1.
    recoveredBlock42Value1 := recoveredBlock42Arg1.
    recoveredBlock42Value2 := (recoveredBlock42Value1) hash.
    recoveredBlock42Value3 := (recoveredBlock42Value0) + (recoveredBlock42Value2).
    recoveredBlock42Value4 := recoveredBlock42Value3.
    recoveredLocal1 := recoveredBlock42Value4.
    recoveredBlock42Value3
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) hash.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplInterval.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) hash.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203e0f1c; bytecode file offset 0xcdd808"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
isCgNamedLinearFormulaArithmeticType
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasLinearFormula.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) formula.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIdentityFormula.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleFloatType.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIdentityCompliant.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) description.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) unit.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIdentityCompliant.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) description.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) unit.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) extraImplInfo.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) isZeroNotIncluded.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplInterval.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) representsTypeInterval.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) not.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203e1e2c; bytecode file offset 0xcde700"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
buildMdlInitValue: recoveredArg1 of: recoveredArg2 with: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgInitValue.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) isBoolean.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock49Value0 recoveredBlock49Value1 |
    recoveredBlock49Value0 := recoveredLocal1.
    recoveredBlock49Value1 := (recoveredBlock49Value0) isNumber.
    recoveredBlock49Value1
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := [
    'Expect number as init value for arithmetic type.'
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildMdlLiteralInitValue: (recoveredStack1) with: (recoveredStack2) from: (recoveredStack3) originalValue: (recoveredStack4).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2042fa64; bytecode file offset 0xd2c360"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
semAnaInitValue: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlNativeInitValue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgRescalableType.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := #[0 0 0 0 0 0 0 0].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 46.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) variable.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) physModelInterval.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) asFloat.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := RBInterval.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := #[22 86 231 158 175 3 210 188].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := #[22 86 231 158 175 3 210 60].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) left: (recoveredStack2) right: (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) contains: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 103] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := RBInterval.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFloat.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := (recoveredStack2) right.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := (recoveredStack2) asFloat.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) left: (recoveredStack1) right: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFloat.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) contains: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 103] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) variable.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := (recoveredStack3) variable.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) mdlSemInvalidInitValue: (recoveredStack1) physInterval: (recoveredStack2) errLabel: (recoveredStack3).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204376ac; bytecode file offset 0xd33f94"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
checkUnitNoFactorOrOffset: recoveredArg1 reason: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) physicalUnit.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgTypeWithGenericPhysicalUnit.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 23.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := (recoveredStack4) physicalUnit.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) iaSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) factor.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) offset.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 105].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := 22.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := (recoveredStack3) factor.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := (recoveredStack3) ~= (recoveredStack4).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := (recoveredStack3) factor.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack4 := '*'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredPC := 72.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack4 := (recoveredStack4) offset.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack5 := 0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack4 := (recoveredStack4) ~= (recoveredStack5).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack4) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack4 := ' + '.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack5 := (recoveredStack5) offset.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack5 := (recoveredStack5) asString.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredPC := 100.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack4 := ''.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) iaSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2043fa34; bytecode file offset 0xd3c320"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
checkUnitNoFactorOrOffset: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) physicalUnit.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgTypeWithGenericPhysicalUnit.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 23.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := 'with floating point implementation'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := (recoveredStack4) physicalUnit.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) iaSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) factor.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) offset.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 107].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := 22.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := (recoveredStack3) factor.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := (recoveredStack3) ~= (recoveredStack4).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := (recoveredStack3) factor.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := '*'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 74.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack4 := (recoveredStack4) offset.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack5 := 0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack4 := (recoveredStack4) ~= (recoveredStack5).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack4) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack4 := ' + '.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack5 := (recoveredStack5) offset.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack5 := (recoveredStack5) asString.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredPC := 102.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack4 := ''.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) iaSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20487118; bytecode file offset 0xd83a18"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
cgBuildConversionImplCastFor: recoveredArg1 isTypeOfLeftHandSide: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGCgAdaptIntervalAttributes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) cgAttrNoLimitAssignment.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) cgAttrNoLimitOverflow.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) representableInDoubleBitSize.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 91] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeRepresentableInDoubleBitSize.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) createImplTypeFromInterval: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgLimitedIntegerType.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplInterval.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWithImplInterval: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileLimit: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack4 := (recoveredStack4) getImplType.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := (recoveredStack2) createIdentWithInterval: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) implCastAssign: (recoveredStack2) attributes: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack4 := (recoveredStack4) getImplType.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := (recoveredStack2) createIdentWithInterval: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) implCastAssign: (recoveredStack2) attributes: (recoveredStack3).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) getInterval.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredPC := 116.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) createImplTypeFromInterval: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := (recoveredStack3) getImplType.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) createIdentWithInterval: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) implCastAssignWithSelectableType: (recoveredStack1) attributes: (recoveredStack2).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204d8110; bytecode file offset 0xdd4a00"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
updatePhysicsInterval
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) formula.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasInverse.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplInterval.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Stack0 recoveredBlock27Stack1 recoveredBlock27Stack2 recoveredBlock27Stack3 recoveredBlock27Stack4 recoveredBlock27PC recoveredBlock27Step recoveredBlock27Done recoveredBlock27Result |
    recoveredBlock27Stack0 := self.
    recoveredBlock27PC := 34.
    recoveredBlock27Done := false.
    [recoveredBlock27Done not] whileTrue: [
        recoveredBlock27Step := recoveredBlock27PC.
        recoveredBlock27Step = 34 ifTrue: [
            recoveredBlock27Stack1 := nil.
            recoveredBlock27PC := 35.
        ].
        recoveredBlock27Step = 35 ifTrue: [
            recoveredBlock27Stack2 := recoveredLocal4.
            recoveredBlock27PC := 38.
        ].
        recoveredBlock27Step = 38 ifTrue: [
            recoveredBlock27Stack3 := recoveredBlock27Arg1.
            recoveredBlock27PC := 39.
        ].
        recoveredBlock27Step = 39 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) hasDefinedInverseResultForValue: (recoveredBlock27Stack3).
            recoveredBlock27PC := 41.
        ].
        recoveredBlock27Step = 41 ifTrue: [
            (recoveredBlock27Stack2) ifTrue: [recoveredBlock27PC := 47] ifFalse: [recoveredBlock27PC := 44].
        ].
        recoveredBlock27Step = 44 ifTrue: [
            recoveredBlock27PC := 45.
        ].
        recoveredBlock27Step = 45 ifTrue: [
            recoveredBlock27Stack1 := false.
            recoveredBlock27PC := 46.
        ].
        recoveredBlock27Step = 46 ifTrue: [
            ^recoveredBlock27Stack1
        ].
        recoveredBlock27Step = 47 ifTrue: [
            recoveredBlock27Result := recoveredBlock27Stack1.
            recoveredBlock27Done := true.
        ].
    ].
    recoveredBlock27Result
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := [:recoveredBlock55Arg1 | 
    | recoveredBlock55Stack0 recoveredBlock55Stack1 recoveredBlock55Stack2 recoveredBlock55Stack3 recoveredBlock55Stack4 recoveredBlock55PC recoveredBlock55Step recoveredBlock55Done recoveredBlock55Result |
    recoveredBlock55Stack0 := self.
    recoveredBlock55PC := 62.
    recoveredBlock55Done := false.
    [recoveredBlock55Done not] whileTrue: [
        recoveredBlock55Step := recoveredBlock55PC.
        recoveredBlock55Step = 62 ifTrue: [
            recoveredBlock55Stack1 := nil.
            recoveredBlock55PC := 63.
        ].
        recoveredBlock55Step = 63 ifTrue: [
            recoveredBlock55Stack2 := recoveredLocal4.
            recoveredBlock55PC := 66.
        ].
        recoveredBlock55Step = 66 ifTrue: [
            recoveredBlock55Stack3 := recoveredBlock55Arg1.
            recoveredBlock55PC := 67.
        ].
        recoveredBlock55Step = 67 ifTrue: [
            recoveredBlock55Stack2 := (recoveredBlock55Stack2) hasDefinedInverseResultForValue: (recoveredBlock55Stack3).
            recoveredBlock55PC := 69.
        ].
        recoveredBlock55Step = 69 ifTrue: [
            (recoveredBlock55Stack2) ifTrue: [recoveredBlock55PC := 75] ifFalse: [recoveredBlock55PC := 72].
        ].
        recoveredBlock55Step = 72 ifTrue: [
            recoveredBlock55PC := 73.
        ].
        recoveredBlock55Step = 73 ifTrue: [
            recoveredBlock55Stack1 := false.
            recoveredBlock55PC := 74.
        ].
        recoveredBlock55Step = 74 ifTrue: [
            ^recoveredBlock55Stack1
        ].
        recoveredBlock55Step = 75 ifTrue: [
            recoveredBlock55Result := recoveredBlock55Stack1.
            recoveredBlock55Done := true.
        ].
    ].
    recoveredBlock55Result
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) transformedByInverse: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := (recoveredStack2) right.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) left: (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) right: (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlInteger.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) asInteger.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlReal.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) asFloat.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack0) setPhysInterval: (recoveredStack1).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2050440c; bytecode file offset 0xe00d00"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
updateImplementationInterval
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) formula.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasVerse.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPhysInterval.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Stack0 recoveredBlock27Stack1 recoveredBlock27Stack2 recoveredBlock27Stack3 recoveredBlock27Stack4 recoveredBlock27PC recoveredBlock27Step recoveredBlock27Done recoveredBlock27Result |
    recoveredBlock27Stack0 := self.
    recoveredBlock27PC := 34.
    recoveredBlock27Done := false.
    [recoveredBlock27Done not] whileTrue: [
        recoveredBlock27Step := recoveredBlock27PC.
        recoveredBlock27Step = 34 ifTrue: [
            recoveredBlock27Stack1 := nil.
            recoveredBlock27PC := 35.
        ].
        recoveredBlock27Step = 35 ifTrue: [
            recoveredBlock27Stack2 := recoveredLocal4.
            recoveredBlock27PC := 38.
        ].
        recoveredBlock27Step = 38 ifTrue: [
            recoveredBlock27Stack3 := recoveredBlock27Arg1.
            recoveredBlock27PC := 39.
        ].
        recoveredBlock27Step = 39 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) hasDefinedResultForValue: (recoveredBlock27Stack3).
            recoveredBlock27PC := 41.
        ].
        recoveredBlock27Step = 41 ifTrue: [
            (recoveredBlock27Stack2) ifTrue: [recoveredBlock27PC := 47] ifFalse: [recoveredBlock27PC := 44].
        ].
        recoveredBlock27Step = 44 ifTrue: [
            recoveredBlock27PC := 45.
        ].
        recoveredBlock27Step = 45 ifTrue: [
            recoveredBlock27Stack1 := false.
            recoveredBlock27PC := 46.
        ].
        recoveredBlock27Step = 46 ifTrue: [
            ^recoveredBlock27Stack1
        ].
        recoveredBlock27Step = 47 ifTrue: [
            recoveredBlock27Result := recoveredBlock27Stack1.
            recoveredBlock27Done := true.
        ].
    ].
    recoveredBlock27Result
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := [:recoveredBlock55Arg1 | 
    | recoveredBlock55Stack0 recoveredBlock55Stack1 recoveredBlock55Stack2 recoveredBlock55Stack3 recoveredBlock55Stack4 recoveredBlock55PC recoveredBlock55Step recoveredBlock55Done recoveredBlock55Result |
    recoveredBlock55Stack0 := self.
    recoveredBlock55PC := 62.
    recoveredBlock55Done := false.
    [recoveredBlock55Done not] whileTrue: [
        recoveredBlock55Step := recoveredBlock55PC.
        recoveredBlock55Step = 62 ifTrue: [
            recoveredBlock55Stack1 := nil.
            recoveredBlock55PC := 63.
        ].
        recoveredBlock55Step = 63 ifTrue: [
            recoveredBlock55Stack2 := recoveredLocal4.
            recoveredBlock55PC := 66.
        ].
        recoveredBlock55Step = 66 ifTrue: [
            recoveredBlock55Stack3 := recoveredBlock55Arg1.
            recoveredBlock55PC := 67.
        ].
        recoveredBlock55Step = 67 ifTrue: [
            recoveredBlock55Stack2 := (recoveredBlock55Stack2) hasDefinedResultForValue: (recoveredBlock55Stack3).
            recoveredBlock55PC := 69.
        ].
        recoveredBlock55Step = 69 ifTrue: [
            (recoveredBlock55Stack2) ifTrue: [recoveredBlock55PC := 75] ifFalse: [recoveredBlock55PC := 72].
        ].
        recoveredBlock55Step = 72 ifTrue: [
            recoveredBlock55PC := 73.
        ].
        recoveredBlock55Step = 73 ifTrue: [
            recoveredBlock55Stack1 := false.
            recoveredBlock55PC := 74.
        ].
        recoveredBlock55Step = 74 ifTrue: [
            ^recoveredBlock55Stack1
        ].
        recoveredBlock55Step = 75 ifTrue: [
            recoveredBlock55Result := recoveredBlock55Stack1.
            recoveredBlock55Done := true.
        ].
    ].
    recoveredBlock55Result
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) transformedBy: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := (recoveredStack2) right.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) left: (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) right: (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBInteger.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 153].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) rounded.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack0) left: (recoveredStack1).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) rounded.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0) right: (recoveredStack1).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBFloat.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 162] ifFalse: [recoveredPC := 170].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := (recoveredStack0) asFloat.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack0) setImplInterval: (recoveredStack1).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20571644; bytecode file offset 0xe6df78"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
asBaseType: recoveredArg1 template: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) typeNameKey.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := 'BASETYPE.NAME'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) implTypeNameKey.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := 'FORMULA.NAME'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := (recoveredStack4) formulaName.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := 'INTERVAL.LEFT'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := ''.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := (recoveredStack3) implIntervalLeftKey.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack4 := ''.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := 'INTERVAL.RIGHT'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := ''.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := (recoveredStack3) implIntervalRightKey.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack4 := ''.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := 'ZERONOTINCLUDED'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack4 := ''.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := (recoveredStack3) implZeroNotIncludedKey.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack4 := ''.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplInterval.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInfinite.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 197] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) representsTypeInterval.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 197] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) negative.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := 'n'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredPC := 122.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := 'p'.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) negative.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := 'n'.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredPC := 150.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := 'p'.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := 'INTERVAL.LEFT'.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := (recoveredStack2) implIntervalLeftKey.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := 'INTERVAL.RIGHT'.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack2 := (recoveredStack2) implIntervalRightKey.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 240] ifFalse: [recoveredPC := 206].
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := (recoveredStack0) isZeroNotIncluded.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 212] ifFalse: [recoveredPC := 218].
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := 'nz'.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredPC := 220.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack2 := 'ZERONOTINCLUDED'.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack2 := (recoveredStack2) implZeroNotIncludedKey.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack0 := (recoveredStack0) bindWithGeneralArguments: (recoveredStack1).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205d05d0; bytecode file offset 0xeccf38"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
checkImplementationFor: recoveredArg1 logicNode: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBFloat.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) formula.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIdentityCompliant.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 62.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := 'float implementation'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := (recoveredStack4) formula.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) iaWarningNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := RBFormulaId.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) createIdent.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) updateForFormula: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBInteger.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) formula.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLinearAndInvertible.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 214] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) formula.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := RBFormulaConst.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := RBFormulaLinear.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) c1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := RBFormulaMoebius.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) isKindOf: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) c1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) d0.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) d1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := RBFormulaMoebius.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) isKindOf: (recoveredStack1).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 191].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) d1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 191].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) d0.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 191].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) c1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) d1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := (recoveredStack0) / (recoveredStack1).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := (recoveredStack1) c0.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := (recoveredStack2) d0.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 191].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := (recoveredStack2) formula.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack0) iaSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := RBFormulaId.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack0) updateForFormula: (recoveredStack1).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := (recoveredStack0) isImplementationMaster.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 212] ifFalse: [recoveredPC := 200].
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := 63.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := (recoveredStack2) formula.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack0) iaInfoNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlImplCastDecl.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 220] ifFalse: [recoveredPC := 222].
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 246] ifFalse: [recoveredPC := 228].
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := (recoveredStack0) isImplementationMaster.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 236] ifFalse: [recoveredPC := 246].
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplInterval.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack0 := (recoveredStack0) asInteger.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredPC := 278.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPhysInterval.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack0 := (recoveredStack0) transformedBy: (recoveredStack1).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBInteger.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 262] ifFalse: [recoveredPC := 278].
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := (recoveredStack1) rounded.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            (recoveredStack0) left: (recoveredStack1).
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := (recoveredStack1) rounded.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            (recoveredStack0) right: (recoveredStack1).
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInfinite.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 284] ifFalse: [recoveredPC := 296].
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack0 := (recoveredStack0) iaSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 302] ifFalse: [recoveredPC := 311].
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack1 := 8.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack0 := (recoveredStack0) iaSemErrNo: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack0 := (recoveredStack0) getInterval.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack0 := (recoveredStack0) representableInDoubleBitSize.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 331] ifFalse: [recoveredPC := 322].
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack1 := 4.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack0 := (recoveredStack0) iaSemErrNo: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 350] ifFalse: [recoveredPC := 338].
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack0 := (recoveredStack0) iaSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20622744; bytecode file offset 0xf1f084"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
semAnaOperationType: recoveredArg1 operation: recoveredArg2 leftLabel: recoveredArg3 rightLabel: recoveredArg4 leftSource: recoveredArg5 rightSource: recoveredArg6
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlUnaryArithmeticExpression.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 531].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) operator.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'div'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgRescalableLinearFixedPointType.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 91] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgRescalableLinearFixedPointType.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 91].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := 633.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := Array.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack5 := (recoveredStack5) leftChild.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack5 := (recoveredStack5) source.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack6 := recoveredArg2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack6 := (recoveredStack6) rightChild.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack6 := (recoveredStack6) source.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack4 := (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack5 := Array.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack6 := 'Type of left operand: '.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack7 := (recoveredStack7) errLabelWithImpl.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack6 := (recoveredStack6) , (recoveredStack7).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack7 := 'Type of right operand: '.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack8 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack8 := (recoveredStack8) errLabelWithImpl.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack7 := (recoveredStack7) , (recoveredStack8).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack5 := (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := (recoveredStack3) createMultiSource: (recoveredStack4) labels: (recoveredStack5).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgArithmeticType.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := [:recoveredBlock104Arg1 | 
    | recoveredBlock104Value0 recoveredBlock104Value1 recoveredBlock104Value2 recoveredBlock104Value3 recoveredBlock104Value4 recoveredBlock104Value5 |
    recoveredBlock104Value0 := recoveredBlock104Arg1.
    recoveredBlock104Value1 := (self) physicalUnit.
    recoveredBlock104Value2 := recoveredArg1.
    recoveredBlock104Value3 := (recoveredBlock104Value2) physicalUnit.
    recoveredBlock104Value4 := (recoveredBlock104Value1) divWithPhysicalUnit: (recoveredBlock104Value3).
    recoveredBlock104Value5 := (recoveredBlock104Value0) copyWithPhysicalUnit: (recoveredBlock104Value4).
    ^recoveredBlock104Value5
].
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack1) symmetricConvertCgTypeNoPhysicalUnitWith: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredPC := 531.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) operator.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := 'mul'.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 202].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgRescalableLinearFixedPointType.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 148] ifFalse: [recoveredPC := 164].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := (recoveredStack2) physicalUnit.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack3 := (recoveredStack3) physicalUnit.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := (recoveredStack2) mulWithPhysicalUnit: (recoveredStack3).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyWithPhysicalUnit: (recoveredStack2).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgArithmeticType.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 198].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack3 := [:recoveredBlock176Arg1 | 
    | recoveredBlock176Value0 recoveredBlock176Value1 recoveredBlock176Value2 recoveredBlock176Value3 recoveredBlock176Value4 recoveredBlock176Value5 |
    recoveredBlock176Value0 := recoveredBlock176Arg1.
    recoveredBlock176Value1 := (self) physicalUnit.
    recoveredBlock176Value2 := recoveredArg1.
    recoveredBlock176Value3 := (recoveredBlock176Value2) physicalUnit.
    recoveredBlock176Value4 := (recoveredBlock176Value1) mulWithPhysicalUnit: (recoveredBlock176Value3).
    recoveredBlock176Value5 := (recoveredBlock176Value0) copyWithPhysicalUnit: (recoveredBlock176Value4).
    ^recoveredBlock176Value5
].
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack1) symmetricConvertCgTypeNoPhysicalUnitWith: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredPC := 531.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := (recoveredStack1) operator.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := 'add'.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 212] ifFalse: [recoveredPC := 382].
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) physicalUnit.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGenericPhysicalUnitWithOffset.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 220] ifFalse: [recoveredPC := 274].
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := (recoveredStack1) physicalUnit.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGenericPhysicalUnitWithOffset.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 230] ifFalse: [recoveredPC := 274].
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack2 := 613.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack4 := (recoveredStack4) operator.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack5 := recoveredArg5.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) source: (recoveredStack5).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack2 := 613.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack4 := (recoveredStack4) operator.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack5 := recoveredArg6.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) source: (recoveredStack5).
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredPC := 378.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := (recoveredStack1) physicalUnit.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGenericPhysicalUnit.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 282] ifFalse: [recoveredPC := 292].
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack1 := (recoveredStack1) physicalUnit.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGenericPhysicalUnitWithOffset.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 310] ifFalse: [recoveredPC := 292].
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := (recoveredStack1) physicalUnit.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGenericPhysicalUnitWithOffset.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 300] ifFalse: [recoveredPC := 378].
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack1 := (recoveredStack1) physicalUnit.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGenericPhysicalUnit.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 310] ifFalse: [recoveredPC := 378].
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyWithPhysicalUnit: (recoveredStack2).
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyWithPhysicalUnit: (recoveredStack3).
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack6 := recoveredArg5.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack7 := recoveredArg6.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack1 := (recoveredStack1) semAnaOperationType: (recoveredStack2) operation: (recoveredStack3) leftLabel: (recoveredStack4) rightLabel: (recoveredStack5) leftSource: (recoveredStack6) rightSource: (recoveredStack7).
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 352] ifFalse: [recoveredPC := 348].
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack2 := (recoveredStack2) physicalUnit.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack2 := (recoveredStack2) isGenericPhysicalUnitWithOffset.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 364] ifFalse: [recoveredPC := 370].
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack2 := (recoveredStack2) physicalUnit.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredPC := 375.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack2 := (recoveredStack2) physicalUnit.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyWithPhysicalUnit: (recoveredStack2).
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 378 ifTrue: [
            recoveredPC := 531.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack1 := (recoveredStack1) operator.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack2 := 'sub'.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 392] ifFalse: [recoveredPC := 531].
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack1 := (recoveredStack1) physicalUnit.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGenericPhysicalUnitWithOffset.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 400] ifFalse: [recoveredPC := 461].
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack1 := (recoveredStack1) physicalUnit.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGenericPhysicalUnitWithOffset.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 410] ifFalse: [recoveredPC := 461].
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack6 := recoveredArg5.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack7 := recoveredArg6.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack1 := super semAnaOperationType: (recoveredStack2) operation: (recoveredStack3) leftLabel: (recoveredStack4) rightLabel: (recoveredStack5) leftSource: (recoveredStack6) rightSource: (recoveredStack7).
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 446] ifFalse: [recoveredPC := 442].
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack2 := (recoveredStack2) generator.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack2 := (recoveredStack2) physicalUnits.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack3 := '*'.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack2 := (recoveredStack2) lookupPhysicalUnit: (recoveredStack3).
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyWithPhysicalUnit: (recoveredStack2).
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack1 := (recoveredStack1) physicalUnit.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGenericPhysicalUnitWithOffset.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 470] ifFalse: [recoveredPC := 531].
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            recoveredStack1 := (recoveredStack1) physicalUnit.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGenericPhysicalUnit.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 480] ifFalse: [recoveredPC := 531].
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyWithPhysicalUnit: (recoveredStack2).
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyWithPhysicalUnit: (recoveredStack3).
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack6 := recoveredArg5.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack7 := recoveredArg6.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack1 := (recoveredStack1) semAnaOperationType: (recoveredStack2) operation: (recoveredStack3) leftLabel: (recoveredStack4) rightLabel: (recoveredStack5) leftSource: (recoveredStack6) rightSource: (recoveredStack7).
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 522] ifFalse: [recoveredPC := 518].
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack2 := (recoveredStack2) physicalUnit.
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyWithPhysicalUnit: (recoveredStack2).
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 531 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            recoveredStack5 := recoveredArg5.
            recoveredPC := 546.
        ].
        recoveredStep = 546 ifTrue: [
            recoveredStack6 := recoveredArg6.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredStack0 := super semAnaOperationType: (recoveredStack1) operation: (recoveredStack2) leftLabel: (recoveredStack3) rightLabel: (recoveredStack4) leftSource: (recoveredStack5) rightSource: (recoveredStack6).
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2066e26c; bytecode file offset 0xf6ac5c"
!SGCgAbstractArithmeticType methodsFor: 'recovered'!
checkForSpecialCall: recoveredArg1 receiver: recoveredArg2 args: recoveredArg3 mdBuilder: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkForSpecialCallRteMacro: (recoveredStack1) receiver: (recoveredStack2) args: (recoveredStack3) mdBuilder: (recoveredStack4).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := super checkForSpecialCall: (recoveredStack1) receiver: (recoveredStack2) args: (recoveredStack3) mdBuilder: (recoveredStack4).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkForSpecialCallVerifyOperator: (recoveredStack1) receiver: (recoveredStack2) args: (recoveredStack3) mdBuilder: (recoveredStack4).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := 'abs'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) pushArgs: (recoveredStack1) number: (recoveredStack2) specialCall: (recoveredStack3) receiver: (recoveredStack4).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) abs.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := 'ddt'.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 195].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasCtBlockScope.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 195].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) checkContinuosState: (recoveredStack1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := 'ddt'.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlLabel.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack0) id: (recoveredStack1).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlIndexedExpr.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 154] ifFalse: [recoveredPC := 171].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexChild.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack0) pushStack: (recoveredStack1).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack0) at.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 180] ifFalse: [recoveredPC := 193].
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack1) pushStack: (recoveredStack2).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack0) assign.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := 'limit'.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 208] ifFalse: [recoveredPC := 473].
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkContextSpecialCall: (recoveredStack1) receiver: (recoveredStack2).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 224] ifFalse: [recoveredPC := 222].
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := RBInterval.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := (recoveredStack0) left: (recoveredStack1) right: (recoveredStack2).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 248] ifFalse: [recoveredPC := 252].
        ].
        recoveredStep = 248 ifTrue: [
            recoveredPC := 430.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 264] ifFalse: [recoveredPC := 420].
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack1 := [:block28126988Arg1 | 
    | block28126988Stack0 block28126988Stack1 block28126988Stack2 block28126988Stack3 block28126988PC block28126988Step block28126988Done block28126988Result |
    block28126988Stack0 := self.
    block28126988PC := 4.
    block28126988Done := false.
    [block28126988Done not] whileTrue: [
        block28126988Step := block28126988PC.
        block28126988Step = 4 ifTrue: [
            block28126988Stack1 := false.
            block28126988PC := 5.
        ].
        block28126988Step = 5 ifTrue: [
            block28126988Stack2 := block28126988Arg1.
            block28126988PC := 6.
        ].
        block28126988Step = 6 ifTrue: [
            block28126988Stack2 := (block28126988Stack2) isMdlConstantValue.
            block28126988PC := 8.
        ].
        block28126988Step = 8 ifTrue: [
            (block28126988Stack2) ifTrue: [block28126988PC := 12] ifFalse: [block28126988PC := 28].
        ].
        block28126988Step = 12 ifTrue: [
            block28126988PC := 13.
        ].
        block28126988Step = 13 ifTrue: [
            block28126988Stack1 := false.
            block28126988PC := 14.
        ].
        block28126988Step = 14 ifTrue: [
            block28126988Stack2 := block28126988Arg1.
            block28126988PC := 15.
        ].
        block28126988Step = 15 ifTrue: [
            block28126988Stack2 := (block28126988Stack2) mdlClass.
            block28126988PC := 17.
        ].
        block28126988Step = 17 ifTrue: [
            block28126988Stack2 := (block28126988Stack2) isCgArithmeticType.
            block28126988PC := 19.
        ].
        block28126988Step = 19 ifTrue: [
            (block28126988Stack2) ifTrue: [block28126988PC := 22] ifFalse: [block28126988PC := 28].
        ].
        block28126988Step = 22 ifTrue: [
            block28126988PC := 23.
        ].
        block28126988Step = 23 ifTrue: [
            block28126988Stack1 := block28126988Arg1.
            block28126988PC := 24.
        ].
        block28126988Step = 24 ifTrue: [
            block28126988Stack1 := (block28126988Stack1) evaluateMdlConstantValue.
            block28126988PC := 26.
        ].
        block28126988Step = 26 ifTrue: [
            block28126988Stack1 := (block28126988Stack1) isInteger.
            block28126988PC := 28.
        ].
        block28126988Step = 28 ifTrue: [
            block28126988Result := block28126988Stack1.
            block28126988Done := true.
        ].
    ].
    block28126988Result
].
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSatisfy: (recoveredStack1).
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 302] ifFalse: [recoveredPC := 406].
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := RBInterval.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack1 := (recoveredStack1) evaluateMdlConstantValue.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack2 := (recoveredStack2) evaluateMdlConstantValue.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack0 := (recoveredStack0) left: (recoveredStack1) right: (recoveredStack2).
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack0 := (recoveredStack0) representableInDoubleBitSize.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 330] ifFalse: [recoveredPC := 338].
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredPC := 402.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 346] ifFalse: [recoveredPC := 370].
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack1 := 361.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack2 := 'Limit interval '.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack3 := ' must not be empty'.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredPC := 391.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack1 := 361.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack2 := 'Limit interval '.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack3 := ' must be representable in a common type'.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack0 := RBInterval.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack0 := (recoveredStack0) left: (recoveredStack1) right: (recoveredStack2).
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredPC := 416.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack1 := 361.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack2 := 'arguments must be constant integer values at generation time'.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredPC := 430.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack1 := 361.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack2 := '0 or 2 arguments are allowed'.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            (recoveredStack2) pushStack: (recoveredStack3).
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack2 := SGCgTypeFactory.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack3 := SGIlObject.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack3 := (recoveredStack3) create.
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack3 := (recoveredStack3) createImplTypeFromInterval: (recoveredStack4).
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredStack5 := (recoveredStack5) physicalUnit.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack2 := (recoveredStack2) createLimitedDiscreteType: (recoveredStack3) interval: (recoveredStack4) physicalUnit: (recoveredStack5).
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack1 := (recoveredStack1) popConvertContToDisc: (recoveredStack2) chooseInterval: (recoveredStack3) isImplicitConversion: (recoveredStack4).
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            (recoveredStack0) pushStack: (recoveredStack1).
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 473 ifTrue: [
            recoveredStack0 := RBInteger.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack0 := (recoveredStack0) allImplTypeClasses.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack1 := 'wrapAround'.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack0 := (recoveredStack0) startsWith: (recoveredStack1).
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 492] ifFalse: [recoveredPC := 902].
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkContextSpecialCall: (recoveredStack1) receiver: (recoveredStack2).
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 508] ifFalse: [recoveredPC := 506].
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 508 ifTrue: [
            recoveredStack0 := RBInterval.
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack0 := (recoveredStack0) left: (recoveredStack1) right: (recoveredStack2).
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack1 := [:recoveredBlock526Arg1 | 
    | recoveredBlock526Stack0 recoveredBlock526Stack1 recoveredBlock526Stack2 recoveredBlock526Stack3 recoveredBlock526Stack4 recoveredBlock526PC recoveredBlock526Step recoveredBlock526Done recoveredBlock526Result |
    recoveredBlock526Stack0 := self.
    recoveredBlock526PC := 532.
    recoveredBlock526Done := false.
    [recoveredBlock526Done not] whileTrue: [
        recoveredBlock526Step := recoveredBlock526PC.
        recoveredBlock526Step = 532 ifTrue: [
            recoveredBlock526Stack1 := 'wrapAround'.
            recoveredBlock526PC := 534.
        ].
        recoveredBlock526Step = 534 ifTrue: [
            recoveredBlock526Stack2 := recoveredBlock526Arg1.
            recoveredBlock526PC := 535.
        ].
        recoveredBlock526Step = 535 ifTrue: [
            recoveredBlock526Stack2 := (recoveredBlock526Stack2) getInterval.
            recoveredBlock526PC := 537.
        ].
        recoveredBlock526Step = 537 ifTrue: [
            recoveredBlock526Stack2 := (recoveredBlock526Stack2) left.
            recoveredBlock526PC := 539.
        ].
        recoveredBlock526Step = 539 ifTrue: [
            recoveredBlock526Stack3 := 0.
            recoveredBlock526PC := 541.
        ].
        recoveredBlock526Step = 541 ifTrue: [
            recoveredBlock526Stack2 := (recoveredBlock526Stack2) < (recoveredBlock526Stack3).
            recoveredBlock526PC := 542.
        ].
        recoveredBlock526Step = 542 ifTrue: [
            (recoveredBlock526Stack2) ifTrue: [recoveredBlock526PC := 546] ifFalse: [recoveredBlock526PC := 554].
        ].
        recoveredBlock526Step = 546 ifTrue: [
            recoveredBlock526Stack2 := 'Sint'.
            recoveredBlock526PC := 550.
        ].
        recoveredBlock526Step = 550 ifTrue: [
            recoveredBlock526PC := 558.
        ].
        recoveredBlock526Step = 554 ifTrue: [
            recoveredBlock526Stack2 := 'Uint'.
            recoveredBlock526PC := 558.
        ].
        recoveredBlock526Step = 558 ifTrue: [
            recoveredBlock526Stack1 := (recoveredBlock526Stack1) , (recoveredBlock526Stack2).
            recoveredBlock526PC := 560.
        ].
        recoveredBlock526Step = 560 ifTrue: [
            recoveredBlock526Stack2 := recoveredBlock526Arg1.
            recoveredBlock526PC := 561.
        ].
        recoveredBlock526Step = 561 ifTrue: [
            recoveredBlock526Stack2 := (recoveredBlock526Stack2) typeSize.
            recoveredBlock526PC := 565.
        ].
        recoveredBlock526Step = 565 ifTrue: [
            recoveredBlock526Stack3 := 8.
            recoveredBlock526PC := 567.
        ].
        recoveredBlock526Step = 567 ifTrue: [
            recoveredBlock526Stack2 := (recoveredBlock526Stack2) * (recoveredBlock526Stack3).
            recoveredBlock526PC := 568.
        ].
        recoveredBlock526Step = 568 ifTrue: [
            recoveredBlock526Stack2 := (recoveredBlock526Stack2) asString.
            recoveredBlock526PC := 570.
        ].
        recoveredBlock526Step = 570 ifTrue: [
            recoveredBlock526Stack1 := (recoveredBlock526Stack1) , (recoveredBlock526Stack2).
            recoveredBlock526PC := 572.
        ].
        recoveredBlock526Step = 572 ifTrue: [
            recoveredBlock526Stack2 := recoveredArg1.
            recoveredBlock526PC := 575.
        ].
        recoveredBlock526Step = 575 ifTrue: [
            recoveredBlock526Stack2 := (recoveredBlock526Stack2) label.
            recoveredBlock526PC := 577.
        ].
        recoveredBlock526Step = 577 ifTrue: [
            recoveredBlock526Stack1 := (recoveredBlock526Stack1) equals: (recoveredBlock526Stack2).
            recoveredBlock526PC := 579.
        ].
        recoveredBlock526Step = 579 ifTrue: [
            recoveredBlock526Result := recoveredBlock526Stack1.
            recoveredBlock526Done := true.
        ].
    ].
    recoveredBlock526Result
].
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 812] ifFalse: [recoveredPC := 596].
        ].
        recoveredStep = 596 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 608] ifFalse: [recoveredPC := 620].
        ].
        recoveredStep = 608 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            recoveredStack0 := (recoveredStack0) getInterval.
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 616.
        ].
        recoveredStep = 616 ifTrue: [
            recoveredPC := 808.
        ].
        recoveredStep = 620 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 625.
        ].
        recoveredStep = 625 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 628.
        ].
        recoveredStep = 628 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 632] ifFalse: [recoveredPC := 798].
        ].
        recoveredStep = 632 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 635.
        ].
        recoveredStep = 635 ifTrue: [
            recoveredStack1 := [:block281269acArg1 | 
    | block281269acStack0 block281269acStack1 block281269acStack2 block281269acStack3 block281269acPC block281269acStep block281269acDone block281269acResult |
    block281269acStack0 := self.
    block281269acPC := 4.
    block281269acDone := false.
    [block281269acDone not] whileTrue: [
        block281269acStep := block281269acPC.
        block281269acStep = 4 ifTrue: [
            block281269acStack1 := false.
            block281269acPC := 5.
        ].
        block281269acStep = 5 ifTrue: [
            block281269acStack2 := block281269acArg1.
            block281269acPC := 6.
        ].
        block281269acStep = 6 ifTrue: [
            block281269acStack2 := (block281269acStack2) isMdlConstantValue.
            block281269acPC := 8.
        ].
        block281269acStep = 8 ifTrue: [
            (block281269acStack2) ifTrue: [block281269acPC := 12] ifFalse: [block281269acPC := 28].
        ].
        block281269acStep = 12 ifTrue: [
            block281269acPC := 13.
        ].
        block281269acStep = 13 ifTrue: [
            block281269acStack1 := false.
            block281269acPC := 14.
        ].
        block281269acStep = 14 ifTrue: [
            block281269acStack2 := block281269acArg1.
            block281269acPC := 15.
        ].
        block281269acStep = 15 ifTrue: [
            block281269acStack2 := (block281269acStack2) mdlClass.
            block281269acPC := 17.
        ].
        block281269acStep = 17 ifTrue: [
            block281269acStack2 := (block281269acStack2) isCgArithmeticType.
            block281269acPC := 19.
        ].
        block281269acStep = 19 ifTrue: [
            (block281269acStack2) ifTrue: [block281269acPC := 22] ifFalse: [block281269acPC := 28].
        ].
        block281269acStep = 22 ifTrue: [
            block281269acPC := 23.
        ].
        block281269acStep = 23 ifTrue: [
            block281269acStack1 := block281269acArg1.
            block281269acPC := 24.
        ].
        block281269acStep = 24 ifTrue: [
            block281269acStack1 := (block281269acStack1) evaluateMdlConstantValue.
            block281269acPC := 26.
        ].
        block281269acStep = 26 ifTrue: [
            block281269acStack1 := (block281269acStack1) isInteger.
            block281269acPC := 28.
        ].
        block281269acStep = 28 ifTrue: [
            block281269acResult := block281269acStack1.
            block281269acDone := true.
        ].
    ].
    block281269acResult
].
            recoveredPC := 638.
        ].
        recoveredStep = 638 ifTrue: [
            recoveredPC := 667.
        ].
        recoveredStep = 667 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSatisfy: (recoveredStack1).
            recoveredPC := 669.
        ].
        recoveredStep = 669 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 672] ifFalse: [recoveredPC := 784].
        ].
        recoveredStep = 672 ifTrue: [
            recoveredStack0 := RBInterval.
            recoveredPC := 674.
        ].
        recoveredStep = 674 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 677.
        ].
        recoveredStep = 677 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 679.
        ].
        recoveredStep = 679 ifTrue: [
            recoveredStack1 := (recoveredStack1) evaluateMdlConstantValue.
            recoveredPC := 681.
        ].
        recoveredStep = 681 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 684.
        ].
        recoveredStep = 684 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 686.
        ].
        recoveredStep = 686 ifTrue: [
            recoveredStack2 := (recoveredStack2) evaluateMdlConstantValue.
            recoveredPC := 688.
        ].
        recoveredStep = 688 ifTrue: [
            recoveredStack0 := (recoveredStack0) left: (recoveredStack1) right: (recoveredStack2).
            recoveredPC := 690.
        ].
        recoveredStep = 690 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 696.
        ].
        recoveredStep = 696 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 726] ifFalse: [recoveredPC := 702].
        ].
        recoveredStep = 702 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 705.
        ].
        recoveredStep = 705 ifTrue: [
            recoveredStack0 := (recoveredStack0) getInterval.
            recoveredPC := 707.
        ].
        recoveredStep = 707 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 710.
        ].
        recoveredStep = 710 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 715.
        ].
        recoveredStep = 715 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 718] ifFalse: [recoveredPC := 726].
        ].
        recoveredStep = 718 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 719.
        ].
        recoveredStep = 719 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 722.
        ].
        recoveredStep = 722 ifTrue: [
            recoveredPC := 780.
        ].
        recoveredStep = 726 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 729.
        ].
        recoveredStep = 729 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 731.
        ].
        recoveredStep = 731 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 734] ifFalse: [recoveredPC := 758].
        ].
        recoveredStep = 734 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 737.
        ].
        recoveredStep = 737 ifTrue: [
            recoveredStack1 := 361.
            recoveredPC := 740.
        ].
        recoveredStep = 740 ifTrue: [
            recoveredStack2 := 'Limit interval '.
            recoveredPC := 742.
        ].
        recoveredStep = 742 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 745.
        ].
        recoveredStep = 745 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 747.
        ].
        recoveredStep = 747 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 749.
        ].
        recoveredStep = 749 ifTrue: [
            recoveredStack3 := ' must not be empty'.
            recoveredPC := 751.
        ].
        recoveredStep = 751 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 753.
        ].
        recoveredStep = 753 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 755.
        ].
        recoveredStep = 755 ifTrue: [
            recoveredPC := 780.
        ].
        recoveredStep = 758 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 761.
        ].
        recoveredStep = 761 ifTrue: [
            recoveredStack1 := 361.
            recoveredPC := 764.
        ].
        recoveredStep = 764 ifTrue: [
            recoveredStack2 := 'Limit interval '.
            recoveredPC := 766.
        ].
        recoveredStep = 766 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 769.
        ].
        recoveredStep = 769 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 771.
        ].
        recoveredStep = 771 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 773.
        ].
        recoveredStep = 773 ifTrue: [
            recoveredStack3 := ' must be representable in the wrap-around type'.
            recoveredPC := 776.
        ].
        recoveredStep = 776 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 778.
        ].
        recoveredStep = 778 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 780.
        ].
        recoveredStep = 780 ifTrue: [
            recoveredPC := 794.
        ].
        recoveredStep = 784 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 787.
        ].
        recoveredStep = 787 ifTrue: [
            recoveredStack1 := 361.
            recoveredPC := 790.
        ].
        recoveredStep = 790 ifTrue: [
            recoveredStack2 := 'arguments must be constant integer values at generation time'.
            recoveredPC := 792.
        ].
        recoveredStep = 792 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 794.
        ].
        recoveredStep = 794 ifTrue: [
            recoveredPC := 808.
        ].
        recoveredStep = 798 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 801.
        ].
        recoveredStep = 801 ifTrue: [
            recoveredStack1 := 361.
            recoveredPC := 804.
        ].
        recoveredStep = 804 ifTrue: [
            recoveredStack2 := '0 or 2 arguments are allowed'.
            recoveredPC := 806.
        ].
        recoveredStep = 806 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 808.
        ].
        recoveredStep = 808 ifTrue: [
            recoveredPC := 859.
        ].
        recoveredStep = 812 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 815.
        ].
        recoveredStep = 815 ifTrue: [
            recoveredStack1 := 361.
            recoveredPC := 818.
        ].
        recoveredStep = 818 ifTrue: [
            recoveredStack2 := 'Unknown type '.
            recoveredPC := 822.
        ].
        recoveredStep = 822 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 825.
        ].
        recoveredStep = 825 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlLabel.
            recoveredPC := 827.
        ].
        recoveredStep = 827 ifTrue: [
            recoveredStack4 := 'wrapAround'.
            recoveredPC := 829.
        ].
        recoveredStep = 829 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 831.
        ].
        recoveredStep = 831 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 832.
        ].
        recoveredStep = 832 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 835.
        ].
        recoveredStep = 835 ifTrue: [
            recoveredStack5 := (recoveredStack5) mdlLabel.
            recoveredPC := 837.
        ].
        recoveredStep = 837 ifTrue: [
            recoveredStack5 := (recoveredStack5) size.
            recoveredPC := 839.
        ].
        recoveredStep = 839 ifTrue: [
            recoveredStack3 := (recoveredStack3) copyFrom: (recoveredStack4) to: (recoveredStack5).
            recoveredPC := 843.
        ].
        recoveredStep = 843 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 845.
        ].
        recoveredStep = 845 ifTrue: [
            recoveredStack3 := ', use Sint8..Uint32'.
            recoveredPC := 848.
        ].
        recoveredStep = 848 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 850.
        ].
        recoveredStep = 850 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 852.
        ].
        recoveredStep = 852 ifTrue: [
            recoveredStack0 := RBInt8Unsigned.
            recoveredPC := 856.
        ].
        recoveredStep = 856 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 859.
        ].
        recoveredStep = 859 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 862.
        ].
        recoveredStep = 862 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 865.
        ].
        recoveredStep = 865 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 866.
        ].
        recoveredStep = 866 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 869.
        ].
        recoveredStep = 869 ifTrue: [
            (recoveredStack2) pushStack: (recoveredStack3).
            recoveredPC := 871.
        ].
        recoveredStep = 871 ifTrue: [
            recoveredStack2 := SGCgTypeFactory.
            recoveredPC := 873.
        ].
        recoveredStep = 873 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 876.
        ].
        recoveredStep = 876 ifTrue: [
            recoveredStack3 := (recoveredStack3) createDefault.
            recoveredPC := 881.
        ].
        recoveredStep = 881 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 884.
        ].
        recoveredStep = 884 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 885.
        ].
        recoveredStep = 885 ifTrue: [
            recoveredStack5 := (recoveredStack5) physicalUnit.
            recoveredPC := 887.
        ].
        recoveredStep = 887 ifTrue: [
            recoveredStack2 := (recoveredStack2) createTwosComplementType: (recoveredStack3) interval: (recoveredStack4) physicalUnit: (recoveredStack5).
            recoveredPC := 891.
        ].
        recoveredStep = 891 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 894.
        ].
        recoveredStep = 894 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 895.
        ].
        recoveredStep = 895 ifTrue: [
            recoveredStack1 := (recoveredStack1) popConvertContToDisc: (recoveredStack2) chooseInterval: (recoveredStack3) isImplicitConversion: (recoveredStack4).
            recoveredPC := 898.
        ].
        recoveredStep = 898 ifTrue: [
            (recoveredStack0) pushStack: (recoveredStack1).
            recoveredPC := 900.
        ].
        recoveredStep = 900 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 901.
        ].
        recoveredStep = 901 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 902 ifTrue: [
            recoveredStack0 := 'assert'.
            recoveredPC := 906.
        ].
        recoveredStep = 906 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 909.
        ].
        recoveredStep = 909 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 911.
        ].
        recoveredStep = 911 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 913.
        ].
        recoveredStep = 913 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 916] ifFalse: [recoveredPC := 1123].
        ].
        recoveredStep = 916 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 917.
        ].
        recoveredStep = 917 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgDiscreteType.
            recoveredPC := 921.
        ].
        recoveredStep = 921 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 940] ifFalse: [recoveredPC := 924].
        ].
        recoveredStep = 924 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 925.
        ].
        recoveredStep = 925 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgContRealType.
            recoveredPC := 929.
        ].
        recoveredStep = 929 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 940] ifFalse: [recoveredPC := 932].
        ].
        recoveredStep = 932 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 933.
        ].
        recoveredStep = 933 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgLinearFixedPointType.
            recoveredPC := 937.
        ].
        recoveredStep = 937 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 940] ifFalse: [recoveredPC := 1123].
        ].
        recoveredStep = 940 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 943.
        ].
        recoveredStep = 943 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 946.
        ].
        recoveredStep = 946 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 949.
        ].
        recoveredStep = 949 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkContextSpecialCall: (recoveredStack1) receiver: (recoveredStack2).
            recoveredPC := 951.
        ].
        recoveredStep = 951 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 956] ifFalse: [recoveredPC := 954].
        ].
        recoveredStep = 954 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 955.
        ].
        recoveredStep = 955 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 956 ifTrue: [
            recoveredStack0 := RBInterval.
            recoveredPC := 958.
        ].
        recoveredStep = 958 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 960.
        ].
        recoveredStep = 960 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 962.
        ].
        recoveredStep = 962 ifTrue: [
            recoveredStack0 := (recoveredStack0) left: (recoveredStack1) right: (recoveredStack2).
            recoveredPC := 964.
        ].
        recoveredStep = 964 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 967.
        ].
        recoveredStep = 967 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 970.
        ].
        recoveredStep = 970 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 972.
        ].
        recoveredStep = 972 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 974.
        ].
        recoveredStep = 974 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 975.
        ].
        recoveredStep = 975 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 978] ifFalse: [recoveredPC := 1088].
        ].
        recoveredStep = 978 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 981.
        ].
        recoveredStep = 981 ifTrue: [
            recoveredStack1 := [:block281269d0Arg1 | 
    | block281269d0Stack0 block281269d0Stack1 block281269d0Stack2 block281269d0Stack3 block281269d0PC block281269d0Step block281269d0Done block281269d0Result |
    block281269d0Stack0 := self.
    block281269d0PC := 4.
    block281269d0Done := false.
    [block281269d0Done not] whileTrue: [
        block281269d0Step := block281269d0PC.
        block281269d0Step = 4 ifTrue: [
            block281269d0Stack1 := false.
            block281269d0PC := 5.
        ].
        block281269d0Step = 5 ifTrue: [
            block281269d0Stack2 := block281269d0Arg1.
            block281269d0PC := 6.
        ].
        block281269d0Step = 6 ifTrue: [
            block281269d0Stack2 := (block281269d0Stack2) isMdlConstantValue.
            block281269d0PC := 8.
        ].
        block281269d0Step = 8 ifTrue: [
            (block281269d0Stack2) ifTrue: [block281269d0PC := 12] ifFalse: [block281269d0PC := 18].
        ].
        block281269d0Step = 12 ifTrue: [
            block281269d0PC := 13.
        ].
        block281269d0Step = 13 ifTrue: [
            block281269d0Stack1 := block281269d0Arg1.
            block281269d0PC := 14.
        ].
        block281269d0Step = 14 ifTrue: [
            block281269d0Stack1 := (block281269d0Stack1) mdlClass.
            block281269d0PC := 16.
        ].
        block281269d0Step = 16 ifTrue: [
            block281269d0Stack1 := (block281269d0Stack1) isCgArithmeticType.
            block281269d0PC := 18.
        ].
        block281269d0Step = 18 ifTrue: [
            block281269d0Result := block281269d0Stack1.
            block281269d0Done := true.
        ].
    ].
    block281269d0Result
].
            recoveredPC := 984.
        ].
        recoveredStep = 984 ifTrue: [
            recoveredPC := 1003.
        ].
        recoveredStep = 1003 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSatisfy: (recoveredStack1).
            recoveredPC := 1005.
        ].
        recoveredStep = 1005 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 1008] ifFalse: [recoveredPC := 1074].
        ].
        recoveredStep = 1008 ifTrue: [
            recoveredStack0 := RBInterval.
            recoveredPC := 1010.
        ].
        recoveredStep = 1010 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 1013.
        ].
        recoveredStep = 1013 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 1015.
        ].
        recoveredStep = 1015 ifTrue: [
            recoveredStack1 := (recoveredStack1) evaluateMdlConstantValue.
            recoveredPC := 1017.
        ].
        recoveredStep = 1017 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 1020.
        ].
        recoveredStep = 1020 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 1022.
        ].
        recoveredStep = 1022 ifTrue: [
            recoveredStack2 := (recoveredStack2) evaluateMdlConstantValue.
            recoveredPC := 1024.
        ].
        recoveredStep = 1024 ifTrue: [
            recoveredStack0 := (recoveredStack0) left: (recoveredStack1) right: (recoveredStack2).
            recoveredPC := 1026.
        ].
        recoveredStep = 1026 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 1029.
        ].
        recoveredStep = 1029 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 1032.
        ].
        recoveredStep = 1032 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 1034.
        ].
        recoveredStep = 1034 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 1038] ifFalse: [recoveredPC := 1070].
        ].
        recoveredStep = 1038 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 1041.
        ].
        recoveredStep = 1041 ifTrue: [
            recoveredStack1 := 361.
            recoveredPC := 1044.
        ].
        recoveredStep = 1044 ifTrue: [
            recoveredStack2 := 'Limit interval '.
            recoveredPC := 1046.
        ].
        recoveredStep = 1046 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 1049.
        ].
        recoveredStep = 1049 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 1051.
        ].
        recoveredStep = 1051 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 1053.
        ].
        recoveredStep = 1053 ifTrue: [
            recoveredStack3 := ' must not be empty'.
            recoveredPC := 1055.
        ].
        recoveredStep = 1055 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 1057.
        ].
        recoveredStep = 1057 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 1059.
        ].
        recoveredStep = 1059 ifTrue: [
            recoveredStack0 := RBInterval.
            recoveredPC := 1061.
        ].
        recoveredStep = 1061 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 1063.
        ].
        recoveredStep = 1063 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 1065.
        ].
        recoveredStep = 1065 ifTrue: [
            recoveredStack0 := (recoveredStack0) left: (recoveredStack1) right: (recoveredStack2).
            recoveredPC := 1067.
        ].
        recoveredStep = 1067 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 1070.
        ].
        recoveredStep = 1070 ifTrue: [
            recoveredPC := 1084.
        ].
        recoveredStep = 1074 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 1077.
        ].
        recoveredStep = 1077 ifTrue: [
            recoveredStack1 := 361.
            recoveredPC := 1080.
        ].
        recoveredStep = 1080 ifTrue: [
            recoveredStack2 := 'arguments must be constant integer values at generation time'.
            recoveredPC := 1082.
        ].
        recoveredStep = 1082 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 1084.
        ].
        recoveredStep = 1084 ifTrue: [
            recoveredPC := 1100.
        ].
        recoveredStep = 1088 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 1091.
        ].
        recoveredStep = 1091 ifTrue: [
            recoveredStack1 := 361.
            recoveredPC := 1094.
        ].
        recoveredStep = 1094 ifTrue: [
            recoveredStack2 := '2 arguments are expected'.
            recoveredPC := 1098.
        ].
        recoveredStep = 1098 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 1100.
        ].
        recoveredStep = 1100 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 1103.
        ].
        recoveredStep = 1103 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 1106.
        ].
        recoveredStep = 1106 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1107.
        ].
        recoveredStep = 1107 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 1110.
        ].
        recoveredStep = 1110 ifTrue: [
            (recoveredStack2) pushStack: (recoveredStack3).
            recoveredPC := 1112.
        ].
        recoveredStep = 1112 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 1115.
        ].
        recoveredStep = 1115 ifTrue: [
            recoveredStack1 := (recoveredStack1) popAssertInterval: (recoveredStack2).
            recoveredPC := 1119.
        ].
        recoveredStep = 1119 ifTrue: [
            (recoveredStack0) pushStack: (recoveredStack1).
            recoveredPC := 1121.
        ].
        recoveredStep = 1121 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 1122.
        ].
        recoveredStep = 1122 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 1123 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 1126.
        ].
        recoveredStep = 1126 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 1129.
        ].
        recoveredStep = 1129 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 1132.
        ].
        recoveredStep = 1132 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlSemErrUndefinedMethod: (recoveredStack1) receiver: (recoveredStack2).
            recoveredPC := 1137.
        ].
        recoveredStep = 1137 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

