"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20031b64; bytecode file offset 0x934580"
!SGMdEHooksMappingUsage methodsFor: 'recovered'!
ehooksElementAttributes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ehooksMapping.
    recoveredValue1 := (recoveredValue0) ehooksElementAttributes.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004452c; bytecode file offset 0x9451f8"
!SGMdEHooksMappingUsage methodsFor: 'recovered'!
ecuLabel
    | recoveredValue0 |
    recoveredValue0 := (self) getParameterValue: ('ECULABEL').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005cf5c; bytecode file offset 0x9599ac"
!SGMdEHooksMappingUsage methodsFor: 'recovered'!
elementName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGCgAbstractSettings.
    recoveredValue1 := (recoveredValue0) elementNameKey.
    recoveredValue2 := (self) getParameterValue: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f590; bytecode file offset 0x95c4f4"
!SGMdEHooksMappingUsage methodsFor: 'recovered'!
elementGenName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) elementGenNameKey.
    recoveredValue2 := (self) getParameterValue: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200660ac; bytecode file offset 0x963428"
!SGMdEHooksMappingUsage methodsFor: 'recovered'!
parameterTable
    | recoveredValue0 |
    recoveredValue0 := parameterTable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067bf4; bytecode file offset 0x9646f8"
!SGMdEHooksMappingUsage methodsFor: 'recovered'!
ehooksMapping
    | recoveredValue0 |
    recoveredValue0 := ehooksMapping.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200688ac; bytecode file offset 0x965b90"
!SGMdEHooksMappingUsage methodsFor: 'recovered'!
measurementProperties
    | recoveredValue0 |
    recoveredValue0 := measurementProperties.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006abdc; bytecode file offset 0x967a18"
!SGMdEHooksMappingUsage methodsFor: 'recovered'!
mdlVarDecl
    | recoveredValue0 |
    recoveredValue0 := mdlVarDecl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b580; bytecode file offset 0x96873c"
!SGMdEHooksMappingUsage methodsFor: 'recovered'!
usedAs
    | recoveredValue0 |
    recoveredValue0 := usedAs.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c06b4; bytecode file offset 0x9bd228"
!SGMdEHooksMappingUsage methodsFor: 'recovered'!
measurementProperties: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    measurementProperties := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1fbc; bytecode file offset 0x9beac8"
!SGMdEHooksMappingUsage methodsFor: 'recovered'!
mdlVarDecl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    mdlVarDecl := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2248; bytecode file offset 0x9bf474"
!SGMdEHooksMappingUsage methodsFor: 'recovered'!
usedAs: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    usedAs := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200dc2ac; bytecode file offset 0x9d8b80"
!SGMdEHooksMappingUsage methodsFor: 'recovered'!
mdlMappingWarningNo: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    (self) mdlMappingWarningNo: (recoveredValue0) withArgs: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200f9db4; bytecode file offset 0x9f6678"
!SGMdEHooksMappingUsage methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    parameterTable := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20101efc; bytecode file offset 0x9fe7bc"
!SGMdEHooksMappingUsage methodsFor: 'recovered'!
mdlMappingWarningNo: recoveredArg1 with: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    (self) mdlMappingWarningNo: (recoveredValue0) withArgs: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20133cd8; bytecode file offset 0xa305e4"
!SGMdEHooksMappingUsage methodsFor: 'recovered'!
getParameterValue: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) parameterTable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    'unknown'
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201358c4; bytecode file offset 0xa32180"
!SGMdEHooksMappingUsage methodsFor: 'recovered'!
mdlLossOfPrcesisionWarning: recoveredArg1 with: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) mappingMultiSource.
    (self) mdlWarningNo: (625) with: (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2) source: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20148f40; bytecode file offset 0xa45814"
!SGMdEHooksMappingUsage methodsFor: 'recovered'!
mdlMappingWarningNo: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5).
    (self) mdlMappingWarningNo: (recoveredValue0) withArgs: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20156db8; bytecode file offset 0xa53684"
!SGMdEHooksMappingUsage methodsFor: 'recovered'!
mdlMappingSemErrNo: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) usedAs.
    recoveredValue2 := (recoveredValue1) asString.
    recoveredValue3 := (self) mdlVarDecl.
    recoveredValue4 := (recoveredValue3) errLabel.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (self) mappingMultiSource.
    (self) mdlSemErrNo: (recoveredValue0) with: (recoveredValue2) with: (recoveredValue4) with: (recoveredValue5) source: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x201633f0; bytecode file offset 0xa5fcac"
!SGMdEHooksMappingUsage methodsFor: 'recovered'!
needsIntermediateConversion
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := needsIntermediateConversion.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    ^recoveredBlock6Value0
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := (self) checkNeedForIntermediateConversion.
    recoveredValue3 := recoveredValue2.
    needsIntermediateConversion := recoveredValue3.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20176a24; bytecode file offset 0xa732f0"
!SGMdEHooksMappingUsage methodsFor: 'recovered'!
intermediateType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) parameterTable.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) ehooksImplTypeName: (recoveredValue2).
    (recoveredValue1) at: ('INTERMEDIATE.TYPE.EHOOKS') put: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) asUppercase.
    (recoveredValue0) at: ('INTERMEDIATE.TYPE.ASCET') put: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20184964; bytecode file offset 0xa81230"
!SGMdEHooksMappingUsage methodsFor: 'recovered'!
mdlNoIntermediateInfo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) usedAs.
    recoveredValue1 := (recoveredValue0) asString.
    recoveredValue2 := (self) mdlVarDecl.
    recoveredValue3 := (recoveredValue2) errLabel.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) mappingMultiSource.
    (self) mdlInfoNo: (620) with: (recoveredValue1) with: (recoveredValue3) with: (recoveredValue4) source: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201cc118; bytecode file offset 0xac89e0"
!SGMdEHooksMappingUsage methodsFor: 'recovered'!
ehooksImplTypeName: recoveredArg1
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
            recoveredStack2 := 'real32'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'float'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'real64'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'double'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201d78bc; bytecode file offset 0xad4194"
!SGMdEHooksMappingUsage methodsFor: 'recovered'!
mappingMultiSource
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) ehooksMapping.
    recoveredValue1 := (recoveredValue0) source.
    recoveredValue2 := Array.
    recoveredValue3 := (self) mdlVarDecl.
    recoveredValue4 := (recoveredValue3) source.
    recoveredValue5 := (recoveredValue2) with: (recoveredValue4).
    recoveredValue6 := Array.
    recoveredValue7 := (self) mdlVarDecl.
    recoveredValue8 := (recoveredValue7) errLabel.
    recoveredValue9 := ('message ') , (recoveredValue8).
    recoveredValue10 := (recoveredValue6) with: (recoveredValue9).
    recoveredValue11 := (recoveredValue1) createMultiSource: (recoveredValue5) labels: (recoveredValue10).
    ^recoveredValue11
! !

"ASDBase.ic method 0x2021d044; bytecode file offset 0xb19920"
!SGMdEHooksMappingUsage methodsFor: 'recovered'!
mdlMappingWarningNo: recoveredArg1 withArgs: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) mdlVarDecl.
    recoveredValue2 := (recoveredValue1) errLabel.
    (recoveredValue0) addFirst: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) usedAs.
    recoveredValue5 := (recoveredValue4) asString.
    (recoveredValue3) addFirst: (recoveredValue5).
    recoveredValue6 := (self) errorHandler.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := (recoveredValue8) asArray.
    recoveredValue10 := (self) mappingMultiSource.
    (recoveredValue6) warningNo: (recoveredValue7) args: (recoveredValue9) category: ('Mdl') source: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x203ba894; bytecode file offset 0xcb7198"
!SGMdEHooksMappingUsage methodsFor: 'recovered'!
ehooksMapping: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 |
    recoveredValue0 := recoveredArg1.
    ehooksMapping := recoveredValue0.
    recoveredValue1 := (self) parameterTable.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := SGCgAbstractSettings.
    recoveredValue4 := (recoveredValue3) elementNameKey.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) fromVarDeclReceiver.
    recoveredValue7 := (recoveredValue6) mdlUniqueLabel.
    (recoveredValue2) at: (recoveredValue4) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := SGCgAbstractSettings.
    recoveredValue10 := (recoveredValue9) elementCTypeNameKey.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) fromVarDecl.
    recoveredValue13 := (recoveredValue12) mdlClass.
    recoveredValue14 := (recoveredValue13) getImplType.
    recoveredValue15 := (recoveredValue14) asCType.
    recoveredValue16 := (self) ehooksImplTypeName: (recoveredValue15).
    (recoveredValue8) at: (recoveredValue10) put: (recoveredValue16).
    recoveredValue17 := recoveredValue1.
    recoveredValue18 := (self) class.
    recoveredValue19 := (recoveredValue18) elementGenNameKey.
    recoveredValue20 := recoveredArg1.
    recoveredValue21 := (recoveredValue20) ileElementGenName.
    recoveredValue22 := (recoveredValue21) asEHooksIdentifier.
    (recoveredValue17) at: (recoveredValue19) put: (recoveredValue22).
    recoveredValue23 := recoveredValue1.
    recoveredValue24 := (self) class.
    recoveredValue25 := (recoveredValue24) ecuLabelKey.
    recoveredValue26 := recoveredArg1.
    recoveredValue27 := (recoveredValue26) ehooksElementAttributes.
    recoveredValue28 := (recoveredValue27) name.
    recoveredValue29 := (recoveredValue28) asEHooksIdentifier.
    (recoveredValue23) at: (recoveredValue25) put: (recoveredValue29).
    recoveredValue30 := recoveredValue1.
    recoveredValue31 := (self) class.
    recoveredValue32 := (recoveredValue31) elementConversionMacroNameKey.
    recoveredValue33 := recoveredArg1.
    recoveredValue34 := (recoveredValue33) mdlUniqueLabel.
    recoveredValue35 := (recoveredValue34) asEHooksIdentifier.
    (recoveredValue30) at: (recoveredValue32) put: (recoveredValue35).
    ^self
! !

"ASDBase.ic method 0x20561f5c; bytecode file offset 0xe5e878"
!SGMdEHooksMappingUsage methodsFor: 'recovered'!
checkNeedForIntermediateConversion
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlVarDecl.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlBoolean.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) measurementProperties.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasBooleanType.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack1 := 620.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) measurementProperties.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabelBooleanInterval.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) mdlMappingWarningNo: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := true.
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
            recoveredStack0 := (recoveredStack0) mdlVarDecl.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlEnumType.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 115].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlVarDecl.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasCgConsecutiveValues.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := 611.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlVarDecl.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlFormulaName.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) mdlMappingSemErrNo: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlVarDecl.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPhysInterval.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) asInteger.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) measurementProperties.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) physInterval.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) asInteger.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlVarDecl.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlFormulaName.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) measurementProperties.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := 621.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) mdlMappingWarningNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlVarDecl.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgArithmeticType.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 233].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlVarDecl.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleFloatType.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 180].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) measurementProperties.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasFloatType.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 148] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) measurementProperties.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasUnknownType.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 148] ifFalse: [recoveredPC := 178].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) measurementProperties.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlVarDecl.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasIdenticalImplType: (recoveredStack1).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 158] ifFalse: [recoveredPC := 160].
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := 622.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlVarDecl.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := (recoveredStack2) asCType.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack3 := (recoveredStack3) measurementProperties.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack3 := (recoveredStack3) implType.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack0) mdlMappingWarningNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlVarDecl.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPhysInterval.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := (recoveredStack0) measurementProperties.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := (recoveredStack0) physInterval.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlVarDecl.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := (recoveredStack0) formula.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlFormulaName.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := (recoveredStack1) measurementProperties.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 212] ifFalse: [recoveredPC := 220].
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 218] ifFalse: [recoveredPC := 220].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := 623.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack0) mdlMappingWarningNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

