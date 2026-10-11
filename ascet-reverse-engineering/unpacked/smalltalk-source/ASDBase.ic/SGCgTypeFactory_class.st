"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003df58; bytecode file offset 0x93bf94"
!SGCgTypeFactory class methodsFor: 'recovered'!
createVoidType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgVoidType.
    recoveredValue1 := (recoveredValue0) create.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005c80c; bytecode file offset 0x959680"
!SGCgTypeFactory class methodsFor: 'recovered'!
generator
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGGeneratorFactory.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (recoveredValue1) codeGeneratorStrategy.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20081648; bytecode file offset 0x97e234"
!SGCgTypeFactory class methodsFor: 'recovered'!
variableArrayDimension: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGCgVariableArrayDimension.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) specialCallName: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20083630; bytecode file offset 0x97ff54"
!SGCgTypeFactory class methodsFor: 'recovered'!
createAnsiCType: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createAnsiCType: (recoveredValue0) originalImplementationIsNil: (false).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200837b0; bytecode file offset 0x980230"
!SGCgTypeFactory class methodsFor: 'recovered'!
createArithmeticLiteralType: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createArithmeticLiteralType: (recoveredValue0) physicalUnit: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200865bc; bytecode file offset 0x982e98"
!SGCgTypeFactory class methodsFor: 'recovered'!
mixedArrayDimension: recoveredArg1 specialCallName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGCgMixedArrayDimension.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) create: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008bf00; bytecode file offset 0x9887bc"
!SGCgTypeFactory class methodsFor: 'recovered'!
createAnsiCType
    | recoveredValue0 |
    recoveredValue0 := (self) createAnsiCType: ('ANSIC') originalImplementationIsNil: (false).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20093dc0; bytecode file offset 0x990690"
!SGCgTypeFactory class methodsFor: 'recovered'!
mdlUIntType: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlUIntTypeMin: (0) max: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009c4a8; bytecode file offset 0x998da4"
!SGCgTypeFactory class methodsFor: 'recovered'!
createSignedIntegerType
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGSignedInteger.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredValue2 := (self) createType: (recoveredValue1) implementation: (nil).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009c4bc; bytecode file offset 0x998da4"
!SGCgTypeFactory class methodsFor: 'recovered'!
createUnsignedIntegerType
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGUnsignedInteger.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredValue2 := (self) createType: (recoveredValue1) implementation: (nil).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009c4d0; bytecode file offset 0x998da4"
!SGCgTypeFactory class methodsFor: 'recovered'!
createRealType
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := RBFloat.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredValue2 := (self) createContRealImpl: (recoveredValue1) physicalUnit: (nil).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009c4e4; bytecode file offset 0x998da4"
!SGCgTypeFactory class methodsFor: 'recovered'!
createResourceType
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGResource.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredValue2 := (self) createType: (recoveredValue1) implementation: (nil).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ad4c8; bytecode file offset 0x9a9f0c"
!SGCgTypeFactory class methodsFor: 'recovered'!
createArithmeticLiteralType: recoveredArg1 modelType: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createArithmeticLiteralType: (recoveredValue0) modelType: (recoveredValue1) physicalUnit: (nil).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ad5c4; bytecode file offset 0x9a9f0c"
!SGCgTypeFactory class methodsFor: 'recovered'!
createArray: recoveredArg1 maxSize: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createArray: (recoveredValue0) maxSize: (recoveredValue1) variant: (nil).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ad8dc; bytecode file offset 0x9aa218"
!SGCgTypeFactory class methodsFor: 'recovered'!
createType: recoveredArg1 implementation: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createType: (recoveredValue0) implementation: (recoveredValue1) transientMigration: (true).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200baff0; bytecode file offset 0x9b78a8"
!SGCgTypeFactory class methodsFor: 'recovered'!
createType: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createType: (recoveredValue0) adjustedImplementation: (nil) originalImplementation: (nil) transientMigration: (true).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ca014; bytecode file offset 0x9c692c"
!SGCgTypeFactory class methodsFor: 'recovered'!
createComponentProxyType: recoveredArg1 id: recoveredArg2 namespace: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) createClassType: (recoveredValue0) id: (recoveredValue1) namespace: (recoveredValue2) attributes: (nil).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d87a0; bytecode file offset 0x9d5060"
!SGCgTypeFactory class methodsFor: 'recovered'!
createLogImpl: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := SGExtraImplInfo.
    recoveredValue2 := (recoveredValue1) createDefault.
    recoveredValue3 := (self) createBooleanType: (recoveredValue0) extraImplInfo: (recoveredValue2) originalImplementationIsNil: (false).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200de04c; bytecode file offset 0x9da948"
!SGCgTypeFactory class methodsFor: 'recovered'!
createModeGroup: recoveredArg1 id: recoveredArg2 values: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := SGCgModeGroupType.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) createAbstractEnum: (recoveredValue0) id: (recoveredValue1) type: (recoveredValue2) values: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200de06c; bytecode file offset 0x9da948"
!SGCgTypeFactory class methodsFor: 'recovered'!
createSmEnum: recoveredArg1 id: recoveredArg2 values: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := SGCgSmEnumType.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) createAbstractEnum: (recoveredValue0) id: (recoveredValue1) type: (recoveredValue2) values: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200de07c; bytecode file offset 0x9da948"
!SGCgTypeFactory class methodsFor: 'recovered'!
createEnum: recoveredArg1 id: recoveredArg2 values: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := SGCgEnumType.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) createAbstractEnum: (recoveredValue0) id: (recoveredValue1) type: (recoveredValue2) values: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200de08c; bytecode file offset 0x9da948"
!SGCgTypeFactory class methodsFor: 'recovered'!
createApplicationError: recoveredArg1 id: recoveredArg2 values: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := SGCgApplicationErrorType.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) createAbstractEnum: (recoveredValue0) id: (recoveredValue1) type: (recoveredValue2) values: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200de2e8; bytecode file offset 0x9dabb8"
!SGCgTypeFactory class methodsFor: 'recovered'!
createMatrix: recoveredArg1 maxSizeX: recoveredArg2 maxSizeY: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) createMatrix: (recoveredValue0) maxSizeX: (recoveredValue1) maxSizeY: (recoveredValue2) variantX: (nil) variantY: (nil).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200decb4; bytecode file offset 0x9db590"
!SGCgTypeFactory class methodsFor: 'recovered'!
createContType: recoveredArg1 physInterval: recoveredArg2 formula: recoveredArg3 physicalUnit: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := (self) createContType: (recoveredValue0) physInterval: (recoveredValue1) formula: (recoveredValue2) physicalUnit: (recoveredValue3) isDeltaT: (false).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200e9c60; bytecode file offset 0x9e6520"
!SGCgTypeFactory class methodsFor: 'recovered'!
createComponentProxyType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := ('...') , (recoveredValue2).
    recoveredValue4 := (self) createComponentProxyType: (recoveredValue0) id: (recoveredValue1) namespace: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200ed474; bytecode file offset 0x9e9d34"
!SGCgTypeFactory class methodsFor: 'recovered'!
createModularDiscreteType: recoveredArg1 modulus: recoveredArg2 physicalUnit: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := SGExtraImplInfo.
    recoveredValue4 := (recoveredValue3) createDefault.
    recoveredValue5 := (self) createModularDiscreteType: (recoveredValue0) modulus: (recoveredValue1) physicalUnit: (recoveredValue2) originalExtraImplInfo: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200f024c; bytecode file offset 0x9ecb10"
!SGCgTypeFactory class methodsFor: 'recovered'!
createBooleanType
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := RBInt8Unsigned.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredValue2 := SGExtraImplInfo.
    recoveredValue3 := (recoveredValue2) createDefault.
    recoveredValue4 := (self) createBooleanType: (recoveredValue1) extraImplInfo: (recoveredValue3) originalImplementationIsNil: (true).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201009f0; bytecode file offset 0x9fd2bc"
!SGCgTypeFactory class methodsFor: 'recovered'!
createTemplateType: recoveredArg1 implementation: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createBaseType: (recoveredValue0) withImplementation: (recoveredValue1) originalImplementationIsNil: (false) transientMigration: (true).
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) setImplTemplateType.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20100a00; bytecode file offset 0x9fd2bc"
!SGCgTypeFactory class methodsFor: 'recovered'!
createArtificialType: recoveredArg1 implementation: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createBaseType: (recoveredValue0) withImplementation: (recoveredValue1) originalImplementationIsNil: (false) transientMigration: (true).
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) setArtificialType.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2011048c; bytecode file offset 0xa0cd68"
!SGCgTypeFactory class methodsFor: 'recovered'!
createDistributionType: recoveredArg1 maxSize: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGCgDistributionType.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg2.
    (recoveredValue2) maxSize: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) componentType: (recoveredValue5).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201104a4; bytecode file offset 0xa0cd68"
!SGCgTypeFactory class methodsFor: 'recovered'!
createArrayType: recoveredArg1 dimensions: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGCgArrayType.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg2.
    (recoveredValue2) dimensions: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) componentType: (recoveredValue5).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20135c04; bytecode file offset 0xa324e8"
!SGCgTypeFactory class methodsFor: 'recovered'!
createLimitedDiscreteType: recoveredArg1 interval: recoveredArg2 physicalUnit: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := RBFormulaId.
    recoveredValue3 := (recoveredValue2) createIdent.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := SGExtraImplInfo.
    recoveredValue6 := (recoveredValue5) createDefault.
    recoveredValue7 := (self) createLimitedDiscreteType: (recoveredValue0) interval: (recoveredValue1) formula: (recoveredValue3) physicalUnit: (recoveredValue4) originalExtraImplInfo: (recoveredValue6) transientMigration: (false).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20135c20; bytecode file offset 0xa324e8"
!SGCgTypeFactory class methodsFor: 'recovered'!
createTwosComplementType: recoveredArg1 interval: recoveredArg2 physicalUnit: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := RBFormulaId.
    recoveredValue3 := (recoveredValue2) createIdent.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := SGExtraImplInfo.
    recoveredValue6 := (recoveredValue5) createDefault.
    recoveredValue7 := (self) createTwosComplementType: (recoveredValue0) interval: (recoveredValue1) formula: (recoveredValue3) physicalUnit: (recoveredValue4) originalExtraImplInfo: (recoveredValue6) transientMigration: (false).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20148b70; bytecode file offset 0xa45434"
!SGCgTypeFactory class methodsFor: 'recovered'!
createAbstractEnum: recoveredArg1 id: recoveredArg2 type: recoveredArg3 values: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) className: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) classId: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg4.
    (recoveredValue6) enumerationMap: (recoveredValue7).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2017e200; bytecode file offset 0xa7aac0"
!SGCgTypeFactory class methodsFor: 'recovered'!
lookupPhysicalUnit: recoveredArg1 formula: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) physicalUnits.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) lookupPhysicalUnit: (recoveredStack1).
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) lookupPhysicalUnit: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20188c1c; bytecode file offset 0xa854e0"
!SGCgTypeFactory class methodsFor: 'recovered'!
createContType: recoveredArg1 formula: recoveredArg2 physicalUnit: recoveredArg3 implInterval: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg4.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) transformedByInverse: (recoveredValue2).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := SGExtraImplInfo.
    recoveredValue8 := (recoveredValue7) createDefault.
    recoveredValue9 := (self) createContType: (recoveredValue0) physInterval: (recoveredValue3) formula: (recoveredValue4) physicalUnit: (recoveredValue5) implInterval: (recoveredValue6) extraImplInfo: (recoveredValue8) physQuantization: (1) originalImplementationIsNil: (false) referencedImplTypeName: (nil) isDeltaT: (false).
    ^recoveredValue9
! !

"ASDBase.ic method 0x2018c3d4; bytecode file offset 0xa88ca4"
!SGCgTypeFactory class methodsFor: 'recovered'!
mdlUIntType
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := SGUnsignedInteger.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := (recoveredValue2) createDataElement.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) createType: (recoveredValue4) implementation: (recoveredValue5).
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := SGCgAnyPhysicalUnit.
    recoveredValue9 := (recoveredValue8) create.
    (recoveredValue7) physicalUnit: (recoveredValue9).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20196e40; bytecode file offset 0xa9370c"
!SGCgTypeFactory class methodsFor: 'recovered'!
createClassType: recoveredArg1 attributes: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := SGCgComplexClassType.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) className: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) classId: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg1.
    (recoveredValue6) namespace: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg2.
    (recoveredValue8) attributes: (recoveredValue9).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201982d8; bytecode file offset 0xa94be4"
!SGCgTypeFactory class methodsFor: 'recovered'!
createClassType: recoveredArg1 id: recoveredArg2 namespace: recoveredArg3 attributes: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := SGCgComplexClassType.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) className: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) classId: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) namespace: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) attributes: (recoveredValue9).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201982f8; bytecode file offset 0xa94be4"
!SGCgTypeFactory class methodsFor: 'recovered'!
createVariableArrayReferenceType: recoveredArg1 read: recoveredArg2 write: recoveredArg3 memClass: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := SGCgVariableArrayReferenceType.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) baseType: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) readOfReferencedObject: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) writeOfReferencedObject: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) memClassOfReferencedObject: (recoveredValue9).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20198318; bytecode file offset 0xa94be4"
!SGCgTypeFactory class methodsFor: 'recovered'!
createReferenceType: recoveredArg1 read: recoveredArg2 write: recoveredArg3 memClass: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := SGCgReferenceType.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) baseType: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) readOfReferencedObject: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) writeOfReferencedObject: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) memClassOfReferencedObject: (recoveredValue9).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20198400; bytecode file offset 0xa94cc4"
!SGCgTypeFactory class methodsFor: 'recovered'!
createBaseType: recoveredArg1 withImplementation: recoveredArg2 originalImplementationIsNil: recoveredArg3 transientMigration: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack4 := (recoveredStack4) generator.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := (recoveredStack4) isIntegerVariant.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack4) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) generator.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) needsIntegerType.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) createBaseType: (recoveredStack1) withImplementation: (recoveredStack2) integerVariant: (recoveredStack3) originalImplementationIsNil: (recoveredStack4) transientMigration: (recoveredStack5).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a60d8; bytecode file offset 0xaa29a0"
!SGCgTypeFactory class methodsFor: 'recovered'!
createContImpl: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) getImplInterval.
    recoveredValue3 := RBFormulaLinear.
    recoveredValue4 := (recoveredValue3) createDefault.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) getImplInterval.
    recoveredValue7 := SGExtraImplInfo.
    recoveredValue8 := (recoveredValue7) createDefault.
    recoveredValue9 := (self) createContType: (recoveredValue0) physInterval: (recoveredValue2) formula: (recoveredValue4) physicalUnit: (nil) implInterval: (recoveredValue6) extraImplInfo: (recoveredValue8) physQuantization: (1) originalImplementationIsNil: (false) referencedImplTypeName: (nil) isDeltaT: (false).
    ^recoveredValue9
! !

"ASDBase.ic method 0x201a9394; bytecode file offset 0xaa5c60"
!SGCgTypeFactory class methodsFor: 'recovered'!
createSDiscType: recoveredArg1 interval: recoveredArg2 physicalUnit: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) copy.
    recoveredValue3 := RBFormulaId.
    recoveredValue4 := (recoveredValue3) createIdent.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := SGExtraImplInfo.
    recoveredValue8 := (recoveredValue7) createDefault.
    recoveredValue9 := (self) createSDiscType: (recoveredValue0) physInterval: (recoveredValue2) formula: (recoveredValue4) physicalUnit: (recoveredValue5) implInterval: (recoveredValue6) extraImplInfo: (recoveredValue8) physQuantization: (1) originalImplementationIsNil: (false) referencedImplTypeName: (nil) transientMigration: (true).
    ^recoveredValue9
! !

"ASDBase.ic method 0x201ce988; bytecode file offset 0xacb250"
!SGCgTypeFactory class methodsFor: 'recovered'!
createContRealImpl: recoveredArg1 physicalUnit: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := RBInterval.
    recoveredValue2 := (recoveredValue1) createDefault.
    recoveredValue3 := RBFormulaLinear.
    recoveredValue4 := (recoveredValue3) createDefault.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := RBInterval.
    recoveredValue7 := (recoveredValue6) createDefault.
    recoveredValue8 := SGExtraImplInfo.
    recoveredValue9 := (recoveredValue8) createDefault.
    recoveredValue10 := (self) createContType: (recoveredValue0) physInterval: (recoveredValue2) formula: (recoveredValue4) physicalUnit: (recoveredValue5) implInterval: (recoveredValue7) extraImplInfo: (recoveredValue9) physQuantization: (1) originalImplementationIsNil: (false) referencedImplTypeName: (nil) isDeltaT: (false).
    ^recoveredValue10
! !

"ASDBase.ic method 0x201eb014; bytecode file offset 0xae78e4"
!SGCgTypeFactory class methodsFor: 'recovered'!
create1DGroupCharTable: recoveredArg1 fixed: recoveredArg2 xDistributionAlias: recoveredArg3 valueType: recoveredArg4 xDistributionType: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := SGCg1DGroupCharTableType.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) maxSize: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg3.
    (recoveredValue4) xDistributionAlias: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg2.
    (recoveredValue6) fixedCharTableInModel: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) valueElementType: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg5.
    (recoveredValue10) xDistributionType: (recoveredValue11).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2022a930; bytecode file offset 0xb27204"
!SGCgTypeFactory class methodsFor: 'recovered'!
createClassType: recoveredArg1 id: recoveredArg2 implName: recoveredArg3 implId: recoveredArg4 namespace: recoveredArg5 attributes: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := SGCgComplexClassType.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) className: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) classId: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) implName: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) implId: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg5.
    (recoveredValue10) namespace: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := recoveredArg6.
    (recoveredValue12) attributes: (recoveredValue13).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20238e9c; bytecode file offset 0xb35774"
!SGCgTypeFactory class methodsFor: 'recovered'!
createAnsiCType: recoveredArg1 originalImplementationIsNil: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := RBANSICType.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) name: (recoveredValue3).
    recoveredLocal1 := recoveredValue1.
    recoveredValue4 := SGCgAnsiCType.
    recoveredValue5 := (recoveredValue4) create.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := recoveredArg1.
    (recoveredValue6) name: (recoveredValue7).
    recoveredValue8 := recoveredValue5.
    recoveredValue9 := recoveredLocal1.
    (recoveredValue8) setImplType: (recoveredValue9).
    recoveredValue10 := recoveredValue5.
    recoveredValue11 := RBInterval.
    recoveredValue12 := (recoveredValue11) createDefault.
    (recoveredValue10) setImplInterval: (recoveredValue12).
    recoveredValue13 := recoveredValue5.
    recoveredValue14 := recoveredArg2.
    (recoveredValue13) originalImplementationIsNil: (recoveredValue14).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20263b00; bytecode file offset 0xb603d8"
!SGCgTypeFactory class methodsFor: 'recovered'!
createUDiscType: recoveredArg1 interval: recoveredArg2 physicalUnit: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIntegerVariant.
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
            recoveredStack1 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPhysUDiscType: (recoveredStack1) originalImplementationIsNil: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) copy.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := RBFormulaId.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) createIdent.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack6 := SGExtraImplInfo.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack6 := (recoveredStack6) createDefault.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack7 := 1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack8 := false.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack10 := true.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) createUDiscType: (recoveredStack1) physInterval: (recoveredStack2) formula: (recoveredStack3) physicalUnit: (recoveredStack4) implInterval: (recoveredStack5) extraImplInfo: (recoveredStack6) physQuantization: (recoveredStack7) originalImplementationIsNil: (recoveredStack8) referencedImplTypeName: (recoveredStack9) transientMigration: (recoveredStack10).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20263d9c; bytecode file offset 0xb60674"
!SGCgTypeFactory class methodsFor: 'recovered'!
create2DGroupCharTable: recoveredArg1 fixed: recoveredArg2 xDistributionAlias: recoveredArg3 yDistributionAlias: recoveredArg4 valueType: recoveredArg5 xDistributionType: recoveredArg6 yDistributionType: recoveredArg7
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := SGCg2DGroupCharTableType.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) maxSize: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg3.
    (recoveredValue4) xDistributionAlias: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg4.
    (recoveredValue6) yDistributionAlias: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg2.
    (recoveredValue8) fixedCharTableInModel: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg5.
    (recoveredValue10) valueElementType: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := recoveredArg6.
    (recoveredValue12) xDistributionType: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := recoveredArg7.
    (recoveredValue14) yDistributionType: (recoveredValue15).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2029f040; bytecode file offset 0xb9b928"
!SGCgTypeFactory class methodsFor: 'recovered'!
mdlUIntTypeMin: recoveredArg1 max: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := SGUnsignedInteger.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := recoveredLocal3.
    recoveredValue3 := (recoveredValue2) createDataElement.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := RBInterval.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue4) left: (recoveredValue5) right: (recoveredValue6).
    recoveredLocal2 := recoveredValue7.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredValue8.
    recoveredValue10 := recoveredLocal2.
    (recoveredValue9) setImplInterval: (recoveredValue10).
    recoveredValue11 := recoveredValue8.
    recoveredValue12 := recoveredLocal2.
    recoveredValue13 := (recoveredValue12) integerType.
    (recoveredValue11) setImplType: (recoveredValue13).
    (recoveredValue8) updatePhysicsRepresentation.
    recoveredValue14 := recoveredLocal3.
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := (self) createType: (recoveredValue14) implementation: (recoveredValue15).
    recoveredValue17 := recoveredValue16.
    recoveredValue18 := SGCgAnyPhysicalUnit.
    recoveredValue19 := (recoveredValue18) create.
    (recoveredValue17) physicalUnit: (recoveredValue19).
    ^recoveredValue16
! !

"ASDBase.ic method 0x202a68dc; bytecode file offset 0xba31b4"
!SGCgTypeFactory class methodsFor: 'recovered'!
create1DCharTable: recoveredArg1 fixed: recoveredArg2 valueType: recoveredArg3 xDistributionType: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isControllerVariant.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := SGCg1DFixedCharTableType.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := SGCg1DCharTableType.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) maxSize: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) fixedCharTableInModel: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) valueElementType: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) xDistributionType: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b530c; bytecode file offset 0xbb1bfc"
!SGCgTypeFactory class methodsFor: 'recovered'!
createRescaledClassType: recoveredArg1 formula: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := SGCgRescaledClassType.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) className.
    (recoveredValue2) className: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) classId.
    (recoveredValue5) classId: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) namespace.
    (recoveredValue8) namespace: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) attributes.
    (recoveredValue11) attributes: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := (recoveredValue15) implName.
    (recoveredValue14) implName: (recoveredValue16).
    recoveredValue17 := recoveredValue1.
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := (recoveredValue18) implId.
    (recoveredValue17) implId: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := recoveredArg2.
    (recoveredValue20) rescalingFormula: (recoveredValue21).
    ^recoveredValue1
! !

"ASDBase.ic method 0x202cc92c; bytecode file offset 0xbc9204"
!SGCgTypeFactory class methodsFor: 'recovered'!
createArray: recoveredArg1 maxSize: recoveredArg2 variant: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack6 := 'arrayLength'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) arrayDimension: (recoveredStack4) variant: (recoveredStack5) specialCallName: (recoveredStack6).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) createArrayType: (recoveredStack1) dimensions: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgVariableArray.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := 'Default'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) createVariableArrayReferenceType: (recoveredStack1) read: (recoveredStack2) write: (recoveredStack3) memClass: (recoveredStack4).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f0b58; bytecode file offset 0xbed434"
!SGCgTypeFactory class methodsFor: 'recovered'!
create2DCharTable: recoveredArg1 fixed: recoveredArg2 valueType: recoveredArg3 xDistributionType: recoveredArg4 yDistributionType: recoveredArg5
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isControllerVariant.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := SGCg2DFixedCharTableType.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := SGCg2DCharTableType.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) maxSize: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) fixedCharTableInModel: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) valueElementType: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) xDistributionType: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) yDistributionType: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203256f0; bytecode file offset 0xc21fc4"
!SGCgTypeFactory class methodsFor: 'recovered'!
arrayDimension: recoveredArg1 variant: recoveredArg2 specialCallName: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := SGCgFixedArrayDimension.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) indexType: (recoveredStack4).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2) type: (recoveredStack3) specialCallName: (recoveredStack4).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := '*'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := SGCgVariableArrayDimension.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := (recoveredStack3) indexType: (recoveredStack4).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2) type: (recoveredStack3) specialCallName: (recoveredStack4).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := SGCgVariantArrayDimension.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) indexType: (recoveredStack4).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2) type: (recoveredStack3) specialCallName: (recoveredStack4).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack2) sysConstDecl: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2033e5e4; bytecode file offset 0xc3aebc"
!SGCgTypeFactory class methodsFor: 'recovered'!
createArithmeticLiteralType: recoveredArg1 physicalUnit: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isFloat.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isFraction.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInfinite.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := SGReal.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) isInteger.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := SGUnsignedInteger.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := SGSignedInteger.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) createArithmeticLiteralType: (recoveredStack1) modelType: (recoveredStack2) physicalUnit: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033fc08; bytecode file offset 0xc3c54c"
!SGCgTypeFactory class methodsFor: 'recovered'!
createPhysSDiscType: recoveredArg1 originalImplementationIsNil: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 |
    recoveredValue0 := SGCgSDiscPhysicalType.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := RBInt32Signed.
    recoveredValue3 := (recoveredValue2) createDefault.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue5) setImplType: (recoveredValue6).
    recoveredValue7 := recoveredValue4.
    recoveredValue8 := RBFormulaId.
    recoveredValue9 := (recoveredValue8) createIdent.
    (recoveredValue7) formula: (recoveredValue9).
    recoveredValue10 := recoveredValue4.
    recoveredValue11 := recoveredArg1.
    (recoveredValue10) physicalUnit: (recoveredValue11).
    recoveredValue12 := recoveredValue4.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := (recoveredValue13) getImplInterval.
    (recoveredValue12) setImplInterval: (recoveredValue14).
    recoveredValue15 := recoveredValue4.
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := (recoveredValue16) getImplInterval.
    (recoveredValue15) setPhysInterval: (recoveredValue17).
    recoveredValue18 := recoveredValue4.
    recoveredValue19 := SGExtraImplInfo.
    recoveredValue20 := (recoveredValue19) createDefault.
    (recoveredValue18) extraImplInfo: (recoveredValue20).
    recoveredValue21 := recoveredValue4.
    (recoveredValue21) setPhysQuantization: (1).
    recoveredValue22 := recoveredValue4.
    recoveredValue23 := recoveredArg2.
    (recoveredValue22) originalImplementationIsNil: (recoveredValue23).
    recoveredValue24 := recoveredValue4.
    (recoveredValue24) noTransientConversion: (true).
    recoveredValue25 := recoveredLocal2.
    ^recoveredValue25
! !

"ASDBase.ic method 0x2033fc54; bytecode file offset 0xc3c54c"
!SGCgTypeFactory class methodsFor: 'recovered'!
createPhysUDiscType: recoveredArg1 originalImplementationIsNil: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 |
    recoveredValue0 := SGCgUDiscPhysicalType.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := RBInt32Unsigned.
    recoveredValue3 := (recoveredValue2) createDefault.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue5) setImplType: (recoveredValue6).
    recoveredValue7 := recoveredValue4.
    recoveredValue8 := RBFormulaId.
    recoveredValue9 := (recoveredValue8) createIdent.
    (recoveredValue7) formula: (recoveredValue9).
    recoveredValue10 := recoveredValue4.
    recoveredValue11 := recoveredArg1.
    (recoveredValue10) physicalUnit: (recoveredValue11).
    recoveredValue12 := recoveredValue4.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := (recoveredValue13) getImplInterval.
    (recoveredValue12) setImplInterval: (recoveredValue14).
    recoveredValue15 := recoveredValue4.
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := (recoveredValue16) getImplInterval.
    (recoveredValue15) setPhysInterval: (recoveredValue17).
    recoveredValue18 := recoveredValue4.
    recoveredValue19 := SGExtraImplInfo.
    recoveredValue20 := (recoveredValue19) createDefault.
    (recoveredValue18) extraImplInfo: (recoveredValue20).
    recoveredValue21 := recoveredValue4.
    (recoveredValue21) setPhysQuantization: (1).
    recoveredValue22 := recoveredValue4.
    recoveredValue23 := recoveredArg2.
    (recoveredValue22) originalImplementationIsNil: (recoveredValue23).
    recoveredValue24 := recoveredValue4.
    (recoveredValue24) noTransientConversion: (true).
    recoveredValue25 := recoveredLocal2.
    ^recoveredValue25
! !

"ASDBase.ic method 0x2034015c; bytecode file offset 0xc3ca38"
!SGCgTypeFactory class methodsFor: 'recovered'!
createMatrix: recoveredArg1 maxSizeX: recoveredArg2 maxSizeY: recoveredArg3 variantX: recoveredArg4 variantY: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack6 := 'matrixXLength'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) arrayDimension: (recoveredStack4) variant: (recoveredStack5) specialCallName: (recoveredStack6).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack5 := recoveredArg5.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack6 := 'matrixYLength'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) arrayDimension: (recoveredStack4) variant: (recoveredStack5) specialCallName: (recoveredStack6).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) createArrayType: (recoveredStack1) dimensions: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgVariableArray.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack4 := 'Default'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) createVariableArrayReferenceType: (recoveredStack1) read: (recoveredStack2) write: (recoveredStack3) memClass: (recoveredStack4).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2035b734; bytecode file offset 0xc5802c"
!SGCgTypeFactory class methodsFor: 'recovered'!
createBooleanType: recoveredArg1 extraImplInfo: recoveredArg2 originalImplementationIsNil: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGCgBooleanType.
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
            recoveredStack3 := RBFormulaId.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) createIdent.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) formula: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) generator.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) isIntegerVariant.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := RBInt8Unsigned.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) createDefault.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2) setImplType: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := RBInterval.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := (recoveredStack3) left: (recoveredStack4) right: (recoveredStack5).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack2) setImplInterval: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := RBInterval.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack5 := true.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) left: (recoveredStack4) right: (recoveredStack5).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack2) setPhysInterval: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack2) extraImplInfo: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack2) setPhysQuantization: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack2) originalImplementationIsNil: (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2035eb10; bytecode file offset 0xc5b3fc"
!SGCgTypeFactory class methodsFor: 'recovered'!
createContType: recoveredArg1 physInterval: recoveredArg2 formula: recoveredArg3 physicalUnit: recoveredArg4 isDeltaT: recoveredArg5
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) transformedBy: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := RBInterval.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) left.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) right.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) min: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) left.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := (recoveredStack4) right.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) max: (recoveredStack4).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) left: (recoveredStack2) right: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBInteger.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) getImplInterval.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) intersect: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack6 := SGExtraImplInfo.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack6 := (recoveredStack6) createDefault.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack7 := 1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack8 := false.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack10 := recoveredArg5.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) createContType: (recoveredStack1) physInterval: (recoveredStack2) formula: (recoveredStack3) physicalUnit: (recoveredStack4) implInterval: (recoveredStack5) extraImplInfo: (recoveredStack6) physQuantization: (recoveredStack7) originalImplementationIsNil: (recoveredStack8) referencedImplTypeName: (recoveredStack9) isDeltaT: (recoveredStack10).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203662fc; bytecode file offset 0xc62be0"
!SGCgTypeFactory class methodsFor: 'recovered'!
createARStandardReturnType
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredLocal2 := -1.
    recoveredValue0 := SGRTEStandardReturnType.
    recoveredValue1 := (recoveredValue0) rteStandardReturnTypeValues.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := SGCgARStandardReturnType.
    recoveredValue3 := (recoveredValue2) create.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := SGRTEStandardReturnType.
    recoveredValue6 := (recoveredValue5) createDefault.
    recoveredValue7 := (recoveredValue6) label.
    (recoveredValue4) className: (recoveredValue7).
    recoveredValue8 := recoveredValue3.
    recoveredValue9 := SGRTEStandardReturnType.
    recoveredValue10 := (recoveredValue9) createDefault.
    recoveredValue11 := (recoveredValue10) label.
    (recoveredValue8) classId: (recoveredValue11).
    recoveredValue12 := recoveredValue3.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Value0 recoveredBlock40Value1 recoveredBlock40Value2 recoveredBlock40Value3 recoveredBlock40Value4 recoveredBlock40Value5 |
    recoveredBlock40Value0 := recoveredLocal2.
    recoveredBlock40Value1 := (recoveredBlock40Value0) + (1).
    recoveredLocal2 := recoveredBlock40Value1.
    recoveredBlock40Value2 := ASDEnumerationEntry.
    recoveredBlock40Value3 := recoveredBlock40Arg1.
    recoveredBlock40Value4 := recoveredLocal2.
    recoveredBlock40Value5 := (recoveredBlock40Value2) createName: (recoveredBlock40Value3) code: (recoveredBlock40Value4).
    recoveredBlock40Value5
].
    recoveredValue15 := (recoveredValue13) collect: (recoveredValue14).
    (recoveredValue12) enumerationMap: (recoveredValue15).
    ^recoveredValue3
! !

"ASDBase.ic method 0x203832e4; bytecode file offset 0xc7fbd4"
!SGCgTypeFactory class methodsFor: 'recovered'!
indexType: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) useNewDiscreteTypes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := RBInteger.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) allImplTypes.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := false.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 22.
        ].
        recoveredBlock14Step = 22 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) isSigned.
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 40] ifFalse: [recoveredBlock14PC := 28].
        ].
        recoveredBlock14Step = 28 ifTrue: [
            recoveredBlock14PC := 29.
        ].
        recoveredBlock14Step = 29 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 30.
        ].
        recoveredBlock14Step = 30 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) typeSize.
            recoveredBlock14PC := 32.
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14Stack2 := 8.
            recoveredBlock14PC := 34.
        ].
        recoveredBlock14Step = 34 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) * (recoveredBlock14Stack2).
            recoveredBlock14PC := 35.
        ].
        recoveredBlock14Step = 35 ifTrue: [
            recoveredBlock14Stack2 := self.
            recoveredBlock14PC := 36.
        ].
        recoveredBlock14Step = 36 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) generator.
            recoveredBlock14PC := 37.
        ].
        recoveredBlock14Step = 37 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) representableBits.
            recoveredBlock14PC := 39.
        ].
        recoveredBlock14Step = 39 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) = (recoveredBlock14Stack2).
            recoveredBlock14PC := 40.
        ].
        recoveredBlock14Step = 40 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := RBInterval.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (-1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) left: (recoveredStack3) right: (recoveredStack4).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := SGCgAnyPhysicalUnit.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := (recoveredStack3) create.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLimitedDiscreteType: (recoveredStack1) interval: (recoveredStack2) physicalUnit: (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlUIntType: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := SGCgAnyPhysicalUnit.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) create.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) physicalUnit: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203b170c; bytecode file offset 0xcae010"
!SGCgTypeFactory class methodsFor: 'recovered'!
createModularDiscreteType: recoveredArg1 modulus: recoveredArg2 physicalUnit: recoveredArg3 originalExtraImplInfo: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 |
    recoveredValue0 := SGCgModularIntegerType.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) setImplType: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg2.
    (recoveredValue5) modulus: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := RBFormulaId.
    recoveredValue9 := (recoveredValue8) createIdent.
    (recoveredValue7) formula: (recoveredValue9).
    recoveredValue10 := recoveredValue2.
    recoveredValue11 := recoveredArg3.
    (recoveredValue10) physicalUnit: (recoveredValue11).
    recoveredValue12 := recoveredValue2.
    recoveredValue13 := RBInterval.
    recoveredValue14 := recoveredArg2.
    recoveredValue15 := (recoveredValue14) + (-1).
    recoveredValue16 := (recoveredValue13) left: (0) right: (recoveredValue15).
    (recoveredValue12) setImplInterval: (recoveredValue16).
    recoveredValue17 := recoveredValue2.
    recoveredValue18 := RBInterval.
    recoveredValue19 := recoveredArg2.
    recoveredValue20 := (recoveredValue19) + (-1).
    recoveredValue21 := (recoveredValue18) left: (0) right: (recoveredValue20).
    (recoveredValue17) setPhysInterval: (recoveredValue21).
    recoveredValue22 := recoveredValue2.
    recoveredValue23 := SGExtraImplInfo.
    recoveredValue24 := (recoveredValue23) createDefault.
    recoveredValue25 := recoveredValue24.
    (recoveredValue25) dontUseLimiter.
    (recoveredValue22) extraImplInfo: (recoveredValue24).
    recoveredValue26 := recoveredValue2.
    recoveredValue27 := recoveredArg4.
    (recoveredValue26) originalExtraImplInfo: (recoveredValue27).
    recoveredValue28 := recoveredValue2.
    (recoveredValue28) setPhysQuantization: (1).
    recoveredValue29 := recoveredValue2.
    (recoveredValue29) originalImplementationIsNil: (false).
    (recoveredValue2) referencedImplTypeName: (nil).
    recoveredValue30 := recoveredLocal1.
    ^recoveredValue30
! !

"ASDBase.ic method 0x203d670c; bytecode file offset 0xcd2fe0"
!SGCgTypeFactory class methodsFor: 'recovered'!
createType: recoveredArg1 adjustedImplementation: recoveredArg2 originalImplementation: recoveredArg3 transientMigration: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPrimitive.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isComplexType.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := (recoveredStack4) isNil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) createComplexBaseType: (recoveredStack2) withImplementation: (recoveredStack3) originalImplementationIsNil: (recoveredStack4).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := (recoveredStack4) isNil.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) createBaseType: (recoveredStack2) withImplementation: (recoveredStack3) originalImplementationIsNil: (recoveredStack4) transientMigration: (recoveredStack5).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock57Value0 recoveredBlock57Value1 |
    recoveredBlock57Value0 := recoveredArg1.
    recoveredBlock57Value1 := (recoveredBlock57Value0) isMdlEnumType.
    recoveredBlock57Value1
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := [
    'If the type is not primitive, it must be an enum type'
].
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) ileAssert: (recoveredStack2) message: (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203ef320; bytecode file offset 0xcebc08"
!SGCgTypeFactory class methodsFor: 'recovered'!
mixedArrayDimension: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Stack2 := [:block280f9078Arg1 | 
    | block280f9078Stack0 block280f9078Stack1 block280f9078Stack2 block280f9078Stack3 block280f9078PC block280f9078Step block280f9078Done block280f9078Result |
    block280f9078Stack0 := self.
    block280f9078PC := 4.
    block280f9078Done := false.
    [block280f9078Done not] whileTrue: [
        block280f9078Step := block280f9078PC.
        block280f9078Step = 4 ifTrue: [
            block280f9078Stack1 := true.
            block280f9078PC := 5.
        ].
        block280f9078Step = 5 ifTrue: [
            block280f9078Stack2 := block280f9078Arg1.
            block280f9078PC := 6.
        ].
        block280f9078Step = 6 ifTrue: [
            block280f9078Stack2 := (block280f9078Stack2) isCgFixedDimension.
            block280f9078PC := 7.
        ].
        block280f9078Step = 7 ifTrue: [
            (block280f9078Stack2) ifTrue: [block280f9078PC := 13] ifFalse: [block280f9078PC := 10].
        ].
        block280f9078Step = 10 ifTrue: [
            block280f9078PC := 11.
        ].
        block280f9078Step = 11 ifTrue: [
            block280f9078Stack1 := block280f9078Arg1.
            block280f9078PC := 12.
        ].
        block280f9078Step = 12 ifTrue: [
            block280f9078Stack1 := (block280f9078Stack1) isCgVariantDimension.
            block280f9078PC := 13.
        ].
        block280f9078Step = 13 ifTrue: [
            block280f9078Result := block280f9078Stack1.
            block280f9078Done := true.
        ].
    ].
    block280f9078Result
].
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            recoveredBlock4PC := 28.
        ].
        recoveredBlock4Step = 28 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) allSatisfy: (recoveredBlock4Stack2).
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := [
    'Mixed dimensions can only mix fixed and variant'
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock42Value0 recoveredBlock42Value1 recoveredBlock42Value2 |
    recoveredBlock42Value0 := recoveredArg1.
    recoveredBlock42Value1 := [:recoveredBlock42Block51Arg1 | 
    | recoveredBlock42Block51Value0 recoveredBlock42Block51Value1 recoveredBlock42Block51Value2 recoveredBlock42Block51Value3 recoveredBlock42Block51Value4 recoveredBlock42Block51Value5 |
    recoveredBlock42Block51Value0 := recoveredBlock42Block51Arg1.
    recoveredBlock42Block51Value1 := (recoveredBlock42Block51Value0) specialCallName.
    recoveredBlock42Block51Value2 := recoveredArg1.
    recoveredBlock42Block51Value3 := (recoveredBlock42Block51Value2) first.
    recoveredBlock42Block51Value4 := (recoveredBlock42Block51Value3) specialCallName.
    recoveredBlock42Block51Value5 := (recoveredBlock42Block51Value1) = (recoveredBlock42Block51Value4).
    recoveredBlock42Block51Value5
].
    recoveredBlock42Value2 := (recoveredBlock42Value0) allSatisfy: (recoveredBlock42Value1).
    recoveredBlock42Value2
].
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := [
    'Mixed dimensions cannot mix different indexes'
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := SGCgMixedArrayDimension.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20423508; bytecode file offset 0xd1fe34"
!SGCgTypeFactory class methodsFor: 'recovered'!
createSDiscType: recoveredArg1 physInterval: recoveredArg2 formula: recoveredArg3 physicalUnit: recoveredArg4 implInterval: recoveredArg5 extraImplInfo: recoveredArg6 physQuantization: recoveredArg7 originalImplementationIsNil: recoveredArg8 referencedImplTypeName: recoveredArg9 transientMigration: recoveredArg10
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg10.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg8.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBFloat.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg6.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := recoveredArg5.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack6 := recoveredArg4.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) newDiscreteType: (recoveredStack2) implType: (recoveredStack3) interval: (recoveredStack4) formula: (recoveredStack5) physicalUnit: (recoveredStack6).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := SGCgSDiscType.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack2) setImplType: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack2) formula: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack2) physicalUnit: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := recoveredArg5.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack2) setImplInterval: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack2) setPhysInterval: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := recoveredArg6.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack2) extraImplInfo: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := recoveredArg7.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack2) setPhysQuantization: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := recoveredArg8.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack2) originalImplementationIsNil: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := recoveredArg9.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack2) referencedImplTypeName: (recoveredStack3).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := recoveredArg10.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 97].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredArg8.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := (recoveredStack2) not.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (recoveredStack2) not.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) noTransientConversion: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20423548; bytecode file offset 0xd1fe34"
!SGCgTypeFactory class methodsFor: 'recovered'!
createUDiscType: recoveredArg1 physInterval: recoveredArg2 formula: recoveredArg3 physicalUnit: recoveredArg4 implInterval: recoveredArg5 extraImplInfo: recoveredArg6 physQuantization: recoveredArg7 originalImplementationIsNil: recoveredArg8 referencedImplTypeName: recoveredArg9 transientMigration: recoveredArg10
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg10.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg8.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBFloat.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg6.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := recoveredArg5.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack6 := recoveredArg4.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) newDiscreteType: (recoveredStack2) implType: (recoveredStack3) interval: (recoveredStack4) formula: (recoveredStack5) physicalUnit: (recoveredStack6).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := SGCgUDiscType.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack2) setImplType: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack2) formula: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack2) physicalUnit: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := recoveredArg5.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack2) setImplInterval: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack2) setPhysInterval: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := recoveredArg6.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack2) extraImplInfo: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := recoveredArg7.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack2) setPhysQuantization: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := recoveredArg8.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack2) originalImplementationIsNil: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := recoveredArg9.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack2) referencedImplTypeName: (recoveredStack3).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := recoveredArg10.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 97].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredArg8.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := (recoveredStack2) not.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (recoveredStack2) not.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) noTransientConversion: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2042ee4c; bytecode file offset 0xd2b740"
!SGCgTypeFactory class methodsFor: 'recovered'!
mdlLimitedTypeMin: recoveredArg1 max: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIntegerVariant.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := SGCgTypeFactory.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlUIntTypeMin: (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := RBInterval.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) left: (recoveredStack1) right: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := RBInteger.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) allImplTypes.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Stack0 recoveredBlock39Stack1 recoveredBlock39Stack2 recoveredBlock39Stack3 recoveredBlock39PC recoveredBlock39Step recoveredBlock39Done recoveredBlock39Result |
    recoveredBlock39Stack0 := self.
    recoveredBlock39PC := 46.
    recoveredBlock39Done := false.
    [recoveredBlock39Done not] whileTrue: [
        recoveredBlock39Step := recoveredBlock39PC.
        recoveredBlock39Step = 46 ifTrue: [
            recoveredBlock39Stack1 := false.
            recoveredBlock39PC := 47.
        ].
        recoveredBlock39Step = 47 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Arg1.
            recoveredBlock39PC := 48.
        ].
        recoveredBlock39Step = 48 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) isSigned.
            recoveredBlock39PC := 50.
        ].
        recoveredBlock39Step = 50 ifTrue: [
            (recoveredBlock39Stack2) ifTrue: [recoveredBlock39PC := 63] ifFalse: [recoveredBlock39PC := 54].
        ].
        recoveredBlock39Step = 54 ifTrue: [
            recoveredBlock39PC := 55.
        ].
        recoveredBlock39Step = 55 ifTrue: [
            recoveredBlock39Stack1 := recoveredBlock39Arg1.
            recoveredBlock39PC := 56.
        ].
        recoveredBlock39Step = 56 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) getInterval.
            recoveredBlock39PC := 58.
        ].
        recoveredBlock39Step = 58 ifTrue: [
            recoveredBlock39Stack2 := recoveredLocal1.
            recoveredBlock39PC := 61.
        ].
        recoveredBlock39Step = 61 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) includes: (recoveredBlock39Stack2).
            recoveredBlock39PC := 63.
        ].
        recoveredBlock39Step = 63 ifTrue: [
            recoveredBlock39Result := recoveredBlock39Stack1.
            recoveredBlock39Done := true.
        ].
    ].
    recoveredBlock39Result
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock64Value0 recoveredBlock64Value1 recoveredBlock64Value2 recoveredBlock64Value3 |
    recoveredBlock64Value0 := RBInteger.
    recoveredBlock64Value1 := (recoveredBlock64Value0) allImplTypes.
    recoveredBlock64Value2 := [:recoveredBlock64Block74Arg1 | 
    | recoveredBlock64Block74Value0 recoveredBlock64Block74Value1 recoveredBlock64Block74Value2 recoveredBlock64Block74Value3 |
    recoveredBlock64Block74Value0 := recoveredBlock64Block74Arg1.
    recoveredBlock64Block74Value1 := (recoveredBlock64Block74Value0) getInterval.
    recoveredBlock64Block74Value2 := recoveredLocal1.
    recoveredBlock64Block74Value3 := (recoveredBlock64Block74Value1) includes: (recoveredBlock64Block74Value2).
    recoveredBlock64Block74Value3
].
    recoveredBlock64Value3 := (recoveredBlock64Value1) detect: (recoveredBlock64Value2).
    recoveredBlock64Value3
].
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := SGCgAnyPhysicalUnit.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := (recoveredStack3) create.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLimitedDiscreteType: (recoveredStack1) interval: (recoveredStack2) physicalUnit: (recoveredStack3).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2042f288; bytecode file offset 0xd2bb8c"
!SGCgTypeFactory class methodsFor: 'recovered'!
createLimitedDiscreteType: recoveredArg1 interval: recoveredArg2 formula: recoveredArg3 physicalUnit: recoveredArg4 originalExtraImplInfo: recoveredArg5
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) isRBFloat.
    recoveredBlock4Value2 := (recoveredBlock4Value1) not.
    recoveredBlock4Value2
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    'An integer type cannot have a float implementation'
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := SGCgLimitedIntegerType.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) setImplType: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) interval: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) formula: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) physicalUnit: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) setImplInterval: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) setPhysInterval: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := SGExtraImplInfo.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) createDefault.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack3) useLimiter.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) extraImplInfo: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredArg5.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) originalExtraImplInfo: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) setPhysQuantization: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) originalImplementationIsNil: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) referencedImplTypeName: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2042f34c; bytecode file offset 0xd2bc50"
!SGCgTypeFactory class methodsFor: 'recovered'!
createTwosComplementType: recoveredArg1 interval: recoveredArg2 formula: recoveredArg3 physicalUnit: recoveredArg4 originalExtraImplInfo: recoveredArg5 transientMigration: recoveredArg6
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) isRBFloat.
    recoveredBlock4Value2 := (recoveredBlock4Value1) not.
    recoveredBlock4Value2
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    'Wrap-around integer types with float implementation are not allowed.'
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := SGCgWrapAroundIntegerType.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) setImplType: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) formula: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) physicalUnit: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) setImplInterval: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) setPhysInterval: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := SGExtraImplInfo.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) createDefault.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack3) dontUseLimiter.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) extraImplInfo: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := recoveredArg5.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) originalExtraImplInfo: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredArg6.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) transientMigration: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) setPhysQuantization: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) originalImplementationIsNil: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) referencedImplTypeName: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20447254; bytecode file offset 0xd43b5c"
!SGCgTypeFactory class methodsFor: 'recovered'!
createLimitedDiscreteType: recoveredArg1 interval: recoveredArg2 formula: recoveredArg3 physicalUnit: recoveredArg4 originalExtraImplInfo: recoveredArg5 transientMigration: recoveredArg6
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) isRBFloat.
    recoveredBlock4Value2 := (recoveredBlock4Value1) not.
    recoveredBlock4Value2
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    'An integer type cannot have a float implementation'
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := SGCgLimitedIntegerType.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) setImplType: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) interval: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) formula: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) physicalUnit: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) setImplInterval: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) setPhysInterval: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := SGExtraImplInfo.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) createDefault.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack3) useLimiter.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) extraImplInfo: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredArg5.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) originalExtraImplInfo: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := recoveredArg6.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) transientMigration: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) setPhysQuantization: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) originalImplementationIsNil: (recoveredStack2).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) referencedImplTypeName: (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20452eb0; bytecode file offset 0xd4f798"
!SGCgTypeFactory class methodsFor: 'recovered'!
createType: recoveredArg1 implementation: recoveredArg2 transientMigration: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlComplexClassType.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlEnumType.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) adjustImplementation: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) createType: (recoveredStack1) adjustedImplementation: (recoveredStack2) originalImplementation: (recoveredStack3) transientMigration: (recoveredStack4).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) isNil.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) originalImplementationIsNil: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgContRealType.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := [:recoveredBlock73Arg1 | 
    | recoveredBlock73Stack0 recoveredBlock73Stack1 recoveredBlock73Stack2 recoveredBlock73Stack3 recoveredBlock73PC recoveredBlock73Step recoveredBlock73Done recoveredBlock73Result |
    recoveredBlock73Stack0 := self.
    recoveredBlock73PC := 80.
    recoveredBlock73Done := false.
    [recoveredBlock73Done not] whileTrue: [
        recoveredBlock73Step := recoveredBlock73PC.
        recoveredBlock73Step = 80 ifTrue: [
            recoveredBlock73Stack1 := nil.
            recoveredBlock73PC := 81.
        ].
        recoveredBlock73Step = 81 ifTrue: [
            recoveredBlock73Stack2 := self.
            recoveredBlock73PC := 82.
        ].
        recoveredBlock73Step = 82 ifTrue: [
            recoveredBlock73Stack2 := (recoveredBlock73Stack2) generator.
            recoveredBlock73PC := 84.
        ].
        recoveredBlock73Step = 84 ifTrue: [
            recoveredBlock73Stack2 := (recoveredBlock73Stack2) isQuantVariant.
            recoveredBlock73PC := 86.
        ].
        recoveredBlock73Step = 86 ifTrue: [
            (recoveredBlock73Stack2) ifTrue: [recoveredBlock73PC := 90] ifFalse: [recoveredBlock73PC := 107].
        ].
        recoveredBlock73Step = 90 ifTrue: [
            recoveredBlock73PC := 91.
        ].
        recoveredBlock73Step = 91 ifTrue: [
            recoveredBlock73Stack1 := recoveredLocal1.
            recoveredBlock73PC := 94.
        ].
        recoveredBlock73Step = 94 ifTrue: [
            recoveredBlock73Stack2 := recoveredBlock73Arg1.
            recoveredBlock73PC := 95.
        ].
        recoveredBlock73Step = 95 ifTrue: [
            recoveredBlock73Stack2 := (recoveredBlock73Stack2) getPhysInterval.
            recoveredBlock73PC := 97.
        ].
        recoveredBlock73Step = 97 ifTrue: [
            (recoveredBlock73Stack1) setPhysInterval: (recoveredBlock73Stack2).
            recoveredBlock73PC := 99.
        ].
        recoveredBlock73Step = 99 ifTrue: [
            recoveredBlock73Stack1 := recoveredLocal1.
            recoveredBlock73PC := 102.
        ].
        recoveredBlock73Step = 102 ifTrue: [
            recoveredBlock73Stack2 := recoveredBlock73Arg1.
            recoveredBlock73PC := 103.
        ].
        recoveredBlock73Step = 103 ifTrue: [
            recoveredBlock73Stack2 := (recoveredBlock73Stack2) getPhysQuantization.
            recoveredBlock73PC := 105.
        ].
        recoveredBlock73Step = 105 ifTrue: [
            recoveredBlock73Stack1 := (recoveredBlock73Stack1) setPhysQuantization: (recoveredBlock73Stack2).
            recoveredBlock73PC := 107.
        ].
        recoveredBlock73Step = 107 ifTrue: [
            recoveredBlock73Result := recoveredBlock73Stack1.
            recoveredBlock73Done := true.
        ].
    ].
    recoveredBlock73Result
].
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2046a9f0; bytecode file offset 0xd67310"
!SGCgTypeFactory class methodsFor: 'recovered'!
createArithmeticLiteralType: recoveredArg1 modelType: recoveredArg2 physicalUnit: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGCgArithmeticLiteralType.
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
            recoveredStack3 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) modelType: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack2) physicalUnit: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) defaultPhysType.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack2) setImplType: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) asInterval.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) setImplInterval: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := RBFormulaId.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := (recoveredStack3) createIdent.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack2) formula: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) asInterval.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack2) setPhysInterval: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack2) setPhysQuantization: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := SGExtraImplInfo.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) createDefault.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack2) extraImplInfo: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGReal.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := RBInterval.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := Infinity.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) fractionPart.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) setContNoFractionLiteral.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredPC := 95.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) setContLiteral.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredPC := 119.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGUnsignedInteger.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) setUDiscLiteral.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredPC := 119.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGSignedInteger.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 119].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) setSDiscLiteral.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204861a4; bytecode file offset 0xd82a98"
!SGCgTypeFactory class methodsFor: 'recovered'!
newDiscreteType: recoveredArg1 implType: recoveredArg2 interval: recoveredArg3 formula: recoveredArg4 physicalUnit: recoveredArg5
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) useNewDiscreteTypes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 127].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRescaled.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLinearAndInvertible.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) offset.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) scale.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) limiterUsed.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 67].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack4 := recoveredArg5.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack6 := true.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLimitedDiscreteType: (recoveredStack1) interval: (recoveredStack2) formula: (recoveredStack3) physicalUnit: (recoveredStack4) originalExtraImplInfo: (recoveredStack5) transientMigration: (recoveredStack6).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLimitOverflow.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) text.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := 'modular'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := (recoveredStack2) right.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := recoveredArg5.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) createModularDiscreteType: (recoveredStack1) modulus: (recoveredStack2) physicalUnit: (recoveredStack3) originalExtraImplInfo: (recoveredStack4).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1) transientMigration: (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack4 := recoveredArg5.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack6 := true.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) createTwosComplementType: (recoveredStack1) interval: (recoveredStack2) formula: (recoveredStack3) physicalUnit: (recoveredStack4) originalExtraImplInfo: (recoveredStack5) transientMigration: (recoveredStack6).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205cabb0; bytecode file offset 0xec74dc"
!SGCgTypeFactory class methodsFor: 'recovered'!
adjustImplementation: recoveredArg1 to: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGVoid.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGANSICType.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 181.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPhysicalVariant.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) isQuantVariant.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDataElement.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 181.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) needsIntegerType.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDataElement.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredPC := 181.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) isControllerVariant.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 153] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBBit.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBImplBoolean.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 153].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) deepCopy.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := (recoveredStack2) isIndexable.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := (recoveredStack2) basicType.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultImplType.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredPC := 151.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultImplType.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack1) setImplType: (recoveredStack2).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIndexable.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 162] ifFalse: [recoveredPC := 181].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVectoredType.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 181] ifFalse: [recoveredPC := 170].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDataElementWithImpl: (recoveredStack2).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := (recoveredStack0) isQuantVariant.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 241].
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 241] ifFalse: [recoveredPC := 194].
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSGBoolean.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 202] ifFalse: [recoveredPC := 230].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBBit.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 212] ifFalse: [recoveredPC := 230].
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultImplType.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack0) setImplType: (recoveredStack1).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDataElementForPhysQuantWithImpl: (recoveredStack1).
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock242Stack0 recoveredBlock242Stack1 recoveredBlock242Stack2 recoveredBlock242Stack3 recoveredBlock242PC recoveredBlock242Step recoveredBlock242Done recoveredBlock242Result |
    recoveredBlock242Stack0 := self.
    recoveredBlock242PC := 248.
    recoveredBlock242Done := false.
    [recoveredBlock242Done not] whileTrue: [
        recoveredBlock242Step := recoveredBlock242PC.
        recoveredBlock242Step = 248 ifTrue: [
            recoveredBlock242Stack1 := true.
            recoveredBlock242PC := 249.
        ].
        recoveredBlock242Step = 249 ifTrue: [
            recoveredBlock242Stack2 := recoveredArg2.
            recoveredBlock242PC := 252.
        ].
        recoveredBlock242Step = 252 ifTrue: [
            recoveredBlock242Stack2 := (recoveredBlock242Stack2) isSGVector.
            recoveredBlock242PC := 254.
        ].
        recoveredBlock242Step = 254 ifTrue: [
            (recoveredBlock242Stack2) ifTrue: [recoveredBlock242PC := 258] ifFalse: [recoveredBlock242PC := 272].
        ].
        recoveredBlock242Step = 258 ifTrue: [
            recoveredBlock242PC := 259.
        ].
        recoveredBlock242Step = 259 ifTrue: [
            recoveredBlock242Stack1 := true.
            recoveredBlock242PC := 260.
        ].
        recoveredBlock242Step = 260 ifTrue: [
            recoveredBlock242Stack2 := recoveredLocal1.
            recoveredBlock242PC := 263.
        ].
        recoveredBlock242Step = 263 ifTrue: [
            (recoveredBlock242Stack2 == nil) ifTrue: [recoveredBlock242PC := 272] ifFalse: [recoveredBlock242PC := 266].
        ].
        recoveredBlock242Step = 266 ifTrue: [
            recoveredBlock242PC := 267.
        ].
        recoveredBlock242Step = 267 ifTrue: [
            recoveredBlock242Stack1 := recoveredLocal1.
            recoveredBlock242PC := 270.
        ].
        recoveredBlock242Step = 270 ifTrue: [
            recoveredBlock242Stack1 := (recoveredBlock242Stack1) isRBDataVector.
            recoveredBlock242PC := 272.
        ].
        recoveredBlock242Step = 272 ifTrue: [
            recoveredBlock242Result := recoveredBlock242Stack1.
            recoveredBlock242Done := true.
        ].
    ].
    recoveredBlock242Result
].
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack2 := [
    'Vector must have a vector implementation'
].
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock284Stack0 recoveredBlock284Stack1 recoveredBlock284Stack2 recoveredBlock284Stack3 recoveredBlock284PC recoveredBlock284Step recoveredBlock284Done recoveredBlock284Result |
    recoveredBlock284Stack0 := self.
    recoveredBlock284PC := 290.
    recoveredBlock284Done := false.
    [recoveredBlock284Done not] whileTrue: [
        recoveredBlock284Step := recoveredBlock284PC.
        recoveredBlock284Step = 290 ifTrue: [
            recoveredBlock284Stack1 := true.
            recoveredBlock284PC := 291.
        ].
        recoveredBlock284Step = 291 ifTrue: [
            recoveredBlock284Stack2 := recoveredArg2.
            recoveredBlock284PC := 294.
        ].
        recoveredBlock284Step = 294 ifTrue: [
            recoveredBlock284Stack2 := (recoveredBlock284Stack2) isSGMatrix.
            recoveredBlock284PC := 296.
        ].
        recoveredBlock284Step = 296 ifTrue: [
            (recoveredBlock284Stack2) ifTrue: [recoveredBlock284PC := 300] ifFalse: [recoveredBlock284PC := 314].
        ].
        recoveredBlock284Step = 300 ifTrue: [
            recoveredBlock284PC := 301.
        ].
        recoveredBlock284Step = 301 ifTrue: [
            recoveredBlock284Stack1 := true.
            recoveredBlock284PC := 302.
        ].
        recoveredBlock284Step = 302 ifTrue: [
            recoveredBlock284Stack2 := recoveredLocal1.
            recoveredBlock284PC := 305.
        ].
        recoveredBlock284Step = 305 ifTrue: [
            (recoveredBlock284Stack2 == nil) ifTrue: [recoveredBlock284PC := 314] ifFalse: [recoveredBlock284PC := 308].
        ].
        recoveredBlock284Step = 308 ifTrue: [
            recoveredBlock284PC := 309.
        ].
        recoveredBlock284Step = 309 ifTrue: [
            recoveredBlock284Stack1 := recoveredLocal1.
            recoveredBlock284PC := 312.
        ].
        recoveredBlock284Step = 312 ifTrue: [
            recoveredBlock284Stack1 := (recoveredBlock284Stack1) isRBDataMatrix.
            recoveredBlock284PC := 314.
        ].
        recoveredBlock284Step = 314 ifTrue: [
            recoveredBlock284Result := recoveredBlock284Stack1.
            recoveredBlock284Done := true.
        ].
    ].
    recoveredBlock284Result
].
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack2 := [
    'Matrix must have a matrix implementation'
].
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 340] ifFalse: [recoveredPC := 332].
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDataElement.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2060c7cc; bytecode file offset 0xf09108"
!SGCgTypeFactory class methodsFor: 'recovered'!
createComplexBaseType: recoveredArg1 withImplementation: recoveredArg2 originalImplementationIsNil: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGOneDCharTable.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 135].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGroupCharTable.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxSize.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) isFixed.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := (recoveredStack4) xDistributionAlias.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack6 := (recoveredStack6) basicType.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack7 := recoveredArg2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack7 := (recoveredStack7) values.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack7 := (recoveredStack7) elementType.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack8 := recoveredArg3.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack9 := false.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack5 := (recoveredStack5) createBaseType: (recoveredStack6) withImplementation: (recoveredStack7) originalImplementationIsNil: (recoveredStack8) transientMigration: (recoveredStack9).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack7 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack7 := (recoveredStack7) xType.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack8 := recoveredArg2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack8 := (recoveredStack8) xDistribution.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack8 := (recoveredStack8) elementType.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack9 := recoveredArg3.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack10 := false.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack6 := (recoveredStack6) createBaseType: (recoveredStack7) withImplementation: (recoveredStack8) originalImplementationIsNil: (recoveredStack9) transientMigration: (recoveredStack10).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) create1DGroupCharTable: (recoveredStack2) fixed: (recoveredStack3) xDistributionAlias: (recoveredStack4) valueType: (recoveredStack5) xDistributionType: (recoveredStack6).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxSize.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := (recoveredStack3) isFixed.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack5 := (recoveredStack5) basicType.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack6 := recoveredArg2.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack6 := (recoveredStack6) values.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack6 := (recoveredStack6) elementType.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack7 := recoveredArg3.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack8 := false.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack4 := (recoveredStack4) createBaseType: (recoveredStack5) withImplementation: (recoveredStack6) originalImplementationIsNil: (recoveredStack7) transientMigration: (recoveredStack8).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack6 := (recoveredStack6) xType.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack7 := recoveredArg2.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack7 := (recoveredStack7) xDistribution.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack7 := (recoveredStack7) elementType.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack8 := recoveredArg3.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack9 := false.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack5 := (recoveredStack5) createBaseType: (recoveredStack6) withImplementation: (recoveredStack7) originalImplementationIsNil: (recoveredStack8) transientMigration: (recoveredStack9).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) create1DCharTable: (recoveredStack2) fixed: (recoveredStack3) valueType: (recoveredStack4) xDistributionType: (recoveredStack5).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGTwoDCharTable.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 308].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGroupCharTable.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 235].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxSize.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack3 := (recoveredStack3) isFixed.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack4 := (recoveredStack4) xDistributionAlias.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack5 := (recoveredStack5) yDistributionAlias.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack7 := recoveredArg1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack7 := (recoveredStack7) basicType.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack8 := recoveredArg2.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack8 := (recoveredStack8) values.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack8 := (recoveredStack8) elementType.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack9 := recoveredArg3.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack10 := false.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack6 := (recoveredStack6) createBaseType: (recoveredStack7) withImplementation: (recoveredStack8) originalImplementationIsNil: (recoveredStack9) transientMigration: (recoveredStack10).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack8 := recoveredArg1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack8 := (recoveredStack8) xType.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack9 := recoveredArg2.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack9 := (recoveredStack9) xDistribution.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack9 := (recoveredStack9) elementType.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack10 := recoveredArg3.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack11 := false.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack7 := (recoveredStack7) createBaseType: (recoveredStack8) withImplementation: (recoveredStack9) originalImplementationIsNil: (recoveredStack10) transientMigration: (recoveredStack11).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack9 := recoveredArg1.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack9 := (recoveredStack9) yType.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack10 := recoveredArg2.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack10 := (recoveredStack10) yDistribution.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack10 := (recoveredStack10) elementType.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack11 := recoveredArg3.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack12 := false.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack8 := (recoveredStack8) createBaseType: (recoveredStack9) withImplementation: (recoveredStack10) originalImplementationIsNil: (recoveredStack11) transientMigration: (recoveredStack12).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := (recoveredStack1) create2DGroupCharTable: (recoveredStack2) fixed: (recoveredStack3) xDistributionAlias: (recoveredStack4) yDistributionAlias: (recoveredStack5) valueType: (recoveredStack6) xDistributionType: (recoveredStack7) yDistributionType: (recoveredStack8).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxSize.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack3 := (recoveredStack3) isFixed.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack5 := (recoveredStack5) basicType.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack6 := recoveredArg2.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack6 := (recoveredStack6) values.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack6 := (recoveredStack6) elementType.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack7 := recoveredArg3.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack8 := false.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack4 := (recoveredStack4) createBaseType: (recoveredStack5) withImplementation: (recoveredStack6) originalImplementationIsNil: (recoveredStack7) transientMigration: (recoveredStack8).
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack6 := (recoveredStack6) xType.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack7 := recoveredArg2.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack7 := (recoveredStack7) xDistribution.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack7 := (recoveredStack7) elementType.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack8 := recoveredArg3.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack9 := false.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack5 := (recoveredStack5) createBaseType: (recoveredStack6) withImplementation: (recoveredStack7) originalImplementationIsNil: (recoveredStack8) transientMigration: (recoveredStack9).
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack7 := recoveredArg1.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack7 := (recoveredStack7) yType.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack8 := recoveredArg2.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack8 := (recoveredStack8) yDistribution.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack8 := (recoveredStack8) elementType.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack9 := recoveredArg3.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack10 := false.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack6 := (recoveredStack6) createBaseType: (recoveredStack7) withImplementation: (recoveredStack8) originalImplementationIsNil: (recoveredStack9) transientMigration: (recoveredStack10).
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack1 := (recoveredStack1) create2DCharTable: (recoveredStack2) fixed: (recoveredStack3) valueType: (recoveredStack4) xDistributionType: (recoveredStack5) yDistributionType: (recoveredStack6).
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGDistribution.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 316] ifFalse: [recoveredPC := 340].
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack3 := (recoveredStack3) basicType.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack6 := false.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack2 := (recoveredStack2) createBaseType: (recoveredStack3) withImplementation: (recoveredStack4) originalImplementationIsNil: (recoveredStack5) transientMigration: (recoveredStack6).
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack3 := (recoveredStack3) maxSize.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDistributionType: (recoveredStack2) maxSize: (recoveredStack3).
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock340Stack0 recoveredBlock340Stack1 recoveredBlock340Stack2 recoveredBlock340Stack3 recoveredBlock340PC recoveredBlock340Step recoveredBlock340Done recoveredBlock340Result |
    recoveredBlock340Stack0 := self.
    recoveredBlock340PC := 346.
    recoveredBlock340Done := false.
    [recoveredBlock340Done not] whileTrue: [
        recoveredBlock340Step := recoveredBlock340PC.
        recoveredBlock340Step = 346 ifTrue: [
            recoveredBlock340Stack1 := true.
            recoveredBlock340PC := 347.
        ].
        recoveredBlock340Step = 347 ifTrue: [
            recoveredBlock340Stack2 := recoveredArg1.
            recoveredBlock340PC := 350.
        ].
        recoveredBlock340Step = 350 ifTrue: [
            recoveredBlock340Stack2 := (recoveredBlock340Stack2) isSGVector.
            recoveredBlock340PC := 352.
        ].
        recoveredBlock340Step = 352 ifTrue: [
            (recoveredBlock340Stack2) ifTrue: [recoveredBlock340PC := 362] ifFalse: [recoveredBlock340PC := 356].
        ].
        recoveredBlock340Step = 356 ifTrue: [
            recoveredBlock340PC := 357.
        ].
        recoveredBlock340Step = 357 ifTrue: [
            recoveredBlock340Stack1 := recoveredArg1.
            recoveredBlock340PC := 360.
        ].
        recoveredBlock340Step = 360 ifTrue: [
            recoveredBlock340Stack1 := (recoveredBlock340Stack1) isSGMatrix.
            recoveredBlock340PC := 362.
        ].
        recoveredBlock340Step = 362 ifTrue: [
            recoveredBlock340Result := recoveredBlock340Stack1.
            recoveredBlock340Done := true.
        ].
    ].
    recoveredBlock340Result
].
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock363Value0 recoveredBlock363Value1 recoveredBlock363Value2 recoveredBlock363Value3 |
    recoveredBlock363Value0 := recoveredArg1.
    recoveredBlock363Value1 := (recoveredBlock363Value0) class.
    recoveredBlock363Value2 := (recoveredBlock363Value1) name.
    recoveredBlock363Value3 := ('Unknown complex type: ') , (recoveredBlock363Value2).
    recoveredBlock363Value3
].
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSGVector.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 392] ifFalse: [recoveredPC := 422].
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack2 := (recoveredStack2) basicType.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack5 := true.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack1 := (recoveredStack1) createBaseType: (recoveredStack2) withImplementation: (recoveredStack3) originalImplementationIsNil: (recoveredStack4) transientMigration: (recoveredStack5).
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxSize.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack3 := (recoveredStack3) xSizeCheckValue.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack0 := (recoveredStack0) createArray: (recoveredStack1) maxSize: (recoveredStack2) variant: (recoveredStack3).
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSGMatrix.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 430] ifFalse: [recoveredPC := 473].
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack2 := (recoveredStack2) basicType.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack5 := true.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack1 := (recoveredStack1) createBaseType: (recoveredStack2) withImplementation: (recoveredStack3) originalImplementationIsNil: (recoveredStack4) transientMigration: (recoveredStack5).
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxSize.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack3 := (recoveredStack3) maxSize.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredStack3 := (recoveredStack3) y.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack4 := (recoveredStack4) xSizeCheckValue.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack5 := (recoveredStack5) ySizeCheckValue.
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack0 := (recoveredStack0) createMatrix: (recoveredStack1) maxSizeX: (recoveredStack2) maxSizeY: (recoveredStack3) variantX: (recoveredStack4) variantY: (recoveredStack5).
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 473 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206146a0; bytecode file offset 0xf11008"
!SGCgTypeFactory class methodsFor: 'recovered'!
createBaseType: recoveredArg1 withImplementation: recoveredArg2 integerVariant: recoveredArg3 originalImplementationIsNil: recoveredArg4 transientMigration: recoveredArg5
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGBoolean.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) getImplType.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) extraImplInfo.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) createBooleanType: (recoveredStack2) extraImplInfo: (recoveredStack3) originalImplementationIsNil: (recoveredStack4).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGReal.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 103].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 103] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) getImplType.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := (recoveredStack3) getPhysInterval.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack4 := (recoveredStack4) formula.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack6 := (recoveredStack6) unit.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack7 := recoveredArg2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack7 := (recoveredStack7) formula.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack7 := (recoveredStack7) unit.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack5 := (recoveredStack5) lookupPhysicalUnit: (recoveredStack6) formula: (recoveredStack7).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack6 := recoveredArg2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack6 := (recoveredStack6) getImplInterval.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack7 := recoveredArg2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack7 := (recoveredStack7) extraImplInfo.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack8 := recoveredArg2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack8 := (recoveredStack8) getPhysQuantization.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack9 := recoveredArg4.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack10 := recoveredArg2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack10 := (recoveredStack10) referencedImplTypeName.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack11 := recoveredArg1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack11 := (recoveredStack11) isSGDeltaT.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) createContType: (recoveredStack2) physInterval: (recoveredStack3) formula: (recoveredStack4) physicalUnit: (recoveredStack5) implInterval: (recoveredStack6) extraImplInfo: (recoveredStack7) physQuantization: (recoveredStack8) originalImplementationIsNil: (recoveredStack9) referencedImplTypeName: (recoveredStack10) isDeltaT: (recoveredStack11).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGUnsignedInteger.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 199].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 177].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := (recoveredStack2) getImplType.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := (recoveredStack3) getPhysInterval.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack4 := (recoveredStack4) formula.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack6 := (recoveredStack6) unit.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack7 := recoveredArg2.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack7 := (recoveredStack7) formula.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack7 := (recoveredStack7) unit.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack5 := (recoveredStack5) lookupPhysicalUnit: (recoveredStack6) formula: (recoveredStack7).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack6 := recoveredArg2.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack6 := (recoveredStack6) getImplInterval.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack7 := recoveredArg2.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack7 := (recoveredStack7) extraImplInfo.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack8 := recoveredArg2.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack8 := (recoveredStack8) getPhysQuantization.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack9 := recoveredArg4.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack10 := recoveredArg2.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack10 := (recoveredStack10) referencedImplTypeName.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack11 := recoveredArg5.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := (recoveredStack1) createUDiscType: (recoveredStack2) physInterval: (recoveredStack3) formula: (recoveredStack4) physicalUnit: (recoveredStack5) implInterval: (recoveredStack6) extraImplInfo: (recoveredStack7) physQuantization: (recoveredStack8) originalImplementationIsNil: (recoveredStack9) referencedImplTypeName: (recoveredStack10) transientMigration: (recoveredStack11).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack3 := (recoveredStack3) unit.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack4 := (recoveredStack4) formula.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack4 := (recoveredStack4) unit.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := (recoveredStack2) lookupPhysicalUnit: (recoveredStack3) formula: (recoveredStack4).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPhysUDiscType: (recoveredStack2) originalImplementationIsNil: (recoveredStack3).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGSignedInteger.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 208] ifFalse: [recoveredPC := 295].
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 214] ifFalse: [recoveredPC := 273].
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack2 := (recoveredStack2) getImplType.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack3 := (recoveredStack3) getPhysInterval.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack4 := (recoveredStack4) formula.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack6 := (recoveredStack6) unit.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack7 := recoveredArg2.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack7 := (recoveredStack7) formula.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack7 := (recoveredStack7) unit.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack5 := (recoveredStack5) lookupPhysicalUnit: (recoveredStack6) formula: (recoveredStack7).
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack6 := recoveredArg2.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack6 := (recoveredStack6) getImplInterval.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack7 := recoveredArg2.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack7 := (recoveredStack7) extraImplInfo.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack8 := recoveredArg2.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack8 := (recoveredStack8) getPhysQuantization.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack9 := recoveredArg4.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack10 := recoveredArg2.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack10 := (recoveredStack10) referencedImplTypeName.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack11 := recoveredArg5.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSDiscType: (recoveredStack2) physInterval: (recoveredStack3) formula: (recoveredStack4) physicalUnit: (recoveredStack5) implInterval: (recoveredStack6) extraImplInfo: (recoveredStack7) physQuantization: (recoveredStack8) originalImplementationIsNil: (recoveredStack9) referencedImplTypeName: (recoveredStack10) transientMigration: (recoveredStack11).
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack3 := (recoveredStack3) unit.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack4 := (recoveredStack4) formula.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack4 := (recoveredStack4) unit.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack2 := (recoveredStack2) lookupPhysicalUnit: (recoveredStack3) formula: (recoveredStack4).
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPhysSDiscType: (recoveredStack2) originalImplementationIsNil: (recoveredStack3).
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGLimitedInteger.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 304] ifFalse: [recoveredPC := 343].
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack2 := (recoveredStack2) getImplType.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack3 := (recoveredStack3) interval.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack4 := (recoveredStack4) formula.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack6 := (recoveredStack6) unit.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack7 := recoveredArg2.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack7 := (recoveredStack7) formula.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack7 := (recoveredStack7) unit.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack5 := (recoveredStack5) lookupPhysicalUnit: (recoveredStack6) formula: (recoveredStack7).
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack6 := recoveredArg2.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack6 := (recoveredStack6) extraImplInfo.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack7 := false.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLimitedDiscreteType: (recoveredStack2) interval: (recoveredStack3) formula: (recoveredStack4) physicalUnit: (recoveredStack5) originalExtraImplInfo: (recoveredStack6) transientMigration: (recoveredStack7).
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGWrapAroundInteger.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 352] ifFalse: [recoveredPC := 392].
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack2 := (recoveredStack2) implementationType.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack3 := (recoveredStack3) interval.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack4 := (recoveredStack4) formula.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack6 := (recoveredStack6) unit.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack7 := recoveredArg2.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack7 := (recoveredStack7) formula.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack7 := (recoveredStack7) unit.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack5 := (recoveredStack5) lookupPhysicalUnit: (recoveredStack6) formula: (recoveredStack7).
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack6 := recoveredArg2.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack6 := (recoveredStack6) extraImplInfo.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack7 := false.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack1 := (recoveredStack1) createTwosComplementType: (recoveredStack2) interval: (recoveredStack3) formula: (recoveredStack4) physicalUnit: (recoveredStack5) originalExtraImplInfo: (recoveredStack6) transientMigration: (recoveredStack7).
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRTEStandardReturnType.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 400] ifFalse: [recoveredPC := 404].
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack1 := (recoveredStack1) createARStandardReturnType.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGEnumeration.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 412] ifFalse: [recoveredPC := 418].
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack1 := (recoveredStack1) asMdlClassType.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGResource.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 426] ifFalse: [recoveredPC := 439].
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack1 := SGCgResourceType.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack3 := (recoveredStack3) formula.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            (recoveredStack2) formula: (recoveredStack3).
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGANSICType.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 448] ifFalse: [recoveredPC := 458].
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack1 := (recoveredStack1) createAnsiCType: (recoveredStack2) originalImplementationIsNil: (recoveredStack3).
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGVoid.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 466] ifFalse: [recoveredPC := 470].
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack1 := (recoveredStack1) createVoidType.
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack1 := [
    false
].
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock478Value0 recoveredBlock478Value1 recoveredBlock478Value2 recoveredBlock478Value3 |
    recoveredBlock478Value0 := recoveredArg1.
    recoveredBlock478Value1 := (recoveredBlock478Value0) class.
    recoveredBlock478Value2 := (recoveredBlock478Value1) name.
    recoveredBlock478Value3 := ('Unknown model type: ') , (recoveredBlock478Value2).
    recoveredBlock478Value3
].
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack0 := SGCgBaseClassType.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2061d380; bytecode file offset 0xf19cf0"
!SGCgTypeFactory class methodsFor: 'recovered'!
createContType: recoveredArg1 physInterval: recoveredArg2 formula: recoveredArg3 physicalUnit: recoveredArg4 implInterval: recoveredArg5 extraImplInfo: recoveredArg6 physQuantization: recoveredArg7 originalImplementationIsNil: recoveredArg8 referencedImplTypeName: recoveredArg9 isDeltaT: recoveredArg10
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIntegerVariant.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 316].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredArg5.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBFloat.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) genContext.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) integerArithmeticOptions.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) generateFloatLimiters.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := RBInterval.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDefault.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := RBInterval.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDefault.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := RBInterval.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDefault.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBFloat32.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := SGCgContReal32Type.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredPC := 250.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBFloat.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := SGCgContReal64Type.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredPC := 250.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLinearAndInvertible.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredArg6.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRescaled.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := SGCgContRescalableLinearFixedPointType.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredPC := 119.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := SGCgContLinearFixedPointType.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredPC := 250.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) offset.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := RBFormulaMoebius.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) isKindOf: (recoveredStack1).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 148] ifFalse: [recoveredPC := 178].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 154] ifFalse: [recoveredPC := 174].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) c1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 166] ifFalse: [recoveredPC := 174].
        ].
        recoveredStep = 166 ifTrue: [
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := (recoveredStack0) d0.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredPC := 228.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := RBFormula5Parm.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := (recoveredStack0) isKindOf: (recoveredStack1).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 226].
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 194] ifFalse: [recoveredPC := 222].
        ].
        recoveredStep = 194 ifTrue: [
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := (recoveredStack1) parameterArray.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 210] ifFalse: [recoveredPC := 222].
        ].
        recoveredStep = 210 ifTrue: [
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := (recoveredStack0) parameterArray.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := 4.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredPC := 228.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 232] ifFalse: [recoveredPC := 242].
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := SGCgContReciprocalType.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredPC := 248.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := SGCgContMoebiousFixedPointType.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            (recoveredStack1) setImplType: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack1) formula: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            (recoveredStack1) physicalUnit: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            (recoveredStack1) setImplInterval: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            (recoveredStack1) setPhysInterval: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack2 := recoveredArg6.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            (recoveredStack1) extraImplInfo: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack2 := recoveredArg7.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            (recoveredStack1) setPhysQuantization: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack2 := recoveredArg9.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            (recoveredStack1) referencedImplTypeName: (recoveredStack2).
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack1 := recoveredArg8.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            (recoveredStack0) originalImplementationIsNil: (recoveredStack1).
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgContRealType.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 302] ifFalse: [recoveredPC := 307].
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            (recoveredStack0) physModelInterval: (recoveredStack1).
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredPC := 517.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack0 := (recoveredStack0) genContext.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack0 := (recoveredStack0) generationSettings.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack0 := (recoveredStack0) isContImplOverrideEnabled.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 326] ifFalse: [recoveredPC := 420].
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack0 := (recoveredStack0) contImplTypeOverrideSingle.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 334] ifFalse: [recoveredPC := 420].
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack0 := SGCgContReal32Type.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack2 := RBFloat32.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack2 := (recoveredStack2) createDefault.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            (recoveredStack1) setImplType: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack2 := RBFormulaId.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack2 := (recoveredStack2) createIdent.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            (recoveredStack1) formula: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            (recoveredStack1) physicalUnit: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack2 := RBInterval.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack2 := (recoveredStack2) createDefault.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            (recoveredStack1) setImplInterval: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack2 := (recoveredStack2) isRBQuantFloat.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 372] ifFalse: [recoveredPC := 378].
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredPC := 382.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack2 := RBInterval.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack2 := (recoveredStack2) createDefault.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            (recoveredStack1) setPhysInterval: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack2 := SGExtraImplInfo.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack2 := (recoveredStack2) createDefault.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            (recoveredStack1) extraImplInfo: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack2 := (recoveredStack2) isRBQuantFloat.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 400] ifFalse: [recoveredPC := 406].
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack2 := recoveredArg7.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredPC := 408.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            (recoveredStack1) setPhysQuantization: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack2 := recoveredArg8.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            (recoveredStack1) originalImplementationIsNil: (recoveredStack2).
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredPC := 517.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack0 := SGCgContReal64Type.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack2 := (recoveredStack2) isRBQuantFloat.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 432] ifFalse: [recoveredPC := 438].
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredPC := 442.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack2 := RBFloat.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack2 := (recoveredStack2) createDefault.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            (recoveredStack1) setImplType: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack2 := RBFormulaId.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack2 := (recoveredStack2) createIdent.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            (recoveredStack1) formula: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            (recoveredStack1) physicalUnit: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredStack2 := RBInterval.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack2 := (recoveredStack2) createDefault.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            (recoveredStack1) setImplInterval: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack2 := (recoveredStack2) isRBQuantFloat.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 472] ifFalse: [recoveredPC := 478].
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredPC := 482.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack2 := RBInterval.
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack2 := (recoveredStack2) createDefault.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            (recoveredStack1) setPhysInterval: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack2 := SGExtraImplInfo.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack2 := (recoveredStack2) createDefault.
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            (recoveredStack1) extraImplInfo: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredStack2 := (recoveredStack2) isRBQuantFloat.
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 500] ifFalse: [recoveredPC := 506].
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack2 := recoveredArg7.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredPC := 508.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            (recoveredStack1) setPhysQuantization: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack2 := recoveredArg8.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            (recoveredStack1) originalImplementationIsNil: (recoveredStack2).
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredStack1 := recoveredArg10.
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            (recoveredStack0) setDeltaT: (recoveredStack1).
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

