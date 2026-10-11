"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002af54; bytecode file offset 0x934580"
!SGIntegerStrategy methodsFor: 'recovered'!
shiftForLiterals
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fixPointCodeOptions.
    recoveredValue1 := (recoveredValue0) shiftForLiterals.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002d864; bytecode file offset 0x934580"
!SGIntegerStrategy methodsFor: 'recovered'!
commentElementDeclSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) experimentCodeOptions.
    recoveredValue1 := (recoveredValue0) commentElementDeclSource.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032144; bytecode file offset 0x934580"
!SGIntegerStrategy methodsFor: 'recovered'!
protectVecIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) experimentCodeOptions.
    recoveredValue1 := (recoveredValue0) protectVecIndex.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200321e4; bytecode file offset 0x934580"
!SGIntegerStrategy methodsFor: 'recovered'!
fixPointCodeOptions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeGenerationOptions.
    recoveredValue1 := (recoveredValue0) iaSettings.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032da4; bytecode file offset 0x934580"
!SGIntegerStrategy methodsFor: 'recovered'!
tempVarsAlways32Bit
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fixPointCodeOptions.
    recoveredValue1 := (recoveredValue0) tempVarsAlways32Bit.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033bd4; bytecode file offset 0x934580"
!SGIntegerStrategy methodsFor: 'recovered'!
shiftForDiv
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fixPointCodeOptions.
    recoveredValue1 := (recoveredValue0) shiftForDiv.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035824; bytecode file offset 0x934580"
!SGIntegerStrategy methodsFor: 'recovered'!
resultByZeroIsMinMax
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fixPointCodeOptions.
    recoveredValue1 := (recoveredValue0) resultOnDivisionByZeroIsMinMaxInteger.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035c64; bytecode file offset 0x934580"
!SGIntegerStrategy methodsFor: 'recovered'!
isRedundantDataFeatureActive
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeGenerationOptions.
    recoveredValue1 := (recoveredValue0) redundantDataStorage.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200362e4; bytecode file offset 0x934580"
!SGIntegerStrategy methodsFor: 'recovered'!
shiftForMul
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fixPointCodeOptions.
    recoveredValue1 := (recoveredValue0) shiftForMul.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036f04; bytecode file offset 0x934580"
!SGIntegerStrategy methodsFor: 'recovered'!
generateLimiters
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fixPointCodeOptions.
    recoveredValue1 := (recoveredValue0) generateLimiters.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037dfc; bytecode file offset 0x934768"
!SGIntegerStrategy methodsFor: 'recovered'!
generateRound
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fixPointCodeOptions.
    recoveredValue1 := (recoveredValue0) generateRound.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003cdc8; bytecode file offset 0x93bf94"
!SGIntegerStrategy methodsFor: 'recovered'!
currentIaBuilder
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIaBuilder.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20050f50; bytecode file offset 0x94d84c"
!SGIntegerStrategy methodsFor: 'recovered'!
restrictedServiceUsage
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) fixPointCodeOptions.
    recoveredValue1 := (recoveredValue0) restrictedServiceUsage.
    recoveredValue2 := (recoveredValue1) not.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200522a8; bytecode file offset 0x94f0e0"
!SGIntegerStrategy methodsFor: 'recovered'!
representableBitsOptionValue
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) mdSettings.
    recoveredValue1 := (recoveredValue0) iaSettings.
    recoveredValue2 := (recoveredValue1) representableBits.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20056460; bytecode file offset 0x952d3c"
!SGIntegerStrategy methodsFor: 'recovered'!
declGeneratesBody: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) isMdlNoGenerateBody.
    recoveredValue2 := (recoveredValue1) not.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20056c30; bytecode file offset 0x9536dc"
!SGIntegerStrategy methodsFor: 'recovered'!
choiceExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) exprChild.
    recoveredValue2 := (self) visitMdlNode: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f34c; bytecode file offset 0x95c4f4"
!SGIntegerStrategy methodsFor: 'recovered'!
defaultType
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) largestSignedInterval.
    recoveredValue1 := (recoveredValue0) integerType.
    recoveredValue2 := (self) defaultImplementationImplType: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200603b4; bytecode file offset 0x95ccc0"
!SGIntegerStrategy methodsFor: 'recovered'!
defaultImplementation
    | recoveredValue0 |
    (self) etasDevHalt.
    recoveredValue0 := (self) defaultType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20076ba4; bytecode file offset 0x9757c8"
!SGIntegerStrategy methodsFor: 'recovered'!
isIntegerVariant
    ^true
! !

"ASDBase.ic method 0x2007ae2c; bytecode file offset 0x97c330"
!SGIntegerStrategy methodsFor: 'recovered'!
isPhysicalVariant
    ^false
! !

"ASDBase.ic method 0x200843e4; bytecode file offset 0x981ca4"
!SGIntegerStrategy methodsFor: 'recovered'!
propagateInfoToMuxChildren: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) propagateInfoToBinaryChildren: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20095548; bytecode file offset 0x991fb4"
!SGIntegerStrategy methodsFor: 'recovered'!
checkAdaptIntervalAttributeSettings: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) usesArithOpServices.
    (recoveredValue0) reportControllerOverflowForIntervalAttributes: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a8240; bytecode file offset 0x9a4b04"
!SGIntegerStrategy methodsFor: 'recovered'!
temporarySetTo32RepresentableBits: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) temporarySetToRepresentableBits: (32) whileExecuting: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200bb9fc; bytecode file offset 0x9b82b8"
!SGIntegerStrategy methodsFor: 'recovered'!
reportControllerOverflow: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) checkAdaptIntervalAttributeSettings: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) reportControllerOverflow.
    ^self
! !

"ASDBase.ic method 0x200da2d0; bytecode file offset 0x9d6bdc"
!SGIntegerStrategy methodsFor: 'recovered'!
unaryLogicExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) currentIaBuilder.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := super unaryLogicExpr: (recoveredValue1).
    recoveredValue3 := (recoveredValue0) wrappedIleExpr: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200da2e8; bytecode file offset 0x9d6bdc"
!SGIntegerStrategy methodsFor: 'recovered'!
ansiCExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) currentIaBuilder.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := super ansiCExpr: (recoveredValue1).
    recoveredValue3 := (recoveredValue0) wrappedIleExpr: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200da300; bytecode file offset 0x9d6bdc"
!SGIntegerStrategy methodsFor: 'recovered'!
mdlReferencedExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) currentIaBuilder.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := super mdlReferencedExpr: (recoveredValue1).
    recoveredValue3 := (recoveredValue0) wrappedIleExpr: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200da318; bytecode file offset 0x9d6bdc"
!SGIntegerStrategy methodsFor: 'recovered'!
attribute: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) currentIaBuilder.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := super attribute: (recoveredValue1).
    recoveredValue3 := (recoveredValue0) wrappedIleExpr: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db70c; bytecode file offset 0x9d7fd0"
!SGIntegerStrategy methodsFor: 'recovered'!
defaultImplementationMin: recoveredArg1 max: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := RBInterval.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) left: (recoveredValue1) right: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) integerType.
    recoveredValue5 := (self) defaultImplementationImplType: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200de818; bytecode file offset 0x9db0d8"
!SGIntegerStrategy methodsFor: 'recovered'!
createAssignExpr: recoveredArg1 leftHandSide: recoveredArg2 expr: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) attributes.
    recoveredValue5 := (recoveredValue0) assignExpr: (recoveredValue1) to: (recoveredValue2) attributes: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200e23c4; bytecode file offset 0x9dec90"
!SGIntegerStrategy methodsFor: 'recovered'!
allowLimitServiceForAssignmentLimitation
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) restrictedServiceUsage.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) usesArithOpServices.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200e80a0; bytecode file offset 0x9e4988"
!SGIntegerStrategy methodsFor: 'recovered'!
commaExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super commaExpr: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) wrapIleExpr: (recoveredValue1) forMdExpr: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e80b4; bytecode file offset 0x9e4988"
!SGIntegerStrategy methodsFor: 'recovered'!
methodCall: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super methodCall: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) wrapIleExpr: (recoveredValue1) forMdExpr: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e9fc0; bytecode file offset 0x9e6884"
!SGIntegerStrategy methodsFor: 'recovered'!
compoundArithmethicExpression: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) rootExpr.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) attributes.
    (recoveredValue1) attributes: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) rootExpr.
    recoveredValue6 := (self) visitMdlNode: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x200f26a0; bytecode file offset 0x9eef74"
!SGIntegerStrategy methodsFor: 'recovered'!
useNewDiscreteTypes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isIntegerVariant.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) fixPointCodeOptions.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) useNewIntegerTypes.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200fa81c; bytecode file offset 0x9f70f8"
!SGIntegerStrategy methodsFor: 'recovered'!
updateDocumentationOfOptions
    | recoveredValue0 |
    super updateDocumentationOfOptions.
    recoveredValue0 := (self) fixPointCodeOptions.
    (self) updateFixPointOptions: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200fc8b8; bytecode file offset 0x9f917c"
!SGIntegerStrategy methodsFor: 'recovered'!
representableBits: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyRepresentableBits.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    (self) updateDerivedSettings.
    ^self
! !

"ASDBase.ic method 0x200ff15c; bytecode file offset 0x9fba40"
!SGIntegerStrategy methodsFor: 'recovered'!
binaryLogicExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) currentIaBuilder.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := super binaryLogicExpr: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) ileExpr.
    recoveredValue4 := (recoveredValue0) wrappedIleExpr: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200ff178; bytecode file offset 0x9fba40"
!SGIntegerStrategy methodsFor: 'recovered'!
mdlVariableReferenceCast: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) currentIaBuilder.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := super mdlVariableReferenceCast: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) ileExpr.
    recoveredValue4 := (recoveredValue0) wrappedIleExpr: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2010da48; bytecode file offset 0xa0a310"
!SGIntegerStrategy methodsFor: 'recovered'!
defaultImplementationModelType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := SGCgTypeFactory.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) modelType.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) createImplementation.
    recoveredValue6 := (recoveredValue1) createType: (recoveredValue3) implementation: (recoveredValue5).
    recoveredValue7 := (recoveredValue0) createWithImplFrom: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2010da74; bytecode file offset 0xa0a33c"
!SGIntegerStrategy methodsFor: 'recovered'!
semanticAnalysis: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := SGMdSemAnaInteger.
    recoveredValue2 := (recoveredValue1) create.
    (recoveredValue0) mdlAcceptNodeVisitor: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := super semanticAnalysis: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20120220; bytecode file offset 0xa1cae4"
!SGIntegerStrategy methodsFor: 'recovered'!
isPhysIntervalSupported: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isCgSupportsPhysInterval.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) genContext.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) integerArithmeticOptions.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) generateFloatLimiters.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012597c; bytecode file offset 0xa22244"
!SGIntegerStrategy methodsFor: 'recovered'!
defaultImplementationImplType: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := RBArithmeticElement.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createForType: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) formula.
    (recoveredValue4) name: ('Identity').
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20133754; bytecode file offset 0xa30024"
!SGIntegerStrategy methodsFor: 'recovered'!
mdlComplementService: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) currentIaBuilder.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) expr.
    recoveredValue3 := (self) visitMdlNode: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) ileExpr.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) mdlClassArgument.
    recoveredValue7 := (recoveredValue4) asIleComplementServiceExpr: (recoveredValue6).
    recoveredValue8 := (recoveredValue0) wrappedIleExpr: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201388d0; bytecode file offset 0xa35194"
!SGIntegerStrategy methodsFor: 'recovered'!
visitInitValueAndCastMdlNode: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super visitInitValueAndCastMdlNode: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) type.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue3) checkImplementationInitValue: (recoveredValue4) forNode: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20156428; bytecode file offset 0xa52d10"
!SGIntegerStrategy methodsFor: 'recovered'!
visitInitValueMdlNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := super visitInitValueMdlNode: (recoveredBlock4Value0).
    recoveredBlock4Value1
].
    recoveredValue1 := (self) prepareInitValueGenerationDo: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20158ec8; bytecode file offset 0xa55794"
!SGIntegerStrategy methodsFor: 'recovered'!
needsIntegerCode
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) needsComponentIntegerCode.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) needsMethodIntegerCode.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20167928; bytecode file offset 0xa641f8"
!SGIntegerStrategy methodsFor: 'recovered'!
createIaLValueExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) currentIaBuilder.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) lValue: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) visitMdlNode: (recoveredValue4).
    recoveredValue6 := (recoveredValue5) ileExpr.
    (recoveredValue3) ileExpr: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) genIleType.
    (recoveredValue7) type: (recoveredValue9).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2017fb8c; bytecode file offset 0xa7c448"
!SGIntegerStrategy methodsFor: 'recovered'!
allowDouble
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := temporaryDisallowDouble.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            temporaryDisallowDouble := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := temporaryDisallowDouble.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) fixPointCodeOptions.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) allowDouble.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20181cc0; bytecode file offset 0xa7e588"
!SGIntegerStrategy methodsFor: 'recovered'!
ileBuilderClass
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) needsIntegerCode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) needsIntegerType.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := super ileBuilderClass.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := SGIleBuilderImplAware.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20185550; bytecode file offset 0xa81e10"
!SGIntegerStrategy methodsFor: 'recovered'!
switchStmnt: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) needsIntegerCode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := super switchStmnt: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := super switchStmnt: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a7974; bytecode file offset 0xaa4270"
!SGIntegerStrategy methodsFor: 'recovered'!
literal: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := super literal: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    recoveredValue2 := (self) scalarConstantFromMdlNode: (recoveredValue0) noIntegerDo: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201d1288; bytecode file offset 0xacdb44"
!SGIntegerStrategy methodsFor: 'recovered'!
representableDoubleBits
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) representableBits.
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
            recoveredStack0 := (recoveredStack0) allowDouble.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 32.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201db9c8; bytecode file offset 0xad829c"
!SGIntegerStrategy methodsFor: 'recovered'!
generateIleServiceRoutine: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := SGCgTypeFactory.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) className.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) attributes.
    recoveredValue5 := (recoveredValue0) createClassType: (recoveredValue2) attributes: (recoveredValue4).
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := (recoveredValue7) implName.
    (recoveredValue6) implName: (recoveredValue8).
    recoveredValue9 := recoveredValue5.
    recoveredValue10 := recoveredArg2.
    recoveredValue11 := (recoveredValue10) implName.
    (recoveredValue9) implId: (recoveredValue11).
    recoveredValue12 := recoveredValue5.
    (recoveredValue12) genIleNameForServiceRoutine.
    ^recoveredValue5
! !

"ASDBase.ic method 0x202024ec; bytecode file offset 0xafedc4"
!SGIntegerStrategy methodsFor: 'recovered'!
propagateInfoToUnaryChild: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) child.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) optData.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) optData.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) floatType.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) floatType: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'Rl'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'Call_63893'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrFloatGoal.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) child.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) setFloatGoal.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021e004; bytecode file offset 0xb1a8cc"
!SGIntegerStrategy methodsFor: 'recovered'!
wrapIleExpr: recoveredArg1 forMdExpr: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 recoveredBlock10Value5 |
    recoveredBlock10Value0 := (self) currentIaBuilder.
    recoveredBlock10Value1 := recoveredArg2.
    recoveredBlock10Value2 := (recoveredBlock10Value1) mdlClass.
    recoveredBlock10Value3 := (recoveredBlock10Value0) exprFromImplementation: (recoveredBlock10Value2).
    recoveredBlock10Value4 := recoveredBlock10Value3.
    recoveredBlock10Value5 := recoveredArg1.
    (recoveredBlock10Value4) ileExpr: (recoveredBlock10Value5).
    recoveredBlock10Value3
].
    recoveredValue3 := (self) modelTypedExpr: (recoveredValue0) ileExpr: (recoveredValue1) genIaExpr: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20238344; bytecode file offset 0xb34c10"
!SGIntegerStrategy methodsFor: 'recovered'!
blockVarDecl: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) needsIntegerCode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := super blockVarDecl: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlArray.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) initValue: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            super blockVarDecl: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024cf38; bytecode file offset 0xb497fc"
!SGIntegerStrategy methodsFor: 'recovered'!
addImplInfoComment: recoveredArg1 source: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    ^self
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) commentFormula.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack3 := ''.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) basicAddImplInfoComment: (recoveredStack1) source: (recoveredStack2) errLabel: (recoveredStack3) decl: (recoveredStack4).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2025715c; bytecode file offset 0xb53a2c"
!SGIntegerStrategy methodsFor: 'recovered'!
indexedExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := super indexedExpr: (recoveredValue1).
    recoveredValue3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Local1 recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 |
    recoveredBlock15Value0 := (self) currentIaBuilder.
    recoveredBlock15Value1 := recoveredArg1.
    recoveredBlock15Value2 := (recoveredBlock15Value1) mdlClass.
    recoveredBlock15Value3 := (recoveredBlock15Value0) exprFromImplementation: (recoveredBlock15Value2).
    recoveredBlock15Value4 := recoveredBlock15Value3.
    recoveredBlock15Value5 := recoveredBlock15Arg1.
    (recoveredBlock15Value4) ileExpr: (recoveredBlock15Value5).
    recoveredBlock15Value3
].
    recoveredValue4 := (self) modelTypedExpr: (recoveredValue0) ileExpr: (recoveredValue2) genIaExpr: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20285a9c; bytecode file offset 0xb82370"
!SGIntegerStrategy methodsFor: 'recovered'!
scalarConstantFromMdlNode: recoveredArg1 noIntegerDo: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) needsIntegerCode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentIaBuilder.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) wrappedIleExpr: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isBoolean.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentIaBuilder.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) boolConstant: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentIaBuilder.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) floatConstantFromMdlNode: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileExpr: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2029cfcc; bytecode file offset 0xb9989c"
!SGIntegerStrategy methodsFor: 'recovered'!
prepareExpansion: recoveredArg1 mdMethod: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := (self) ileBuilder.
    recoveredValue2 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 |
    recoveredBlock11Value0 := SGIlLimitAssignmentTransformation.
    recoveredBlock11Value1 := (recoveredBlock11Value0) create.
    recoveredBlock11Value2 := recoveredLocal1.
    recoveredBlock11Value3 := (recoveredBlock11Value1) visitNode: (recoveredBlock11Value2).
    recoveredBlock11Value4 := recoveredBlock11Value3.
    recoveredLocal1 := recoveredBlock11Value4.
    recoveredBlock11Value3
].
    (recoveredValue1) enableFractionsDo: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := super prepareExpansion: (recoveredValue3) mdMethod: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x202b7bf0; bytecode file offset 0xbb44d0"
!SGIntegerStrategy methodsFor: 'recovered'!
prepareArgument: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isMdlDirectionOut.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) asCgDereferencedType.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) needsIntegerCode.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlNeedsImplAssign.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentIaBuilder.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPhonyLValue: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightChild.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) varDecl.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) createIaExprPropagatedImpl: (recoveredStack2) expr: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d3034; bytecode file offset 0xbcf910"
!SGIntegerStrategy methodsFor: 'recovered'!
caseStmnt: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) needsIntegerCode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := super caseStmnt: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) switchStmnt.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) iaExprChild.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileExpr.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstant.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := super caseStmnt: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) literal.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) visitMdlNode: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileExpr.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) createIleCase: (recoveredStack1) expr: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e3864; bytecode file offset 0xbe0138"
!SGIntegerStrategy methodsFor: 'recovered'!
fieldAccess: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := super fieldAccess: (recoveredValue1).
    recoveredValue3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 recoveredBlock15Value6 recoveredBlock15Value7 recoveredBlock15Value8 |
    recoveredBlock15Value0 := (self) currentIaBuilder.
    recoveredBlock15Value1 := recoveredArg1.
    recoveredBlock15Value2 := (recoveredBlock15Value0) createIaIdentifier: (recoveredBlock15Value1).
    recoveredBlock15Value3 := recoveredBlock15Value2.
    recoveredBlock15Value4 := recoveredArg1.
    recoveredBlock15Value5 := super fieldAccess: (recoveredBlock15Value4).
    (recoveredBlock15Value3) ileExpr: (recoveredBlock15Value5).
    recoveredBlock15Value6 := recoveredBlock15Value2.
    recoveredBlock15Value7 := recoveredArg1.
    recoveredBlock15Value8 := (recoveredBlock15Value7) genIleType.
    (recoveredBlock15Value6) type: (recoveredBlock15Value8).
    recoveredBlock15Value2
].
    recoveredValue4 := (self) modelTypedExpr: (recoveredValue0) ileExpr: (recoveredValue2) genIaExpr: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2030969c; bytecode file offset 0xc05f6c"
!SGIntegerStrategy methodsFor: 'recovered'!
handleArgumentIn: recoveredArg1 doBefore: recoveredArg2 doAfter: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitMdlNode: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgSDiscOrUDisc.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock21Value0 recoveredBlock21Value1 |
    recoveredBlock21Value0 := recoveredArg1.
    recoveredBlock21Value1 := (self) visitMdlNode: (recoveredBlock21Value0).
    recoveredBlock21Value1
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := [:block280ea0d8Arg1 | 
    | block280ea0d8Value0 block280ea0d8Value1 block280ea0d8Value2 |
    block280ea0d8Value0 := block280ea0d8Arg1.
    block280ea0d8Value1 := (block280ea0d8Value0) ileExpr.
    block280ea0d8Value2 := (block280ea0d8Value1) expr.
    block280ea0d8Value2
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) checkForDiscreteUnexpectedBehaviour: (recoveredStack1) result: (recoveredStack2) project: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20319a50; bytecode file offset 0xc1633c"
!SGIntegerStrategy methodsFor: 'recovered'!
mdlDereferencedExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitMdlNode: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleDereferencedExpr.
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
            recoveredStack0 := (recoveredStack0) isIleArithmeticExpr.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentIaBuilder.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplInterval.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) type.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) formula.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) createUnaryArithOpExprWithResultInterval: (recoveredStack1) formula: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgRescalableType.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) isRescalable: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) appendIleExpr: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentIaBuilder.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) wrappedIleExpr: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20319e18; bytecode file offset 0xc166e8"
!SGIntegerStrategy methodsFor: 'recovered'!
prepareInitValueGenerationDo: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) needsComponentIntegerCode.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := (self) needsMethodIntegerCode.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 |
    recoveredBlock13Value0 := (self) needsComponentIntegerType.
    (self) needsComponentIntegerCode: (recoveredBlock13Value0).
    recoveredBlock13Value1 := (self) needsComponentIntegerType.
    (self) needsMethodIntegerCode: (recoveredBlock13Value1).
    recoveredBlock13Value2 := recoveredArg1.
    recoveredBlock13Value3 := (recoveredBlock13Value2) value.
    recoveredBlock13Value3
].
    recoveredValue3 := [
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 |
    recoveredBlock35Value0 := recoveredLocal2.
    (self) needsComponentIntegerCode: (recoveredBlock35Value0).
    recoveredBlock35Value1 := recoveredLocal1.
    recoveredBlock35Value2 := (self) needsMethodIntegerCode: (recoveredBlock35Value1).
    recoveredBlock35Value2
].
    recoveredValue4 := (recoveredValue2) ensure: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20362994; bytecode file offset 0xc5f274"
!SGIntegerStrategy methodsFor: 'recovered'!
propagateInfoToBinaryChildren: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isPureFloat.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftChild.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) optData.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) floatType: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) optData.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) floatType: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 'Rl'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 'Call_63678'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 'Rl'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 'Call_63893'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrFloatGoal.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftChild.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) setFloatGoal.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) setFloatGoal.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftChild.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) optData.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) floatType: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) optData.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) floatType: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2036c49c; bytecode file offset 0xc68d74"
!SGIntegerStrategy methodsFor: 'recovered'!
specialCall: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := super specialCall: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlStmnt.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) createIleStmnt: (recoveredStack1) expr: (recoveredStack2).
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Local1 recoveredBlock39Value0 recoveredBlock39Value1 recoveredBlock39Value2 recoveredBlock39Value3 recoveredBlock39Value4 recoveredBlock39Value5 recoveredBlock39Value6 recoveredBlock39Value7 |
    recoveredBlock39Value0 := recoveredArg1.
    recoveredBlock39Value1 := (recoveredBlock39Value0) currentIaBuilder.
    recoveredBlock39Value2 := recoveredArg1.
    recoveredBlock39Value3 := (recoveredBlock39Value2) genIleType.
    recoveredBlock39Value4 := (recoveredBlock39Value1) exprFromImplementation: (recoveredBlock39Value3).
    recoveredBlock39Local1 := recoveredBlock39Value4.
    recoveredBlock39Value5 := recoveredBlock39Local1.
    recoveredBlock39Value6 := recoveredBlock39Arg1.
    recoveredBlock39Value7 := (recoveredBlock39Value5) ileExpr: (recoveredBlock39Value6).
    recoveredBlock39Value7
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) modelTypedExpr: (recoveredStack1) ileExpr: (recoveredStack2) genIaExpr: (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20373c98; bytecode file offset 0xc70584"
!SGIntegerStrategy methodsFor: 'recovered'!
autosarRTECall: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := super autosarRTECall: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlVariableWriteAccess.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 63].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) argReceiver.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) varDecl.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlComplexClassType.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlBoolean.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlEnumType.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) source: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) addImplInfoComment: (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) wrapIleExpr: (recoveredStack1) forMdExpr: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20400394; bytecode file offset 0xcfcc80"
!SGIntegerStrategy methodsFor: 'recovered'!
assignInOutTempVar: recoveredArg1 to: recoveredArg2 ileExpr: recoveredArg3 type: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) needsIntegerCode.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := (recoveredStack4) ileExpr.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := super assignInOutTempVar: (recoveredStack2) to: (recoveredStack3) ileExpr: (recoveredStack4) type: (recoveredStack5).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock46Value0 recoveredBlock46Value1 recoveredBlock46Value2 recoveredBlock46Value3 recoveredBlock46Value4 recoveredBlock46Value5 recoveredBlock46Value6 recoveredBlock46Value7 recoveredBlock46Value8 recoveredBlock46Value9 recoveredBlock46Value10 recoveredBlock46Value11 |
    recoveredBlock46Value0 := recoveredArg2.
    (recoveredBlock46Value0) adaptAssignAttributes.
    recoveredBlock46Value1 := (self) currentIaBuilder.
    recoveredBlock46Value2 := recoveredArg4.
    recoveredBlock46Value3 := (recoveredBlock46Value1) exprFromImplementation: (recoveredBlock46Value2).
    recoveredLocal2 := recoveredBlock46Value3.
    recoveredBlock46Value4 := recoveredLocal2.
    recoveredBlock46Value5 := recoveredArg1.
    recoveredBlock46Value6 := (recoveredBlock46Value5) asIleCopy.
    (recoveredBlock46Value4) ileExpr: (recoveredBlock46Value6).
    recoveredBlock46Value7 := recoveredArg3.
    recoveredBlock46Value8 := recoveredLocal2.
    recoveredBlock46Value9 := recoveredArg2.
    recoveredBlock46Value10 := (recoveredBlock46Value7) assign: (recoveredBlock46Value8) mdlNode: (recoveredBlock46Value9).
    recoveredBlock46Value11 := (recoveredBlock46Value10) ileExpr.
    recoveredBlock46Value11
].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) withExpressionContextFrom: (recoveredStack1) lValueType: (recoveredStack2) source: (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20401738; bytecode file offset 0xcfe01c"
!SGIntegerStrategy methodsFor: 'recovered'!
betweenAndExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) needsIntegerCode.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentIaBuilder.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := super betweenAndExpr: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) wrappedIleExpr: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 recoveredBlock28Value3 recoveredBlock28Value4 recoveredBlock28Value5 recoveredBlock28Value6 recoveredBlock28Value7 recoveredBlock28Value8 recoveredBlock28Value9 recoveredBlock28Value10 recoveredBlock28Value11 recoveredBlock28Value12 recoveredBlock28Value13 recoveredBlock28Value14 recoveredBlock28Value15 |
    recoveredBlock28Value0 := recoveredArg1.
    recoveredBlock28Value1 := (recoveredBlock28Value0) exprChild.
    recoveredBlock28Value2 := (self) visitMdlNode: (recoveredBlock28Value1).
    recoveredLocal4 := recoveredBlock28Value2.
    recoveredBlock28Value3 := recoveredArg1.
    recoveredBlock28Value4 := (recoveredBlock28Value3) leftChild.
    recoveredBlock28Value5 := (self) visitMdlNode: (recoveredBlock28Value4).
    recoveredLocal3 := recoveredBlock28Value5.
    recoveredBlock28Value6 := recoveredArg1.
    recoveredBlock28Value7 := (recoveredBlock28Value6) rightChild.
    recoveredBlock28Value8 := (self) visitMdlNode: (recoveredBlock28Value7).
    recoveredLocal2 := recoveredBlock28Value8.
    recoveredBlock28Value9 := recoveredLocal4.
    recoveredBlock28Value10 := recoveredLocal3.
    recoveredBlock28Value11 := recoveredLocal2.
    recoveredBlock28Value12 := recoveredArg1.
    recoveredBlock28Value13 := (recoveredBlock28Value12) attributes.
    recoveredBlock28Value14 := (recoveredBlock28Value9) between: (recoveredBlock28Value10) and: (recoveredBlock28Value11) attributes: (recoveredBlock28Value13).
    recoveredLocal1 := recoveredBlock28Value14.
    recoveredBlock28Value15 := recoveredLocal1.
    ^recoveredBlock28Value15
].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) withExpressionContextFrom: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20408ad4; bytecode file offset 0xd053b8"
!SGIntegerStrategy methodsFor: 'recovered'!
modelTypedExpr: recoveredArg1 ileExpr: recoveredArg2 genIaExpr: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) needsIntegerCode.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentIaBuilder.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) wrappedIleExpr: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgContMoebiusFixedPointType.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentIaBuilder.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) wrappedIleExpr: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgContReciprocalType.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) asReciprocalExpr: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock64Value0 recoveredBlock64Value1 recoveredBlock64Value2 |
    recoveredBlock64Value0 := recoveredArg1.
    recoveredBlock64Value1 := (recoveredBlock64Value0) optData.
    recoveredBlock64Value2 := (recoveredBlock64Value1) notNil.
    recoveredBlock64Value2
].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := [
    'Integer code generation without semantic analysis'
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2040e160; bytecode file offset 0xd0aa5c"
!SGIntegerStrategy methodsFor: 'recovered'!
identifier: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Rl'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_64048'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) varDecl.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlConstantVarDecl: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) varDecl.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlEnumType.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) varDecl.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) initValue.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitInitValueMdlNode: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := 'Rl'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 'Call_66414'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := super identifier: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := [:recoveredBlock60Arg1 | 
    | recoveredBlock60Value0 recoveredBlock60Value1 recoveredBlock60Value2 recoveredBlock60Value3 recoveredBlock60Value4 recoveredBlock60Value5 recoveredBlock60Value6 recoveredBlock60Value7 recoveredBlock60Value8 |
    recoveredBlock60Value0 := (self) currentIaBuilder.
    recoveredBlock60Value1 := recoveredArg1.
    recoveredBlock60Value2 := (recoveredBlock60Value0) createIaIdentifier: (recoveredBlock60Value1).
    recoveredBlock60Value3 := recoveredBlock60Value2.
    recoveredBlock60Value4 := recoveredArg1.
    recoveredBlock60Value5 := super identifier: (recoveredBlock60Value4).
    (recoveredBlock60Value3) ileExpr: (recoveredBlock60Value5).
    recoveredBlock60Value6 := recoveredBlock60Value2.
    recoveredBlock60Value7 := recoveredArg1.
    recoveredBlock60Value8 := (recoveredBlock60Value7) genIleType.
    (recoveredBlock60Value6) type: (recoveredBlock60Value8).
    recoveredBlock60Value2
].
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) modelTypedExpr: (recoveredStack1) ileExpr: (recoveredStack2) genIaExpr: (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20416400; bytecode file offset 0xd12ce8"
!SGIntegerStrategy methodsFor: 'recovered'!
assignInOutTempVar: recoveredArg1 to: recoveredArg2 type: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) needsIntegerCode.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := super assignInOutTempVar: (recoveredStack2) to: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock41Value0 recoveredBlock41Value1 recoveredBlock41Value2 recoveredBlock41Value3 recoveredBlock41Value4 recoveredBlock41Value5 recoveredBlock41Value6 recoveredBlock41Value7 recoveredBlock41Value8 recoveredBlock41Value9 recoveredBlock41Value10 recoveredBlock41Value11 recoveredBlock41Value12 recoveredBlock41Value13 |
    recoveredBlock41Value0 := recoveredArg2.
    recoveredBlock41Value1 := recoveredArg2.
    recoveredBlock41Value2 := (recoveredBlock41Value1) mdlClass.
    (recoveredBlock41Value0) setExactGoalScaleFromImpl: (recoveredBlock41Value2).
    recoveredBlock41Value3 := recoveredArg2.
    recoveredBlock41Value4 := recoveredArg2.
    recoveredBlock41Value5 := (recoveredBlock41Value4) varDecl.
    recoveredBlock41Value6 := (recoveredBlock41Value5) attributes.
    (recoveredBlock41Value3) attributes: (recoveredBlock41Value6).
    recoveredBlock41Value7 := recoveredArg2.
    recoveredBlock41Value8 := (self) visitMdlNode: (recoveredBlock41Value7).
    recoveredLocal1 := recoveredBlock41Value8.
    recoveredBlock41Value9 := recoveredArg1.
    recoveredBlock41Value10 := recoveredArg2.
    recoveredBlock41Value11 := recoveredLocal1.
    recoveredBlock41Value12 := recoveredArg3.
    recoveredBlock41Value13 := (self) assignInOutTempVar: (recoveredBlock41Value9) to: (recoveredBlock41Value10) ileExpr: (recoveredBlock41Value11) type: (recoveredBlock41Value12).
    recoveredBlock41Value13
].
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) withExpressionContextFrom: (recoveredStack1) lValueType: (recoveredStack2) source: (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2041f9f4; bytecode file offset 0xd1c2e0"
!SGIntegerStrategy methodsFor: 'recovered'!
checkForDiscreteUnexpectedBehaviour: recoveredArg1 result: recoveredArg2 project: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) needsComponentIntegerCode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 99].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) needsComponentIntegerCode: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock30Value0 recoveredBlock30Value1 recoveredBlock30Value2 recoveredBlock30Value3 recoveredBlock30Value4 |
    recoveredBlock30Value0 := recoveredArg3.
    recoveredBlock30Value1 := recoveredArg1.
    recoveredBlock30Value2 := (recoveredBlock30Value1) value.
    recoveredBlock30Value3 := (recoveredBlock30Value0) value: (recoveredBlock30Value2).
    recoveredBlock30Value4 := recoveredBlock30Value3.
    recoveredLocal2 := recoveredBlock30Value4.
    recoveredBlock30Value3
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock49Value0 |
    recoveredBlock49Value0 := (self) needsComponentIntegerCode: (true).
    recoveredBlock49Value0
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ensure: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := SGIlSameStructureComparatorForDetection365896.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) visit: (recoveredStack1) withOtherNode: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 91] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := SGCgErrorHandler.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := 'WIle365896'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := 'Udisc/Sdisc may be generated in an unexpected way.'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := 365896.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) ileWarningNo: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20423e64; bytecode file offset 0xd2074c"
!SGIntegerStrategy methodsFor: 'recovered'!
visitExternBlockItem: recoveredArg1
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
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := recoveredArg1.
            recoveredBlock15PC := 25.
        ].
        recoveredBlock15Step = 25 ifTrue: [
            recoveredBlock15Stack0 := (recoveredBlock15Stack0) visitMdlNode: (recoveredBlock15Stack1).
            recoveredBlock15PC := 26.
        ].
        recoveredBlock15Step = 26 ifTrue: [
            recoveredLocal2 := recoveredBlock15Stack0.
            recoveredBlock15PC := 29.
        ].
        recoveredBlock15Step = 29 ifTrue: [
            recoveredBlock15Stack0 := nil.
            recoveredBlock15PC := 30.
        ].
        recoveredBlock15Step = 30 ifTrue: [
            recoveredBlock15Stack1 := recoveredArg1.
            recoveredBlock15PC := 33.
        ].
        recoveredBlock15Step = 33 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) isMdlIdentifier.
            recoveredBlock15PC := 34.
        ].
        recoveredBlock15Step = 34 ifTrue: [
            (recoveredBlock15Stack1) ifTrue: [recoveredBlock15PC := 38] ifFalse: [recoveredBlock15PC := 69].
        ].
        recoveredBlock15Step = 38 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal2.
            recoveredBlock15PC := 41.
        ].
        recoveredBlock15Step = 41 ifTrue: [
            recoveredBlock15Stack2 := SGIaConst.
            recoveredBlock15PC := 43.
        ].
        recoveredBlock15Step = 43 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) isKindOf: (recoveredBlock15Stack2).
            recoveredBlock15PC := 45.
        ].
        recoveredBlock15Step = 45 ifTrue: [
            (recoveredBlock15Stack1) ifTrue: [recoveredBlock15PC := 48] ifFalse: [recoveredBlock15PC := 69].
        ].
        recoveredBlock15Step = 48 ifTrue: [
            recoveredBlock15PC := 49.
        ].
        recoveredBlock15Step = 49 ifTrue: [
            recoveredBlock15Stack0 := self.
            recoveredBlock15PC := 50.
        ].
        recoveredBlock15Step = 50 ifTrue: [
            recoveredBlock15Stack1 := recoveredArg1.
            recoveredBlock15PC := 53.
        ].
        recoveredBlock15Step = 53 ifTrue: [
            recoveredBlock15Stack0 := (recoveredBlock15Stack0) createIaLValueExpr: (recoveredBlock15Stack1).
            recoveredBlock15PC := 55.
        ].
        recoveredBlock15Step = 55 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal2.
            recoveredBlock15PC := 58.
        ].
        recoveredBlock15Step = 58 ifTrue: [
            recoveredBlock15Stack2 := recoveredArg1.
            recoveredBlock15PC := 61.
        ].
        recoveredBlock15Step = 61 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) attributes.
            recoveredBlock15PC := 63.
        ].
        recoveredBlock15Step = 63 ifTrue: [
            recoveredBlock15Stack0 := (recoveredBlock15Stack0) prepareAssign: (recoveredBlock15Stack1) attributes: (recoveredBlock15Stack2).
            recoveredBlock15PC := 65.
        ].
        recoveredBlock15Step = 65 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Stack0.
            recoveredBlock15PC := 66.
        ].
        recoveredBlock15Step = 66 ifTrue: [
            recoveredLocal2 := recoveredBlock15Stack1.
            recoveredBlock15PC := 69.
        ].
        recoveredBlock15Step = 69 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack0.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) withExpressionContextFrom: (recoveredStack1) lValueType: (recoveredStack2) source: (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileExpr.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleExprStmnt.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) expr.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredPC := 101.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20435bc8; bytecode file offset 0xd324ac"
!SGIntegerStrategy methodsFor: 'recovered'!
genIleIntegerIndex: recoveredArg1 type: recoveredArg2 attrib: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentIaBuilder.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) createIndexedExpr: (recoveredStack1) implementation: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitMdlNode: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock25Value0 recoveredBlock25Value1 |
    recoveredBlock25Value0 := recoveredArg1.
    recoveredBlock25Value1 := (self) visitMdlNode: (recoveredBlock25Value0).
    recoveredBlock25Value1
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := [:block280fdbe8Arg1 | 
    | block280fdbe8Value0 block280fdbe8Value1 |
    block280fdbe8Value0 := block280fdbe8Arg1.
    block280fdbe8Value1 := (block280fdbe8Value0) ileExpr.
    block280fdbe8Value1
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) checkForDiscreteUnexpectedBehaviour: (recoveredStack1) result: (recoveredStack2) project: (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) cgAttrNoLimitAssignment.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) parmAssign: (recoveredStack1) attributes: (recoveredStack2) varAttributes: (recoveredStack3).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileExpr.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileRightHandSideExpr.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) protectVecIndex.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) limitOverflow.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) resetGoalInterval.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20460f44; bytecode file offset 0xd5d858"
!SGIntegerStrategy methodsFor: 'recovered'!
specialEnumCall: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) convertToNumericalMethodName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlLabel.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 99].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := SGCgExpressionContext.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) nonArithmeticContext.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock20Stack0 recoveredBlock20Stack1 recoveredBlock20Stack2 recoveredBlock20Stack3 recoveredBlock20Stack4 recoveredBlock20PC recoveredBlock20Step recoveredBlock20Done recoveredBlock20Result |
    recoveredBlock20Stack0 := self.
    recoveredBlock20PC := 26.
    recoveredBlock20Done := false.
    [recoveredBlock20Done not] whileTrue: [
        recoveredBlock20Step := recoveredBlock20PC.
        recoveredBlock20Step = 26 ifTrue: [
            recoveredBlock20Stack1 := recoveredArg1.
            recoveredBlock20PC := 29.
        ].
        recoveredBlock20Step = 29 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) receiver.
            recoveredBlock20PC := 31.
        ].
        recoveredBlock20Step = 31 ifTrue: [
            recoveredBlock20Stack0 := (recoveredBlock20Stack0) visitMdlNode: (recoveredBlock20Stack1).
            recoveredBlock20PC := 33.
        ].
        recoveredBlock20Step = 33 ifTrue: [
            recoveredLocal2 := recoveredBlock20Stack0.
            recoveredBlock20PC := 36.
        ].
        recoveredBlock20Step = 36 ifTrue: [
            recoveredBlock20Stack0 := recoveredArg1.
            recoveredBlock20PC := 39.
        ].
        recoveredBlock20Step = 39 ifTrue: [
            recoveredBlock20Stack0 := (recoveredBlock20Stack0) mdlClass.
            recoveredBlock20PC := 41.
        ].
        recoveredBlock20Step = 41 ifTrue: [
            recoveredLocal1 := recoveredBlock20Stack0.
            recoveredBlock20PC := 44.
        ].
        recoveredBlock20Step = 44 ifTrue: [
            recoveredBlock20Stack0 := recoveredLocal1.
            recoveredBlock20PC := 47.
        ].
        recoveredBlock20Step = 47 ifTrue: [
            recoveredBlock20Stack0 := (recoveredBlock20Stack0) isCgArithmeticLiteralType.
            recoveredBlock20PC := 49.
        ].
        recoveredBlock20Step = 49 ifTrue: [
            (recoveredBlock20Stack0) ifTrue: [recoveredBlock20PC := 72] ifFalse: [recoveredBlock20PC := 52].
        ].
        recoveredBlock20Step = 52 ifTrue: [
            recoveredBlock20Stack0 := recoveredLocal1.
            recoveredBlock20PC := 55.
        ].
        recoveredBlock20Step = 55 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal1.
            recoveredBlock20PC := 58.
        ].
        recoveredBlock20Step = 58 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) getImplType.
            recoveredBlock20PC := 60.
        ].
        recoveredBlock20Step = 60 ifTrue: [
            recoveredBlock20Stack2 := recoveredLocal2.
            recoveredBlock20PC := 63.
        ].
        recoveredBlock20Step = 63 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) ileExpr.
            recoveredBlock20PC := 65.
        ].
        recoveredBlock20Step = 65 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) interval.
            recoveredBlock20PC := 67.
        ].
        recoveredBlock20Step = 67 ifTrue: [
            recoveredBlock20Stack0 := (recoveredBlock20Stack0) createWithImplType: (recoveredBlock20Stack1) interval: (recoveredBlock20Stack2).
            recoveredBlock20PC := 69.
        ].
        recoveredBlock20Step = 69 ifTrue: [
            recoveredLocal1 := recoveredBlock20Stack0.
            recoveredBlock20PC := 72.
        ].
        recoveredBlock20Step = 72 ifTrue: [
            recoveredBlock20Stack0 := self.
            recoveredBlock20PC := 73.
        ].
        recoveredBlock20Step = 73 ifTrue: [
            recoveredBlock20Stack0 := (recoveredBlock20Stack0) currentIaBuilder.
            recoveredBlock20PC := 75.
        ].
        recoveredBlock20Step = 75 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal2.
            recoveredBlock20PC := 78.
        ].
        recoveredBlock20Step = 78 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) ileExpr.
            recoveredBlock20PC := 80.
        ].
        recoveredBlock20Step = 80 ifTrue: [
            recoveredBlock20Stack2 := recoveredLocal1.
            recoveredBlock20PC := 83.
        ].
        recoveredBlock20Step = 83 ifTrue: [
            recoveredBlock20Stack3 := SGCgVarAttributes.
            recoveredBlock20PC := 85.
        ].
        recoveredBlock20Step = 85 ifTrue: [
            recoveredBlock20Stack3 := (recoveredBlock20Stack3) create.
            recoveredBlock20PC := 87.
        ].
        recoveredBlock20Step = 87 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) implCastAssignWithSelectableType: (recoveredBlock20Stack2) attributes: (recoveredBlock20Stack3).
            recoveredBlock20PC := 89.
        ].
        recoveredBlock20Step = 89 ifTrue: [
            recoveredBlock20Stack2 := recoveredArg1.
            recoveredBlock20PC := 92.
        ].
        recoveredBlock20Step = 92 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) mdlClass.
            recoveredBlock20PC := 94.
        ].
        recoveredBlock20Step = 94 ifTrue: [
            recoveredBlock20Stack0 := (recoveredBlock20Stack0) ileExpr: (recoveredBlock20Stack1) implementation: (recoveredBlock20Stack2).
            recoveredBlock20PC := 96.
        ].
        recoveredBlock20Step = 96 ifTrue: [
            ^recoveredBlock20Stack0
        ].
    ].
    recoveredBlock20Result
].
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) executeInContext: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := 'Ia: unknown enum special funcion ('.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := ')'.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) mdlFatalExpect: (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204686a8; bytecode file offset 0xd64fb0"
!SGIntegerStrategy methodsFor: 'recovered'!
returnDeltaT: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBFloat.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := super returnDeltaT: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := SGCgExpressionContext.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 32.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlClass.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) getImplType.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) isSigned.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) intContext: (recoveredStack2) signed: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 recoveredBlock36Value3 recoveredBlock36Value4 recoveredBlock36Value5 recoveredBlock36Value6 recoveredBlock36Value7 recoveredBlock36Value8 recoveredBlock36Value9 recoveredBlock36Value10 recoveredBlock36Value11 recoveredBlock36Value12 recoveredBlock36Value13 recoveredBlock36Value14 recoveredBlock36Value15 recoveredBlock36Value16 recoveredBlock36Value17 recoveredBlock36Value18 recoveredBlock36Value19 recoveredBlock36Value20 recoveredBlock36Value21 recoveredBlock36Value22 recoveredBlock36Value23 recoveredBlock36Value24 recoveredBlock36Value25 |
    recoveredBlock36Value0 := recoveredArg1.
    recoveredBlock36Value1 := (recoveredBlock36Value0) currentIaBuilder.
    recoveredBlock36Value2 := recoveredArg1.
    recoveredBlock36Value3 := (self) visitMdlNode: (recoveredBlock36Value2).
    recoveredBlock36Value4 := (recoveredBlock36Value3) ileExpr.
    recoveredBlock36Value5 := recoveredArg1.
    recoveredBlock36Value6 := (recoveredBlock36Value5) mdlClass.
    recoveredBlock36Value7 := (recoveredBlock36Value1) ileExpr: (recoveredBlock36Value4) implementation: (recoveredBlock36Value6).
    recoveredLocal2 := recoveredBlock36Value7.
    recoveredBlock36Value8 := recoveredArg1.
    recoveredBlock36Value9 := (recoveredBlock36Value8) currentIaBuilder.
    recoveredBlock36Value10 := recoveredArg1.
    recoveredBlock36Value11 := (recoveredBlock36Value10) mdlClass.
    recoveredBlock36Value12 := (recoveredBlock36Value11) asDtTargetType.
    recoveredBlock36Value13 := (recoveredBlock36Value9) lValueForImplementation: (recoveredBlock36Value12) label: ('OS DT').
    recoveredLocal3 := recoveredBlock36Value13.
    recoveredBlock36Value14 := recoveredLocal3.
    recoveredBlock36Value15 := recoveredLocal2.
    recoveredBlock36Value16 := recoveredArg1.
    recoveredBlock36Value17 := (recoveredBlock36Value16) attributes.
    recoveredBlock36Value18 := recoveredArg1.
    recoveredBlock36Value19 := (recoveredBlock36Value18) attributes.
    recoveredBlock36Value20 := (recoveredBlock36Value14) parmAssign: (recoveredBlock36Value15) attributes: (recoveredBlock36Value17) varAttributes: (recoveredBlock36Value19).
    recoveredLocal1 := recoveredBlock36Value20.
    recoveredBlock36Value21 := (self) ileBuilder.
    recoveredBlock36Value22 := recoveredLocal1.
    recoveredBlock36Value23 := (recoveredBlock36Value22) ileExpr.
    recoveredBlock36Value24 := (self) defaultInAttributes.
    recoveredBlock36Value25 := (recoveredBlock36Value21) return: (recoveredBlock36Value23) attributes: (recoveredBlock36Value24).
    recoveredBlock36Value25
].
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) execute: (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20472a6c; bytecode file offset 0xd6f364"
!SGIntegerStrategy methodsFor: 'recovered'!
internalMdlInitValueAssign: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) needsIntegerCode.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) attributes.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) attributes: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightChild.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitMdlNode: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgContMoebiusFixedPointType.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) attributes.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) attributes: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentIaBuilder.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightChild.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) visitMdlNode: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileExpr.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlClass.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) adaptLiteralToMoebious: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) wrappedIleExpr: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgContReciprocalType.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) asReciprocalExpr: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentIaBuilder.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPhonyLValue: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightChild.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) setExactGoalScaleFromImpl: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightChild.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) attributes: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitMdlNode: (recoveredStack1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := (recoveredStack2) attributes.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) prepareAssign: (recoveredStack1) attributes: (recoveredStack2).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204911bc; bytecode file offset 0xd8dab4"
!SGIntegerStrategy methodsFor: 'recovered'!
propagateInfoToMultiplexChildren: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Rl'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_65087'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPureFloat.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 57].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) choiceChildren.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [:block281035c4Arg1 | 
    | block281035c4Value0 block281035c4Value1 block281035c4Value2 block281035c4Value3 block281035c4Value4 block281035c4Value5 block281035c4Value6 |
    block281035c4Value0 := block281035c4Arg1.
    block281035c4Value1 := (block281035c4Value0) literal.
    block281035c4Value2 := (block281035c4Value1) optData.
    (block281035c4Value2) floatType: (true).
    block281035c4Value3 := block281035c4Arg1.
    block281035c4Value4 := (block281035c4Value3) exprChild.
    block281035c4Value5 := (block281035c4Value4) optData.
    block281035c4Value6 := (block281035c4Value5) floatType: (true).
    block281035c4Value6
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultExprChild.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) optData.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) floatType: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultExprChild.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) attributes.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) deepCopy.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) attributes: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) choiceChildren.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := [:recoveredBlock75Arg1 | 
    | recoveredBlock75Value0 recoveredBlock75Value1 recoveredBlock75Value2 recoveredBlock75Value3 recoveredBlock75Value4 recoveredBlock75Value5 |
    recoveredBlock75Value0 := recoveredBlock75Arg1.
    recoveredBlock75Value1 := (recoveredBlock75Value0) exprChild.
    recoveredBlock75Value2 := recoveredArg1.
    recoveredBlock75Value3 := (recoveredBlock75Value2) attributes.
    recoveredBlock75Value4 := (recoveredBlock75Value3) deepCopy.
    recoveredBlock75Value5 := (recoveredBlock75Value1) attributes: (recoveredBlock75Value4).
    recoveredBlock75Value5
].
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrFloatGoal.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultExprChild.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1) setFloatGoal.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) choiceChildren.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := [:block281035e8Arg1 | 
    | block281035e8Value0 block281035e8Value1 block281035e8Value2 |
    block281035e8Value0 := block281035e8Arg1.
    block281035e8Value1 := (block281035e8Value0) exprChild.
    block281035e8Value2 := (block281035e8Value1) setFloatGoal.
    block281035e8Value2
].
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204aae2c; bytecode file offset 0xda7730"
!SGIntegerStrategy methodsFor: 'recovered'!
genIleIntegerIndexes: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) needsIntegerCode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := super genIleIntegerIndexes: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexChild.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprChild.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) dimensions.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := [:recoveredBlock38Arg1 :recoveredBlock38Arg2 | 
    | recoveredBlock38Local1 recoveredBlock38Local2 recoveredBlock38Local3 recoveredBlock38Local4 recoveredBlock38Stack0 recoveredBlock38Stack1 recoveredBlock38Stack2 recoveredBlock38Stack3 recoveredBlock38Stack4 recoveredBlock38Stack5 recoveredBlock38PC recoveredBlock38Step recoveredBlock38Done recoveredBlock38Result |
    recoveredBlock38Stack0 := self.
    recoveredBlock38PC := 44.
    recoveredBlock38Done := false.
    [recoveredBlock38Done not] whileTrue: [
        recoveredBlock38Step := recoveredBlock38PC.
        recoveredBlock38Step = 44 ifTrue: [
            recoveredBlock38Stack1 := recoveredBlock38Arg2.
            recoveredBlock38PC := 47.
        ].
        recoveredBlock38Step = 47 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) indexType.
            recoveredBlock38PC := 49.
        ].
        recoveredBlock38Step = 49 ifTrue: [
            recoveredBlock38Local4 := recoveredBlock38Stack1.
            recoveredBlock38PC := 52.
        ].
        recoveredBlock38Step = 52 ifTrue: [
            recoveredBlock38Stack1 := recoveredArg1.
            recoveredBlock38PC := 55.
        ].
        recoveredBlock38Step = 55 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) exprChild.
            recoveredBlock38PC := 57.
        ].
        recoveredBlock38Step = 57 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) mdlClass.
            recoveredBlock38PC := 59.
        ].
        recoveredBlock38Step = 59 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) isMdlArray.
            recoveredBlock38PC := 61.
        ].
        recoveredBlock38Step = 61 ifTrue: [
            (recoveredBlock38Stack1) ifTrue: [recoveredBlock38PC := 64] ifFalse: [recoveredBlock38PC := 85].
        ].
        recoveredBlock38Step = 64 ifTrue: [
            recoveredBlock38Stack1 := recoveredArg1.
            recoveredBlock38PC := 67.
        ].
        recoveredBlock38Step = 67 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) exprChild.
            recoveredBlock38PC := 69.
        ].
        recoveredBlock38Step = 69 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) isMdlReference.
            recoveredBlock38PC := 71.
        ].
        recoveredBlock38Step = 71 ifTrue: [
            (recoveredBlock38Stack1) ifTrue: [recoveredBlock38PC := 74] ifFalse: [recoveredBlock38PC := 85].
        ].
        recoveredBlock38Step = 74 ifTrue: [
            recoveredBlock38Stack1 := SGCgTypeFactory.
            recoveredBlock38PC := 76.
        ].
        recoveredBlock38Step = 76 ifTrue: [
            recoveredBlock38Stack2 := 2048.
            recoveredBlock38PC := 80.
        ].
        recoveredBlock38Step = 80 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) indexType: (recoveredBlock38Stack2).
            recoveredBlock38PC := 82.
        ].
        recoveredBlock38Step = 82 ifTrue: [
            recoveredBlock38Local4 := recoveredBlock38Stack1.
            recoveredBlock38PC := 85.
        ].
        recoveredBlock38Step = 85 ifTrue: [
            recoveredBlock38Stack1 := recoveredBlock38Arg1.
            recoveredBlock38PC := 88.
        ].
        recoveredBlock38Step = 88 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Arg2.
            recoveredBlock38PC := 91.
        ].
        recoveredBlock38Step = 91 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) indexType.
            recoveredBlock38PC := 93.
        ].
        recoveredBlock38Step = 93 ifTrue: [
            recoveredBlock38Stack3 := recoveredBlock38Arg1.
            recoveredBlock38PC := 96.
        ].
        recoveredBlock38Step = 96 ifTrue: [
            recoveredBlock38Stack3 := (recoveredBlock38Stack3) source.
            recoveredBlock38PC := 98.
        ].
        recoveredBlock38Step = 98 ifTrue: [
            recoveredBlock38Stack4 := [
    | recoveredBlock38Block98Local1 recoveredBlock38Block98Value0 recoveredBlock38Block98Value1 recoveredBlock38Block98Value2 recoveredBlock38Block98Value3 recoveredBlock38Block98Value4 recoveredBlock38Block98Value5 recoveredBlock38Block98Value6 recoveredBlock38Block98Value7 |
    recoveredBlock38Block98Value0 := recoveredArg1.
    recoveredBlock38Block98Value1 := (recoveredBlock38Block98Value0) defaultLimitAdaptationAttributes.
    recoveredBlock38Local1 := recoveredBlock38Block98Value1.
    recoveredBlock38Block98Value2 := recoveredLocal1.
    recoveredBlock38Block98Value3 := recoveredBlock38Arg1.
    recoveredBlock38Block98Value4 := recoveredBlock38Local4.
    recoveredBlock38Block98Value5 := recoveredBlock38Local1.
    recoveredBlock38Block98Value6 := (self) genIleIntegerIndex: (recoveredBlock38Block98Value3) type: (recoveredBlock38Block98Value4) attrib: (recoveredBlock38Block98Value5).
    recoveredBlock38Block98Value7 := (recoveredBlock38Block98Value2) add: (recoveredBlock38Block98Value6).
    recoveredBlock38Block98Value7
].
            recoveredBlock38PC := 131.
        ].
        recoveredBlock38Step = 131 ifTrue: [
            recoveredBlock38Stack0 := (recoveredBlock38Stack0) withExpressionContextFrom: (recoveredBlock38Stack1) lValueType: (recoveredBlock38Stack2) source: (recoveredBlock38Stack3) do: (recoveredBlock38Stack4).
            recoveredBlock38PC := 134.
        ].
        recoveredBlock38Step = 134 ifTrue: [
            recoveredBlock38Result := recoveredBlock38Stack0.
            recoveredBlock38Done := true.
        ].
    ].
    recoveredBlock38Result
].
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) with: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204ac494; bytecode file offset 0xda8da4"
!SGIntegerStrategy methodsFor: 'recovered'!
muxExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) needsIntegerCode.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgContMoebiusFixedPointType.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 'Rl'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 'Call_62180'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) exprChild.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitMdlBooleanExpr: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftChild.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) generateIleExpr: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightChild.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) generateIleExpr: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentIaBuilder.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack5 := (recoveredStack5) genIleType.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) muxLeftExpr: (recoveredStack3) rightExpr: (recoveredStack4) type: (recoveredStack5).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) wrappedIleExpr: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgContReciprocalType.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 83].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) asReciprocalExpr: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) propagateInfoToMuxChildren: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := 'Rl'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := 'Call_66713'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprChild.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitMdlBooleanExpr: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftChild.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitMdlNode: (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitMdlNode: (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack3 := (recoveredStack3) optData.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack3 := (recoveredStack3) targetScale.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack4 := (recoveredStack4) attributes.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) mux: (recoveredStack1) condExpr: (recoveredStack2) scale: (recoveredStack3) attributes: (recoveredStack4).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204cf1b8; bytecode file offset 0xdcbaa4"
!SGIntegerStrategy methodsFor: 'recovered'!
updateFixPointOptions: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) representableBits.
    (self) representableBits: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) changeableBoolOptions.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Local1 recoveredBlock14Local2 recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14Stack5 recoveredBlock14Stack6 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := recoveredArg1.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) getOption: (recoveredBlock14Stack2).
            recoveredBlock14PC := 25.
        ].
        recoveredBlock14Step = 25 ifTrue: [
            recoveredBlock14Local2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 26.
        ].
        recoveredBlock14Step = 26 ifTrue: [
            recoveredBlock14Stack1 := recoveredArg1.
            recoveredBlock14PC := 29.
        ].
        recoveredBlock14Step = 29 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 30.
        ].
        recoveredBlock14Step = 30 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) getOptionDefaultValue: (recoveredBlock14Stack2).
            recoveredBlock14PC := 32.
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack1.
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 34.
        ].
        recoveredBlock14Step = 34 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 37.
        ].
        recoveredBlock14Step = 37 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) class.
            recoveredBlock14PC := 39.
        ].
        recoveredBlock14Step = 39 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) keyRestrictedServiceUsage.
            recoveredBlock14PC := 41.
        ].
        recoveredBlock14Step = 41 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) equals: (recoveredBlock14Stack2).
            recoveredBlock14PC := 43.
        ].
        recoveredBlock14Step = 43 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 46] ifFalse: [recoveredBlock14PC := 52].
        ].
        recoveredBlock14Step = 46 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Local2.
            recoveredBlock14PC := 47.
        ].
        recoveredBlock14Step = 47 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) not.
            recoveredBlock14PC := 48.
        ].
        recoveredBlock14Step = 48 ifTrue: [
            recoveredBlock14Local2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 49.
        ].
        recoveredBlock14Step = 49 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Local1.
            recoveredBlock14PC := 50.
        ].
        recoveredBlock14Step = 50 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) not.
            recoveredBlock14PC := 51.
        ].
        recoveredBlock14Step = 51 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack1.
            recoveredBlock14PC := 52.
        ].
        recoveredBlock14Step = 52 ifTrue: [
            recoveredBlock14Stack1 := recoveredArg1.
            recoveredBlock14PC := 55.
        ].
        recoveredBlock14Step = 55 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 56.
        ].
        recoveredBlock14Step = 56 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) getOptionLabel: (recoveredBlock14Stack2).
            recoveredBlock14PC := 58.
        ].
        recoveredBlock14Step = 58 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 59.
        ].
        recoveredBlock14Step = 59 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Local2.
            recoveredBlock14PC := 60.
        ].
        recoveredBlock14Step = 60 ifTrue: [
            recoveredBlock14Stack4 := recoveredBlock14Local1.
            recoveredBlock14PC := 61.
        ].
        recoveredBlock14Step = 61 ifTrue: [
            recoveredBlock14Stack5 := recoveredArg1.
            recoveredBlock14PC := 64.
        ].
        recoveredBlock14Step = 64 ifTrue: [
            recoveredBlock14Stack5 := (recoveredBlock14Stack5) groupFixedPointCode.
            recoveredBlock14PC := 66.
        ].
        recoveredBlock14Step = 66 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) createOption: (recoveredBlock14Stack1) id: (recoveredBlock14Stack2) value: (recoveredBlock14Stack3) defaultValue: (recoveredBlock14Stack4) group: (recoveredBlock14Stack5).
            recoveredBlock14PC := 69.
        ].
        recoveredBlock14Step = 69 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack0.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) changeableIntOptions.
    recoveredValue7 := [:recoveredBlock77Arg1 | 
    | recoveredBlock77Value0 recoveredBlock77Value1 recoveredBlock77Value2 recoveredBlock77Value3 recoveredBlock77Value4 recoveredBlock77Value5 recoveredBlock77Value6 recoveredBlock77Value7 recoveredBlock77Value8 recoveredBlock77Value9 recoveredBlock77Value10 recoveredBlock77Value11 recoveredBlock77Value12 |
    recoveredBlock77Value0 := recoveredArg1.
    recoveredBlock77Value1 := recoveredBlock77Arg1.
    recoveredBlock77Value2 := (recoveredBlock77Value0) getOptionLabel: (recoveredBlock77Value1).
    recoveredBlock77Value3 := recoveredBlock77Arg1.
    recoveredBlock77Value4 := recoveredArg1.
    recoveredBlock77Value5 := recoveredBlock77Arg1.
    recoveredBlock77Value6 := (recoveredBlock77Value4) getOption: (recoveredBlock77Value5).
    recoveredBlock77Value7 := recoveredArg1.
    recoveredBlock77Value8 := recoveredBlock77Arg1.
    recoveredBlock77Value9 := (recoveredBlock77Value7) getOptionDefaultValue: (recoveredBlock77Value8).
    recoveredBlock77Value10 := recoveredArg1.
    recoveredBlock77Value11 := (recoveredBlock77Value10) groupFixedPointCode.
    recoveredBlock77Value12 := (self) createOption: (recoveredBlock77Value2) id: (recoveredBlock77Value3) value: (recoveredBlock77Value6) defaultValue: (recoveredBlock77Value9) group: (recoveredBlock77Value11).
    recoveredBlock77Value12
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) changeableStringOptions.
    recoveredValue10 := [:recoveredBlock118Arg1 | 
    | recoveredBlock118Value0 recoveredBlock118Value1 recoveredBlock118Value2 recoveredBlock118Value3 recoveredBlock118Value4 recoveredBlock118Value5 recoveredBlock118Value6 recoveredBlock118Value7 recoveredBlock118Value8 recoveredBlock118Value9 recoveredBlock118Value10 recoveredBlock118Value11 recoveredBlock118Value12 |
    recoveredBlock118Value0 := recoveredArg1.
    recoveredBlock118Value1 := recoveredBlock118Arg1.
    recoveredBlock118Value2 := (recoveredBlock118Value0) getOptionLabel: (recoveredBlock118Value1).
    recoveredBlock118Value3 := recoveredBlock118Arg1.
    recoveredBlock118Value4 := recoveredArg1.
    recoveredBlock118Value5 := recoveredBlock118Arg1.
    recoveredBlock118Value6 := (recoveredBlock118Value4) getOption: (recoveredBlock118Value5).
    recoveredBlock118Value7 := recoveredArg1.
    recoveredBlock118Value8 := recoveredBlock118Arg1.
    recoveredBlock118Value9 := (recoveredBlock118Value7) getOptionDefaultValue: (recoveredBlock118Value8).
    recoveredBlock118Value10 := recoveredArg1.
    recoveredBlock118Value11 := (recoveredBlock118Value10) groupFixedPointCode.
    recoveredBlock118Value12 := (self) createOption: (recoveredBlock118Value2) id: (recoveredBlock118Value3) value: (recoveredBlock118Value6) defaultValue: (recoveredBlock118Value9) group: (recoveredBlock118Value11).
    recoveredBlock118Value12
].
    (recoveredValue9) do: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x204d0f04; bytecode file offset 0xdcd818"
!SGIntegerStrategy methodsFor: 'recovered'!
returnDeltaTAsReal: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBFloat.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := super returnDeltaTAsReal: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := SGCgExpressionContext.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 32.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) intContext: (recoveredStack2) signed: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock30Value0 recoveredBlock30Value1 recoveredBlock30Value2 recoveredBlock30Value3 recoveredBlock30Value4 recoveredBlock30Value5 recoveredBlock30Value6 recoveredBlock30Value7 recoveredBlock30Value8 recoveredBlock30Value9 recoveredBlock30Value10 recoveredBlock30Value11 recoveredBlock30Value12 recoveredBlock30Value13 recoveredBlock30Value14 recoveredBlock30Value15 recoveredBlock30Value16 recoveredBlock30Value17 recoveredBlock30Value18 recoveredBlock30Value19 recoveredBlock30Value20 recoveredBlock30Value21 recoveredBlock30Value22 recoveredBlock30Value23 recoveredBlock30Value24 recoveredBlock30Value25 |
    recoveredBlock30Value0 := recoveredArg1.
    recoveredBlock30Value1 := (recoveredBlock30Value0) currentIaBuilder.
    recoveredBlock30Value2 := recoveredArg1.
    recoveredBlock30Value3 := (self) visitMdlNode: (recoveredBlock30Value2).
    recoveredBlock30Value4 := (recoveredBlock30Value3) ileExpr.
    recoveredBlock30Value5 := recoveredArg1.
    recoveredBlock30Value6 := (recoveredBlock30Value5) mdlClass.
    recoveredBlock30Value7 := (recoveredBlock30Value1) ileExpr: (recoveredBlock30Value4) implementation: (recoveredBlock30Value6).
    recoveredLocal4 := recoveredBlock30Value7.
    recoveredBlock30Value8 := recoveredArg1.
    recoveredBlock30Value9 := (recoveredBlock30Value8) currentIaBuilder.
    recoveredBlock30Value10 := recoveredArg1.
    recoveredBlock30Value11 := (recoveredBlock30Value10) mdlClass.
    recoveredBlock30Value12 := (recoveredBlock30Value11) asDtTargetType.
    recoveredBlock30Value13 := (recoveredBlock30Value9) lValueForImplementation: (recoveredBlock30Value12) label: ('OS DT').
    recoveredLocal5 := recoveredBlock30Value13.
    recoveredBlock30Value14 := recoveredLocal5.
    recoveredBlock30Value15 := recoveredLocal4.
    recoveredBlock30Value16 := recoveredArg1.
    recoveredBlock30Value17 := (recoveredBlock30Value16) attributes.
    recoveredBlock30Value18 := (recoveredBlock30Value14) prepareAssign: (recoveredBlock30Value15) attributes: (recoveredBlock30Value17).
    recoveredBlock30Value19 := (recoveredBlock30Value18) ileExpr.
    recoveredBlock30Value20 := recoveredArg1.
    recoveredBlock30Value21 := (recoveredBlock30Value20) mdlClass.
    recoveredBlock30Value22 := (recoveredBlock30Value21) asDtTargetType.
    recoveredBlock30Value23 := recoveredArg1.
    recoveredBlock30Value24 := (recoveredBlock30Value23) attributes.
    recoveredBlock30Value25 := (recoveredBlock30Value19) implCastAssign: (recoveredBlock30Value22) attributes: (recoveredBlock30Value24).
    recoveredBlock30Value25
].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) execute: (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileFloat64.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := SGCgExpressionContext.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) forContextType: (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock123Value0 recoveredBlock123Value1 recoveredBlock123Value2 recoveredBlock123Value3 recoveredBlock123Value4 recoveredBlock123Value5 recoveredBlock123Value6 recoveredBlock123Value7 |
    recoveredBlock123Value0 := (self) ileBuilder.
    recoveredBlock123Value1 := recoveredLocal3.
    recoveredBlock123Value2 := recoveredLocal1.
    recoveredBlock123Value3 := recoveredArg1.
    recoveredBlock123Value4 := (recoveredBlock123Value3) attributes.
    recoveredBlock123Value5 := (recoveredBlock123Value1) parmAssign: (recoveredBlock123Value2) attributes: (recoveredBlock123Value4).
    recoveredBlock123Value6 := (self) defaultInAttributes.
    recoveredBlock123Value7 := (recoveredBlock123Value0) return: (recoveredBlock123Value5) attributes: (recoveredBlock123Value6).
    ^recoveredBlock123Value7
].
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0) execute: (recoveredStack1).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204f57ec; bytecode file offset 0xdf2104"
!SGIntegerStrategy methodsFor: 'recovered'!
mdlInitValueAssign: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) variable.
    recoveredBlock4Value2 := (recoveredBlock4Value1) isMdlNeedsImplAssign.
    recoveredBlock4Value3 := (recoveredBlock4Value2) not.
    recoveredBlock4Value3
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [
    'A implementation case should not need an implementation'
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) variable.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock50Stack0 recoveredBlock50Stack1 recoveredBlock50Stack2 recoveredBlock50Stack3 recoveredBlock50Stack4 recoveredBlock50PC recoveredBlock50Step recoveredBlock50Done recoveredBlock50Result |
    recoveredBlock50Stack0 := self.
    recoveredBlock50PC := 56.
    recoveredBlock50Done := false.
    [recoveredBlock50Done not] whileTrue: [
        recoveredBlock50Step := recoveredBlock50PC.
        recoveredBlock50Step = 56 ifTrue: [
            recoveredBlock50Stack1 := recoveredArg1.
            recoveredBlock50PC := 59.
        ].
        recoveredBlock50Step = 59 ifTrue: [
            recoveredBlock50Stack0 := (recoveredBlock50Stack0) internalMdlInitValueAssign: (recoveredBlock50Stack1).
            recoveredBlock50PC := 61.
        ].
        recoveredBlock50Step = 61 ifTrue: [
            recoveredBlock50Stack0 := (recoveredBlock50Stack0) ileExpr.
            recoveredBlock50PC := 63.
        ].
        recoveredBlock50Step = 63 ifTrue: [
            recoveredLocal3 := recoveredBlock50Stack0.
            recoveredBlock50PC := 66.
        ].
        recoveredBlock50Step = 66 ifTrue: [
            recoveredBlock50Stack0 := recoveredArg1.
            recoveredBlock50PC := 69.
        ].
        recoveredBlock50Step = 69 ifTrue: [
            recoveredBlock50Stack0 := (recoveredBlock50Stack0) genIleType.
            recoveredBlock50PC := 71.
        ].
        recoveredBlock50Step = 71 ifTrue: [
            recoveredLocal1 := recoveredBlock50Stack0.
            recoveredBlock50PC := 74.
        ].
        recoveredBlock50Step = 74 ifTrue: [
            recoveredBlock50Stack0 := recoveredLocal3.
            recoveredBlock50PC := 77.
        ].
        recoveredBlock50Step = 77 ifTrue: [
            recoveredBlock50Stack0 := (recoveredBlock50Stack0) isIleArithmeticExpr.
            recoveredBlock50PC := 79.
        ].
        recoveredBlock50Step = 79 ifTrue: [
            (recoveredBlock50Stack0) ifTrue: [recoveredBlock50PC := 82] ifFalse: [recoveredBlock50PC := 150].
        ].
        recoveredBlock50Step = 82 ifTrue: [
            recoveredBlock50Stack0 := recoveredLocal4.
            recoveredBlock50PC := 85.
        ].
        recoveredBlock50Step = 85 ifTrue: [
            recoveredBlock50Stack0 := (recoveredBlock50Stack0) isCgWrapAroundIntegerype.
            recoveredBlock50PC := 87.
        ].
        recoveredBlock50Step = 87 ifTrue: [
            (recoveredBlock50Stack0) ifTrue: [recoveredBlock50PC := 150] ifFalse: [recoveredBlock50PC := 90].
        ].
        recoveredBlock50Step = 90 ifTrue: [
            recoveredBlock50Stack0 := recoveredLocal4.
            recoveredBlock50PC := 93.
        ].
        recoveredBlock50Step = 93 ifTrue: [
            recoveredBlock50Stack0 := (recoveredBlock50Stack0) isCgModularIntegerType.
            recoveredBlock50PC := 95.
        ].
        recoveredBlock50Step = 95 ifTrue: [
            (recoveredBlock50Stack0) ifTrue: [recoveredBlock50PC := 150] ifFalse: [recoveredBlock50PC := 98].
        ].
        recoveredBlock50Step = 98 ifTrue: [
            recoveredBlock50Stack0 := recoveredLocal1.
            recoveredBlock50PC := 101.
        ].
        recoveredBlock50Step = 101 ifTrue: [
            recoveredBlock50Stack0 := (recoveredBlock50Stack0) getImplInterval.
            recoveredBlock50PC := 103.
        ].
        recoveredBlock50Step = 103 ifTrue: [
            recoveredLocal2 := recoveredBlock50Stack0.
            recoveredBlock50PC := 106.
        ].
        recoveredBlock50Step = 106 ifTrue: [
            recoveredBlock50Stack0 := recoveredLocal3.
            recoveredBlock50PC := 109.
        ].
        recoveredBlock50Step = 109 ifTrue: [
            recoveredBlock50Stack0 := (recoveredBlock50Stack0) isIleNoOverflowExpr.
            recoveredBlock50PC := 111.
        ].
        recoveredBlock50Step = 111 ifTrue: [
            (recoveredBlock50Stack0) ifTrue: [recoveredBlock50PC := 128] ifFalse: [recoveredBlock50PC := 114].
        ].
        recoveredBlock50Step = 114 ifTrue: [
            recoveredBlock50Stack0 := recoveredLocal2.
            recoveredBlock50PC := 117.
        ].
        recoveredBlock50Step = 117 ifTrue: [
            recoveredBlock50Stack1 := recoveredLocal3.
            recoveredBlock50PC := 120.
        ].
        recoveredBlock50Step = 120 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) interval.
            recoveredBlock50PC := 122.
        ].
        recoveredBlock50Step = 122 ifTrue: [
            recoveredBlock50Stack0 := (recoveredBlock50Stack0) includes: (recoveredBlock50Stack1).
            recoveredBlock50PC := 124.
        ].
        recoveredBlock50Step = 124 ifTrue: [
            (recoveredBlock50Stack0) ifTrue: [recoveredBlock50PC := 150] ifFalse: [recoveredBlock50PC := 128].
        ].
        recoveredBlock50Step = 128 ifTrue: [
            recoveredBlock50Stack0 := recoveredLocal3.
            recoveredBlock50PC := 131.
        ].
        recoveredBlock50Step = 131 ifTrue: [
            recoveredBlock50Stack1 := recoveredLocal2.
            recoveredBlock50PC := 134.
        ].
        recoveredBlock50Step = 134 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) left.
            recoveredBlock50PC := 136.
        ].
        recoveredBlock50Step = 136 ifTrue: [
            recoveredBlock50Stack2 := recoveredLocal2.
            recoveredBlock50PC := 139.
        ].
        recoveredBlock50Step = 139 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) right.
            recoveredBlock50PC := 141.
        ].
        recoveredBlock50Step = 141 ifTrue: [
            recoveredBlock50Stack3 := recoveredLocal1.
            recoveredBlock50PC := 144.
        ].
        recoveredBlock50Step = 144 ifTrue: [
            recoveredBlock50Stack0 := (recoveredBlock50Stack0) limitExprLowerBound: (recoveredBlock50Stack1) upperBound: (recoveredBlock50Stack2) type: (recoveredBlock50Stack3).
            recoveredBlock50PC := 147.
        ].
        recoveredBlock50Step = 147 ifTrue: [
            recoveredLocal3 := recoveredBlock50Stack0.
            recoveredBlock50PC := 150.
        ].
        recoveredBlock50Step = 150 ifTrue: [
            recoveredBlock50Stack0 := self.
            recoveredBlock50PC := 151.
        ].
        recoveredBlock50Step = 151 ifTrue: [
            recoveredBlock50Stack0 := (recoveredBlock50Stack0) ileBuilder.
            recoveredBlock50PC := 153.
        ].
        recoveredBlock50Step = 153 ifTrue: [
            recoveredBlock50Stack1 := recoveredLocal3.
            recoveredBlock50PC := 156.
        ].
        recoveredBlock50Step = 156 ifTrue: [
            recoveredBlock50Stack2 := recoveredLocal1.
            recoveredBlock50PC := 159.
        ].
        recoveredBlock50Step = 159 ifTrue: [
            recoveredBlock50Stack3 := self.
            recoveredBlock50PC := 160.
        ].
        recoveredBlock50Step = 160 ifTrue: [
            recoveredBlock50Stack3 := (recoveredBlock50Stack3) expressionContext.
            recoveredBlock50PC := 162.
        ].
        recoveredBlock50Step = 162 ifTrue: [
            recoveredBlock50Stack0 := (recoveredBlock50Stack0) createInitValueAssign: (recoveredBlock50Stack1) type: (recoveredBlock50Stack2) expressionContext: (recoveredBlock50Stack3).
            recoveredBlock50PC := 165.
        ].
        recoveredBlock50Step = 165 ifTrue: [
            ^recoveredBlock50Stack0
        ].
    ].
    recoveredBlock50Result
].
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack0) withExpressionContextFrom: (recoveredStack1) lValueType: (recoveredStack2) source: (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20504a2c; bytecode file offset 0xe01338"
!SGIntegerStrategy methodsFor: 'recovered'!
implInfoInterval: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) genIleType.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [
    ^''
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) reserveTempStream.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPhysIntervalSupported: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) ilePhysModelInterval.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplInterval.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) truncated.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) truncated.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := 'min='.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := ', max='.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := ', '.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBEnumeration.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleEnumType.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 160].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := 'enumeration='.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredPC := 172.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := (recoveredStack1) shortPrintString.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := (recoveredStack0) releaseGetContents.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20508d90; bytecode file offset 0xe056b0"
!SGIntegerStrategy methodsFor: 'recovered'!
basicAddImplInfoComment: recoveredArg1 source: recoveredArg2 errLabel: recoveredArg3 decl: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) shortPrintString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 180] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) adaptIntervalAttributes.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) reserveTempStream.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := ' impl.: name='.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := ', '.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMoebiusFixedPointTypeExpr.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := ', formulaName='.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) formulaName.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredPC := 169.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := ', limit='.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) isFloatTypedExpr.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := (recoveredStack2) genContext.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := (recoveredStack2) integerArithmeticOptions.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := (recoveredStack2) generateFloatLimiters.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredPC := 156.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := '(maxBitLength: '.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := (recoveredStack3) isCgAttrLimitOverflow.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := ', assign: '.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack3 := (recoveredStack3) isCgAttrLimitAssignment.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := $).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := ', zero incl.='.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := (recoveredStack2) isCgAttrZeroIncluded.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := (recoveredStack2) releaseGetContents.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack1) implInfo: (recoveredStack2).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2051c87c; bytecode file offset 0xe19184"
!SGIntegerStrategy methodsFor: 'recovered'!
binaryEqualityExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) needsIntegerCodeChildren.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := super binaryEqualityExpr: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24Stack4 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
    recoveredBlock24Stack0 := self.
    recoveredBlock24PC := 30.
    recoveredBlock24Done := false.
    [recoveredBlock24Done not] whileTrue: [
        recoveredBlock24Step := recoveredBlock24PC.
        recoveredBlock24Step = 30 ifTrue: [
            recoveredBlock24Stack1 := recoveredArg1.
            recoveredBlock24PC := 33.
        ].
        recoveredBlock24Step = 33 ifTrue: [
            (recoveredBlock24Stack0) propagateInfoToBinaryChildren: (recoveredBlock24Stack1).
            recoveredBlock24PC := 35.
        ].
        recoveredBlock24Step = 35 ifTrue: [
            recoveredBlock24Stack0 := self.
            recoveredBlock24PC := 36.
        ].
        recoveredBlock24Step = 36 ifTrue: [
            recoveredBlock24Stack1 := recoveredArg1.
            recoveredBlock24PC := 39.
        ].
        recoveredBlock24Step = 39 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) leftChild.
            recoveredBlock24PC := 41.
        ].
        recoveredBlock24Step = 41 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) visitMdlNode: (recoveredBlock24Stack1).
            recoveredBlock24PC := 43.
        ].
        recoveredBlock24Step = 43 ifTrue: [
            recoveredLocal4 := recoveredBlock24Stack0.
            recoveredBlock24PC := 46.
        ].
        recoveredBlock24Step = 46 ifTrue: [
            recoveredBlock24Stack0 := self.
            recoveredBlock24PC := 47.
        ].
        recoveredBlock24Step = 47 ifTrue: [
            recoveredBlock24Stack1 := recoveredArg1.
            recoveredBlock24PC := 50.
        ].
        recoveredBlock24Step = 50 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) rightChild.
            recoveredBlock24PC := 52.
        ].
        recoveredBlock24Step = 52 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) visitMdlNode: (recoveredBlock24Stack1).
            recoveredBlock24PC := 54.
        ].
        recoveredBlock24Step = 54 ifTrue: [
            recoveredLocal3 := recoveredBlock24Stack0.
            recoveredBlock24PC := 57.
        ].
        recoveredBlock24Step = 57 ifTrue: [
            recoveredBlock24Stack0 := recoveredArg1.
            recoveredBlock24PC := 60.
        ].
        recoveredBlock24Step = 60 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) leftChild.
            recoveredBlock24PC := 62.
        ].
        recoveredBlock24Step = 62 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) mdlClass.
            recoveredBlock24PC := 64.
        ].
        recoveredBlock24Step = 64 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) isCgSDiscOrUDisc.
            recoveredBlock24PC := 66.
        ].
        recoveredBlock24Step = 66 ifTrue: [
            (recoveredBlock24Stack0) ifTrue: [recoveredBlock24PC := 70] ifFalse: [recoveredBlock24PC := 143].
        ].
        recoveredBlock24Step = 70 ifTrue: [
            recoveredBlock24Stack0 := recoveredArg1.
            recoveredBlock24PC := 73.
        ].
        recoveredBlock24Step = 73 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) rightChild.
            recoveredBlock24PC := 75.
        ].
        recoveredBlock24Step = 75 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) mdlClass.
            recoveredBlock24PC := 77.
        ].
        recoveredBlock24Step = 77 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) isCgDiscreteType.
            recoveredBlock24PC := 79.
        ].
        recoveredBlock24Step = 79 ifTrue: [
            (recoveredBlock24Stack0) ifTrue: [recoveredBlock24PC := 82] ifFalse: [recoveredBlock24PC := 143].
        ].
        recoveredBlock24Step = 82 ifTrue: [
            recoveredBlock24Stack0 := self.
            recoveredBlock24PC := 83.
        ].
        recoveredBlock24Step = 83 ifTrue: [
            recoveredBlock24Stack1 := [
    | recoveredBlock24Block83Value0 recoveredBlock24Block83Value1 recoveredBlock24Block83Value2 |
    recoveredBlock24Block83Value0 := recoveredArg1.
    recoveredBlock24Block83Value1 := (recoveredBlock24Block83Value0) leftChild.
    recoveredBlock24Block83Value2 := (self) visitMdlNode: (recoveredBlock24Block83Value1).
    recoveredBlock24Block83Value2
].
            recoveredBlock24PC := 98.
        ].
        recoveredBlock24Step = 98 ifTrue: [
            recoveredBlock24Stack2 := recoveredLocal4.
            recoveredBlock24PC := 101.
        ].
        recoveredBlock24Step = 101 ifTrue: [
            recoveredBlock24Stack3 := [:block2810bf28Arg1 | 
    | block2810bf28Value0 block2810bf28Value1 |
    block2810bf28Value0 := block2810bf28Arg1.
    block2810bf28Value1 := (block2810bf28Value0) ileExpr.
    block2810bf28Value1
].
            recoveredBlock24PC := 103.
        ].
        recoveredBlock24Step = 103 ifTrue: [
            recoveredBlock24PC := 110.
        ].
        recoveredBlock24Step = 110 ifTrue: [
            (recoveredBlock24Stack0) checkForDiscreteUnexpectedBehaviour: (recoveredBlock24Stack1) result: (recoveredBlock24Stack2) project: (recoveredBlock24Stack3).
            recoveredBlock24PC := 113.
        ].
        recoveredBlock24Step = 113 ifTrue: [
            recoveredBlock24Stack0 := self.
            recoveredBlock24PC := 114.
        ].
        recoveredBlock24Step = 114 ifTrue: [
            recoveredBlock24Stack1 := [
    | recoveredBlock24Block114Value0 recoveredBlock24Block114Value1 recoveredBlock24Block114Value2 |
    recoveredBlock24Block114Value0 := recoveredArg1.
    recoveredBlock24Block114Value1 := (recoveredBlock24Block114Value0) rightChild.
    recoveredBlock24Block114Value2 := (self) visitMdlNode: (recoveredBlock24Block114Value1).
    recoveredBlock24Block114Value2
].
            recoveredBlock24PC := 128.
        ].
        recoveredBlock24Step = 128 ifTrue: [
            recoveredBlock24Stack2 := recoveredLocal3.
            recoveredBlock24PC := 131.
        ].
        recoveredBlock24Step = 131 ifTrue: [
            recoveredBlock24Stack3 := [:block2810bf4cArg1 | 
    | block2810bf4cValue0 block2810bf4cValue1 |
    block2810bf4cValue0 := block2810bf4cArg1.
    block2810bf4cValue1 := (block2810bf4cValue0) ileExpr.
    block2810bf4cValue1
].
            recoveredBlock24PC := 133.
        ].
        recoveredBlock24Step = 133 ifTrue: [
            recoveredBlock24PC := 140.
        ].
        recoveredBlock24Step = 140 ifTrue: [
            (recoveredBlock24Stack0) checkForDiscreteUnexpectedBehaviour: (recoveredBlock24Stack1) result: (recoveredBlock24Stack2) project: (recoveredBlock24Stack3).
            recoveredBlock24PC := 143.
        ].
        recoveredBlock24Step = 143 ifTrue: [
            recoveredBlock24Stack0 := self.
            recoveredBlock24PC := 144.
        ].
        recoveredBlock24Step = 144 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) ileBuilder.
            recoveredBlock24PC := 146.
        ].
        recoveredBlock24Step = 146 ifTrue: [
            recoveredBlock24Stack1 := recoveredArg1.
            recoveredBlock24PC := 149.
        ].
        recoveredBlock24Step = 149 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) source.
            recoveredBlock24PC := 151.
        ].
        recoveredBlock24Step = 151 ifTrue: [
            recoveredBlock24Stack2 := [
    | recoveredBlock24Block151Value0 recoveredBlock24Block151Value1 recoveredBlock24Block151Value2 recoveredBlock24Block151Value3 recoveredBlock24Block151Value4 recoveredBlock24Block151Value5 recoveredBlock24Block151Value6 |
    recoveredBlock24Block151Value0 := recoveredLocal4.
    recoveredBlock24Block151Value1 := recoveredLocal3.
    recoveredBlock24Block151Value2 := recoveredArg1.
    recoveredBlock24Block151Value3 := (recoveredBlock24Block151Value2) operator.
    recoveredBlock24Block151Value4 := recoveredArg1.
    recoveredBlock24Block151Value5 := (recoveredBlock24Block151Value4) attributes.
    recoveredBlock24Block151Value6 := (recoveredBlock24Block151Value0) compare: (recoveredBlock24Block151Value1) op: (recoveredBlock24Block151Value3) attributes: (recoveredBlock24Block151Value5).
    recoveredBlock24Block151Value6
].
            recoveredBlock24PC := 178.
        ].
        recoveredBlock24Step = 178 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) useSource: (recoveredBlock24Stack1) for: (recoveredBlock24Stack2).
            recoveredBlock24PC := 180.
        ].
        recoveredBlock24Step = 180 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Stack0.
            recoveredBlock24PC := 181.
        ].
        recoveredBlock24Step = 181 ifTrue: [
            recoveredLocal2 := recoveredBlock24Stack1.
            recoveredBlock24PC := 184.
        ].
        recoveredBlock24Step = 184 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack0.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack0) withExpressionContextFrom: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20527cb0; bytecode file offset 0xe245d4"
!SGIntegerStrategy methodsFor: 'recovered'!
handleArgumentOut: recoveredArg1 doBefore: recoveredArg2 doAfter: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) variable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) genIleType.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDirectInOutArgument: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitMdlNode: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileExpr.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 194.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) variable.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) genIleType.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) asCgDereferencedType.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDummyExprType: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) checkImplementation.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightChild.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := (recoveredStack3) type.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := (recoveredStack4) source.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock67Value0 recoveredBlock67Value1 recoveredBlock67Value2 recoveredBlock67Value3 recoveredBlock67Value4 recoveredBlock67Value5 recoveredBlock67Value6 recoveredBlock67Value7 recoveredBlock67Value8 recoveredBlock67Value9 recoveredBlock67Value10 recoveredBlock67Value11 recoveredBlock67Value12 recoveredBlock67Value13 recoveredBlock67Value14 |
    recoveredBlock67Value0 := (self) ileBuilder.
    recoveredBlock67Value1 := (recoveredBlock67Value0) optimizeOperatorSimplificationImplAware.
    recoveredBlock67Value2 := [
    | recoveredBlock67Block78Value0 recoveredBlock67Block78Value1 recoveredBlock67Block78Value2 |
    recoveredBlock67Block78Value0 := (self) ileBuilder.
    recoveredBlock67Block78Value1 := recoveredLocal2.
    recoveredBlock67Block78Value2 := (recoveredBlock67Block78Value0) tempAssign: (recoveredBlock67Block78Value1).
    recoveredBlock67Block78Value2
].
    recoveredBlock67Value3 := (recoveredBlock67Value1) disableOptimizationsDo: (recoveredBlock67Value2).
    recoveredLocal3 := recoveredBlock67Value3.
    recoveredBlock67Value4 := recoveredLocal3.
    recoveredBlock67Value5 := (recoveredBlock67Value4) tempAssign.
    recoveredBlock67Value6 := (self) ileBuilder.
    recoveredBlock67Value7 := recoveredLocal3.
    recoveredBlock67Value8 := (recoveredBlock67Value7) type.
    recoveredBlock67Value9 := (recoveredBlock67Value6) tempVar: (recoveredBlock67Value8).
    (recoveredBlock67Value5) tempVar: (recoveredBlock67Value9).
    recoveredBlock67Value10 := SGCgExpressionContext.
    recoveredBlock67Value11 := (recoveredBlock67Value10) nonArithmeticContext.
    recoveredBlock67Value12 := [
    | recoveredBlock67Block118Value0 recoveredBlock67Block118Value1 recoveredBlock67Block118Value2 recoveredBlock67Block118Value3 recoveredBlock67Block118Value4 recoveredBlock67Block118Value5 recoveredBlock67Block118Value6 |
    recoveredBlock67Block118Value0 := recoveredLocal3.
    recoveredBlock67Block118Value1 := (recoveredBlock67Block118Value0) asIleReferencedExpr.
    recoveredBlock67Block118Value2 := recoveredArg1.
    recoveredBlock67Block118Value3 := (recoveredBlock67Block118Value2) genIleType.
    recoveredBlock67Block118Value4 := recoveredArg1.
    recoveredBlock67Block118Value5 := (recoveredBlock67Block118Value4) attributes.
    recoveredBlock67Block118Value6 := (recoveredBlock67Block118Value1) parmAssign: (recoveredBlock67Block118Value3) attributes: (recoveredBlock67Block118Value5).
    recoveredBlock67Block118Value6
].
    recoveredBlock67Value13 := (recoveredBlock67Value11) executeInContext: (recoveredBlock67Value12).
    recoveredBlock67Value14 := recoveredBlock67Value13.
    recoveredLocal3 := recoveredBlock67Value14.
    recoveredBlock67Value13
].
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack1) withExpressionContextFrom: (recoveredStack2) lValueType: (recoveredStack3) source: (recoveredStack4) do: (recoveredStack5).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileExpr.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack4 := (recoveredStack4) rightChild.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack4 := (recoveredStack4) asMdlDereferencedExpr.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack5 := (recoveredStack5) type.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := (recoveredStack2) assignInOutTempVar: (recoveredStack3) to: (recoveredStack4) type: (recoveredStack5).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2053c908; bytecode file offset 0xe3922c"
!SGIntegerStrategy methodsFor: 'recovered'!
assignDeltaT: recoveredArg1 externalIntegration: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBFloat.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := super assignDeltaT: (recoveredStack2) externalIntegration: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := SGCgExpressionContext.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 32.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlClass.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) getImplType.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) isSigned.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) intContext: (recoveredStack2) signed: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock39Stack0 recoveredBlock39Stack1 recoveredBlock39Stack2 recoveredBlock39Stack3 recoveredBlock39PC recoveredBlock39Step recoveredBlock39Done recoveredBlock39Result |
    recoveredBlock39Stack0 := self.
    recoveredBlock39PC := 46.
    recoveredBlock39Done := false.
    [recoveredBlock39Done not] whileTrue: [
        recoveredBlock39Step := recoveredBlock39PC.
        recoveredBlock39Step = 46 ifTrue: [
            recoveredBlock39Stack1 := recoveredArg1.
            recoveredBlock39PC := 49.
        ].
        recoveredBlock39Step = 49 ifTrue: [
            recoveredBlock39Stack0 := (recoveredBlock39Stack0) createIaLValueExpr: (recoveredBlock39Stack1).
            recoveredBlock39PC := 51.
        ].
        recoveredBlock39Step = 51 ifTrue: [
            recoveredLocal4 := recoveredBlock39Stack0.
            recoveredBlock39PC := 54.
        ].
        recoveredBlock39Step = 54 ifTrue: [
            recoveredBlock39Stack0 := recoveredLocal4.
            recoveredBlock39PC := 57.
        ].
        recoveredBlock39Step = 57 ifTrue: [
            recoveredBlock39Stack0 := (recoveredBlock39Stack0) scale.
            recoveredBlock39PC := 59.
        ].
        recoveredBlock39Step = 59 ifTrue: [
            recoveredBlock39Stack0 := (recoveredBlock39Stack0) asIleFraction.
            recoveredBlock39PC := 61.
        ].
        recoveredBlock39Step = 61 ifTrue: [
            recoveredLocal1 := recoveredBlock39Stack0.
            recoveredBlock39PC := 64.
        ].
        recoveredBlock39Step = 64 ifTrue: [
            recoveredBlock39Stack0 := recoveredLocal1.
            recoveredBlock39PC := 67.
        ].
        recoveredBlock39Step = 67 ifTrue: [
            recoveredBlock39Stack0 := (recoveredBlock39Stack0) numerator.
            recoveredBlock39PC := 69.
        ].
        recoveredBlock39Step = 69 ifTrue: [
            recoveredBlock39Stack0 := (recoveredBlock39Stack0) representable.
            recoveredBlock39PC := 71.
        ].
        recoveredBlock39Step = 71 ifTrue: [
            (recoveredBlock39Stack0) ifTrue: [recoveredBlock39PC := 74] ifFalse: [recoveredBlock39PC := 84].
        ].
        recoveredBlock39Step = 74 ifTrue: [
            recoveredBlock39Stack0 := recoveredLocal1.
            recoveredBlock39PC := 77.
        ].
        recoveredBlock39Step = 77 ifTrue: [
            recoveredBlock39Stack0 := (recoveredBlock39Stack0) denominator.
            recoveredBlock39PC := 79.
        ].
        recoveredBlock39Step = 79 ifTrue: [
            recoveredBlock39Stack0 := (recoveredBlock39Stack0) representable.
            recoveredBlock39PC := 81.
        ].
        recoveredBlock39Step = 81 ifTrue: [
            (recoveredBlock39Stack0) ifTrue: [recoveredBlock39PC := 94] ifFalse: [recoveredBlock39PC := 84].
        ].
        recoveredBlock39Step = 84 ifTrue: [
            recoveredBlock39Stack0 := self.
            recoveredBlock39PC := 85.
        ].
        recoveredBlock39Step = 85 ifTrue: [
            recoveredBlock39Stack0 := (recoveredBlock39Stack0) expander.
            recoveredBlock39PC := 87.
        ].
        recoveredBlock39Step = 87 ifTrue: [
            recoveredBlock39Stack1 := 21.
            recoveredBlock39PC := 89.
        ].
        recoveredBlock39Step = 89 ifTrue: [
            recoveredBlock39Stack2 := #().
            recoveredBlock39PC := 91.
        ].
        recoveredBlock39Step = 91 ifTrue: [
            recoveredBlock39Stack0 := (recoveredBlock39Stack0) iaFatalWithDisplay: (recoveredBlock39Stack1) with: (recoveredBlock39Stack2).
            recoveredBlock39PC := 93.
        ].
        recoveredBlock39Step = 93 ifTrue: [
            ^recoveredBlock39Stack0
        ].
        recoveredBlock39Step = 94 ifTrue: [
            recoveredBlock39Stack0 := self.
            recoveredBlock39PC := 95.
        ].
        recoveredBlock39Step = 95 ifTrue: [
            recoveredBlock39Stack1 := [
    | recoveredBlock39Block95Local1 recoveredBlock39Block95Stack0 recoveredBlock39Block95Stack1 recoveredBlock39Block95Stack2 recoveredBlock39Block95Stack3 recoveredBlock39Block95Stack4 recoveredBlock39Block95Stack5 recoveredBlock39Block95PC recoveredBlock39Block95Step recoveredBlock39Block95Done recoveredBlock39Block95Result |
    recoveredBlock39Block95Stack0 := self.
    recoveredBlock39Block95PC := 102.
    recoveredBlock39Block95Done := false.
    [recoveredBlock39Block95Done not] whileTrue: [
        recoveredBlock39Block95Step := recoveredBlock39Block95PC.
        recoveredBlock39Block95Step = 102 ifTrue: [
            recoveredBlock39Block95Stack1 := recoveredArg1.
            recoveredBlock39Block95PC := 105.
        ].
        recoveredBlock39Block95Step = 105 ifTrue: [
            recoveredBlock39Block95Stack1 := (recoveredBlock39Block95Stack1) mdlClass.
            recoveredBlock39Block95PC := 106.
        ].
        recoveredBlock39Block95Step = 106 ifTrue: [
            recoveredBlock39Block95Stack2 := recoveredArg1.
            recoveredBlock39Block95PC := 109.
        ].
        recoveredBlock39Block95Step = 109 ifTrue: [
            recoveredBlock39Block95Stack2 := (recoveredBlock39Block95Stack2) getPhysInterval.
            recoveredBlock39Block95PC := 111.
        ].
        recoveredBlock39Block95Step = 111 ifTrue: [
            recoveredBlock39Block95Stack1 := (recoveredBlock39Block95Stack1) asDtTargetType: (recoveredBlock39Block95Stack2).
            recoveredBlock39Block95PC := 113.
        ].
        recoveredBlock39Block95Step = 113 ifTrue: [
            recoveredBlock39Block95Local1 := recoveredBlock39Block95Stack1.
            recoveredBlock39Block95PC := 114.
        ].
        recoveredBlock39Block95Step = 114 ifTrue: [
            recoveredBlock39Block95Stack1 := recoveredArg1.
            recoveredBlock39Block95PC := 117.
        ].
        recoveredBlock39Block95Step = 117 ifTrue: [
            recoveredBlock39Block95Stack1 := (recoveredBlock39Block95Stack1) currentIaBuilder.
            recoveredBlock39Block95PC := 119.
        ].
        recoveredBlock39Block95Step = 119 ifTrue: [
            recoveredBlock39Block95Stack2 := self.
            recoveredBlock39Block95PC := 120.
        ].
        recoveredBlock39Block95Step = 120 ifTrue: [
            recoveredBlock39Block95Stack2 := (recoveredBlock39Block95Stack2) expander.
            recoveredBlock39Block95PC := 122.
        ].
        recoveredBlock39Block95Step = 122 ifTrue: [
            recoveredBlock39Block95Stack3 := recoveredBlock39Block95Local1.
            recoveredBlock39Block95PC := 123.
        ].
        recoveredBlock39Block95Step = 123 ifTrue: [
            recoveredBlock39Block95Stack4 := recoveredArg2.
            recoveredBlock39Block95PC := 126.
        ].
        recoveredBlock39Block95Step = 126 ifTrue: [
            recoveredBlock39Block95Stack2 := (recoveredBlock39Block95Stack2) genOSDtVar: (recoveredBlock39Block95Stack3) externalIntegration: (recoveredBlock39Block95Stack4).
            recoveredBlock39Block95PC := 128.
        ].
        recoveredBlock39Block95Step = 128 ifTrue: [
            recoveredBlock39Block95Stack3 := recoveredBlock39Block95Local1.
            recoveredBlock39Block95PC := 129.
        ].
        recoveredBlock39Block95Step = 129 ifTrue: [
            recoveredBlock39Block95Stack1 := (recoveredBlock39Block95Stack1) ileExpr: (recoveredBlock39Block95Stack2) implementation: (recoveredBlock39Block95Stack3).
            recoveredBlock39Block95PC := 131.
        ].
        recoveredBlock39Block95Step = 131 ifTrue: [
            recoveredLocal3 := recoveredBlock39Block95Stack1.
            recoveredBlock39Block95PC := 134.
        ].
        recoveredBlock39Block95Step = 134 ifTrue: [
            recoveredBlock39Block95Stack1 := recoveredLocal4.
            recoveredBlock39Block95PC := 137.
        ].
        recoveredBlock39Block95Step = 137 ifTrue: [
            recoveredBlock39Block95Stack1 := (recoveredBlock39Block95Stack1) scale.
            recoveredBlock39Block95PC := 139.
        ].
        recoveredBlock39Block95Step = 139 ifTrue: [
            recoveredBlock39Block95Stack2 := recoveredLocal3.
            recoveredBlock39Block95PC := 142.
        ].
        recoveredBlock39Block95Step = 142 ifTrue: [
            recoveredBlock39Block95Stack2 := (recoveredBlock39Block95Stack2) scale.
            recoveredBlock39Block95PC := 144.
        ].
        recoveredBlock39Block95Step = 144 ifTrue: [
            recoveredBlock39Block95Stack1 := (recoveredBlock39Block95Stack1) / (recoveredBlock39Block95Stack2).
            recoveredBlock39Block95PC := 146.
        ].
        recoveredBlock39Block95Step = 146 ifTrue: [
            recoveredBlock39Block95Stack1 := (recoveredBlock39Block95Stack1) asIleFraction.
            recoveredBlock39Block95PC := 148.
        ].
        recoveredBlock39Block95Step = 148 ifTrue: [
            recoveredLocal1 := recoveredBlock39Block95Stack1.
            recoveredBlock39Block95PC := 151.
        ].
        recoveredBlock39Block95Step = 151 ifTrue: [
            recoveredBlock39Block95Stack1 := recoveredLocal1.
            recoveredBlock39Block95PC := 154.
        ].
        recoveredBlock39Block95Step = 154 ifTrue: [
            recoveredBlock39Block95Stack1 := (recoveredBlock39Block95Stack1) numerator.
            recoveredBlock39Block95PC := 156.
        ].
        recoveredBlock39Block95Step = 156 ifTrue: [
            recoveredBlock39Block95Stack1 := (recoveredBlock39Block95Stack1) representable.
            recoveredBlock39Block95PC := 158.
        ].
        recoveredBlock39Block95Step = 158 ifTrue: [
            (recoveredBlock39Block95Stack1) ifTrue: [recoveredBlock39Block95PC := 162] ifFalse: [recoveredBlock39Block95PC := 172].
        ].
        recoveredBlock39Block95Step = 162 ifTrue: [
            recoveredBlock39Block95Stack1 := recoveredLocal1.
            recoveredBlock39Block95PC := 165.
        ].
        recoveredBlock39Block95Step = 165 ifTrue: [
            recoveredBlock39Block95Stack1 := (recoveredBlock39Block95Stack1) denominator.
            recoveredBlock39Block95PC := 167.
        ].
        recoveredBlock39Block95Step = 167 ifTrue: [
            recoveredBlock39Block95Stack1 := (recoveredBlock39Block95Stack1) representable.
            recoveredBlock39Block95PC := 169.
        ].
        recoveredBlock39Block95Step = 169 ifTrue: [
            (recoveredBlock39Block95Stack1) ifTrue: [recoveredBlock39Block95PC := 182] ifFalse: [recoveredBlock39Block95PC := 172].
        ].
        recoveredBlock39Block95Step = 172 ifTrue: [
            recoveredBlock39Block95Stack1 := self.
            recoveredBlock39Block95PC := 173.
        ].
        recoveredBlock39Block95Step = 173 ifTrue: [
            recoveredBlock39Block95Stack1 := (recoveredBlock39Block95Stack1) expander.
            recoveredBlock39Block95PC := 175.
        ].
        recoveredBlock39Block95Step = 175 ifTrue: [
            recoveredBlock39Block95Stack2 := 21.
            recoveredBlock39Block95PC := 177.
        ].
        recoveredBlock39Block95Step = 177 ifTrue: [
            recoveredBlock39Block95Stack3 := #().
            recoveredBlock39Block95PC := 179.
        ].
        recoveredBlock39Block95Step = 179 ifTrue: [
            recoveredBlock39Block95Stack1 := (recoveredBlock39Block95Stack1) iaFatalWithDisplay: (recoveredBlock39Block95Stack2) with: (recoveredBlock39Block95Stack3).
            recoveredBlock39Block95PC := 181.
        ].
        recoveredBlock39Block95Step = 181 ifTrue: [
            ^recoveredBlock39Block95Stack1
        ].
        recoveredBlock39Block95Step = 182 ifTrue: [
            recoveredBlock39Block95Stack1 := recoveredLocal4.
            recoveredBlock39Block95PC := 185.
        ].
        recoveredBlock39Block95Step = 185 ifTrue: [
            recoveredBlock39Block95Stack2 := recoveredLocal3.
            recoveredBlock39Block95PC := 188.
        ].
        recoveredBlock39Block95Step = 188 ifTrue: [
            recoveredBlock39Block95Stack3 := recoveredArg1.
            recoveredBlock39Block95PC := 191.
        ].
        recoveredBlock39Block95Step = 191 ifTrue: [
            recoveredBlock39Block95Stack1 := (recoveredBlock39Block95Stack1) assign: (recoveredBlock39Block95Stack2) mdlNode: (recoveredBlock39Block95Stack3).
            recoveredBlock39Block95PC := 193.
        ].
        recoveredBlock39Block95Step = 193 ifTrue: [
            recoveredLocal2 := recoveredBlock39Block95Stack1.
            recoveredBlock39Block95PC := 196.
        ].
        recoveredBlock39Block95Step = 196 ifTrue: [
            recoveredBlock39Block95Stack1 := recoveredLocal2.
            recoveredBlock39Block95PC := 199.
        ].
        recoveredBlock39Block95Step = 199 ifTrue: [
            recoveredBlock39Block95Stack1 := (recoveredBlock39Block95Stack1) ileExpr.
            recoveredBlock39Block95PC := 201.
        ].
        recoveredBlock39Block95Step = 201 ifTrue: [
            recoveredBlock39Block95Stack1 := (recoveredBlock39Block95Stack1) asIleExprStmnt.
            recoveredBlock39Block95PC := 203.
        ].
        recoveredBlock39Block95Step = 203 ifTrue: [
            ^recoveredBlock39Block95Stack1
        ].
    ].
    recoveredBlock39Block95Result
].
            recoveredBlock39PC := 204.
        ].
        recoveredBlock39Step = 204 ifTrue: [
            recoveredBlock39Stack0 := (recoveredBlock39Stack0) temporarySetTo32RepresentableBits: (recoveredBlock39Stack1).
            recoveredBlock39PC := 206.
        ].
        recoveredBlock39Step = 206 ifTrue: [
            recoveredBlock39Result := recoveredBlock39Stack0.
            recoveredBlock39Done := true.
        ].
    ].
    recoveredBlock39Result
].
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack1) execute: (recoveredStack2).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20558218; bytecode file offset 0xe54b3c"
!SGIntegerStrategy methodsFor: 'recovered'!
handleArgumentInOut: recoveredArg1 doBefore: recoveredArg2 doAfter: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) variable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) genIleType.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDirectInOutArgument: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitMdlNode: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileExpr.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 224.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightChild.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitMdlNode: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileExpr.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleDereferencedExpr.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleLValueCopy.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightChild.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := (recoveredStack3) type.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := (recoveredStack4) source.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock63Value0 recoveredBlock63Value1 recoveredBlock63Value2 recoveredBlock63Value3 recoveredBlock63Value4 recoveredBlock63Value5 recoveredBlock63Value6 recoveredBlock63Value7 recoveredBlock63Value8 recoveredBlock63Value9 recoveredBlock63Value10 recoveredBlock63Value11 recoveredBlock63Value12 recoveredBlock63Value13 recoveredBlock63Value14 recoveredBlock63Value15 recoveredBlock63Value16 |
    recoveredBlock63Value0 := (self) ileBuilder.
    recoveredBlock63Value1 := (recoveredBlock63Value0) optimizeOperatorSimplificationImplAware.
    recoveredBlock63Value2 := [
    | recoveredBlock63Block74Value0 recoveredBlock63Block74Value1 recoveredBlock63Block74Value2 |
    recoveredBlock63Block74Value0 := (self) ileBuilder.
    recoveredBlock63Block74Value1 := recoveredLocal3.
    recoveredBlock63Block74Value2 := (recoveredBlock63Block74Value0) tempAssign: (recoveredBlock63Block74Value1).
    recoveredBlock63Block74Value2
].
    recoveredBlock63Value3 := (recoveredBlock63Value1) disableOptimizationsDo: (recoveredBlock63Value2).
    recoveredLocal4 := recoveredBlock63Value3.
    recoveredBlock63Value4 := recoveredLocal4.
    recoveredBlock63Value5 := (recoveredBlock63Value4) tempAssign.
    recoveredBlock63Value6 := (self) ileBuilder.
    recoveredBlock63Value7 := recoveredLocal4.
    recoveredBlock63Value8 := (recoveredBlock63Value7) type.
    recoveredBlock63Value9 := (recoveredBlock63Value6) tempVar: (recoveredBlock63Value8).
    (recoveredBlock63Value5) tempVar: (recoveredBlock63Value9).
    recoveredBlock63Value10 := recoveredArg2.
    recoveredBlock63Value11 := recoveredLocal4.
    (recoveredBlock63Value10) add: (recoveredBlock63Value11).
    recoveredBlock63Value12 := SGCgExpressionContext.
    recoveredBlock63Value13 := (recoveredBlock63Value12) nonArithmeticContext.
    recoveredBlock63Value14 := [
    | recoveredBlock63Block122Value0 recoveredBlock63Block122Value1 recoveredBlock63Block122Value2 recoveredBlock63Block122Value3 recoveredBlock63Block122Value4 recoveredBlock63Block122Value5 recoveredBlock63Block122Value6 |
    recoveredBlock63Block122Value0 := recoveredLocal4.
    recoveredBlock63Block122Value1 := (recoveredBlock63Block122Value0) asIleReferencedExpr.
    recoveredBlock63Block122Value2 := recoveredArg1.
    recoveredBlock63Block122Value3 := (recoveredBlock63Block122Value2) genIleType.
    recoveredBlock63Block122Value4 := recoveredArg1.
    recoveredBlock63Block122Value5 := (recoveredBlock63Block122Value4) attributes.
    recoveredBlock63Block122Value6 := (recoveredBlock63Block122Value1) parmAssign: (recoveredBlock63Block122Value3) attributes: (recoveredBlock63Block122Value5).
    recoveredBlock63Block122Value6
].
    recoveredBlock63Value15 := (recoveredBlock63Value13) executeInContext: (recoveredBlock63Value14).
    recoveredBlock63Value16 := recoveredBlock63Value15.
    recoveredLocal4 := recoveredBlock63Value16.
    recoveredBlock63Value15
].
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack1) withExpressionContextFrom: (recoveredStack2) lValueType: (recoveredStack3) source: (recoveredStack4) do: (recoveredStack5).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileExpr.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := (recoveredStack2) tempAssign.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightChild.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack3 := (recoveredStack3) asMdlDereferencedExpr.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) wrapIleExpr: (recoveredStack2) forMdExpr: (recoveredStack3).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack4 := (recoveredStack4) rightChild.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack4 := (recoveredStack4) asMdlDereferencedExpr.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack6 := recoveredLocal3.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack6 := (recoveredStack6) type.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := (recoveredStack2) assignInOutTempVar: (recoveredStack3) to: (recoveredStack4) ileExpr: (recoveredStack5) type: (recoveredStack6).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2057726c; bytecode file offset 0xe73b7c"
!SGIntegerStrategy methodsFor: 'recovered'!
genIleIntegerFirstPass: recoveredArg1 choices: recoveredArg2 default: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) optData.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetScale.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) attributes.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) changeScaleTo: (recoveredStack2) attributes: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Value0 recoveredBlock30Value1 recoveredBlock30Value2 recoveredBlock30Value3 recoveredBlock30Value4 |
    recoveredBlock30Value0 := recoveredBlock30Arg1.
    recoveredBlock30Value1 := recoveredLocal2.
    recoveredBlock30Value2 := recoveredArg1.
    recoveredBlock30Value3 := (recoveredBlock30Value2) attributes.
    recoveredBlock30Value4 := (recoveredBlock30Value0) changeScaleTo: (recoveredBlock30Value1) attributes: (recoveredBlock30Value3).
    recoveredBlock30Value4
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := (recoveredStack3) attributes.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) tempVarForMuxResult: (recoveredStack2) attributes: (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredPC := 147.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultExprChild.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitMdlNode: (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := (recoveredStack3) attributes.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) changeScaleTo: (recoveredStack2) attributes: (recoveredStack3).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) choiceChildren.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := [:recoveredBlock105Arg1 | 
    | recoveredBlock105Value0 recoveredBlock105Value1 recoveredBlock105Value2 recoveredBlock105Value3 recoveredBlock105Value4 recoveredBlock105Value5 recoveredBlock105Value6 recoveredBlock105Value7 |
    recoveredBlock105Value0 := recoveredBlock105Arg1.
    recoveredBlock105Value1 := (recoveredBlock105Value0) exprChild.
    recoveredBlock105Value2 := (self) visitMdlNode: (recoveredBlock105Value1).
    recoveredBlock105Value3 := recoveredLocal2.
    recoveredBlock105Value4 := recoveredBlock105Arg1.
    recoveredBlock105Value5 := (recoveredBlock105Value4) exprChild.
    recoveredBlock105Value6 := (recoveredBlock105Value5) attributes.
    recoveredBlock105Value7 := (recoveredBlock105Value2) changeScaleTo: (recoveredBlock105Value3) attributes: (recoveredBlock105Value6).
    recoveredBlock105Value7
].
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack3 := (recoveredStack3) attributes.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) tempVarForMuxResult: (recoveredStack2) attributes: (recoveredStack3).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) overflow.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 168].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrLimitOverflow.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 168].
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := (recoveredStack1) overflow.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 182] ifFalse: [recoveredPC := 229].
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack3 := (recoveredStack3) interval.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack4 := (recoveredStack4) errLabel.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack1) iaSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack3 := (recoveredStack3) interval.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack5 := (recoveredStack5) interval.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack5 := (recoveredStack5) overflow.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack4 := (recoveredStack4) raisedToInteger: (recoveredStack5).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := (recoveredStack2) createImplTypeFromInterval: (recoveredStack3).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBuilder.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack4 := (recoveredStack4) ileBuilder.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack5 := (recoveredStack5) interval.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack4 := (recoveredStack4) createImplTypeFromInterval: (recoveredStack5).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack3 := (recoveredStack3) tempVar: (recoveredStack4).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            (recoveredStack2) ileExpr: (recoveredStack3).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205ab2a4; bytecode file offset 0xea7bd8"
!SGIntegerStrategy methodsFor: 'recovered'!
unaryArithmeticExpr: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) needsIntegerCode.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentIaBuilder.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := super unaryArithmeticExpr: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) wrappedIleExpr: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) propagateInfoToUnaryChild: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlIncrement.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlDecrement.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 201].
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
            recoveredStack1 := (recoveredStack1) child.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock52Value0 recoveredBlock52Value1 recoveredBlock52Value2 recoveredBlock52Value3 recoveredBlock52Value4 recoveredBlock52Value5 recoveredBlock52Value6 recoveredBlock52Value7 recoveredBlock52Value8 recoveredBlock52Value9 |
    recoveredBlock52Value0 := recoveredArg1.
    recoveredBlock52Value1 := (recoveredBlock52Value0) child.
    recoveredBlock52Value2 := (self) visitMdlNode: (recoveredBlock52Value1).
    recoveredLocal1 := recoveredBlock52Value2.
    recoveredBlock52Value3 := [
    | recoveredBlock52Block68Value0 recoveredBlock52Block68Value1 |
    recoveredBlock52Block68Value0 := recoveredArg1.
    recoveredBlock52Block68Value1 := (recoveredBlock52Block68Value0) operator.
    recoveredBlock52Block68Value1
].
    recoveredBlock52Value4 := [
    | recoveredBlock52Block82Value0 recoveredBlock52Block82Value1 recoveredBlock52Block82Value2 recoveredBlock52Block82Value3 |
    recoveredBlock52Block82Value0 := recoveredLocal1.
    recoveredBlock52Block82Value1 := recoveredArg1.
    recoveredBlock52Block82Value2 := (recoveredBlock52Block82Value1) attributes.
    recoveredBlock52Block82Value3 := (recoveredBlock52Block82Value0) postDec: (recoveredBlock52Block82Value2).
    recoveredBlock52Block82Value3
].
    recoveredBlock52Value5 := [
    | recoveredBlock52Block101Value0 recoveredBlock52Block101Value1 recoveredBlock52Block101Value2 recoveredBlock52Block101Value3 |
    recoveredBlock52Block101Value0 := recoveredLocal1.
    recoveredBlock52Block101Value1 := recoveredArg1.
    recoveredBlock52Block101Value2 := (recoveredBlock52Block101Value1) attributes.
    recoveredBlock52Block101Value3 := (recoveredBlock52Block101Value0) postInc: (recoveredBlock52Block101Value2).
    recoveredBlock52Block101Value3
].
    recoveredBlock52Value6 := [
    | recoveredBlock52Block121Value0 recoveredBlock52Block121Value1 recoveredBlock52Block121Value2 recoveredBlock52Block121Value3 |
    recoveredBlock52Block121Value0 := recoveredLocal1.
    recoveredBlock52Block121Value1 := recoveredArg1.
    recoveredBlock52Block121Value2 := (recoveredBlock52Block121Value1) attributes.
    recoveredBlock52Block121Value3 := (recoveredBlock52Block121Value0) preDec: (recoveredBlock52Block121Value2).
    recoveredBlock52Block121Value3
].
    recoveredBlock52Value7 := [
    | recoveredBlock52Block141Value0 recoveredBlock52Block141Value1 recoveredBlock52Block141Value2 recoveredBlock52Block141Value3 |
    recoveredBlock52Block141Value0 := recoveredLocal1.
    recoveredBlock52Block141Value1 := recoveredArg1.
    recoveredBlock52Block141Value2 := (recoveredBlock52Block141Value1) attributes.
    recoveredBlock52Block141Value3 := (recoveredBlock52Block141Value0) preInc: (recoveredBlock52Block141Value2).
    recoveredBlock52Block141Value3
].
    recoveredBlock52Value8 := [
    | recoveredBlock52Block159Stack0 recoveredBlock52Block159Stack1 recoveredBlock52Block159Stack2 recoveredBlock52Block159Stack3 recoveredBlock52Block159PC recoveredBlock52Block159Step recoveredBlock52Block159Done recoveredBlock52Block159Result |
    recoveredBlock52Block159Stack0 := self.
    recoveredBlock52Block159PC := 166.
    recoveredBlock52Block159Done := false.
    [recoveredBlock52Block159Done not] whileTrue: [
        recoveredBlock52Block159Step := recoveredBlock52Block159PC.
        recoveredBlock52Block159Step = 166 ifTrue: [
            recoveredBlock52Block159Stack1 := [
    false
].
            recoveredBlock52Block159PC := 168.
        ].
        recoveredBlock52Block159Step = 168 ifTrue: [
            recoveredBlock52Block159PC := 174.
        ].
        recoveredBlock52Block159Step = 174 ifTrue: [
            recoveredBlock52Block159Stack2 := [
    | recoveredBlock52Block159Block174Value0 recoveredBlock52Block159Block174Value1 recoveredBlock52Block159Block174Value2 |
    recoveredBlock52Block159Block174Value0 := recoveredArg1.
    recoveredBlock52Block159Block174Value1 := (recoveredBlock52Block159Block174Value0) operator.
    recoveredBlock52Block159Block174Value2 := ('Unknown operation ') , (recoveredBlock52Block159Block174Value1).
    recoveredBlock52Block159Block174Value2
].
            recoveredBlock52Block159PC := 190.
        ].
        recoveredBlock52Block159Step = 190 ifTrue: [
            (recoveredBlock52Block159Stack0) ileAssert: (recoveredBlock52Block159Stack1) message: (recoveredBlock52Block159Stack2).
            recoveredBlock52Block159PC := 192.
        ].
        recoveredBlock52Block159Step = 192 ifTrue: [
            recoveredBlock52Block159Stack0 := nil.
            recoveredBlock52Block159PC := 193.
        ].
        recoveredBlock52Block159Step = 193 ifTrue: [
            recoveredBlock52Block159Result := recoveredBlock52Block159Stack0.
            recoveredBlock52Block159Done := true.
        ].
    ].
    recoveredBlock52Block159Result
].
    recoveredBlock52Value9 := (recoveredBlock52Value3) case: ('postDec') do: (recoveredBlock52Value4) case: ('postInc') do: (recoveredBlock52Value5) case: ('preDec') do: (recoveredBlock52Value6) case: ('preInc') do: (recoveredBlock52Value7) others: (recoveredBlock52Value8).
    recoveredBlock52Value9
].
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := (recoveredStack0) withExpressionContextFrom: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := (recoveredStack1) child.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitMdlNode: (recoveredStack1).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock212Value0 recoveredBlock212Value1 |
    recoveredBlock212Value0 := recoveredArg1.
    recoveredBlock212Value1 := (recoveredBlock212Value0) operator.
    recoveredBlock212Value1
].
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := 'abs'.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock226Value0 recoveredBlock226Value1 recoveredBlock226Value2 recoveredBlock226Value3 |
    recoveredBlock226Value0 := recoveredLocal1.
    recoveredBlock226Value1 := recoveredArg1.
    recoveredBlock226Value2 := (recoveredBlock226Value1) attributes.
    recoveredBlock226Value3 := (recoveredBlock226Value0) abs: (recoveredBlock226Value2).
    recoveredBlock226Value3
].
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack3 := 'neg'.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock245Value0 recoveredBlock245Value1 recoveredBlock245Value2 recoveredBlock245Value3 |
    recoveredBlock245Value0 := recoveredLocal1.
    recoveredBlock245Value1 := recoveredArg1.
    recoveredBlock245Value2 := (recoveredBlock245Value1) attributes.
    recoveredBlock245Value3 := (recoveredBlock245Value0) neg: (recoveredBlock245Value2).
    recoveredBlock245Value3
].
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock263Stack0 recoveredBlock263Stack1 recoveredBlock263Stack2 recoveredBlock263Stack3 recoveredBlock263PC recoveredBlock263Step recoveredBlock263Done recoveredBlock263Result |
    recoveredBlock263Stack0 := self.
    recoveredBlock263PC := 270.
    recoveredBlock263Done := false.
    [recoveredBlock263Done not] whileTrue: [
        recoveredBlock263Step := recoveredBlock263PC.
        recoveredBlock263Step = 270 ifTrue: [
            recoveredBlock263Stack1 := [
    false
].
            recoveredBlock263PC := 272.
        ].
        recoveredBlock263Step = 272 ifTrue: [
            recoveredBlock263PC := 278.
        ].
        recoveredBlock263Step = 278 ifTrue: [
            recoveredBlock263Stack2 := [
    | recoveredBlock263Block278Value0 recoveredBlock263Block278Value1 recoveredBlock263Block278Value2 |
    recoveredBlock263Block278Value0 := recoveredArg1.
    recoveredBlock263Block278Value1 := (recoveredBlock263Block278Value0) operator.
    recoveredBlock263Block278Value2 := ('Unknown operation ') , (recoveredBlock263Block278Value1).
    recoveredBlock263Block278Value2
].
            recoveredBlock263PC := 294.
        ].
        recoveredBlock263Step = 294 ifTrue: [
            (recoveredBlock263Stack0) ileAssert: (recoveredBlock263Stack1) message: (recoveredBlock263Stack2).
            recoveredBlock263PC := 296.
        ].
        recoveredBlock263Step = 296 ifTrue: [
            recoveredBlock263Stack0 := nil.
            recoveredBlock263PC := 297.
        ].
        recoveredBlock263Step = 297 ifTrue: [
            recoveredBlock263Result := recoveredBlock263Stack0.
            recoveredBlock263Done := true.
        ].
    ].
    recoveredBlock263Result
].
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack0 := (recoveredStack0) case: (recoveredStack1) do: (recoveredStack2) case: (recoveredStack3) do: (recoveredStack4) others: (recoveredStack5).
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205cffc0; bytecode file offset 0xecc908"
!SGIntegerStrategy methodsFor: 'recovered'!
returnStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) needsIntegerCode.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodDecl.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlReference.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 29].
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
            recoveredStack1 := super returnStmnt: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) child.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock44Local1 recoveredBlock44Local2 recoveredBlock44Stack0 recoveredBlock44Stack1 recoveredBlock44Stack2 recoveredBlock44Stack3 recoveredBlock44Stack4 recoveredBlock44Stack5 recoveredBlock44Stack6 recoveredBlock44PC recoveredBlock44Step recoveredBlock44Done recoveredBlock44Result |
    recoveredBlock44Stack0 := self.
    recoveredBlock44PC := 50.
    recoveredBlock44Done := false.
    [recoveredBlock44Done not] whileTrue: [
        recoveredBlock44Step := recoveredBlock44PC.
        recoveredBlock44Step = 50 ifTrue: [
            recoveredBlock44Stack1 := recoveredArg1.
            recoveredBlock44PC := 53.
        ].
        recoveredBlock44Step = 53 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) mdlClass.
            recoveredBlock44PC := 55.
        ].
        recoveredBlock44Step = 55 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) isCgContMoebiusFixedPointType.
            recoveredBlock44PC := 57.
        ].
        recoveredBlock44Step = 57 ifTrue: [
            (recoveredBlock44Stack1) ifTrue: [recoveredBlock44PC := 60] ifFalse: [recoveredBlock44PC := 132].
        ].
        recoveredBlock44Step = 60 ifTrue: [
            recoveredBlock44Stack1 := self.
            recoveredBlock44PC := 61.
        ].
        recoveredBlock44Step = 61 ifTrue: [
            recoveredBlock44Stack2 := recoveredArg1.
            recoveredBlock44PC := 64.
        ].
        recoveredBlock44Step = 64 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) child.
            recoveredBlock44PC := 66.
        ].
        recoveredBlock44Step = 66 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) visitMdlNode: (recoveredBlock44Stack2).
            recoveredBlock44PC := 68.
        ].
        recoveredBlock44Step = 68 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) ileExpr.
            recoveredBlock44PC := 70.
        ].
        recoveredBlock44Step = 70 ifTrue: [
            recoveredBlock44Local2 := recoveredBlock44Stack1.
            recoveredBlock44PC := 71.
        ].
        recoveredBlock44Step = 71 ifTrue: [
            recoveredBlock44Stack1 := self.
            recoveredBlock44PC := 72.
        ].
        recoveredBlock44Step = 72 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) currentIaBuilder.
            recoveredBlock44PC := 74.
        ].
        recoveredBlock44Step = 74 ifTrue: [
            recoveredBlock44Stack2 := recoveredBlock44Local2.
            recoveredBlock44PC := 75.
        ].
        recoveredBlock44Step = 75 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) wrappedIleExpr: (recoveredBlock44Stack2).
            recoveredBlock44PC := 77.
        ].
        recoveredBlock44Step = 77 ifTrue: [
            recoveredBlock44Local1 := recoveredBlock44Stack1.
            recoveredBlock44PC := 78.
        ].
        recoveredBlock44Step = 78 ifTrue: [
            recoveredBlock44Stack1 := self.
            recoveredBlock44PC := 79.
        ].
        recoveredBlock44Step = 79 ifTrue: [
            recoveredBlock44Stack2 := recoveredArg1.
            recoveredBlock44PC := 82.
        ].
        recoveredBlock44Step = 82 ifTrue: [
            recoveredBlock44Stack3 := recoveredBlock44Local1.
            recoveredBlock44PC := 83.
        ].
        recoveredBlock44Step = 83 ifTrue: [
            recoveredBlock44Stack3 := (recoveredBlock44Stack3) ileExpr.
            recoveredBlock44PC := 85.
        ].
        recoveredBlock44Step = 85 ifTrue: [
            recoveredBlock44Stack4 := recoveredArg1.
            recoveredBlock44PC := 88.
        ].
        recoveredBlock44Step = 88 ifTrue: [
            recoveredBlock44Stack4 := (recoveredBlock44Stack4) mdlClass.
            recoveredBlock44PC := 90.
        ].
        recoveredBlock44Step = 90 ifTrue: [
            recoveredBlock44Stack3 := (recoveredBlock44Stack3) adaptLiteralToMoebious: (recoveredBlock44Stack4).
            recoveredBlock44PC := 92.
        ].
        recoveredBlock44Step = 92 ifTrue: [
            recoveredBlock44Stack4 := recoveredArg1.
            recoveredBlock44PC := 95.
        ].
        recoveredBlock44Step = 95 ifTrue: [
            recoveredBlock44Stack4 := (recoveredBlock44Stack4) genIleType.
            recoveredBlock44PC := 97.
        ].
        recoveredBlock44Step = 97 ifTrue: [
            recoveredBlock44Stack5 := self.
            recoveredBlock44PC := 98.
        ].
        recoveredBlock44Step = 98 ifTrue: [
            recoveredBlock44Stack5 := (recoveredBlock44Stack5) defaultInAttributes.
            recoveredBlock44PC := 100.
        ].
        recoveredBlock44Step = 100 ifTrue: [
            recoveredBlock44Stack3 := (recoveredBlock44Stack3) parmAssign: (recoveredBlock44Stack4) attributes: (recoveredBlock44Stack5).
            recoveredBlock44PC := 102.
        ].
        recoveredBlock44Step = 102 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) createIleReturnStmnt: (recoveredBlock44Stack2) expr: (recoveredBlock44Stack3).
            recoveredBlock44PC := 104.
        ].
        recoveredBlock44Step = 104 ifTrue: [
            recoveredLocal1 := recoveredBlock44Stack1.
            recoveredBlock44PC := 107.
        ].
        recoveredBlock44Step = 107 ifTrue: [
            recoveredBlock44Stack1 := recoveredLocal1.
            recoveredBlock44PC := 110.
        ].
        recoveredBlock44Step = 110 ifTrue: [
            recoveredBlock44Stack2 := recoveredLocal1.
            recoveredBlock44PC := 113.
        ].
        recoveredBlock44Step = 113 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) source.
            recoveredBlock44PC := 115.
        ].
        recoveredBlock44Step = 115 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) copy.
            recoveredBlock44PC := 117.
        ].
        recoveredBlock44Step = 117 ifTrue: [
            (recoveredBlock44Stack1) source: (recoveredBlock44Stack2).
            recoveredBlock44PC := 119.
        ].
        recoveredBlock44Step = 119 ifTrue: [
            recoveredBlock44Stack1 := self.
            recoveredBlock44PC := 120.
        ].
        recoveredBlock44Step = 120 ifTrue: [
            recoveredBlock44Stack2 := recoveredBlock44Local1.
            recoveredBlock44PC := 121.
        ].
        recoveredBlock44Step = 121 ifTrue: [
            recoveredBlock44Stack3 := recoveredLocal1.
            recoveredBlock44PC := 124.
        ].
        recoveredBlock44Step = 124 ifTrue: [
            recoveredBlock44Stack3 := (recoveredBlock44Stack3) source.
            recoveredBlock44PC := 126.
        ].
        recoveredBlock44Step = 126 ifTrue: [
            (recoveredBlock44Stack1) addImplInfoComment: (recoveredBlock44Stack2) source: (recoveredBlock44Stack3).
            recoveredBlock44PC := 128.
        ].
        recoveredBlock44Step = 128 ifTrue: [
            recoveredBlock44Stack1 := recoveredLocal1.
            recoveredBlock44PC := 131.
        ].
        recoveredBlock44Step = 131 ifTrue: [
            ^recoveredBlock44Stack1
        ].
        recoveredBlock44Step = 132 ifTrue: [
            recoveredBlock44Stack1 := 'Rl'.
            recoveredBlock44PC := 134.
        ].
        recoveredBlock44Step = 134 ifTrue: [
            recoveredBlock44Stack2 := 'Call_62893'.
            recoveredBlock44PC := 136.
        ].
        recoveredBlock44Step = 136 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) == (recoveredBlock44Stack2).
            recoveredBlock44PC := 137.
        ].
        recoveredBlock44Step = 137 ifTrue: [
            recoveredBlock44PC := 138.
        ].
        recoveredBlock44Step = 138 ifTrue: [
            recoveredBlock44Stack1 := recoveredArg1.
            recoveredBlock44PC := 141.
        ].
        recoveredBlock44Step = 141 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) methodDecl.
            recoveredBlock44PC := 142.
        ].
        recoveredBlock44Step = 142 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) mdlClass.
            recoveredBlock44PC := 144.
        ].
        recoveredBlock44Step = 144 ifTrue: [
            recoveredLocal3 := recoveredBlock44Stack1.
            recoveredBlock44PC := 147.
        ].
        recoveredBlock44Step = 147 ifTrue: [
            recoveredBlock44Stack1 := recoveredArg1.
            recoveredBlock44PC := 150.
        ].
        recoveredBlock44Step = 150 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) child.
            recoveredBlock44PC := 152.
        ].
        recoveredBlock44Step = 152 ifTrue: [
            recoveredBlock44Stack2 := recoveredLocal3.
            recoveredBlock44PC := 155.
        ].
        recoveredBlock44Step = 155 ifTrue: [
            (recoveredBlock44Stack1) setExactGoalScaleFromImpl: (recoveredBlock44Stack2).
            recoveredBlock44PC := 157.
        ].
        recoveredBlock44Step = 157 ifTrue: [
            recoveredBlock44Stack1 := recoveredArg1.
            recoveredBlock44PC := 160.
        ].
        recoveredBlock44Step = 160 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) currentIaBuilder.
            recoveredBlock44PC := 162.
        ].
        recoveredBlock44Step = 162 ifTrue: [
            recoveredBlock44Stack2 := recoveredArg1.
            recoveredBlock44PC := 165.
        ].
        recoveredBlock44Step = 165 ifTrue: [
            recoveredBlock44Stack3 := recoveredArg1.
            recoveredBlock44PC := 168.
        ].
        recoveredBlock44Step = 168 ifTrue: [
            recoveredBlock44Stack3 := (recoveredBlock44Stack3) genIleType.
            recoveredBlock44PC := 170.
        ].
        recoveredBlock44Step = 170 ifTrue: [
            recoveredBlock44Stack4 := recoveredArg1.
            recoveredBlock44PC := 173.
        ].
        recoveredBlock44Step = 173 ifTrue: [
            recoveredBlock44Stack4 := (recoveredBlock44Stack4) methodDecl.
            recoveredBlock44PC := 174.
        ].
        recoveredBlock44Step = 174 ifTrue: [
            recoveredBlock44Stack4 := (recoveredBlock44Stack4) mdlClass.
            recoveredBlock44PC := 176.
        ].
        recoveredBlock44Step = 176 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) createReturn: (recoveredBlock44Stack2) type: (recoveredBlock44Stack3) implementation: (recoveredBlock44Stack4).
            recoveredBlock44PC := 179.
        ].
        recoveredBlock44Step = 179 ifTrue: [
            recoveredLocal6 := recoveredBlock44Stack1.
            recoveredBlock44PC := 182.
        ].
        recoveredBlock44Step = 182 ifTrue: [
            recoveredBlock44Stack1 := recoveredLocal6.
            recoveredBlock44PC := 185.
        ].
        recoveredBlock44Step = 185 ifTrue: [
            recoveredBlock44Stack2 := recoveredLocal3.
            recoveredBlock44PC := 188.
        ].
        recoveredBlock44Step = 188 ifTrue: [
            (recoveredBlock44Stack1) setExactGoalScaleFromImpl: (recoveredBlock44Stack2).
            recoveredBlock44PC := 190.
        ].
        recoveredBlock44Step = 190 ifTrue: [
            recoveredBlock44Stack1 := 'Rl'.
            recoveredBlock44PC := 192.
        ].
        recoveredBlock44Step = 192 ifTrue: [
            recoveredBlock44Stack2 := 'Call_63518'.
            recoveredBlock44PC := 194.
        ].
        recoveredBlock44Step = 194 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) == (recoveredBlock44Stack2).
            recoveredBlock44PC := 195.
        ].
        recoveredBlock44Step = 195 ifTrue: [
            recoveredBlock44PC := 196.
        ].
        recoveredBlock44Step = 196 ifTrue: [
            recoveredBlock44Stack1 := recoveredArg1.
            recoveredBlock44PC := 199.
        ].
        recoveredBlock44Step = 199 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) child.
            recoveredBlock44PC := 201.
        ].
        recoveredBlock44Step = 201 ifTrue: [
            recoveredBlock44Stack2 := recoveredArg1.
            recoveredBlock44PC := 204.
        ].
        recoveredBlock44Step = 204 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) attributes.
            recoveredBlock44PC := 206.
        ].
        recoveredBlock44Step = 206 ifTrue: [
            (recoveredBlock44Stack1) attributes: (recoveredBlock44Stack2).
            recoveredBlock44PC := 208.
        ].
        recoveredBlock44Step = 208 ifTrue: [
            recoveredBlock44Stack1 := recoveredArg1.
            recoveredBlock44PC := 211.
        ].
        recoveredBlock44Step = 211 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) child.
            recoveredBlock44PC := 213.
        ].
        recoveredBlock44Step = 213 ifTrue: [
            recoveredBlock44Stack0 := (recoveredBlock44Stack0) visitMdlNode: (recoveredBlock44Stack1).
            recoveredBlock44PC := 215.
        ].
        recoveredBlock44Step = 215 ifTrue: [
            recoveredLocal5 := recoveredBlock44Stack0.
            recoveredBlock44PC := 218.
        ].
        recoveredBlock44Step = 218 ifTrue: [
            recoveredBlock44Stack0 := recoveredLocal6.
            recoveredBlock44PC := 221.
        ].
        recoveredBlock44Step = 221 ifTrue: [
            recoveredBlock44Stack1 := recoveredLocal5.
            recoveredBlock44PC := 224.
        ].
        recoveredBlock44Step = 224 ifTrue: [
            recoveredBlock44Stack2 := recoveredArg1.
            recoveredBlock44PC := 227.
        ].
        recoveredBlock44Step = 227 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) attributes.
            recoveredBlock44PC := 229.
        ].
        recoveredBlock44Step = 229 ifTrue: [
            recoveredBlock44Stack3 := false.
            recoveredBlock44PC := 230.
        ].
        recoveredBlock44Step = 230 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) allowDoubleBitSize: (recoveredBlock44Stack3).
            recoveredBlock44PC := 232.
        ].
        recoveredBlock44Step = 232 ifTrue: [
            recoveredBlock44Stack0 := (recoveredBlock44Stack0) prepareAssign: (recoveredBlock44Stack1) attributes: (recoveredBlock44Stack2).
            recoveredBlock44PC := 234.
        ].
        recoveredBlock44Step = 234 ifTrue: [
            recoveredLocal2 := recoveredBlock44Stack0.
            recoveredBlock44PC := 237.
        ].
        recoveredBlock44Step = 237 ifTrue: [
            recoveredBlock44Stack0 := recoveredArg1.
            recoveredBlock44PC := 240.
        ].
        recoveredBlock44Step = 240 ifTrue: [
            recoveredBlock44Stack0 := (recoveredBlock44Stack0) mdlClass.
            recoveredBlock44PC := 242.
        ].
        recoveredBlock44Step = 242 ifTrue: [
            recoveredBlock44Stack0 := (recoveredBlock44Stack0) isCgSDiscOrUDisc.
            recoveredBlock44PC := 244.
        ].
        recoveredBlock44Step = 244 ifTrue: [
            (recoveredBlock44Stack0) ifTrue: [recoveredBlock44PC := 248] ifFalse: [recoveredBlock44PC := 291].
        ].
        recoveredBlock44Step = 248 ifTrue: [
            recoveredBlock44Stack0 := recoveredArg1.
            recoveredBlock44PC := 251.
        ].
        recoveredBlock44Step = 251 ifTrue: [
            recoveredBlock44Stack0 := (recoveredBlock44Stack0) attributes.
            recoveredBlock44PC := 253.
        ].
        recoveredBlock44Step = 253 ifTrue: [
            recoveredBlock44Stack0 := (recoveredBlock44Stack0) returnAttributes.
            recoveredBlock44PC := 255.
        ].
        recoveredBlock44Step = 255 ifTrue: [
            recoveredBlock44Stack0 := (recoveredBlock44Stack0) isCgAttrLimitOverflow.
            recoveredBlock44PC := 257.
        ].
        recoveredBlock44Step = 257 ifTrue: [
            (recoveredBlock44Stack0) ifTrue: [recoveredBlock44PC := 291] ifFalse: [recoveredBlock44PC := 260].
        ].
        recoveredBlock44Step = 260 ifTrue: [
            recoveredBlock44Stack0 := self.
            recoveredBlock44PC := 261.
        ].
        recoveredBlock44Step = 261 ifTrue: [
            recoveredBlock44Stack1 := [
    | recoveredBlock44Block261Value0 recoveredBlock44Block261Value1 recoveredBlock44Block261Value2 |
    recoveredBlock44Block261Value0 := recoveredArg1.
    recoveredBlock44Block261Value1 := (recoveredBlock44Block261Value0) child.
    recoveredBlock44Block261Value2 := (self) visitMdlNode: (recoveredBlock44Block261Value1).
    recoveredBlock44Block261Value2
].
            recoveredBlock44PC := 276.
        ].
        recoveredBlock44Step = 276 ifTrue: [
            recoveredBlock44Stack2 := recoveredLocal2.
            recoveredBlock44PC := 279.
        ].
        recoveredBlock44Step = 279 ifTrue: [
            recoveredBlock44Stack3 := [:block28119314Arg1 | 
    | block28119314Value0 block28119314Value1 |
    block28119314Value0 := block28119314Arg1.
    block28119314Value1 := (block28119314Value0) ileExpr.
    block28119314Value1
].
            recoveredBlock44PC := 281.
        ].
        recoveredBlock44Step = 281 ifTrue: [
            recoveredBlock44PC := 288.
        ].
        recoveredBlock44Step = 288 ifTrue: [
            (recoveredBlock44Stack0) checkForDiscreteUnexpectedBehaviour: (recoveredBlock44Stack1) result: (recoveredBlock44Stack2) project: (recoveredBlock44Stack3).
            recoveredBlock44PC := 291.
        ].
        recoveredBlock44Step = 291 ifTrue: [
            recoveredBlock44Stack0 := self.
            recoveredBlock44PC := 292.
        ].
        recoveredBlock44Step = 292 ifTrue: [
            recoveredBlock44Stack1 := recoveredArg1.
            recoveredBlock44PC := 295.
        ].
        recoveredBlock44Step = 295 ifTrue: [
            recoveredBlock44Stack2 := recoveredLocal2.
            recoveredBlock44PC := 298.
        ].
        recoveredBlock44Step = 298 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) ileExpr.
            recoveredBlock44PC := 300.
        ].
        recoveredBlock44Step = 300 ifTrue: [
            recoveredBlock44Stack3 := recoveredLocal6.
            recoveredBlock44PC := 303.
        ].
        recoveredBlock44Step = 303 ifTrue: [
            recoveredBlock44Stack3 := (recoveredBlock44Stack3) implType.
            recoveredBlock44PC := 305.
        ].
        recoveredBlock44Step = 305 ifTrue: [
            recoveredBlock44Stack4 := recoveredArg1.
            recoveredBlock44PC := 308.
        ].
        recoveredBlock44Step = 308 ifTrue: [
            recoveredBlock44Stack4 := (recoveredBlock44Stack4) attributes.
            recoveredBlock44PC := 310.
        ].
        recoveredBlock44Step = 310 ifTrue: [
            recoveredBlock44Stack4 := (recoveredBlock44Stack4) returnAttributes.
            recoveredBlock44PC := 312.
        ].
        recoveredBlock44Step = 312 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) parmAssign: (recoveredBlock44Stack3) attributes: (recoveredBlock44Stack4).
            recoveredBlock44PC := 314.
        ].
        recoveredBlock44Step = 314 ifTrue: [
            recoveredBlock44Stack0 := (recoveredBlock44Stack0) createIleReturnStmnt: (recoveredBlock44Stack1) expr: (recoveredBlock44Stack2).
            recoveredBlock44PC := 316.
        ].
        recoveredBlock44Step = 316 ifTrue: [
            recoveredLocal1 := recoveredBlock44Stack0.
            recoveredBlock44PC := 319.
        ].
        recoveredBlock44Step = 319 ifTrue: [
            recoveredBlock44Stack0 := recoveredLocal1.
            recoveredBlock44PC := 322.
        ].
        recoveredBlock44Step = 322 ifTrue: [
            recoveredBlock44Stack1 := recoveredLocal1.
            recoveredBlock44PC := 325.
        ].
        recoveredBlock44Step = 325 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) source.
            recoveredBlock44PC := 327.
        ].
        recoveredBlock44Step = 327 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) copy.
            recoveredBlock44PC := 329.
        ].
        recoveredBlock44Step = 329 ifTrue: [
            (recoveredBlock44Stack0) source: (recoveredBlock44Stack1).
            recoveredBlock44PC := 331.
        ].
        recoveredBlock44Step = 331 ifTrue: [
            recoveredBlock44Stack0 := self.
            recoveredBlock44PC := 332.
        ].
        recoveredBlock44Step = 332 ifTrue: [
            recoveredBlock44Stack1 := recoveredLocal6.
            recoveredBlock44PC := 335.
        ].
        recoveredBlock44Step = 335 ifTrue: [
            recoveredBlock44Stack2 := recoveredLocal1.
            recoveredBlock44PC := 338.
        ].
        recoveredBlock44Step = 338 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) source.
            recoveredBlock44PC := 340.
        ].
        recoveredBlock44Step = 340 ifTrue: [
            (recoveredBlock44Stack0) addImplInfoComment: (recoveredBlock44Stack1) source: (recoveredBlock44Stack2).
            recoveredBlock44PC := 342.
        ].
        recoveredBlock44Step = 342 ifTrue: [
            recoveredBlock44Stack0 := recoveredLocal1.
            recoveredBlock44PC := 345.
        ].
        recoveredBlock44Step = 345 ifTrue: [
            ^recoveredBlock44Stack0
        ].
    ].
    recoveredBlock44Result
].
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            (recoveredStack0) withExpressionContextFrom: (recoveredStack1) lValueType: (recoveredStack2) source: (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205f78e8; bytecode file offset 0xef4254"
!SGIntegerStrategy methodsFor: 'recovered'!
implCast: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) variable.
    recoveredBlock4Value2 := (recoveredBlock4Value1) isMdlNeedsImplAssign.
    recoveredBlock4Value3 := (recoveredBlock4Value2) not.
    recoveredBlock4Value3
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [
    'A implementation case should not need an implementation'
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock43Stack0 recoveredBlock43Stack1 recoveredBlock43Stack2 recoveredBlock43Stack3 recoveredBlock43Stack4 recoveredBlock43Stack5 recoveredBlock43Stack6 recoveredBlock43PC recoveredBlock43Step recoveredBlock43Done recoveredBlock43Result |
    recoveredBlock43Stack0 := self.
    recoveredBlock43PC := 50.
    recoveredBlock43Done := false.
    [recoveredBlock43Done not] whileTrue: [
        recoveredBlock43Step := recoveredBlock43PC.
        recoveredBlock43Step = 50 ifTrue: [
            recoveredBlock43Stack1 := recoveredArg1.
            recoveredBlock43PC := 53.
        ].
        recoveredBlock43Step = 53 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) needsIntegerCode.
            recoveredBlock43PC := 55.
        ].
        recoveredBlock43Step = 55 ifTrue: [
            (recoveredBlock43Stack1) ifTrue: [recoveredBlock43PC := 104] ifFalse: [recoveredBlock43PC := 58].
        ].
        recoveredBlock43Step = 58 ifTrue: [
            recoveredBlock43Stack1 := recoveredArg1.
            recoveredBlock43PC := 61.
        ].
        recoveredBlock43Step = 61 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) rightChild.
            recoveredBlock43PC := 63.
        ].
        recoveredBlock43Step = 63 ifTrue: [
            recoveredBlock43Stack2 := recoveredArg1.
            recoveredBlock43PC := 66.
        ].
        recoveredBlock43Step = 66 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) attributes.
            recoveredBlock43PC := 68.
        ].
        recoveredBlock43Step = 68 ifTrue: [
            (recoveredBlock43Stack1) attributes: (recoveredBlock43Stack2).
            recoveredBlock43PC := 70.
        ].
        recoveredBlock43Step = 70 ifTrue: [
            recoveredBlock43Stack1 := recoveredArg1.
            recoveredBlock43PC := 73.
        ].
        recoveredBlock43Step = 73 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) currentIaBuilder.
            recoveredBlock43PC := 75.
        ].
        recoveredBlock43Step = 75 ifTrue: [
            recoveredBlock43Stack2 := self.
            recoveredBlock43PC := 76.
        ].
        recoveredBlock43Step = 76 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) ileBuilder.
            recoveredBlock43PC := 78.
        ].
        recoveredBlock43Step = 78 ifTrue: [
            recoveredBlock43Stack3 := self.
            recoveredBlock43PC := 79.
        ].
        recoveredBlock43Step = 79 ifTrue: [
            recoveredBlock43Stack4 := recoveredArg1.
            recoveredBlock43PC := 82.
        ].
        recoveredBlock43Step = 82 ifTrue: [
            recoveredBlock43Stack4 := (recoveredBlock43Stack4) rightChild.
            recoveredBlock43PC := 84.
        ].
        recoveredBlock43Step = 84 ifTrue: [
            recoveredBlock43Stack3 := (recoveredBlock43Stack3) visitMdlNode: (recoveredBlock43Stack4).
            recoveredBlock43PC := 86.
        ].
        recoveredBlock43Step = 86 ifTrue: [
            recoveredBlock43Stack3 := (recoveredBlock43Stack3) ileExpr.
            recoveredBlock43PC := 88.
        ].
        recoveredBlock43Step = 88 ifTrue: [
            recoveredBlock43Stack4 := recoveredArg1.
            recoveredBlock43PC := 91.
        ].
        recoveredBlock43Step = 91 ifTrue: [
            recoveredBlock43Stack4 := (recoveredBlock43Stack4) genIleType.
            recoveredBlock43PC := 93.
        ].
        recoveredBlock43Step = 93 ifTrue: [
            recoveredBlock43Stack5 := recoveredArg1.
            recoveredBlock43PC := 96.
        ].
        recoveredBlock43Step = 96 ifTrue: [
            recoveredBlock43Stack5 := (recoveredBlock43Stack5) attributes.
            recoveredBlock43PC := 98.
        ].
        recoveredBlock43Step = 98 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) createModelImplCastAssign: (recoveredBlock43Stack3) type: (recoveredBlock43Stack4) attributes: (recoveredBlock43Stack5).
            recoveredBlock43PC := 101.
        ].
        recoveredBlock43Step = 101 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) wrappedIleExpr: (recoveredBlock43Stack2).
            recoveredBlock43PC := 103.
        ].
        recoveredBlock43Step = 103 ifTrue: [
            ^recoveredBlock43Stack1
        ].
        recoveredBlock43Step = 104 ifTrue: [
            recoveredBlock43Stack1 := recoveredArg1.
            recoveredBlock43PC := 107.
        ].
        recoveredBlock43Step = 107 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) mdlClass.
            recoveredBlock43PC := 109.
        ].
        recoveredBlock43Step = 109 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) isCgContMoebiusFixedPointType.
            recoveredBlock43PC := 111.
        ].
        recoveredBlock43Step = 111 ifTrue: [
            (recoveredBlock43Stack1) ifTrue: [recoveredBlock43PC := 114] ifFalse: [recoveredBlock43PC := 197].
        ].
        recoveredBlock43Step = 114 ifTrue: [
            recoveredBlock43Stack1 := recoveredArg1.
            recoveredBlock43PC := 117.
        ].
        recoveredBlock43Step = 117 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) rightChild.
            recoveredBlock43PC := 119.
        ].
        recoveredBlock43Step = 119 ifTrue: [
            recoveredBlock43Stack2 := recoveredArg1.
            recoveredBlock43PC := 122.
        ].
        recoveredBlock43Step = 122 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) attributes.
            recoveredBlock43PC := 124.
        ].
        recoveredBlock43Step = 124 ifTrue: [
            (recoveredBlock43Stack1) attributes: (recoveredBlock43Stack2).
            recoveredBlock43PC := 126.
        ].
        recoveredBlock43Step = 126 ifTrue: [
            recoveredBlock43Stack1 := recoveredArg1.
            recoveredBlock43PC := 129.
        ].
        recoveredBlock43Step = 129 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) currentIaBuilder.
            recoveredBlock43PC := 131.
        ].
        recoveredBlock43Step = 131 ifTrue: [
            recoveredBlock43Stack2 := self.
            recoveredBlock43PC := 132.
        ].
        recoveredBlock43Step = 132 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) ileBuilder.
            recoveredBlock43PC := 134.
        ].
        recoveredBlock43Step = 134 ifTrue: [
            recoveredBlock43Stack3 := self.
            recoveredBlock43PC := 135.
        ].
        recoveredBlock43Step = 135 ifTrue: [
            recoveredBlock43Stack4 := recoveredArg1.
            recoveredBlock43PC := 138.
        ].
        recoveredBlock43Step = 138 ifTrue: [
            recoveredBlock43Stack4 := (recoveredBlock43Stack4) rightChild.
            recoveredBlock43PC := 140.
        ].
        recoveredBlock43Step = 140 ifTrue: [
            recoveredBlock43Stack3 := (recoveredBlock43Stack3) visitMdlNode: (recoveredBlock43Stack4).
            recoveredBlock43PC := 142.
        ].
        recoveredBlock43Step = 142 ifTrue: [
            recoveredBlock43Stack3 := (recoveredBlock43Stack3) ileExpr.
            recoveredBlock43PC := 144.
        ].
        recoveredBlock43Step = 144 ifTrue: [
            recoveredBlock43Stack4 := recoveredArg1.
            recoveredBlock43PC := 147.
        ].
        recoveredBlock43Step = 147 ifTrue: [
            recoveredBlock43Stack4 := (recoveredBlock43Stack4) mdlClass.
            recoveredBlock43PC := 149.
        ].
        recoveredBlock43Step = 149 ifTrue: [
            recoveredBlock43Stack3 := (recoveredBlock43Stack3) adaptLiteralToMoebious: (recoveredBlock43Stack4).
            recoveredBlock43PC := 151.
        ].
        recoveredBlock43Step = 151 ifTrue: [
            recoveredBlock43Stack4 := recoveredArg1.
            recoveredBlock43PC := 154.
        ].
        recoveredBlock43Step = 154 ifTrue: [
            recoveredBlock43Stack4 := (recoveredBlock43Stack4) genIleType.
            recoveredBlock43PC := 156.
        ].
        recoveredBlock43Step = 156 ifTrue: [
            recoveredBlock43Stack5 := recoveredArg1.
            recoveredBlock43PC := 159.
        ].
        recoveredBlock43Step = 159 ifTrue: [
            recoveredBlock43Stack5 := (recoveredBlock43Stack5) attributes.
            recoveredBlock43PC := 161.
        ].
        recoveredBlock43Step = 161 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) createModelImplCastAssign: (recoveredBlock43Stack3) type: (recoveredBlock43Stack4) attributes: (recoveredBlock43Stack5).
            recoveredBlock43PC := 164.
        ].
        recoveredBlock43Step = 164 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) wrappedIleExpr: (recoveredBlock43Stack2).
            recoveredBlock43PC := 166.
        ].
        recoveredBlock43Step = 166 ifTrue: [
            recoveredLocal5 := recoveredBlock43Stack1.
            recoveredBlock43PC := 169.
        ].
        recoveredBlock43Step = 169 ifTrue: [
            recoveredBlock43Stack1 := recoveredArg1.
            recoveredBlock43PC := 172.
        ].
        recoveredBlock43Step = 172 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) mdlClass.
            recoveredBlock43PC := 174.
        ].
        recoveredBlock43Step = 174 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) isCgContReciprocalType.
            recoveredBlock43PC := 176.
        ].
        recoveredBlock43Step = 176 ifTrue: [
            (recoveredBlock43Stack1) ifTrue: [recoveredBlock43PC := 180] ifFalse: [recoveredBlock43PC := 193].
        ].
        recoveredBlock43Step = 180 ifTrue: [
            recoveredBlock43Stack1 := recoveredLocal5.
            recoveredBlock43PC := 183.
        ].
        recoveredBlock43Step = 183 ifTrue: [
            recoveredBlock43Stack2 := recoveredArg1.
            recoveredBlock43PC := 186.
        ].
        recoveredBlock43Step = 186 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) mdlClass.
            recoveredBlock43PC := 188.
        ].
        recoveredBlock43Step = 188 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) asReciprocalExpr: (recoveredBlock43Stack2).
            recoveredBlock43PC := 190.
        ].
        recoveredBlock43Step = 190 ifTrue: [
            recoveredLocal5 := recoveredBlock43Stack1.
            recoveredBlock43PC := 193.
        ].
        recoveredBlock43Step = 193 ifTrue: [
            recoveredBlock43Stack1 := recoveredLocal5.
            recoveredBlock43PC := 196.
        ].
        recoveredBlock43Step = 196 ifTrue: [
            ^recoveredBlock43Stack1
        ].
        recoveredBlock43Step = 197 ifTrue: [
            recoveredBlock43Stack1 := 'Rl'.
            recoveredBlock43PC := 199.
        ].
        recoveredBlock43Step = 199 ifTrue: [
            recoveredBlock43Stack2 := 'Call_62893'.
            recoveredBlock43PC := 201.
        ].
        recoveredBlock43Step = 201 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) == (recoveredBlock43Stack2).
            recoveredBlock43PC := 202.
        ].
        recoveredBlock43Step = 202 ifTrue: [
            recoveredBlock43PC := 203.
        ].
        recoveredBlock43Step = 203 ifTrue: [
            recoveredBlock43Stack1 := recoveredArg1.
            recoveredBlock43PC := 206.
        ].
        recoveredBlock43Step = 206 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) rightChild.
            recoveredBlock43PC := 208.
        ].
        recoveredBlock43Step = 208 ifTrue: [
            recoveredBlock43Stack2 := recoveredArg1.
            recoveredBlock43PC := 211.
        ].
        recoveredBlock43Step = 211 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) variable.
            recoveredBlock43PC := 212.
        ].
        recoveredBlock43Step = 212 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) mdlClass.
            recoveredBlock43PC := 214.
        ].
        recoveredBlock43Step = 214 ifTrue: [
            (recoveredBlock43Stack1) setExactGoalScaleFromImpl: (recoveredBlock43Stack2).
            recoveredBlock43PC := 216.
        ].
        recoveredBlock43Step = 216 ifTrue: [
            recoveredBlock43Stack1 := recoveredArg1.
            recoveredBlock43PC := 219.
        ].
        recoveredBlock43Step = 219 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) currentIaBuilder.
            recoveredBlock43PC := 221.
        ].
        recoveredBlock43Step = 221 ifTrue: [
            recoveredBlock43Stack2 := recoveredArg1.
            recoveredBlock43PC := 224.
        ].
        recoveredBlock43Step = 224 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) createPhonyLValue: (recoveredBlock43Stack2).
            recoveredBlock43PC := 226.
        ].
        recoveredBlock43Step = 226 ifTrue: [
            recoveredLocal5 := recoveredBlock43Stack1.
            recoveredBlock43PC := 229.
        ].
        recoveredBlock43Step = 229 ifTrue: [
            recoveredBlock43Stack1 := 'Rl'.
            recoveredBlock43PC := 231.
        ].
        recoveredBlock43Step = 231 ifTrue: [
            recoveredBlock43Stack2 := 'Call_63518'.
            recoveredBlock43PC := 233.
        ].
        recoveredBlock43Step = 233 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) == (recoveredBlock43Stack2).
            recoveredBlock43PC := 234.
        ].
        recoveredBlock43Step = 234 ifTrue: [
            recoveredBlock43PC := 235.
        ].
        recoveredBlock43Step = 235 ifTrue: [
            recoveredBlock43Stack1 := recoveredArg1.
            recoveredBlock43PC := 238.
        ].
        recoveredBlock43Step = 238 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) rightChild.
            recoveredBlock43PC := 240.
        ].
        recoveredBlock43Step = 240 ifTrue: [
            recoveredBlock43Stack2 := recoveredArg1.
            recoveredBlock43PC := 243.
        ].
        recoveredBlock43Step = 243 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) attributes.
            recoveredBlock43PC := 245.
        ].
        recoveredBlock43Step = 245 ifTrue: [
            (recoveredBlock43Stack1) attributes: (recoveredBlock43Stack2).
            recoveredBlock43PC := 247.
        ].
        recoveredBlock43Step = 247 ifTrue: [
            recoveredBlock43Stack1 := recoveredArg1.
            recoveredBlock43PC := 250.
        ].
        recoveredBlock43Step = 250 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) rightChild.
            recoveredBlock43PC := 252.
        ].
        recoveredBlock43Step = 252 ifTrue: [
            recoveredBlock43Stack0 := (recoveredBlock43Stack0) visitMdlNode: (recoveredBlock43Stack1).
            recoveredBlock43PC := 254.
        ].
        recoveredBlock43Step = 254 ifTrue: [
            recoveredLocal2 := recoveredBlock43Stack0.
            recoveredBlock43PC := 257.
        ].
        recoveredBlock43Step = 257 ifTrue: [
            recoveredBlock43Stack0 := recoveredArg1.
            recoveredBlock43PC := 260.
        ].
        recoveredBlock43Step = 260 ifTrue: [
            recoveredBlock43Stack0 := (recoveredBlock43Stack0) attributes.
            recoveredBlock43PC := 262.
        ].
        recoveredBlock43Step = 262 ifTrue: [
            recoveredBlock43Stack0 := (recoveredBlock43Stack0) isCgAttrLimitAssignment.
            recoveredBlock43PC := 264.
        ].
        recoveredBlock43Step = 264 ifTrue: [
            (recoveredBlock43Stack0) ifTrue: [recoveredBlock43PC := 402] ifFalse: [recoveredBlock43PC := 268].
        ].
        recoveredBlock43Step = 268 ifTrue: [
            recoveredBlock43Stack0 := recoveredLocal5.
            recoveredBlock43PC := 271.
        ].
        recoveredBlock43Step = 271 ifTrue: [
            recoveredBlock43Stack0 := (recoveredBlock43Stack0) interval.
            recoveredBlock43PC := 273.
        ].
        recoveredBlock43Step = 273 ifTrue: [
            recoveredBlock43Stack0 := (recoveredBlock43Stack0) left.
            recoveredBlock43PC := 275.
        ].
        recoveredBlock43Step = 275 ifTrue: [
            recoveredBlock43Stack0 := (recoveredBlock43Stack0) isInfinite.
            recoveredBlock43PC := 277.
        ].
        recoveredBlock43Step = 277 ifTrue: [
            (recoveredBlock43Stack0) ifTrue: [recoveredBlock43PC := 280] ifFalse: [recoveredBlock43PC := 292].
        ].
        recoveredBlock43Step = 280 ifTrue: [
            recoveredBlock43Stack0 := recoveredLocal5.
            recoveredBlock43PC := 283.
        ].
        recoveredBlock43Step = 283 ifTrue: [
            recoveredBlock43Stack0 := (recoveredBlock43Stack0) interval.
            recoveredBlock43PC := 285.
        ].
        recoveredBlock43Step = 285 ifTrue: [
            recoveredBlock43Stack0 := (recoveredBlock43Stack0) right.
            recoveredBlock43PC := 287.
        ].
        recoveredBlock43Step = 287 ifTrue: [
            recoveredBlock43Stack0 := (recoveredBlock43Stack0) isInfinite.
            recoveredBlock43PC := 289.
        ].
        recoveredBlock43Step = 289 ifTrue: [
            (recoveredBlock43Stack0) ifTrue: [recoveredBlock43PC := 402] ifFalse: [recoveredBlock43PC := 292].
        ].
        recoveredBlock43Step = 292 ifTrue: [
            recoveredBlock43Stack0 := recoveredLocal2.
            recoveredBlock43PC := 295.
        ].
        recoveredBlock43Step = 295 ifTrue: [
            recoveredBlock43Stack0 := (recoveredBlock43Stack0) formula.
            recoveredBlock43PC := 297.
        ].
        recoveredBlock43Step = 297 ifTrue: [
            recoveredBlock43Stack0 := (recoveredBlock43Stack0) scale.
            recoveredBlock43PC := 299.
        ].
        recoveredBlock43Step = 299 ifTrue: [
            recoveredBlock43Stack1 := recoveredLocal5.
            recoveredBlock43PC := 302.
        ].
        recoveredBlock43Step = 302 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) formula.
            recoveredBlock43PC := 304.
        ].
        recoveredBlock43Step = 304 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) scale.
            recoveredBlock43PC := 306.
        ].
        recoveredBlock43Step = 306 ifTrue: [
            recoveredBlock43Stack0 := (recoveredBlock43Stack0) = (recoveredBlock43Stack1).
            recoveredBlock43PC := 307.
        ].
        recoveredBlock43Step = 307 ifTrue: [
            (recoveredBlock43Stack0) ifTrue: [recoveredBlock43PC := 310] ifFalse: [recoveredBlock43PC := 402].
        ].
        recoveredBlock43Step = 310 ifTrue: [
            recoveredBlock43Stack0 := recoveredLocal2.
            recoveredBlock43PC := 313.
        ].
        recoveredBlock43Step = 313 ifTrue: [
            recoveredBlock43Stack0 := (recoveredBlock43Stack0) formula.
            recoveredBlock43PC := 315.
        ].
        recoveredBlock43Step = 315 ifTrue: [
            recoveredBlock43Stack0 := (recoveredBlock43Stack0) offset.
            recoveredBlock43PC := 317.
        ].
        recoveredBlock43Step = 317 ifTrue: [
            recoveredBlock43Stack1 := recoveredLocal5.
            recoveredBlock43PC := 320.
        ].
        recoveredBlock43Step = 320 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) formula.
            recoveredBlock43PC := 322.
        ].
        recoveredBlock43Step = 322 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) offset.
            recoveredBlock43PC := 324.
        ].
        recoveredBlock43Step = 324 ifTrue: [
            recoveredBlock43Stack0 := (recoveredBlock43Stack0) = (recoveredBlock43Stack1).
            recoveredBlock43PC := 325.
        ].
        recoveredBlock43Step = 325 ifTrue: [
            (recoveredBlock43Stack0) ifTrue: [recoveredBlock43PC := 328] ifFalse: [recoveredBlock43PC := 402].
        ].
        recoveredBlock43Step = 328 ifTrue: [
            recoveredBlock43Stack0 := recoveredLocal2.
            recoveredBlock43PC := 331.
        ].
        recoveredBlock43Step = 331 ifTrue: [
            recoveredBlock43Stack0 := (recoveredBlock43Stack0) ileExpr.
            recoveredBlock43PC := 333.
        ].
        recoveredBlock43Step = 333 ifTrue: [
            recoveredBlock43Stack0 := (recoveredBlock43Stack0) interval.
            recoveredBlock43PC := 335.
        ].
        recoveredBlock43Step = 335 ifTrue: [
            recoveredBlock43Stack1 := recoveredLocal5.
            recoveredBlock43PC := 338.
        ].
        recoveredBlock43Step = 338 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) interval.
            recoveredBlock43PC := 340.
        ].
        recoveredBlock43Step = 340 ifTrue: [
            recoveredBlock43Stack0 := (recoveredBlock43Stack0) intersect: (recoveredBlock43Stack1).
            recoveredBlock43PC := 342.
        ].
        recoveredBlock43Step = 342 ifTrue: [
            recoveredBlock43Stack0 := (recoveredBlock43Stack0) isEmpty.
            recoveredBlock43PC := 344.
        ].
        recoveredBlock43Step = 344 ifTrue: [
            (recoveredBlock43Stack0) ifTrue: [recoveredBlock43PC := 402] ifFalse: [recoveredBlock43PC := 348].
        ].
        recoveredBlock43Step = 348 ifTrue: [
            recoveredBlock43Stack0 := recoveredLocal5.
            recoveredBlock43PC := 351.
        ].
        recoveredBlock43Step = 351 ifTrue: [
            recoveredBlock43Stack0 := (recoveredBlock43Stack0) interval.
            recoveredBlock43PC := 353.
        ].
        recoveredBlock43Step = 353 ifTrue: [
            recoveredBlock43Stack1 := recoveredLocal2.
            recoveredBlock43PC := 356.
        ].
        recoveredBlock43Step = 356 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) ileExpr.
            recoveredBlock43PC := 358.
        ].
        recoveredBlock43Step = 358 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) interval.
            recoveredBlock43PC := 360.
        ].
        recoveredBlock43Step = 360 ifTrue: [
            recoveredBlock43Stack0 := (recoveredBlock43Stack0) includes: (recoveredBlock43Stack1).
            recoveredBlock43PC := 362.
        ].
        recoveredBlock43Step = 362 ifTrue: [
            (recoveredBlock43Stack0) ifTrue: [recoveredBlock43PC := 402] ifFalse: [recoveredBlock43PC := 366].
        ].
        recoveredBlock43Step = 366 ifTrue: [
            recoveredBlock43Stack0 := self.
            recoveredBlock43PC := 367.
        ].
        recoveredBlock43Step = 367 ifTrue: [
            recoveredBlock43Stack0 := (recoveredBlock43Stack0) expander.
            recoveredBlock43PC := 369.
        ].
        recoveredBlock43Step = 369 ifTrue: [
            recoveredBlock43Stack1 := 78.
            recoveredBlock43PC := 372.
        ].
        recoveredBlock43Step = 372 ifTrue: [
            recoveredBlock43Stack2 := recoveredArg1.
            recoveredBlock43PC := 375.
        ].
        recoveredBlock43Step = 375 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) variable.
            recoveredBlock43PC := 376.
        ].
        recoveredBlock43Step = 376 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) mdlLabel.
            recoveredBlock43PC := 378.
        ].
        recoveredBlock43Step = 378 ifTrue: [
            recoveredBlock43Stack3 := recoveredLocal5.
            recoveredBlock43PC := 381.
        ].
        recoveredBlock43Step = 381 ifTrue: [
            recoveredBlock43Stack3 := (recoveredBlock43Stack3) interval.
            recoveredBlock43PC := 383.
        ].
        recoveredBlock43Step = 383 ifTrue: [
            recoveredBlock43Stack4 := recoveredLocal5.
            recoveredBlock43PC := 386.
        ].
        recoveredBlock43Step = 386 ifTrue: [
            recoveredBlock43Stack4 := (recoveredBlock43Stack4) formula.
            recoveredBlock43PC := 388.
        ].
        recoveredBlock43Step = 388 ifTrue: [
            recoveredBlock43Stack3 := (recoveredBlock43Stack3) transformedByInverse: (recoveredBlock43Stack4).
            recoveredBlock43PC := 390.
        ].
        recoveredBlock43Step = 390 ifTrue: [
            recoveredBlock43Stack3 := (recoveredBlock43Stack3) asFloat.
            recoveredBlock43PC := 392.
        ].
        recoveredBlock43Step = 392 ifTrue: [
            recoveredBlock43Stack3 := (recoveredBlock43Stack3) asString.
            recoveredBlock43PC := 394.
        ].
        recoveredBlock43Step = 394 ifTrue: [
            recoveredBlock43Stack4 := recoveredArg1.
            recoveredBlock43PC := 397.
        ].
        recoveredBlock43Step = 397 ifTrue: [
            recoveredBlock43Stack4 := (recoveredBlock43Stack4) source.
            recoveredBlock43PC := 399.
        ].
        recoveredBlock43Step = 399 ifTrue: [
            (recoveredBlock43Stack0) ileInfoNo: (recoveredBlock43Stack1) with: (recoveredBlock43Stack2) with: (recoveredBlock43Stack3) source: (recoveredBlock43Stack4).
            recoveredBlock43PC := 402.
        ].
        recoveredBlock43Step = 402 ifTrue: [
            recoveredBlock43Stack0 := recoveredLocal5.
            recoveredBlock43PC := 405.
        ].
        recoveredBlock43Step = 405 ifTrue: [
            recoveredBlock43Stack1 := recoveredLocal2.
            recoveredBlock43PC := 408.
        ].
        recoveredBlock43Step = 408 ifTrue: [
            recoveredBlock43Stack0 := (recoveredBlock43Stack0) implCastAssign: (recoveredBlock43Stack1).
            recoveredBlock43PC := 410.
        ].
        recoveredBlock43Step = 410 ifTrue: [
            recoveredLocal1 := recoveredBlock43Stack0.
            recoveredBlock43PC := 413.
        ].
        recoveredBlock43Step = 413 ifTrue: [
            recoveredBlock43Stack0 := recoveredLocal1.
            recoveredBlock43PC := 416.
        ].
        recoveredBlock43Step = 416 ifTrue: [
            ^recoveredBlock43Stack0
        ].
    ].
    recoveredBlock43Result
].
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            (recoveredStack0) withExpressionContextFrom: (recoveredStack1) lValueType: (recoveredStack2) source: (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205f7d78; bytecode file offset 0xef46d0"
!SGIntegerStrategy methodsFor: 'recovered'!
binaryArithmeticExpr: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) needsIntegerCode.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentIaBuilder.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := super binaryArithmeticExpr: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) wrappedIleExpr: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock25Local1 recoveredBlock25Local2 recoveredBlock25Local3 recoveredBlock25Local4 recoveredBlock25Stack0 recoveredBlock25Stack1 recoveredBlock25Stack2 recoveredBlock25Stack3 recoveredBlock25Stack4 recoveredBlock25Stack5 recoveredBlock25Stack6 recoveredBlock25Stack7 recoveredBlock25Stack8 recoveredBlock25Stack9 recoveredBlock25Stack10 recoveredBlock25Stack11 recoveredBlock25Stack12 recoveredBlock25Stack13 recoveredBlock25Stack14 recoveredBlock25Stack15 recoveredBlock25Stack16 recoveredBlock25PC recoveredBlock25Step recoveredBlock25Done recoveredBlock25Result |
    recoveredBlock25Stack0 := self.
    recoveredBlock25PC := 32.
    recoveredBlock25Done := false.
    [recoveredBlock25Done not] whileTrue: [
        recoveredBlock25Step := recoveredBlock25PC.
        recoveredBlock25Step = 32 ifTrue: [
            recoveredBlock25Stack1 := recoveredArg1.
            recoveredBlock25PC := 35.
        ].
        recoveredBlock25Step = 35 ifTrue: [
            (recoveredBlock25Stack0) propagateInfoToBinaryChildren: (recoveredBlock25Stack1).
            recoveredBlock25PC := 37.
        ].
        recoveredBlock25Step = 37 ifTrue: [
            recoveredBlock25Stack0 := recoveredArg1.
            recoveredBlock25PC := 40.
        ].
        recoveredBlock25Step = 40 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) isFloatAndInteger.
            recoveredBlock25PC := 42.
        ].
        recoveredBlock25Step = 42 ifTrue: [
            (recoveredBlock25Stack0) ifTrue: [recoveredBlock25PC := 46] ifFalse: [recoveredBlock25PC := 65].
        ].
        recoveredBlock25Step = 46 ifTrue: [
            recoveredBlock25Stack0 := recoveredArg1.
            recoveredBlock25PC := 49.
        ].
        recoveredBlock25Step = 49 ifTrue: [
            recoveredBlock25Stack1 := 5.
            recoveredBlock25PC := 51.
        ].
        recoveredBlock25Step = 51 ifTrue: [
            (recoveredBlock25Stack0) iaSemErrNo: (recoveredBlock25Stack1).
            recoveredBlock25PC := 53.
        ].
        recoveredBlock25Step = 53 ifTrue: [
            recoveredBlock25Stack0 := recoveredArg1.
            recoveredBlock25PC := 56.
        ].
        recoveredBlock25Step = 56 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) currentIaBuilder.
            recoveredBlock25PC := 57.
        ].
        recoveredBlock25Step = 57 ifTrue: [
            recoveredBlock25Stack1 := recoveredArg1.
            recoveredBlock25PC := 60.
        ].
        recoveredBlock25Step = 60 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) mdlClass.
            recoveredBlock25PC := 62.
        ].
        recoveredBlock25Step = 62 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) dummyForImplementation: (recoveredBlock25Stack1).
            recoveredBlock25PC := 64.
        ].
        recoveredBlock25Step = 64 ifTrue: [
            ^recoveredBlock25Stack0
        ].
        recoveredBlock25Step = 65 ifTrue: [
            recoveredBlock25Stack0 := self.
            recoveredBlock25PC := 66.
        ].
        recoveredBlock25Step = 66 ifTrue: [
            recoveredBlock25Stack1 := recoveredArg1.
            recoveredBlock25PC := 69.
        ].
        recoveredBlock25Step = 69 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) leftChild.
            recoveredBlock25PC := 71.
        ].
        recoveredBlock25Step = 71 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) visitMdlNode: (recoveredBlock25Stack1).
            recoveredBlock25PC := 73.
        ].
        recoveredBlock25Step = 73 ifTrue: [
            recoveredBlock25Local3 := recoveredBlock25Stack0.
            recoveredBlock25PC := 76.
        ].
        recoveredBlock25Step = 76 ifTrue: [
            recoveredBlock25Stack0 := self.
            recoveredBlock25PC := 77.
        ].
        recoveredBlock25Step = 77 ifTrue: [
            recoveredBlock25Stack1 := recoveredArg1.
            recoveredBlock25PC := 80.
        ].
        recoveredBlock25Step = 80 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) rightChild.
            recoveredBlock25PC := 82.
        ].
        recoveredBlock25Step = 82 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) visitMdlNode: (recoveredBlock25Stack1).
            recoveredBlock25PC := 84.
        ].
        recoveredBlock25Step = 84 ifTrue: [
            recoveredBlock25Local2 := recoveredBlock25Stack0.
            recoveredBlock25PC := 87.
        ].
        recoveredBlock25Step = 87 ifTrue: [
            recoveredBlock25Stack0 := recoveredArg1.
            recoveredBlock25PC := 90.
        ].
        recoveredBlock25Step = 90 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) mdlClass.
            recoveredBlock25PC := 92.
        ].
        recoveredBlock25Step = 92 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) isCgContRealType.
            recoveredBlock25PC := 94.
        ].
        recoveredBlock25Step = 94 ifTrue: [
            (recoveredBlock25Stack0) ifTrue: [recoveredBlock25PC := 132] ifFalse: [recoveredBlock25PC := 98].
        ].
        recoveredBlock25Step = 98 ifTrue: [
            recoveredBlock25Stack0 := recoveredArg1.
            recoveredBlock25PC := 101.
        ].
        recoveredBlock25Step = 101 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) operator.
            recoveredBlock25PC := 103.
        ].
        recoveredBlock25Step = 103 ifTrue: [
            recoveredBlock25Stack1 := 'div'.
            recoveredBlock25PC := 105.
        ].
        recoveredBlock25Step = 105 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) equals: (recoveredBlock25Stack1).
            recoveredBlock25PC := 107.
        ].
        recoveredBlock25Step = 107 ifTrue: [
            (recoveredBlock25Stack0) ifTrue: [recoveredBlock25PC := 122] ifFalse: [recoveredBlock25PC := 110].
        ].
        recoveredBlock25Step = 110 ifTrue: [
            recoveredBlock25Stack0 := recoveredArg1.
            recoveredBlock25PC := 113.
        ].
        recoveredBlock25Step = 113 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) operator.
            recoveredBlock25PC := 115.
        ].
        recoveredBlock25Step = 115 ifTrue: [
            recoveredBlock25Stack1 := 'rem'.
            recoveredBlock25PC := 117.
        ].
        recoveredBlock25Step = 117 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) equals: (recoveredBlock25Stack1).
            recoveredBlock25PC := 119.
        ].
        recoveredBlock25Step = 119 ifTrue: [
            (recoveredBlock25Stack0) ifTrue: [recoveredBlock25PC := 122] ifFalse: [recoveredBlock25PC := 132].
        ].
        recoveredBlock25Step = 122 ifTrue: [
            recoveredBlock25Stack0 := recoveredArg1.
            recoveredBlock25PC := 125.
        ].
        recoveredBlock25Step = 125 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) rightChild.
            recoveredBlock25PC := 127.
        ].
        recoveredBlock25Step = 127 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Local2.
            recoveredBlock25PC := 130.
        ].
        recoveredBlock25Step = 130 ifTrue: [
            (recoveredBlock25Stack0) checkDenominatorInterval: (recoveredBlock25Stack1).
            recoveredBlock25PC := 132.
        ].
        recoveredBlock25Step = 132 ifTrue: [
            recoveredBlock25Stack0 := [
    | recoveredBlock25Block132Value0 recoveredBlock25Block132Value1 |
    recoveredBlock25Block132Value0 := recoveredArg1.
    recoveredBlock25Block132Value1 := (recoveredBlock25Block132Value0) operator.
    recoveredBlock25Block132Value1
].
            recoveredBlock25PC := 144.
        ].
        recoveredBlock25Step = 144 ifTrue: [
            recoveredBlock25Stack1 := 'add'.
            recoveredBlock25PC := 146.
        ].
        recoveredBlock25Step = 146 ifTrue: [
            recoveredBlock25Stack2 := [
    | recoveredBlock25Block146Value0 recoveredBlock25Block146Value1 recoveredBlock25Block146Value2 recoveredBlock25Block146Value3 recoveredBlock25Block146Value4 recoveredBlock25Block146Value5 recoveredBlock25Block146Value6 recoveredBlock25Block146Value7 |
    recoveredBlock25Block146Value0 := recoveredBlock25Local3.
    recoveredBlock25Block146Value1 := recoveredBlock25Local2.
    recoveredBlock25Block146Value2 := recoveredArg1.
    recoveredBlock25Block146Value3 := (recoveredBlock25Block146Value2) optData.
    recoveredBlock25Block146Value4 := (recoveredBlock25Block146Value3) targetScale.
    recoveredBlock25Block146Value5 := recoveredArg1.
    recoveredBlock25Block146Value6 := (recoveredBlock25Block146Value5) attributes.
    recoveredBlock25Block146Value7 := (recoveredBlock25Block146Value0) add: (recoveredBlock25Block146Value1) scale: (recoveredBlock25Block146Value4) attributes: (recoveredBlock25Block146Value6).
    recoveredBlock25Block146Value7
].
            recoveredBlock25PC := 174.
        ].
        recoveredBlock25Step = 174 ifTrue: [
            recoveredBlock25Stack3 := 'sub'.
            recoveredBlock25PC := 176.
        ].
        recoveredBlock25Step = 176 ifTrue: [
            recoveredBlock25Stack4 := [
    | recoveredBlock25Block176Value0 recoveredBlock25Block176Value1 recoveredBlock25Block176Value2 recoveredBlock25Block176Value3 recoveredBlock25Block176Value4 recoveredBlock25Block176Value5 recoveredBlock25Block176Value6 recoveredBlock25Block176Value7 |
    recoveredBlock25Block176Value0 := recoveredBlock25Local3.
    recoveredBlock25Block176Value1 := recoveredBlock25Local2.
    recoveredBlock25Block176Value2 := recoveredArg1.
    recoveredBlock25Block176Value3 := (recoveredBlock25Block176Value2) optData.
    recoveredBlock25Block176Value4 := (recoveredBlock25Block176Value3) targetScale.
    recoveredBlock25Block176Value5 := recoveredArg1.
    recoveredBlock25Block176Value6 := (recoveredBlock25Block176Value5) attributes.
    recoveredBlock25Block176Value7 := (recoveredBlock25Block176Value0) sub: (recoveredBlock25Block176Value1) scale: (recoveredBlock25Block176Value4) attributes: (recoveredBlock25Block176Value6).
    recoveredBlock25Block176Value7
].
            recoveredBlock25PC := 204.
        ].
        recoveredBlock25Step = 204 ifTrue: [
            recoveredBlock25Stack5 := 'mul'.
            recoveredBlock25PC := 206.
        ].
        recoveredBlock25Step = 206 ifTrue: [
            recoveredBlock25Stack6 := [
    | recoveredBlock25Block206Value0 recoveredBlock25Block206Value1 recoveredBlock25Block206Value2 recoveredBlock25Block206Value3 recoveredBlock25Block206Value4 recoveredBlock25Block206Value5 recoveredBlock25Block206Value6 recoveredBlock25Block206Value7 |
    recoveredBlock25Block206Value0 := recoveredBlock25Local3.
    recoveredBlock25Block206Value1 := recoveredBlock25Local2.
    recoveredBlock25Block206Value2 := recoveredArg1.
    recoveredBlock25Block206Value3 := (recoveredBlock25Block206Value2) optData.
    recoveredBlock25Block206Value4 := (recoveredBlock25Block206Value3) targetScale.
    recoveredBlock25Block206Value5 := recoveredArg1.
    recoveredBlock25Block206Value6 := (recoveredBlock25Block206Value5) attributes.
    recoveredBlock25Block206Value7 := (recoveredBlock25Block206Value0) mul: (recoveredBlock25Block206Value1) scale: (recoveredBlock25Block206Value4) attributes: (recoveredBlock25Block206Value6).
    recoveredBlock25Block206Value7
].
            recoveredBlock25PC := 234.
        ].
        recoveredBlock25Step = 234 ifTrue: [
            recoveredBlock25Stack7 := 'div'.
            recoveredBlock25PC := 236.
        ].
        recoveredBlock25Step = 236 ifTrue: [
            recoveredBlock25Stack8 := [
    | recoveredBlock25Block236Value0 recoveredBlock25Block236Value1 recoveredBlock25Block236Value2 recoveredBlock25Block236Value3 recoveredBlock25Block236Value4 recoveredBlock25Block236Value5 recoveredBlock25Block236Value6 recoveredBlock25Block236Value7 |
    recoveredBlock25Block236Value0 := recoveredBlock25Local3.
    recoveredBlock25Block236Value1 := recoveredBlock25Local2.
    recoveredBlock25Block236Value2 := recoveredArg1.
    recoveredBlock25Block236Value3 := (recoveredBlock25Block236Value2) optData.
    recoveredBlock25Block236Value4 := (recoveredBlock25Block236Value3) targetScale.
    recoveredBlock25Block236Value5 := recoveredArg1.
    recoveredBlock25Block236Value6 := (recoveredBlock25Block236Value5) attributes.
    recoveredBlock25Block236Value7 := (recoveredBlock25Block236Value0) div: (recoveredBlock25Block236Value1) scale: (recoveredBlock25Block236Value4) attributes: (recoveredBlock25Block236Value6).
    recoveredBlock25Block236Value7
].
            recoveredBlock25PC := 264.
        ].
        recoveredBlock25Step = 264 ifTrue: [
            recoveredBlock25Stack9 := 'rem'.
            recoveredBlock25PC := 266.
        ].
        recoveredBlock25Step = 266 ifTrue: [
            recoveredBlock25Stack10 := [
    | recoveredBlock25Block266Value0 recoveredBlock25Block266Value1 recoveredBlock25Block266Value2 recoveredBlock25Block266Value3 recoveredBlock25Block266Value4 recoveredBlock25Block266Value5 recoveredBlock25Block266Value6 recoveredBlock25Block266Value7 |
    recoveredBlock25Block266Value0 := recoveredBlock25Local3.
    recoveredBlock25Block266Value1 := recoveredBlock25Local2.
    recoveredBlock25Block266Value2 := recoveredArg1.
    recoveredBlock25Block266Value3 := (recoveredBlock25Block266Value2) optData.
    recoveredBlock25Block266Value4 := (recoveredBlock25Block266Value3) targetScale.
    recoveredBlock25Block266Value5 := recoveredArg1.
    recoveredBlock25Block266Value6 := (recoveredBlock25Block266Value5) attributes.
    recoveredBlock25Block266Value7 := (recoveredBlock25Block266Value0) rem: (recoveredBlock25Block266Value1) scale: (recoveredBlock25Block266Value4) attributes: (recoveredBlock25Block266Value6).
    recoveredBlock25Block266Value7
].
            recoveredBlock25PC := 294.
        ].
        recoveredBlock25Step = 294 ifTrue: [
            recoveredBlock25Stack11 := 'min'.
            recoveredBlock25PC := 296.
        ].
        recoveredBlock25Step = 296 ifTrue: [
            recoveredBlock25Stack12 := [
    | recoveredBlock25Block296Value0 recoveredBlock25Block296Value1 recoveredBlock25Block296Value2 recoveredBlock25Block296Value3 recoveredBlock25Block296Value4 recoveredBlock25Block296Value5 recoveredBlock25Block296Value6 recoveredBlock25Block296Value7 |
    recoveredBlock25Block296Value0 := recoveredBlock25Local3.
    recoveredBlock25Block296Value1 := recoveredBlock25Local2.
    recoveredBlock25Block296Value2 := recoveredArg1.
    recoveredBlock25Block296Value3 := (recoveredBlock25Block296Value2) optData.
    recoveredBlock25Block296Value4 := (recoveredBlock25Block296Value3) targetScale.
    recoveredBlock25Block296Value5 := recoveredArg1.
    recoveredBlock25Block296Value6 := (recoveredBlock25Block296Value5) attributes.
    recoveredBlock25Block296Value7 := (recoveredBlock25Block296Value0) min: (recoveredBlock25Block296Value1) scale: (recoveredBlock25Block296Value4) attributes: (recoveredBlock25Block296Value6).
    recoveredBlock25Block296Value7
].
            recoveredBlock25PC := 324.
        ].
        recoveredBlock25Step = 324 ifTrue: [
            recoveredBlock25Stack13 := 'max'.
            recoveredBlock25PC := 326.
        ].
        recoveredBlock25Step = 326 ifTrue: [
            recoveredBlock25Stack14 := [
    | recoveredBlock25Block326Value0 recoveredBlock25Block326Value1 recoveredBlock25Block326Value2 recoveredBlock25Block326Value3 recoveredBlock25Block326Value4 recoveredBlock25Block326Value5 recoveredBlock25Block326Value6 recoveredBlock25Block326Value7 |
    recoveredBlock25Block326Value0 := recoveredBlock25Local3.
    recoveredBlock25Block326Value1 := recoveredBlock25Local2.
    recoveredBlock25Block326Value2 := recoveredArg1.
    recoveredBlock25Block326Value3 := (recoveredBlock25Block326Value2) optData.
    recoveredBlock25Block326Value4 := (recoveredBlock25Block326Value3) targetScale.
    recoveredBlock25Block326Value5 := recoveredArg1.
    recoveredBlock25Block326Value6 := (recoveredBlock25Block326Value5) attributes.
    recoveredBlock25Block326Value7 := (recoveredBlock25Block326Value0) max: (recoveredBlock25Block326Value1) scale: (recoveredBlock25Block326Value4) attributes: (recoveredBlock25Block326Value6).
    recoveredBlock25Block326Value7
].
            recoveredBlock25PC := 354.
        ].
        recoveredBlock25Step = 354 ifTrue: [
            recoveredBlock25Stack15 := [
    | recoveredBlock25Block354Stack0 recoveredBlock25Block354Stack1 recoveredBlock25Block354Stack2 recoveredBlock25Block354Stack3 recoveredBlock25Block354PC recoveredBlock25Block354Step recoveredBlock25Block354Done recoveredBlock25Block354Result |
    recoveredBlock25Block354Stack0 := self.
    recoveredBlock25Block354PC := 360.
    recoveredBlock25Block354Done := false.
    [recoveredBlock25Block354Done not] whileTrue: [
        recoveredBlock25Block354Step := recoveredBlock25Block354PC.
        recoveredBlock25Block354Step = 360 ifTrue: [
            recoveredBlock25Block354Stack1 := [
    false
].
            recoveredBlock25Block354PC := 362.
        ].
        recoveredBlock25Block354Step = 362 ifTrue: [
            recoveredBlock25Block354PC := 368.
        ].
        recoveredBlock25Block354Step = 368 ifTrue: [
            recoveredBlock25Block354Stack2 := [
    | recoveredBlock25Block354Block368Value0 recoveredBlock25Block354Block368Value1 recoveredBlock25Block354Block368Value2 |
    recoveredBlock25Block354Block368Value0 := recoveredArg1.
    recoveredBlock25Block354Block368Value1 := (recoveredBlock25Block354Block368Value0) operator.
    recoveredBlock25Block354Block368Value2 := ('Unknown operation ') , (recoveredBlock25Block354Block368Value1).
    recoveredBlock25Block354Block368Value2
].
            recoveredBlock25Block354PC := 384.
        ].
        recoveredBlock25Block354Step = 384 ifTrue: [
            (recoveredBlock25Block354Stack0) ileAssert: (recoveredBlock25Block354Stack1) message: (recoveredBlock25Block354Stack2).
            recoveredBlock25Block354PC := 386.
        ].
        recoveredBlock25Block354Step = 386 ifTrue: [
            recoveredBlock25Block354Stack0 := nil.
            recoveredBlock25Block354PC := 387.
        ].
        recoveredBlock25Block354Step = 387 ifTrue: [
            recoveredBlock25Block354Result := recoveredBlock25Block354Stack0.
            recoveredBlock25Block354Done := true.
        ].
    ].
    recoveredBlock25Block354Result
].
            recoveredBlock25PC := 388.
        ].
        recoveredBlock25Step = 388 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) case: (recoveredBlock25Stack1) do: (recoveredBlock25Stack2) case: (recoveredBlock25Stack3) do: (recoveredBlock25Stack4) case: (recoveredBlock25Stack5) do: (recoveredBlock25Stack6) case: (recoveredBlock25Stack7) do: (recoveredBlock25Stack8) case: (recoveredBlock25Stack9) do: (recoveredBlock25Stack10) case: (recoveredBlock25Stack11) do: (recoveredBlock25Stack12) case: (recoveredBlock25Stack13) do: (recoveredBlock25Stack14) others: (recoveredBlock25Stack15).
            recoveredBlock25PC := 391.
        ].
        recoveredBlock25Step = 391 ifTrue: [
            recoveredBlock25Result := recoveredBlock25Stack0.
            recoveredBlock25Done := true.
        ].
    ].
    recoveredBlock25Result
].
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack1 := (recoveredStack1) operator.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack2 := 'rem'.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 406] ifFalse: [recoveredPC := 416].
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack1 := (recoveredStack1) withExpressionContextFrom: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205f9330; bytecode file offset 0xef5ca8"
!SGIntegerStrategy methodsFor: 'recovered'!
createIaExprPropagatedImpl: recoveredArg1 expr: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrDeclared.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'Rl'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'Call_72589'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgContMoebiusFixedPointType.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 421.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleFloatType.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 421.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgLimitedIntegerType.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyImplementation.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := (recoveredStack3) createIlePropagatedImplType.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := (recoveredStack3) getImplType.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack2) setImplType: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := (recoveredStack3) interval.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack2) setImplInterval: (recoveredStack3).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) interval: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) mdlClass: (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) cgAttrNoNeedImpl.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1) checkImplementationFor: (recoveredStack2) logicNode: (recoveredStack3).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredPC := 421.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := (recoveredStack2) scale.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := (recoveredStack2) asFraction.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack1) scale: (recoveredStack2).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlTempVar.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 202] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSingleton.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 202].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) createImplTypeFromInterval: (recoveredStack2).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlUInt.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 194].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := (recoveredStack1) asUnsigned.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 194] ifFalse: [recoveredPC := 176].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := (recoveredStack1) asUnsigned.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplInterval.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 190] ifFalse: [recoveredPC := 194].
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := (recoveredStack1) asUnsigned.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplInterval.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredPC := 214.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPropagatedImplType.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgSdiscType.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 234] ifFalse: [recoveredPC := 224].
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgUdiscType.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 234] ifFalse: [recoveredPC := 282].
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBFloat.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 250] ifFalse: [recoveredPC := 240].
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIdentityCompliant.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 282] ifFalse: [recoveredPC := 250].
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplInterval.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack2 := 613.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            (recoveredStack1) mdlWarningNo: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgSdiscType.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 292] ifFalse: [recoveredPC := 316].
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBInteger.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 298] ifFalse: [recoveredPC := 316].
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSigned.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 316] ifFalse: [recoveredPC := 304].
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack2 := 615.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            (recoveredStack1) mdlWarningNo: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgUdiscType.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 326] ifFalse: [recoveredPC := 350].
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBInteger.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 332] ifFalse: [recoveredPC := 350].
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSigned.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 338] ifFalse: [recoveredPC := 350].
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack2 := 614.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            (recoveredStack1) mdlWarningNo: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyImplementation.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack1 := 'Rl'.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack2 := 'Call_63311'.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            (recoveredStack2) setImplType: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            (recoveredStack2) setImplInterval: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            (recoveredStack2) formula: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            (recoveredStack2) updatePhysicsInterval.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            (recoveredStack1) originalImplementationIsNil: (recoveredStack2).
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            (recoveredStack1) mdlClass: (recoveredStack2).
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            (recoveredStack1) cgAttrNoNeedImpl.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack2 := SGIaExprOptData.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack2 := (recoveredStack2) forImplementation: (recoveredStack3).
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            (recoveredStack1) updateOptData: (recoveredStack2).
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            (recoveredStack1) checkImplementationFor: (recoveredStack2) logicNode: (recoveredStack3).
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            (recoveredStack1) cgAttrDeclared.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205fca7c; bytecode file offset 0xef93ec"
!SGIntegerStrategy methodsFor: 'recovered'!
parmAssign: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) rightChild.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) variable.
    recoveredValue4 := (recoveredValue3) mdlClass.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) source.
    recoveredValue7 := [
    | recoveredBlock17Local1 recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17Stack5 recoveredBlock17Stack6 recoveredBlock17Stack7 recoveredBlock17Stack8 recoveredBlock17Stack9 recoveredBlock17Stack10 recoveredBlock17Stack11 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := recoveredArg1.
            recoveredBlock17PC := 27.
        ].
        recoveredBlock17Step = 27 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) needsIntegerCode.
            recoveredBlock17PC := 29.
        ].
        recoveredBlock17Step = 29 ifTrue: [
            (recoveredBlock17Stack1) ifTrue: [recoveredBlock17PC := 68] ifFalse: [recoveredBlock17PC := 32].
        ].
        recoveredBlock17Step = 32 ifTrue: [
            recoveredBlock17Stack1 := self.
            recoveredBlock17PC := 33.
        ].
        recoveredBlock17Step = 33 ifTrue: [
            recoveredBlock17Stack2 := recoveredArg1.
            recoveredBlock17PC := 36.
        ].
        recoveredBlock17Step = 36 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) rightChild.
            recoveredBlock17PC := 37.
        ].
        recoveredBlock17Step = 37 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) generateIleExpr: (recoveredBlock17Stack2).
            recoveredBlock17PC := 39.
        ].
        recoveredBlock17Step = 39 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack1.
            recoveredBlock17PC := 40.
        ].
        recoveredBlock17Step = 40 ifTrue: [
            recoveredBlock17Stack1 := recoveredArg1.
            recoveredBlock17PC := 43.
        ].
        recoveredBlock17Step = 43 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local1.
            recoveredBlock17PC := 44.
        ].
        recoveredBlock17Step = 44 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) handleDET108032Exception: (recoveredBlock17Stack2).
            recoveredBlock17PC := 46.
        ].
        recoveredBlock17Step = 46 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack1.
            recoveredBlock17PC := 47.
        ].
        recoveredBlock17Step = 47 ifTrue: [
            recoveredBlock17Stack1 := recoveredArg1.
            recoveredBlock17PC := 50.
        ].
        recoveredBlock17Step = 50 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) currentIaBuilder.
            recoveredBlock17PC := 52.
        ].
        recoveredBlock17Step = 52 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local1.
            recoveredBlock17PC := 53.
        ].
        recoveredBlock17Step = 53 ifTrue: [
            recoveredBlock17Stack3 := recoveredArg1.
            recoveredBlock17PC := 56.
        ].
        recoveredBlock17Step = 56 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) genIleType.
            recoveredBlock17PC := 58.
        ].
        recoveredBlock17Step = 58 ifTrue: [
            recoveredBlock17Stack4 := recoveredArg1.
            recoveredBlock17PC := 61.
        ].
        recoveredBlock17Step = 61 ifTrue: [
            recoveredBlock17Stack4 := (recoveredBlock17Stack4) attributes.
            recoveredBlock17PC := 63.
        ].
        recoveredBlock17Step = 63 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) parmAssign: (recoveredBlock17Stack3) attributes: (recoveredBlock17Stack4).
            recoveredBlock17PC := 65.
        ].
        recoveredBlock17Step = 65 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) wrappedIleExpr: (recoveredBlock17Stack2).
            recoveredBlock17PC := 67.
        ].
        recoveredBlock17Step = 67 ifTrue: [
            ^recoveredBlock17Stack1
        ].
        recoveredBlock17Step = 68 ifTrue: [
            recoveredBlock17Stack1 := recoveredArg1.
            recoveredBlock17PC := 71.
        ].
        recoveredBlock17Step = 71 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) mdlClass.
            recoveredBlock17PC := 72.
        ].
        recoveredBlock17Step = 72 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) isCgContMoebiusFixedPointType.
            recoveredBlock17PC := 74.
        ].
        recoveredBlock17Step = 74 ifTrue: [
            (recoveredBlock17Stack1) ifTrue: [recoveredBlock17PC := 78] ifFalse: [recoveredBlock17PC := 113].
        ].
        recoveredBlock17Step = 78 ifTrue: [
            recoveredBlock17Stack1 := self.
            recoveredBlock17PC := 79.
        ].
        recoveredBlock17Step = 79 ifTrue: [
            recoveredBlock17Stack2 := recoveredArg1.
            recoveredBlock17PC := 82.
        ].
        recoveredBlock17Step = 82 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) rightChild.
            recoveredBlock17PC := 83.
        ].
        recoveredBlock17Step = 83 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) generateIleExpr: (recoveredBlock17Stack2).
            recoveredBlock17PC := 85.
        ].
        recoveredBlock17Step = 85 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack1.
            recoveredBlock17PC := 86.
        ].
        recoveredBlock17Step = 86 ifTrue: [
            recoveredBlock17Stack1 := recoveredArg1.
            recoveredBlock17PC := 89.
        ].
        recoveredBlock17Step = 89 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) currentIaBuilder.
            recoveredBlock17PC := 91.
        ].
        recoveredBlock17Step = 91 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local1.
            recoveredBlock17PC := 92.
        ].
        recoveredBlock17Step = 92 ifTrue: [
            recoveredBlock17Stack3 := recoveredArg1.
            recoveredBlock17PC := 95.
        ].
        recoveredBlock17Step = 95 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) mdlClass.
            recoveredBlock17PC := 96.
        ].
        recoveredBlock17Step = 96 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) adaptLiteralToMoebious: (recoveredBlock17Stack3).
            recoveredBlock17PC := 98.
        ].
        recoveredBlock17Step = 98 ifTrue: [
            recoveredBlock17Stack3 := recoveredArg1.
            recoveredBlock17PC := 101.
        ].
        recoveredBlock17Step = 101 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) genIleType.
            recoveredBlock17PC := 103.
        ].
        recoveredBlock17Step = 103 ifTrue: [
            recoveredBlock17Stack4 := recoveredArg1.
            recoveredBlock17PC := 106.
        ].
        recoveredBlock17Step = 106 ifTrue: [
            recoveredBlock17Stack4 := (recoveredBlock17Stack4) attributes.
            recoveredBlock17PC := 108.
        ].
        recoveredBlock17Step = 108 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) parmAssign: (recoveredBlock17Stack3) attributes: (recoveredBlock17Stack4).
            recoveredBlock17PC := 110.
        ].
        recoveredBlock17Step = 110 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) wrappedIleExpr: (recoveredBlock17Stack2).
            recoveredBlock17PC := 112.
        ].
        recoveredBlock17Step = 112 ifTrue: [
            ^recoveredBlock17Stack1
        ].
        recoveredBlock17Step = 113 ifTrue: [
            recoveredBlock17Stack1 := recoveredArg1.
            recoveredBlock17PC := 116.
        ].
        recoveredBlock17Step = 116 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) variable.
            recoveredBlock17PC := 117.
        ].
        recoveredBlock17Step = 117 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) mdlClass.
            recoveredBlock17PC := 118.
        ].
        recoveredBlock17Step = 118 ifTrue: [
            recoveredLocal4 := recoveredBlock17Stack1.
            recoveredBlock17PC := 121.
        ].
        recoveredBlock17Step = 121 ifTrue: [
            recoveredBlock17Stack1 := recoveredArg1.
            recoveredBlock17PC := 124.
        ].
        recoveredBlock17Step = 124 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) rightChild.
            recoveredBlock17PC := 125.
        ].
        recoveredBlock17Step = 125 ifTrue: [
            recoveredLocal1 := recoveredBlock17Stack1.
            recoveredBlock17PC := 128.
        ].
        recoveredBlock17Step = 128 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal1.
            recoveredBlock17PC := 131.
        ].
        recoveredBlock17Step = 131 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) isMdlReferencedExpr.
            recoveredBlock17PC := 133.
        ].
        recoveredBlock17Step = 133 ifTrue: [
            (recoveredBlock17Stack1) ifTrue: [recoveredBlock17PC := 136] ifFalse: [recoveredBlock17PC := 144].
        ].
        recoveredBlock17Step = 136 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal1.
            recoveredBlock17PC := 139.
        ].
        recoveredBlock17Step = 139 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) asMdlDereferencedExpr.
            recoveredBlock17PC := 141.
        ].
        recoveredBlock17Step = 141 ifTrue: [
            recoveredLocal1 := recoveredBlock17Stack1.
            recoveredBlock17PC := 144.
        ].
        recoveredBlock17Step = 144 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal1.
            recoveredBlock17PC := 147.
        ].
        recoveredBlock17Step = 147 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) isMdlConvertSpecialCall.
            recoveredBlock17PC := 149.
        ].
        recoveredBlock17Step = 149 ifTrue: [
            (recoveredBlock17Stack1) ifTrue: [recoveredBlock17PC := 152] ifFalse: [recoveredBlock17PC := 168].
        ].
        recoveredBlock17Step = 152 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal1.
            recoveredBlock17PC := 155.
        ].
        recoveredBlock17Step = 155 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) isImplicitConversion.
            recoveredBlock17PC := 157.
        ].
        recoveredBlock17Step = 157 ifTrue: [
            (recoveredBlock17Stack1) ifTrue: [recoveredBlock17PC := 160] ifFalse: [recoveredBlock17PC := 168].
        ].
        recoveredBlock17Step = 160 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal1.
            recoveredBlock17PC := 163.
        ].
        recoveredBlock17Step = 163 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) receiver.
            recoveredBlock17PC := 165.
        ].
        recoveredBlock17Step = 165 ifTrue: [
            recoveredLocal1 := recoveredBlock17Stack1.
            recoveredBlock17PC := 168.
        ].
        recoveredBlock17Step = 168 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal1.
            recoveredBlock17PC := 171.
        ].
        recoveredBlock17Step = 171 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) isMdlIdentifier.
            recoveredBlock17PC := 173.
        ].
        recoveredBlock17Step = 173 ifTrue: [
            (recoveredBlock17Stack1) ifTrue: [recoveredBlock17PC := 176] ifFalse: [recoveredBlock17PC := 192].
        ].
        recoveredBlock17Step = 176 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal1.
            recoveredBlock17PC := 179.
        ].
        recoveredBlock17Step = 179 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) isMdlTempVar.
            recoveredBlock17PC := 181.
        ].
        recoveredBlock17Step = 181 ifTrue: [
            (recoveredBlock17Stack1) ifTrue: [recoveredBlock17PC := 192] ifFalse: [recoveredBlock17PC := 184].
        ].
        recoveredBlock17Step = 184 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal1.
            recoveredBlock17PC := 187.
        ].
        recoveredBlock17Step = 187 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) isMdlConstantValue.
            recoveredBlock17PC := 189.
        ].
        recoveredBlock17Step = 189 ifTrue: [
            (recoveredBlock17Stack1) ifTrue: [recoveredBlock17PC := 192] ifFalse: [recoveredBlock17PC := 202].
        ].
        recoveredBlock17Step = 192 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal1.
            recoveredBlock17PC := 195.
        ].
        recoveredBlock17Step = 195 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) class.
            recoveredBlock17PC := 197.
        ].
        recoveredBlock17Step = 197 ifTrue: [
            recoveredBlock17Stack2 := SGMdMethodCall.
            recoveredBlock17PC := 199.
        ].
        recoveredBlock17Step = 199 ifTrue: [
            (recoveredBlock17Stack1 ~~ recoveredBlock17Stack2) ifTrue: [recoveredBlock17PC := 339] ifFalse: [recoveredBlock17PC := 202].
        ].
        recoveredBlock17Step = 202 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal1.
            recoveredBlock17PC := 205.
        ].
        recoveredBlock17Step = 205 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) mdlClass.
            recoveredBlock17PC := 206.
        ].
        recoveredBlock17Step = 206 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack1.
            recoveredBlock17PC := 207.
        ].
        recoveredBlock17Step = 207 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal4.
            recoveredBlock17PC := 210.
        ].
        recoveredBlock17Step = 210 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) formula.
            recoveredBlock17PC := 212.
        ].
        recoveredBlock17Step = 212 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) scale.
            recoveredBlock17PC := 214.
        ].
        recoveredBlock17Step = 214 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local1.
            recoveredBlock17PC := 215.
        ].
        recoveredBlock17Step = 215 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) formula.
            recoveredBlock17PC := 217.
        ].
        recoveredBlock17Step = 217 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) scale.
            recoveredBlock17PC := 219.
        ].
        recoveredBlock17Step = 219 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) = (recoveredBlock17Stack2).
            recoveredBlock17PC := 220.
        ].
        recoveredBlock17Step = 220 ifTrue: [
            (recoveredBlock17Stack1) ifTrue: [recoveredBlock17PC := 224] ifFalse: [recoveredBlock17PC := 254].
        ].
        recoveredBlock17Step = 224 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal4.
            recoveredBlock17PC := 227.
        ].
        recoveredBlock17Step = 227 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) formula.
            recoveredBlock17PC := 229.
        ].
        recoveredBlock17Step = 229 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) offset.
            recoveredBlock17PC := 231.
        ].
        recoveredBlock17Step = 231 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local1.
            recoveredBlock17PC := 232.
        ].
        recoveredBlock17Step = 232 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) formula.
            recoveredBlock17PC := 234.
        ].
        recoveredBlock17Step = 234 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) offset.
            recoveredBlock17PC := 236.
        ].
        recoveredBlock17Step = 236 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) = (recoveredBlock17Stack2).
            recoveredBlock17PC := 237.
        ].
        recoveredBlock17Step = 237 ifTrue: [
            (recoveredBlock17Stack1) ifTrue: [recoveredBlock17PC := 240] ifFalse: [recoveredBlock17PC := 254].
        ].
        recoveredBlock17Step = 240 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal4.
            recoveredBlock17PC := 243.
        ].
        recoveredBlock17Step = 243 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) getImplInterval.
            recoveredBlock17PC := 245.
        ].
        recoveredBlock17Step = 245 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local1.
            recoveredBlock17PC := 246.
        ].
        recoveredBlock17Step = 246 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) getImplInterval.
            recoveredBlock17PC := 248.
        ].
        recoveredBlock17Step = 248 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) includes: (recoveredBlock17Stack2).
            recoveredBlock17PC := 250.
        ].
        recoveredBlock17Step = 250 ifTrue: [
            (recoveredBlock17Stack1) ifTrue: [recoveredBlock17PC := 337] ifFalse: [recoveredBlock17PC := 254].
        ].
        recoveredBlock17Step = 254 ifTrue: [
            recoveredBlock17Stack1 := recoveredArg1.
            recoveredBlock17PC := 257.
        ].
        recoveredBlock17Step = 257 ifTrue: [
            recoveredBlock17Stack2 := 7.
            recoveredBlock17PC := 259.
        ].
        recoveredBlock17Step = 259 ifTrue: [
            recoveredBlock17Stack3 := recoveredLocal1.
            recoveredBlock17PC := 262.
        ].
        recoveredBlock17Step = 262 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) errLabel.
            recoveredBlock17PC := 264.
        ].
        recoveredBlock17Step = 264 ifTrue: [
            recoveredBlock17Stack4 := recoveredArg1.
            recoveredBlock17PC := 267.
        ].
        recoveredBlock17Step = 267 ifTrue: [
            recoveredBlock17Stack4 := (recoveredBlock17Stack4) variable.
            recoveredBlock17PC := 268.
        ].
        recoveredBlock17Step = 268 ifTrue: [
            recoveredBlock17Stack4 := (recoveredBlock17Stack4) errLabel.
            recoveredBlock17PC := 270.
        ].
        recoveredBlock17Step = 270 ifTrue: [
            recoveredBlock17Stack5 := recoveredArg1.
            recoveredBlock17PC := 273.
        ].
        recoveredBlock17Step = 273 ifTrue: [
            recoveredBlock17Stack5 := (recoveredBlock17Stack5) source.
            recoveredBlock17PC := 274.
        ].
        recoveredBlock17Step = 274 ifTrue: [
            recoveredBlock17Stack6 := Array.
            recoveredBlock17PC := 276.
        ].
        recoveredBlock17Step = 276 ifTrue: [
            recoveredBlock17Stack7 := recoveredArg1.
            recoveredBlock17PC := 279.
        ].
        recoveredBlock17Step = 279 ifTrue: [
            recoveredBlock17Stack7 := (recoveredBlock17Stack7) source.
            recoveredBlock17PC := 280.
        ].
        recoveredBlock17Step = 280 ifTrue: [
            recoveredBlock17Stack8 := recoveredLocal1.
            recoveredBlock17PC := 283.
        ].
        recoveredBlock17Step = 283 ifTrue: [
            recoveredBlock17Stack8 := (recoveredBlock17Stack8) source.
            recoveredBlock17PC := 284.
        ].
        recoveredBlock17Step = 284 ifTrue: [
            recoveredBlock17Stack6 := (recoveredBlock17Stack6) with: (recoveredBlock17Stack7) with: (recoveredBlock17Stack8).
            recoveredBlock17PC := 286.
        ].
        recoveredBlock17Step = 286 ifTrue: [
            recoveredBlock17Stack7 := Array.
            recoveredBlock17PC := 288.
        ].
        recoveredBlock17Step = 288 ifTrue: [
            recoveredBlock17Stack8 := 'Implementation of '.
            recoveredBlock17PC := 290.
        ].
        recoveredBlock17Step = 290 ifTrue: [
            recoveredBlock17Stack9 := recoveredArg1.
            recoveredBlock17PC := 293.
        ].
        recoveredBlock17Step = 293 ifTrue: [
            recoveredBlock17Stack9 := (recoveredBlock17Stack9) errLabel.
            recoveredBlock17PC := 295.
        ].
        recoveredBlock17Step = 295 ifTrue: [
            recoveredBlock17Stack8 := (recoveredBlock17Stack8) , (recoveredBlock17Stack9).
            recoveredBlock17PC := 297.
        ].
        recoveredBlock17Step = 297 ifTrue: [
            recoveredBlock17Stack9 := ': '.
            recoveredBlock17PC := 299.
        ].
        recoveredBlock17Step = 299 ifTrue: [
            recoveredBlock17Stack8 := (recoveredBlock17Stack8) , (recoveredBlock17Stack9).
            recoveredBlock17PC := 301.
        ].
        recoveredBlock17Step = 301 ifTrue: [
            recoveredBlock17Stack9 := recoveredArg1.
            recoveredBlock17PC := 304.
        ].
        recoveredBlock17Step = 304 ifTrue: [
            recoveredBlock17Stack9 := (recoveredBlock17Stack9) mdlClass.
            recoveredBlock17PC := 305.
        ].
        recoveredBlock17Step = 305 ifTrue: [
            recoveredBlock17Stack9 := (recoveredBlock17Stack9) errLabelWithImpl.
            recoveredBlock17PC := 307.
        ].
        recoveredBlock17Step = 307 ifTrue: [
            recoveredBlock17Stack8 := (recoveredBlock17Stack8) , (recoveredBlock17Stack9).
            recoveredBlock17PC := 309.
        ].
        recoveredBlock17Step = 309 ifTrue: [
            recoveredBlock17Stack9 := 'Implementation of '.
            recoveredBlock17PC := 311.
        ].
        recoveredBlock17Step = 311 ifTrue: [
            recoveredBlock17Stack10 := recoveredLocal1.
            recoveredBlock17PC := 314.
        ].
        recoveredBlock17Step = 314 ifTrue: [
            recoveredBlock17Stack10 := (recoveredBlock17Stack10) errLabel.
            recoveredBlock17PC := 316.
        ].
        recoveredBlock17Step = 316 ifTrue: [
            recoveredBlock17Stack9 := (recoveredBlock17Stack9) , (recoveredBlock17Stack10).
            recoveredBlock17PC := 318.
        ].
        recoveredBlock17Step = 318 ifTrue: [
            recoveredBlock17Stack10 := ': '.
            recoveredBlock17PC := 320.
        ].
        recoveredBlock17Step = 320 ifTrue: [
            recoveredBlock17Stack9 := (recoveredBlock17Stack9) , (recoveredBlock17Stack10).
            recoveredBlock17PC := 322.
        ].
        recoveredBlock17Step = 322 ifTrue: [
            recoveredBlock17Stack10 := recoveredLocal1.
            recoveredBlock17PC := 325.
        ].
        recoveredBlock17Step = 325 ifTrue: [
            recoveredBlock17Stack10 := (recoveredBlock17Stack10) mdlClass.
            recoveredBlock17PC := 326.
        ].
        recoveredBlock17Step = 326 ifTrue: [
            recoveredBlock17Stack10 := (recoveredBlock17Stack10) errLabelWithImpl.
            recoveredBlock17PC := 328.
        ].
        recoveredBlock17Step = 328 ifTrue: [
            recoveredBlock17Stack9 := (recoveredBlock17Stack9) , (recoveredBlock17Stack10).
            recoveredBlock17PC := 330.
        ].
        recoveredBlock17Step = 330 ifTrue: [
            recoveredBlock17Stack7 := (recoveredBlock17Stack7) with: (recoveredBlock17Stack8) with: (recoveredBlock17Stack9).
            recoveredBlock17PC := 332.
        ].
        recoveredBlock17Step = 332 ifTrue: [
            recoveredBlock17Stack5 := (recoveredBlock17Stack5) createMultiSource: (recoveredBlock17Stack6) labels: (recoveredBlock17Stack7).
            recoveredBlock17PC := 334.
        ].
        recoveredBlock17Step = 334 ifTrue: [
            (recoveredBlock17Stack1) iaWarningNo: (recoveredBlock17Stack2) with: (recoveredBlock17Stack3) with: (recoveredBlock17Stack4) source: (recoveredBlock17Stack5).
            recoveredBlock17PC := 337.
        ].
        recoveredBlock17Step = 337 ifTrue: [
            recoveredBlock17Stack1 := nil.
            recoveredBlock17PC := 338.
        ].
        recoveredBlock17Step = 338 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack1.
            recoveredBlock17PC := 339.
        ].
        recoveredBlock17Step = 339 ifTrue: [
            recoveredBlock17Stack1 := recoveredArg1.
            recoveredBlock17PC := 342.
        ].
        recoveredBlock17Step = 342 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) rightChild.
            recoveredBlock17PC := 343.
        ].
        recoveredBlock17Step = 343 ifTrue: [
            recoveredBlock17Stack2 := recoveredLocal4.
            recoveredBlock17PC := 346.
        ].
        recoveredBlock17Step = 346 ifTrue: [
            (recoveredBlock17Stack1) setExactGoalScaleFromImpl: (recoveredBlock17Stack2).
            recoveredBlock17PC := 348.
        ].
        recoveredBlock17Step = 348 ifTrue: [
            recoveredBlock17Stack1 := recoveredArg1.
            recoveredBlock17PC := 351.
        ].
        recoveredBlock17Step = 351 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) currentIaBuilder.
            recoveredBlock17PC := 353.
        ].
        recoveredBlock17Step = 353 ifTrue: [
            recoveredBlock17Stack2 := recoveredArg1.
            recoveredBlock17PC := 356.
        ].
        recoveredBlock17Step = 356 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) createPhonyLValue: (recoveredBlock17Stack2).
            recoveredBlock17PC := 358.
        ].
        recoveredBlock17Step = 358 ifTrue: [
            recoveredLocal3 := recoveredBlock17Stack1.
            recoveredBlock17PC := 361.
        ].
        recoveredBlock17Step = 361 ifTrue: [
            recoveredBlock17Stack1 := recoveredArg1.
            recoveredBlock17PC := 364.
        ].
        recoveredBlock17Step = 364 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) rightChild.
            recoveredBlock17PC := 365.
        ].
        recoveredBlock17Step = 365 ifTrue: [
            recoveredBlock17Stack2 := recoveredArg1.
            recoveredBlock17PC := 368.
        ].
        recoveredBlock17Step = 368 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) attributes.
            recoveredBlock17PC := 370.
        ].
        recoveredBlock17Step = 370 ifTrue: [
            (recoveredBlock17Stack1) attributes: (recoveredBlock17Stack2).
            recoveredBlock17PC := 372.
        ].
        recoveredBlock17Step = 372 ifTrue: [
            recoveredBlock17Stack1 := recoveredArg1.
            recoveredBlock17PC := 375.
        ].
        recoveredBlock17Step = 375 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) rightChild.
            recoveredBlock17PC := 376.
        ].
        recoveredBlock17Step = 376 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) visitMdlNode: (recoveredBlock17Stack1).
            recoveredBlock17PC := 378.
        ].
        recoveredBlock17Step = 378 ifTrue: [
            recoveredLocal2 := recoveredBlock17Stack0.
            recoveredBlock17PC := 381.
        ].
        recoveredBlock17Step = 381 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal2.
            recoveredBlock17PC := 384.
        ].
        recoveredBlock17Step = 384 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal2.
            recoveredBlock17PC := 387.
        ].
        recoveredBlock17Step = 387 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) ileExpr.
            recoveredBlock17PC := 389.
        ].
        recoveredBlock17Step = 389 ifTrue: [
            (recoveredBlock17Stack0 ~~ recoveredBlock17Stack1) ifTrue: [recoveredBlock17PC := 403] ifFalse: [recoveredBlock17PC := 392].
        ].
        recoveredBlock17Step = 392 ifTrue: [
            recoveredBlock17Stack0 := self.
            recoveredBlock17PC := 393.
        ].
        recoveredBlock17Step = 393 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) currentIaBuilder.
            recoveredBlock17PC := 395.
        ].
        recoveredBlock17Step = 395 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal2.
            recoveredBlock17PC := 398.
        ].
        recoveredBlock17Step = 398 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) wrappedIleExpr: (recoveredBlock17Stack1).
            recoveredBlock17PC := 400.
        ].
        recoveredBlock17Step = 400 ifTrue: [
            recoveredLocal2 := recoveredBlock17Stack0.
            recoveredBlock17PC := 403.
        ].
        recoveredBlock17Step = 403 ifTrue: [
            recoveredBlock17Stack0 := 'Rl'.
            recoveredBlock17PC := 405.
        ].
        recoveredBlock17Step = 405 ifTrue: [
            recoveredBlock17Stack1 := 'Call_63518'.
            recoveredBlock17PC := 407.
        ].
        recoveredBlock17Step = 407 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) == (recoveredBlock17Stack1).
            recoveredBlock17PC := 408.
        ].
        recoveredBlock17Step = 408 ifTrue: [
            recoveredBlock17PC := 409.
        ].
        recoveredBlock17Step = 409 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal3.
            recoveredBlock17PC := 412.
        ].
        recoveredBlock17Step = 412 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal2.
            recoveredBlock17PC := 415.
        ].
        recoveredBlock17Step = 415 ifTrue: [
            recoveredBlock17Stack2 := recoveredArg1.
            recoveredBlock17PC := 418.
        ].
        recoveredBlock17Step = 418 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) attributes.
            recoveredBlock17PC := 420.
        ].
        recoveredBlock17Step = 420 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) parmAssign: (recoveredBlock17Stack1) varAttributes: (recoveredBlock17Stack2).
            recoveredBlock17PC := 422.
        ].
        recoveredBlock17Step = 422 ifTrue: [
            recoveredLocal5 := recoveredBlock17Stack0.
            recoveredBlock17PC := 425.
        ].
        recoveredBlock17Step = 425 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal5.
            recoveredBlock17PC := 428.
        ].
        recoveredBlock17Step = 428 ifTrue: [
            ^recoveredBlock17Stack0
        ].
    ].
    recoveredBlock17Result
].
    (self) withExpressionContextFrom: (recoveredValue1) lValueType: (recoveredValue4) source: (recoveredValue6) do: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x20620870; bytecode file offset 0xf1d208"
!SGIntegerStrategy methodsFor: 'recovered'!
multiplexExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) needsIntegerCode.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgContMoebiusFixedPointType.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) choiceChildren.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 |
    recoveredBlock24Value0 := recoveredBlock24Arg1.
    recoveredBlock24Value1 := (self) visitMdlNode: (recoveredBlock24Value0).
    recoveredBlock24Value2 := (recoveredBlock24Value1) ileExpr.
    recoveredBlock24Value2
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultExprChild.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitMdlNode: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileExpr.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentIaBuilder.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := (recoveredStack3) switchExprChild.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock63Value0 recoveredBlock63Value1 recoveredBlock63Value2 recoveredBlock63Value3 recoveredBlock63Value4 recoveredBlock63Value5 recoveredBlock63Value6 recoveredBlock63Value7 recoveredBlock63Value8 |
    recoveredBlock63Value0 := recoveredArg1.
    recoveredBlock63Value1 := (recoveredBlock63Value0) switchExprChild.
    recoveredBlock63Value2 := (self) visitMdlNode: (recoveredBlock63Value1).
    recoveredBlock63Value3 := (recoveredBlock63Value2) ileExpr.
    recoveredBlock63Value4 := recoveredLocal7.
    recoveredBlock63Value5 := recoveredLocal6.
    recoveredBlock63Value6 := recoveredArg1.
    recoveredBlock63Value7 := (recoveredBlock63Value6) genIleType.
    recoveredBlock63Value8 := (recoveredBlock63Value3) multiplexOn: (recoveredBlock63Value4) defaultExpr: (recoveredBlock63Value5) type: (recoveredBlock63Value7).
    recoveredBlock63Value8
].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := (recoveredStack2) withExpressionContextFrom: (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) wrappedIleExpr: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgContReciprocalType.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) asReciprocalExpr: (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) optData.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetScale.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack0) propagateInfoToMultiplexChildren: (recoveredStack1).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultExprChild.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitMdlNode: (recoveredStack1).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) choiceChildren.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := [:recoveredBlock156Arg1 | 
    | recoveredBlock156Value0 recoveredBlock156Value1 recoveredBlock156Value2 |
    recoveredBlock156Value0 := recoveredBlock156Arg1.
    recoveredBlock156Value1 := (recoveredBlock156Value0) exprChild.
    recoveredBlock156Value2 := (self) visitMdlNode: (recoveredBlock156Value1).
    recoveredBlock156Value2
].
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock174Value0 recoveredBlock174Value1 recoveredBlock174Value2 |
    recoveredBlock174Value0 := recoveredLocal7.
    recoveredBlock174Value1 := [:recoveredBlock174Block183Arg1 | 
    | recoveredBlock174Block183Value0 recoveredBlock174Block183Value1 recoveredBlock174Block183Value2 recoveredBlock174Block183Value3 recoveredBlock174Block183Value4 |
    recoveredBlock174Block183Value0 := recoveredBlock174Block183Arg1.
    recoveredBlock174Block183Value1 := (recoveredBlock174Block183Value0) isRescalable.
    recoveredBlock174Block183Value2 := recoveredLocal6.
    recoveredBlock174Block183Value3 := (recoveredBlock174Block183Value2) isRescalable.
    recoveredBlock174Block183Value4 := (recoveredBlock174Block183Value1) = (recoveredBlock174Block183Value3).
    recoveredBlock174Block183Value4
].
    recoveredBlock174Value2 := (recoveredBlock174Value0) allSatisfy: (recoveredBlock174Value1).
    recoveredBlock174Value2
].
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := [
    'All operands of a BDE-case must be rescalable or not rescalable'
].
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := 'Rl'.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := 'Call_65087'.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 306] ifFalse: [recoveredPC := 226].
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack0 := (recoveredStack0) isExact.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 234] ifFalse: [recoveredPC := 306].
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentIaBuilder.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := (recoveredStack1) implInterval.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack2 := (recoveredStack2) formula.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack2 := (recoveredStack2) offset.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack2 := (recoveredStack2) currentIaBuilder.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack2 := (recoveredStack2) newFormula.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack4 := (recoveredStack4) mdlClass.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack4 := (recoveredStack4) formula.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack4 := (recoveredStack4) offset.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            (recoveredStack3) offset: (recoveredStack4).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack2 := (recoveredStack2) scale: (recoveredStack3).
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack3 := (recoveredStack3) isRescalable.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScalarTypedExprInterval: (recoveredStack1) formula: (recoveredStack2) isRescalable: (recoveredStack3).
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack2 := (recoveredStack2) implInterval.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack2 := (recoveredStack2) asInteger.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := (recoveredStack1) createImplTypeFromInterval: (recoveredStack2).
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            (recoveredStack0) type: (recoveredStack1).
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredPC := 322.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack0 := (recoveredStack0) genIleIntegerFirstPass: (recoveredStack1) choices: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            (recoveredStack0) adaptAssignAttributes.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := [:recoveredBlock330Arg1 | 
    | recoveredBlock330Value0 recoveredBlock330Value1 recoveredBlock330Value2 recoveredBlock330Value3 recoveredBlock330Value4 recoveredBlock330Value5 recoveredBlock330Value6 recoveredBlock330Value7 |
    recoveredBlock330Value0 := recoveredLocal4.
    recoveredBlock330Value1 := recoveredBlock330Arg1.
    recoveredBlock330Value2 := recoveredArg1.
    recoveredBlock330Value3 := (recoveredBlock330Value2) attributes.
    recoveredBlock330Value4 := (self) defaultInAttributes.
    recoveredBlock330Value5 := (recoveredBlock330Value0) parmAssign: (recoveredBlock330Value1) attributes: (recoveredBlock330Value3) varAttributes: (recoveredBlock330Value4).
    recoveredBlock330Value6 := (recoveredBlock330Value5) ileExpr.
    recoveredBlock330Value7 := (recoveredBlock330Value6) ileRightHandSideExpr.
    recoveredBlock330Value7
].
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack2 := (recoveredStack2) attributes.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack3 := (recoveredStack3) defaultInAttributes.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack0 := (recoveredStack0) parmAssign: (recoveredStack1) attributes: (recoveredStack2) varAttributes: (recoveredStack3).
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileExpr.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileRightHandSideExpr.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 481] ifFalse: [recoveredPC := 392].
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack0 := (recoveredStack0) isExact.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 400] ifFalse: [recoveredPC := 481].
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack1 := SGCgTypeFactory.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack2 := (recoveredStack2) type.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack1 := (recoveredStack1) createContImpl: (recoveredStack2).
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack3 := (recoveredStack3) interval.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            (recoveredStack2) setImplInterval: (recoveredStack3).
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDummyExprType: (recoveredStack1).
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack1 := [:recoveredBlock428Arg1 | 
    | recoveredBlock428Value0 recoveredBlock428Value1 recoveredBlock428Value2 recoveredBlock428Value3 recoveredBlock428Value4 recoveredBlock428Value5 recoveredBlock428Value6 |
    recoveredBlock428Value0 := SGIlLimitAssignmentTransformation.
    recoveredBlock428Value1 := (recoveredBlock428Value0) create.
    recoveredBlock428Value2 := recoveredBlock428Arg1.
    recoveredBlock428Value3 := recoveredLocal1.
    recoveredBlock428Value4 := recoveredArg1.
    recoveredBlock428Value5 := (recoveredBlock428Value4) attributes.
    recoveredBlock428Value6 := (recoveredBlock428Value1) limitAssignment: (recoveredBlock428Value2) to: (recoveredBlock428Value3) attributes: (recoveredBlock428Value5).
    recoveredBlock428Value6
].
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack0 := SGIlLimitAssignmentTransformation.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack3 := (recoveredStack3) attributes.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack0 := (recoveredStack0) limitAssignment: (recoveredStack1) to: (recoveredStack2) attributes: (recoveredStack3).
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack1 := (recoveredStack1) switchExprChild.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock487Value0 recoveredBlock487Value1 recoveredBlock487Value2 recoveredBlock487Value3 recoveredBlock487Value4 |
    recoveredBlock487Value0 := recoveredArg1.
    recoveredBlock487Value1 := (recoveredBlock487Value0) switchExprChild.
    recoveredBlock487Value2 := (self) visitMdlNode: (recoveredBlock487Value1).
    recoveredLocal5 := recoveredBlock487Value2.
    recoveredBlock487Value3 := (self) expressionContext.
    recoveredBlock487Value4 := recoveredBlock487Value3.
    recoveredLocal2 := recoveredBlock487Value4.
    recoveredBlock487Value3
].
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            (recoveredStack0) withExpressionContextFrom: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileExpr.
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            recoveredStack4 := (recoveredStack4) type.
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack1 := (recoveredStack1) multiplexOn: (recoveredStack2) defaultExpr: (recoveredStack3) type: (recoveredStack4) expressionContext: (recoveredStack5).
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileExpr: (recoveredStack1).
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206404a4; bytecode file offset 0xf3ce34"
!SGIntegerStrategy methodsFor: 'recovered'!
assignExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlDereferencedExpr.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlRTEMacroCall.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRteRead.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := (recoveredStack3) variable.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) autosarRTERead: (recoveredStack2) assignedTo: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) wrapIleExpr: (recoveredStack2) forMdExpr: (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 498] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightChild.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := (recoveredStack3) variable.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlClass.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack4 := (recoveredStack4) source.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock97Stack0 recoveredBlock97Stack1 recoveredBlock97Stack2 recoveredBlock97Stack3 recoveredBlock97Stack4 recoveredBlock97Stack5 recoveredBlock97Stack6 recoveredBlock97Stack7 recoveredBlock97PC recoveredBlock97Step recoveredBlock97Done recoveredBlock97Result |
    recoveredBlock97Stack0 := self.
    recoveredBlock97PC := 104.
    recoveredBlock97Done := false.
    [recoveredBlock97Done not] whileTrue: [
        recoveredBlock97Step := recoveredBlock97PC.
        recoveredBlock97Step = 104 ifTrue: [
            recoveredBlock97Stack1 := recoveredArg1.
            recoveredBlock97PC := 107.
        ].
        recoveredBlock97Step = 107 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) needsIntegerCode.
            recoveredBlock97PC := 109.
        ].
        recoveredBlock97Step = 109 ifTrue: [
            (recoveredBlock97Stack1) ifTrue: [recoveredBlock97PC := 212] ifFalse: [recoveredBlock97PC := 112].
        ].
        recoveredBlock97Step = 112 ifTrue: [
            recoveredBlock97Stack1 := recoveredArg1.
            recoveredBlock97PC := 115.
        ].
        recoveredBlock97Step = 115 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) rightChild.
            recoveredBlock97PC := 116.
        ].
        recoveredBlock97Step = 116 ifTrue: [
            recoveredBlock97Stack2 := recoveredArg1.
            recoveredBlock97PC := 119.
        ].
        recoveredBlock97Step = 119 ifTrue: [
            recoveredBlock97Stack2 := (recoveredBlock97Stack2) attributes.
            recoveredBlock97PC := 121.
        ].
        recoveredBlock97Step = 121 ifTrue: [
            (recoveredBlock97Stack1) attributes: (recoveredBlock97Stack2).
            recoveredBlock97PC := 123.
        ].
        recoveredBlock97Step = 123 ifTrue: [
            recoveredBlock97Stack1 := recoveredArg1.
            recoveredBlock97PC := 126.
        ].
        recoveredBlock97Step = 126 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) variable.
            recoveredBlock97PC := 128.
        ].
        recoveredBlock97Step = 128 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) createIleLValueExpr.
            recoveredBlock97PC := 130.
        ].
        recoveredBlock97Step = 130 ifTrue: [
            recoveredLocal4 := recoveredBlock97Stack1.
            recoveredBlock97PC := 133.
        ].
        recoveredBlock97Step = 133 ifTrue: [
            recoveredBlock97Stack1 := self.
            recoveredBlock97PC := 134.
        ].
        recoveredBlock97Step = 134 ifTrue: [
            recoveredBlock97Stack2 := recoveredArg1.
            recoveredBlock97PC := 137.
        ].
        recoveredBlock97Step = 137 ifTrue: [
            recoveredBlock97Stack2 := (recoveredBlock97Stack2) rightChild.
            recoveredBlock97PC := 138.
        ].
        recoveredBlock97Step = 138 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) visitMdlNode: (recoveredBlock97Stack2).
            recoveredBlock97PC := 140.
        ].
        recoveredBlock97Step = 140 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) ileExpr.
            recoveredBlock97PC := 142.
        ].
        recoveredBlock97Step = 142 ifTrue: [
            recoveredLocal3 := recoveredBlock97Stack1.
            recoveredBlock97PC := 145.
        ].
        recoveredBlock97Step = 145 ifTrue: [
            recoveredBlock97Stack1 := recoveredArg1.
            recoveredBlock97PC := 148.
        ].
        recoveredBlock97Step = 148 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) mdlClass.
            recoveredBlock97PC := 150.
        ].
        recoveredBlock97Step = 150 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) isCgCopyByMemcpyType.
            recoveredBlock97PC := 152.
        ].
        recoveredBlock97Step = 152 ifTrue: [
            (recoveredBlock97Stack1) ifTrue: [recoveredBlock97PC := 156] ifFalse: [recoveredBlock97PC := 182].
        ].
        recoveredBlock97Step = 156 ifTrue: [
            recoveredBlock97Stack1 := self.
            recoveredBlock97PC := 157.
        ].
        recoveredBlock97Step = 157 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) dataStructureGenerator.
            recoveredBlock97PC := 159.
        ].
        recoveredBlock97Step = 159 ifTrue: [
            recoveredBlock97Stack2 := recoveredArg1.
            recoveredBlock97PC := 162.
        ].
        recoveredBlock97Step = 162 ifTrue: [
            recoveredBlock97Stack2 := (recoveredBlock97Stack2) mdlClass.
            recoveredBlock97PC := 164.
        ].
        recoveredBlock97Step = 164 ifTrue: [
            recoveredBlock97Stack3 := recoveredLocal4.
            recoveredBlock97PC := 167.
        ].
        recoveredBlock97Step = 167 ifTrue: [
            recoveredBlock97Stack4 := recoveredLocal3.
            recoveredBlock97PC := 170.
        ].
        recoveredBlock97Step = 170 ifTrue: [
            recoveredBlock97Stack5 := false.
            recoveredBlock97PC := 171.
        ].
        recoveredBlock97Step = 171 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) createCopyStatement: (recoveredBlock97Stack2) lhs: (recoveredBlock97Stack3) rhs: (recoveredBlock97Stack4) messageCopy: (recoveredBlock97Stack5).
            recoveredBlock97PC := 174.
        ].
        recoveredBlock97Step = 174 ifTrue: [
            recoveredBlock97Stack2 := recoveredBlock97Stack1.
            recoveredBlock97PC := 175.
        ].
        recoveredBlock97Step = 175 ifTrue: [
            recoveredLocal5 := recoveredBlock97Stack2.
            recoveredBlock97PC := 178.
        ].
        recoveredBlock97Step = 178 ifTrue: [
            recoveredBlock97PC := 208.
        ].
        recoveredBlock97Step = 182 ifTrue: [
            recoveredBlock97Stack1 := recoveredArg1.
            recoveredBlock97PC := 185.
        ].
        recoveredBlock97Step = 185 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) currentIaBuilder.
            recoveredBlock97PC := 187.
        ].
        recoveredBlock97Step = 187 ifTrue: [
            recoveredBlock97Stack2 := self.
            recoveredBlock97PC := 188.
        ].
        recoveredBlock97Step = 188 ifTrue: [
            recoveredBlock97Stack3 := recoveredArg1.
            recoveredBlock97PC := 191.
        ].
        recoveredBlock97Step = 191 ifTrue: [
            recoveredBlock97Stack4 := recoveredLocal4.
            recoveredBlock97PC := 194.
        ].
        recoveredBlock97Step = 194 ifTrue: [
            recoveredBlock97Stack5 := recoveredLocal3.
            recoveredBlock97PC := 197.
        ].
        recoveredBlock97Step = 197 ifTrue: [
            recoveredBlock97Stack5 := (recoveredBlock97Stack5) ileExpr.
            recoveredBlock97PC := 199.
        ].
        recoveredBlock97Step = 199 ifTrue: [
            recoveredBlock97Stack2 := (recoveredBlock97Stack2) createAssignExpr: (recoveredBlock97Stack3) leftHandSide: (recoveredBlock97Stack4) expr: (recoveredBlock97Stack5).
            recoveredBlock97PC := 202.
        ].
        recoveredBlock97Step = 202 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) wrappedIleExpr: (recoveredBlock97Stack2).
            recoveredBlock97PC := 204.
        ].
        recoveredBlock97Step = 204 ifTrue: [
            recoveredBlock97Stack2 := recoveredBlock97Stack1.
            recoveredBlock97PC := 205.
        ].
        recoveredBlock97Step = 205 ifTrue: [
            recoveredLocal5 := recoveredBlock97Stack2.
            recoveredBlock97PC := 208.
        ].
        recoveredBlock97Step = 208 ifTrue: [
            recoveredBlock97PC := 494.
        ].
        recoveredBlock97Step = 212 ifTrue: [
            recoveredBlock97Stack1 := recoveredArg1.
            recoveredBlock97PC := 215.
        ].
        recoveredBlock97Step = 215 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) variable.
            recoveredBlock97PC := 217.
        ].
        recoveredBlock97Step = 217 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) isMdlNeedsImplAssign.
            recoveredBlock97PC := 219.
        ].
        recoveredBlock97Step = 219 ifTrue: [
            (recoveredBlock97Stack1) ifTrue: [recoveredBlock97PC := 222] ifFalse: [recoveredBlock97PC := 274].
        ].
        recoveredBlock97Step = 222 ifTrue: [
            recoveredBlock97Stack1 := self.
            recoveredBlock97PC := 223.
        ].
        recoveredBlock97Step = 223 ifTrue: [
            recoveredBlock97Stack2 := recoveredArg1.
            recoveredBlock97PC := 226.
        ].
        recoveredBlock97Step = 226 ifTrue: [
            recoveredBlock97Stack2 := (recoveredBlock97Stack2) rightChild.
            recoveredBlock97PC := 227.
        ].
        recoveredBlock97Step = 227 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) visitMdlNode: (recoveredBlock97Stack2).
            recoveredBlock97PC := 229.
        ].
        recoveredBlock97Step = 229 ifTrue: [
            recoveredLocal3 := recoveredBlock97Stack1.
            recoveredBlock97PC := 232.
        ].
        recoveredBlock97Step = 232 ifTrue: [
            recoveredBlock97Stack1 := self.
            recoveredBlock97PC := 233.
        ].
        recoveredBlock97Step = 233 ifTrue: [
            recoveredBlock97Stack2 := recoveredArg1.
            recoveredBlock97PC := 236.
        ].
        recoveredBlock97Step = 236 ifTrue: [
            recoveredBlock97Stack2 := (recoveredBlock97Stack2) variable.
            recoveredBlock97PC := 238.
        ].
        recoveredBlock97Step = 238 ifTrue: [
            recoveredBlock97Stack2 := (recoveredBlock97Stack2) varDecl.
            recoveredBlock97PC := 240.
        ].
        recoveredBlock97Step = 240 ifTrue: [
            recoveredBlock97Stack3 := recoveredLocal3.
            recoveredBlock97PC := 243.
        ].
        recoveredBlock97Step = 243 ifTrue: [
            (recoveredBlock97Stack1) createIaExprPropagatedImpl: (recoveredBlock97Stack2) expr: (recoveredBlock97Stack3).
            recoveredBlock97PC := 245.
        ].
        recoveredBlock97Step = 245 ifTrue: [
            recoveredBlock97Stack1 := self.
            recoveredBlock97PC := 246.
        ].
        recoveredBlock97Step = 246 ifTrue: [
            recoveredBlock97Stack2 := recoveredArg1.
            recoveredBlock97PC := 249.
        ].
        recoveredBlock97Step = 249 ifTrue: [
            recoveredBlock97Stack2 := (recoveredBlock97Stack2) variable.
            recoveredBlock97PC := 251.
        ].
        recoveredBlock97Step = 251 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) createIaLValueExpr: (recoveredBlock97Stack2).
            recoveredBlock97PC := 253.
        ].
        recoveredBlock97Step = 253 ifTrue: [
            recoveredLocal4 := recoveredBlock97Stack1.
            recoveredBlock97PC := 256.
        ].
        recoveredBlock97Step = 256 ifTrue: [
            recoveredBlock97Stack1 := recoveredLocal4.
            recoveredBlock97PC := 259.
        ].
        recoveredBlock97Step = 259 ifTrue: [
            recoveredBlock97Stack2 := recoveredLocal3.
            recoveredBlock97PC := 262.
        ].
        recoveredBlock97Step = 262 ifTrue: [
            recoveredBlock97Stack3 := recoveredArg1.
            recoveredBlock97PC := 265.
        ].
        recoveredBlock97Step = 265 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) assign: (recoveredBlock97Stack2) mdlNode: (recoveredBlock97Stack3).
            recoveredBlock97PC := 267.
        ].
        recoveredBlock97Step = 267 ifTrue: [
            recoveredBlock97Stack2 := recoveredBlock97Stack1.
            recoveredBlock97PC := 268.
        ].
        recoveredBlock97Step = 268 ifTrue: [
            recoveredLocal5 := recoveredBlock97Stack2.
            recoveredBlock97PC := 271.
        ].
        recoveredBlock97Step = 271 ifTrue: [
            recoveredBlock97PC := 494.
        ].
        recoveredBlock97Step = 274 ifTrue: [
            recoveredBlock97Stack1 := recoveredArg1.
            recoveredBlock97PC := 277.
        ].
        recoveredBlock97Step = 277 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) mdlClass.
            recoveredBlock97PC := 279.
        ].
        recoveredBlock97Step = 279 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) isCgContMoebiusFixedPointType.
            recoveredBlock97PC := 281.
        ].
        recoveredBlock97Step = 281 ifTrue: [
            (recoveredBlock97Stack1) ifTrue: [recoveredBlock97PC := 284] ifFalse: [recoveredBlock97PC := 372].
        ].
        recoveredBlock97Step = 284 ifTrue: [
            recoveredBlock97Stack1 := recoveredArg1.
            recoveredBlock97PC := 287.
        ].
        recoveredBlock97Step = 287 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) variable.
            recoveredBlock97PC := 289.
        ].
        recoveredBlock97Step = 289 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) createIleLValueExpr.
            recoveredBlock97PC := 291.
        ].
        recoveredBlock97Step = 291 ifTrue: [
            recoveredLocal4 := recoveredBlock97Stack1.
            recoveredBlock97PC := 294.
        ].
        recoveredBlock97Step = 294 ifTrue: [
            recoveredBlock97Stack1 := self.
            recoveredBlock97PC := 295.
        ].
        recoveredBlock97Step = 295 ifTrue: [
            recoveredBlock97Stack2 := recoveredArg1.
            recoveredBlock97PC := 298.
        ].
        recoveredBlock97Step = 298 ifTrue: [
            recoveredBlock97Stack2 := (recoveredBlock97Stack2) rightChild.
            recoveredBlock97PC := 299.
        ].
        recoveredBlock97Step = 299 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) visitMdlNode: (recoveredBlock97Stack2).
            recoveredBlock97PC := 301.
        ].
        recoveredBlock97Step = 301 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) ileExpr.
            recoveredBlock97PC := 303.
        ].
        recoveredBlock97Step = 303 ifTrue: [
            recoveredLocal3 := recoveredBlock97Stack1.
            recoveredBlock97PC := 306.
        ].
        recoveredBlock97Step = 306 ifTrue: [
            recoveredBlock97Stack1 := recoveredArg1.
            recoveredBlock97PC := 309.
        ].
        recoveredBlock97Step = 309 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) currentIaBuilder.
            recoveredBlock97PC := 311.
        ].
        recoveredBlock97Step = 311 ifTrue: [
            recoveredBlock97Stack2 := self.
            recoveredBlock97PC := 312.
        ].
        recoveredBlock97Step = 312 ifTrue: [
            recoveredBlock97Stack3 := recoveredArg1.
            recoveredBlock97PC := 315.
        ].
        recoveredBlock97Step = 315 ifTrue: [
            recoveredBlock97Stack4 := recoveredLocal4.
            recoveredBlock97PC := 318.
        ].
        recoveredBlock97Step = 318 ifTrue: [
            recoveredBlock97Stack5 := recoveredLocal3.
            recoveredBlock97PC := 321.
        ].
        recoveredBlock97Step = 321 ifTrue: [
            recoveredBlock97Stack5 := (recoveredBlock97Stack5) ileExpr.
            recoveredBlock97PC := 323.
        ].
        recoveredBlock97Step = 323 ifTrue: [
            recoveredBlock97Stack6 := recoveredArg1.
            recoveredBlock97PC := 326.
        ].
        recoveredBlock97Step = 326 ifTrue: [
            recoveredBlock97Stack6 := (recoveredBlock97Stack6) mdlClass.
            recoveredBlock97PC := 328.
        ].
        recoveredBlock97Step = 328 ifTrue: [
            recoveredBlock97Stack5 := (recoveredBlock97Stack5) adaptLiteralToMoebious: (recoveredBlock97Stack6).
            recoveredBlock97PC := 330.
        ].
        recoveredBlock97Step = 330 ifTrue: [
            recoveredBlock97Stack2 := (recoveredBlock97Stack2) createAssignExpr: (recoveredBlock97Stack3) leftHandSide: (recoveredBlock97Stack4) expr: (recoveredBlock97Stack5).
            recoveredBlock97PC := 333.
        ].
        recoveredBlock97Step = 333 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) wrappedIleExpr: (recoveredBlock97Stack2).
            recoveredBlock97PC := 335.
        ].
        recoveredBlock97Step = 335 ifTrue: [
            recoveredLocal4 := recoveredBlock97Stack1.
            recoveredBlock97PC := 338.
        ].
        recoveredBlock97Step = 338 ifTrue: [
            recoveredBlock97Stack1 := recoveredArg1.
            recoveredBlock97PC := 341.
        ].
        recoveredBlock97Step = 341 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) mdlClass.
            recoveredBlock97PC := 343.
        ].
        recoveredBlock97Step = 343 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) isCgContReciprocalType.
            recoveredBlock97PC := 345.
        ].
        recoveredBlock97Step = 345 ifTrue: [
            (recoveredBlock97Stack1) ifTrue: [recoveredBlock97PC := 348] ifFalse: [recoveredBlock97PC := 361].
        ].
        recoveredBlock97Step = 348 ifTrue: [
            recoveredBlock97Stack1 := recoveredLocal4.
            recoveredBlock97PC := 351.
        ].
        recoveredBlock97Step = 351 ifTrue: [
            recoveredBlock97Stack2 := recoveredArg1.
            recoveredBlock97PC := 354.
        ].
        recoveredBlock97Step = 354 ifTrue: [
            recoveredBlock97Stack2 := (recoveredBlock97Stack2) mdlClass.
            recoveredBlock97PC := 356.
        ].
        recoveredBlock97Step = 356 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) asReciprocalExpr: (recoveredBlock97Stack2).
            recoveredBlock97PC := 358.
        ].
        recoveredBlock97Step = 358 ifTrue: [
            recoveredLocal4 := recoveredBlock97Stack1.
            recoveredBlock97PC := 361.
        ].
        recoveredBlock97Step = 361 ifTrue: [
            recoveredBlock97Stack1 := recoveredLocal4.
            recoveredBlock97PC := 364.
        ].
        recoveredBlock97Step = 364 ifTrue: [
            recoveredBlock97Stack2 := recoveredBlock97Stack1.
            recoveredBlock97PC := 365.
        ].
        recoveredBlock97Step = 365 ifTrue: [
            recoveredLocal5 := recoveredBlock97Stack2.
            recoveredBlock97PC := 368.
        ].
        recoveredBlock97Step = 368 ifTrue: [
            recoveredBlock97PC := 494.
        ].
        recoveredBlock97Step = 372 ifTrue: [
            recoveredBlock97Stack1 := 'Rl'.
            recoveredBlock97PC := 374.
        ].
        recoveredBlock97Step = 374 ifTrue: [
            recoveredBlock97Stack2 := 'Call_62893'.
            recoveredBlock97PC := 376.
        ].
        recoveredBlock97Step = 376 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) == (recoveredBlock97Stack2).
            recoveredBlock97PC := 377.
        ].
        recoveredBlock97Step = 377 ifTrue: [
            recoveredBlock97PC := 378.
        ].
        recoveredBlock97Step = 378 ifTrue: [
            recoveredBlock97Stack1 := recoveredArg1.
            recoveredBlock97PC := 381.
        ].
        recoveredBlock97Step = 381 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) rightChild.
            recoveredBlock97PC := 382.
        ].
        recoveredBlock97Step = 382 ifTrue: [
            recoveredBlock97Stack2 := recoveredArg1.
            recoveredBlock97PC := 385.
        ].
        recoveredBlock97Step = 385 ifTrue: [
            recoveredBlock97Stack2 := (recoveredBlock97Stack2) variable.
            recoveredBlock97PC := 387.
        ].
        recoveredBlock97Step = 387 ifTrue: [
            recoveredBlock97Stack2 := (recoveredBlock97Stack2) mdlClass.
            recoveredBlock97PC := 389.
        ].
        recoveredBlock97Step = 389 ifTrue: [
            (recoveredBlock97Stack1) setExactGoalScaleFromImpl: (recoveredBlock97Stack2).
            recoveredBlock97PC := 391.
        ].
        recoveredBlock97Step = 391 ifTrue: [
            recoveredBlock97Stack1 := self.
            recoveredBlock97PC := 392.
        ].
        recoveredBlock97Step = 392 ifTrue: [
            recoveredBlock97Stack2 := recoveredArg1.
            recoveredBlock97PC := 395.
        ].
        recoveredBlock97Step = 395 ifTrue: [
            recoveredBlock97Stack2 := (recoveredBlock97Stack2) variable.
            recoveredBlock97PC := 397.
        ].
        recoveredBlock97Step = 397 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) createIaLValueExpr: (recoveredBlock97Stack2).
            recoveredBlock97PC := 399.
        ].
        recoveredBlock97Step = 399 ifTrue: [
            recoveredLocal4 := recoveredBlock97Stack1.
            recoveredBlock97PC := 402.
        ].
        recoveredBlock97Step = 402 ifTrue: [
            recoveredBlock97Stack1 := 'Rl'.
            recoveredBlock97PC := 404.
        ].
        recoveredBlock97Step = 404 ifTrue: [
            recoveredBlock97Stack2 := 'Call_63518'.
            recoveredBlock97PC := 406.
        ].
        recoveredBlock97Step = 406 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) == (recoveredBlock97Stack2).
            recoveredBlock97PC := 407.
        ].
        recoveredBlock97Step = 407 ifTrue: [
            recoveredBlock97PC := 408.
        ].
        recoveredBlock97Step = 408 ifTrue: [
            recoveredBlock97Stack1 := recoveredArg1.
            recoveredBlock97PC := 411.
        ].
        recoveredBlock97Step = 411 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) rightChild.
            recoveredBlock97PC := 412.
        ].
        recoveredBlock97Step = 412 ifTrue: [
            recoveredBlock97Stack2 := recoveredArg1.
            recoveredBlock97PC := 415.
        ].
        recoveredBlock97Step = 415 ifTrue: [
            recoveredBlock97Stack2 := (recoveredBlock97Stack2) attributes.
            recoveredBlock97PC := 417.
        ].
        recoveredBlock97Step = 417 ifTrue: [
            (recoveredBlock97Stack1) attributes: (recoveredBlock97Stack2).
            recoveredBlock97PC := 419.
        ].
        recoveredBlock97Step = 419 ifTrue: [
            recoveredBlock97Stack1 := self.
            recoveredBlock97PC := 420.
        ].
        recoveredBlock97Step = 420 ifTrue: [
            recoveredBlock97Stack2 := recoveredArg1.
            recoveredBlock97PC := 423.
        ].
        recoveredBlock97Step = 423 ifTrue: [
            recoveredBlock97Stack2 := (recoveredBlock97Stack2) rightChild.
            recoveredBlock97PC := 424.
        ].
        recoveredBlock97Step = 424 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) visitMdlNode: (recoveredBlock97Stack2).
            recoveredBlock97PC := 426.
        ].
        recoveredBlock97Step = 426 ifTrue: [
            recoveredLocal3 := recoveredBlock97Stack1.
            recoveredBlock97PC := 429.
        ].
        recoveredBlock97Step = 429 ifTrue: [
            recoveredBlock97Stack1 := recoveredArg1.
            recoveredBlock97PC := 432.
        ].
        recoveredBlock97Step = 432 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) variable.
            recoveredBlock97PC := 434.
        ].
        recoveredBlock97Step = 434 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) isMdlNoImplVarDecl.
            recoveredBlock97PC := 436.
        ].
        recoveredBlock97Step = 436 ifTrue: [
            (recoveredBlock97Stack1) ifTrue: [recoveredBlock97PC := 440] ifFalse: [recoveredBlock97PC := 479].
        ].
        recoveredBlock97Step = 440 ifTrue: [
            recoveredBlock97Stack1 := recoveredArg1.
            recoveredBlock97PC := 443.
        ].
        recoveredBlock97Step = 443 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) variable.
            recoveredBlock97PC := 445.
        ].
        recoveredBlock97Step = 445 ifTrue: [
            recoveredBlock97Stack2 := recoveredArg1.
            recoveredBlock97PC := 448.
        ].
        recoveredBlock97Step = 448 ifTrue: [
            recoveredBlock97Stack2 := (recoveredBlock97Stack2) variable.
            recoveredBlock97PC := 450.
        ].
        recoveredBlock97Step = 450 ifTrue: [
            recoveredBlock97Stack2 := (recoveredBlock97Stack2) mdlClass.
            recoveredBlock97PC := 452.
        ].
        recoveredBlock97Step = 452 ifTrue: [
            recoveredBlock97Stack2 := (recoveredBlock97Stack2) getPhysInterval.
            recoveredBlock97PC := 454.
        ].
        recoveredBlock97Step = 454 ifTrue: [
            recoveredBlock97Stack3 := recoveredArg1.
            recoveredBlock97PC := 457.
        ].
        recoveredBlock97Step = 457 ifTrue: [
            recoveredBlock97Stack3 := (recoveredBlock97Stack3) rightChild.
            recoveredBlock97PC := 458.
        ].
        recoveredBlock97Step = 458 ifTrue: [
            recoveredBlock97Stack3 := (recoveredBlock97Stack3) mdlClass.
            recoveredBlock97PC := 460.
        ].
        recoveredBlock97Step = 460 ifTrue: [
            recoveredBlock97Stack3 := (recoveredBlock97Stack3) getPhysInterval.
            recoveredBlock97PC := 462.
        ].
        recoveredBlock97Step = 462 ifTrue: [
            recoveredBlock97Stack4 := recoveredArg1.
            recoveredBlock97PC := 465.
        ].
        recoveredBlock97Step = 465 ifTrue: [
            recoveredBlock97Stack4 := (recoveredBlock97Stack4) attributes.
            recoveredBlock97PC := 467.
        ].
        recoveredBlock97Step = 467 ifTrue: [
            recoveredBlock97Stack4 := (recoveredBlock97Stack4) isCgAttrLimitAssignment.
            recoveredBlock97PC := 469.
        ].
        recoveredBlock97Step = 469 ifTrue: [
            recoveredBlock97Stack5 := recoveredArg1.
            recoveredBlock97PC := 472.
        ].
        recoveredBlock97Step = 472 ifTrue: [
            recoveredBlock97Stack5 := (recoveredBlock97Stack5) variable.
            recoveredBlock97PC := 474.
        ].
        recoveredBlock97Step = 474 ifTrue: [
            recoveredBlock97Stack5 := (recoveredBlock97Stack5) errLabel.
            recoveredBlock97PC := 476.
        ].
        recoveredBlock97Step = 476 ifTrue: [
            (recoveredBlock97Stack1) checkInterval: (recoveredBlock97Stack2) includesInterval: (recoveredBlock97Stack3) limit: (recoveredBlock97Stack4) errLabel: (recoveredBlock97Stack5).
            recoveredBlock97PC := 479.
        ].
        recoveredBlock97Step = 479 ifTrue: [
            recoveredBlock97Stack1 := recoveredLocal4.
            recoveredBlock97PC := 482.
        ].
        recoveredBlock97Step = 482 ifTrue: [
            recoveredBlock97Stack2 := recoveredLocal3.
            recoveredBlock97PC := 485.
        ].
        recoveredBlock97Step = 485 ifTrue: [
            recoveredBlock97Stack3 := recoveredArg1.
            recoveredBlock97PC := 488.
        ].
        recoveredBlock97Step = 488 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) assign: (recoveredBlock97Stack2) mdlNode: (recoveredBlock97Stack3).
            recoveredBlock97PC := 490.
        ].
        recoveredBlock97Step = 490 ifTrue: [
            recoveredBlock97Stack2 := recoveredBlock97Stack1.
            recoveredBlock97PC := 491.
        ].
        recoveredBlock97Step = 491 ifTrue: [
            recoveredLocal5 := recoveredBlock97Stack2.
            recoveredBlock97PC := 494.
        ].
        recoveredBlock97Step = 494 ifTrue: [
            recoveredBlock97Result := recoveredBlock97Stack1.
            recoveredBlock97Done := true.
        ].
    ].
    recoveredBlock97Result
].
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            (recoveredStack1) withExpressionContextFrom: (recoveredStack2) lValueType: (recoveredStack3) source: (recoveredStack4) do: (recoveredStack5).
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgSDiscOrUDisc.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 510] ifFalse: [recoveredPC := 637].
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrLimitOverflow.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 637] ifFalse: [recoveredPC := 520].
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 524.
        ].
        recoveredStep = 524 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightChild.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack3 := (recoveredStack3) variable.
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlClass.
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack4 := (recoveredStack4) source.
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock537Stack0 recoveredBlock537Stack1 recoveredBlock537Stack2 recoveredBlock537Stack3 recoveredBlock537Stack4 recoveredBlock537PC recoveredBlock537Step recoveredBlock537Done recoveredBlock537Result |
    recoveredBlock537Stack0 := self.
    recoveredBlock537PC := 544.
    recoveredBlock537Done := false.
    [recoveredBlock537Done not] whileTrue: [
        recoveredBlock537Step := recoveredBlock537PC.
        recoveredBlock537Step = 544 ifTrue: [
            recoveredBlock537Stack1 := [
    | recoveredBlock537Block544Value0 recoveredBlock537Block544Value1 |
    recoveredBlock537Block544Value0 := recoveredArg1.
    recoveredBlock537Block544Value1 := (self) visitMdlNode: (recoveredBlock537Block544Value0).
    recoveredBlock537Block544Value1
].
            recoveredBlock537PC := 556.
        ].
        recoveredBlock537Step = 556 ifTrue: [
            recoveredBlock537Stack2 := recoveredLocal5.
            recoveredBlock537PC := 559.
        ].
        recoveredBlock537Step = 559 ifTrue: [
            recoveredBlock537Stack3 := [:block28121e94Arg1 | 
    | block28121e94Stack0 block28121e94Stack1 block28121e94Stack2 block28121e94Stack3 block28121e94PC block28121e94Step block28121e94Done block28121e94Result |
    block28121e94Stack0 := self.
    block28121e94PC := 4.
    block28121e94Done := false.
    [block28121e94Done not] whileTrue: [
        block28121e94Step := block28121e94PC.
        block28121e94Step = 4 ifTrue: [
            block28121e94Stack1 := block28121e94Arg1.
            block28121e94PC := 5.
        ].
        block28121e94Step = 5 ifTrue: [
            block28121e94Stack1 := (block28121e94Stack1) ileExpr.
            block28121e94PC := 7.
        ].
        block28121e94Step = 7 ifTrue: [
            block28121e94Stack1 := (block28121e94Stack1) isIleAssignExpr.
            block28121e94PC := 9.
        ].
        block28121e94Step = 9 ifTrue: [
            (block28121e94Stack1) ifTrue: [block28121e94PC := 12] ifFalse: [block28121e94PC := 20].
        ].
        block28121e94Step = 12 ifTrue: [
            block28121e94Stack1 := block28121e94Arg1.
            block28121e94PC := 13.
        ].
        block28121e94Step = 13 ifTrue: [
            block28121e94Stack1 := (block28121e94Stack1) ileExpr.
            block28121e94PC := 15.
        ].
        block28121e94Step = 15 ifTrue: [
            block28121e94Stack1 := (block28121e94Stack1) expr.
            block28121e94PC := 16.
        ].
        block28121e94Step = 16 ifTrue: [
            block28121e94PC := 69.
        ].
        block28121e94Step = 20 ifTrue: [
            block28121e94Stack1 := block28121e94Arg1.
            block28121e94PC := 21.
        ].
        block28121e94Step = 21 ifTrue: [
            block28121e94Stack1 := (block28121e94Stack1) ileExpr.
            block28121e94PC := 23.
        ].
        block28121e94Step = 23 ifTrue: [
            block28121e94Stack1 := (block28121e94Stack1) isIleCommaExpr.
            block28121e94PC := 25.
        ].
        block28121e94Step = 25 ifTrue: [
            (block28121e94Stack1) ifTrue: [block28121e94PC := 28] ifFalse: [block28121e94PC := 68].
        ].
        block28121e94Step = 28 ifTrue: [
            block28121e94Stack1 := block28121e94Arg1.
            block28121e94PC := 29.
        ].
        block28121e94Step = 29 ifTrue: [
            block28121e94Stack1 := (block28121e94Stack1) ileExpr.
            block28121e94PC := 31.
        ].
        block28121e94Step = 31 ifTrue: [
            block28121e94Stack1 := (block28121e94Stack1) args.
            block28121e94PC := 33.
        ].
        block28121e94Step = 33 ifTrue: [
            block28121e94Stack1 := (block28121e94Stack1) size.
            block28121e94PC := 35.
        ].
        block28121e94Step = 35 ifTrue: [
            block28121e94Stack2 := 2.
            block28121e94PC := 37.
        ].
        block28121e94Step = 37 ifTrue: [
            block28121e94Stack1 := (block28121e94Stack1) = (block28121e94Stack2).
            block28121e94PC := 38.
        ].
        block28121e94Step = 38 ifTrue: [
            (block28121e94Stack1) ifTrue: [block28121e94PC := 42] ifFalse: [block28121e94PC := 68].
        ].
        block28121e94Step = 42 ifTrue: [
            block28121e94Stack1 := block28121e94Arg1.
            block28121e94PC := 43.
        ].
        block28121e94Step = 43 ifTrue: [
            block28121e94Stack1 := (block28121e94Stack1) ileExpr.
            block28121e94PC := 45.
        ].
        block28121e94Step = 45 ifTrue: [
            block28121e94Stack1 := (block28121e94Stack1) args.
            block28121e94PC := 47.
        ].
        block28121e94Step = 47 ifTrue: [
            block28121e94Stack2 := 2.
            block28121e94PC := 49.
        ].
        block28121e94Step = 49 ifTrue: [
            block28121e94Stack1 := (block28121e94Stack1) at: (block28121e94Stack2).
            block28121e94PC := 51.
        ].
        block28121e94Step = 51 ifTrue: [
            block28121e94Stack1 := (block28121e94Stack1) isIleAssignExpr.
            block28121e94PC := 53.
        ].
        block28121e94Step = 53 ifTrue: [
            (block28121e94Stack1) ifTrue: [block28121e94PC := 56] ifFalse: [block28121e94PC := 68].
        ].
        block28121e94Step = 56 ifTrue: [
            block28121e94Stack1 := block28121e94Arg1.
            block28121e94PC := 57.
        ].
        block28121e94Step = 57 ifTrue: [
            block28121e94Stack1 := (block28121e94Stack1) ileExpr.
            block28121e94PC := 59.
        ].
        block28121e94Step = 59 ifTrue: [
            block28121e94Stack1 := (block28121e94Stack1) args.
            block28121e94PC := 61.
        ].
        block28121e94Step = 61 ifTrue: [
            block28121e94Stack2 := 2.
            block28121e94PC := 63.
        ].
        block28121e94Step = 63 ifTrue: [
            block28121e94Stack1 := (block28121e94Stack1) at: (block28121e94Stack2).
            block28121e94PC := 65.
        ].
        block28121e94Step = 65 ifTrue: [
            block28121e94PC := 69.
        ].
        block28121e94Step = 68 ifTrue: [
            block28121e94Stack1 := nil.
            block28121e94PC := 69.
        ].
        block28121e94Step = 69 ifTrue: [
            block28121e94Result := block28121e94Stack1.
            block28121e94Done := true.
        ].
    ].
    block28121e94Result
].
            recoveredBlock537PC := 561.
        ].
        recoveredBlock537Step = 561 ifTrue: [
            recoveredBlock537PC := 630.
        ].
        recoveredBlock537Step = 630 ifTrue: [
            recoveredBlock537Stack0 := (recoveredBlock537Stack0) checkForDiscreteUnexpectedBehaviour: (recoveredBlock537Stack1) result: (recoveredBlock537Stack2) project: (recoveredBlock537Stack3).
            recoveredBlock537PC := 633.
        ].
        recoveredBlock537Step = 633 ifTrue: [
            recoveredBlock537Result := recoveredBlock537Stack0.
            recoveredBlock537Done := true.
        ].
    ].
    recoveredBlock537Result
].
            recoveredPC := 634.
        ].
        recoveredStep = 634 ifTrue: [
            (recoveredStack1) withExpressionContextFrom: (recoveredStack2) lValueType: (recoveredStack3) source: (recoveredStack4) do: (recoveredStack5).
            recoveredPC := 637.
        ].
        recoveredStep = 637 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 640.
        ].
        recoveredStep = 640 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileExpr.
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleAssignExpr.
            recoveredPC := 644.
        ].
        recoveredStep = 644 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 648] ifFalse: [recoveredPC := 697].
        ].
        recoveredStep = 648 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 651.
        ].
        recoveredStep = 651 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileExpr.
            recoveredPC := 653.
        ].
        recoveredStep = 653 ifTrue: [
            recoveredStack1 := (recoveredStack1) lValue.
            recoveredPC := 655.
        ].
        recoveredStep = 655 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 656.
        ].
        recoveredStep = 656 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleTempVarIdentifier.
            recoveredPC := 658.
        ].
        recoveredStep = 658 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 697] ifFalse: [recoveredPC := 662].
        ].
        recoveredStep = 662 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 665.
        ].
        recoveredStep = 665 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileExpr.
            recoveredPC := 667.
        ].
        recoveredStep = 667 ifTrue: [
            recoveredStack1 := (recoveredStack1) lValue.
            recoveredPC := 669.
        ].
        recoveredStep = 669 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 672.
        ].
        recoveredStep = 672 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileExpr.
            recoveredPC := 674.
        ].
        recoveredStep = 674 ifTrue: [
            recoveredStack2 := (recoveredStack2) lValue.
            recoveredPC := 676.
        ].
        recoveredStep = 676 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 678.
        ].
        recoveredStep = 678 ifTrue: [
            recoveredStack2 := (recoveredStack2) copy.
            recoveredPC := 680.
        ].
        recoveredStep = 680 ifTrue: [
            (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 682.
        ].
        recoveredStep = 682 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 686.
        ].
        recoveredStep = 686 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 689.
        ].
        recoveredStep = 689 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileExpr.
            recoveredPC := 691.
        ].
        recoveredStep = 691 ifTrue: [
            recoveredStack3 := (recoveredStack3) lValue.
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 695.
        ].
        recoveredStep = 695 ifTrue: [
            (recoveredStack1) addImplInfoComment: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 697.
        ].
        recoveredStep = 697 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 700.
        ].
        recoveredStep = 700 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

