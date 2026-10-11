"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002b364; bytecode file offset 0x934580"
!SGCodeVariantKey methodsFor: 'recovered'!
isControllerVariant
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) generatorVariant.
    recoveredValue1 := (recoveredValue0) isControllerPath.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c8c4; bytecode file offset 0x934580"
!SGCodeVariantKey methodsFor: 'recovered'!
isIntegerExperimentVariant
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) generatorVariant.
    recoveredValue1 := (recoveredValue0) isIntegerExperimentVariant.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030794; bytecode file offset 0x934580"
!SGCodeVariantKey methodsFor: 'recovered'!
isIntegerVariant
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) generatorVariant.
    recoveredValue1 := (recoveredValue0) isIntegerVariant.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030b04; bytecode file offset 0x934580"
!SGCodeVariantKey methodsFor: 'recovered'!
isPhysicalVariant
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) generatorVariant.
    recoveredValue1 := (recoveredValue0) isPhysicalVariant.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033ec4; bytecode file offset 0x934580"
!SGCodeVariantKey methodsFor: 'recovered'!
isQuantFloatExperimentVariant
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) generatorVariant.
    recoveredValue1 := (recoveredValue0) isQuantFloatExperimentVariant.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035334; bytecode file offset 0x934580"
!SGCodeVariantKey methodsFor: 'recovered'!
isIntegerControllerVariant
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) generatorVariant.
    recoveredValue1 := (recoveredValue0) isIntegerControllerVariant.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200360c4; bytecode file offset 0x934580"
!SGCodeVariantKey methodsFor: 'recovered'!
isPhysicalExperimentVariant
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) generatorVariant.
    recoveredValue1 := (recoveredValue0) isPhysicalExperimentVariant.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036164; bytecode file offset 0x934580"
!SGCodeVariantKey methodsFor: 'recovered'!
isPhysicalControllerVariant
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) generatorVariant.
    recoveredValue1 := (recoveredValue0) isPhysicalControllerVariant.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200443bc; bytecode file offset 0x9451f8"
!SGCodeVariantKey methodsFor: 'recovered'!
variantKeyString
    | recoveredValue0 |
    recoveredValue0 := (self) variantKeyStringSeparator: ('_').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006601c; bytecode file offset 0x963428"
!SGCodeVariantKey methodsFor: 'recovered'!
generatorVariant
    | recoveredValue0 |
    recoveredValue0 := generatorVariant.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067cdc; bytecode file offset 0x9646f8"
!SGCodeVariantKey methodsFor: 'recovered'!
target
    | recoveredValue0 |
    recoveredValue0 := target.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007b6c4; bytecode file offset 0x97c330"
!SGCodeVariantKey methodsFor: 'recovered'!
isDefaultCodeVariantKey
    ^false
! !

"ASDBase.ic method 0x20085e54; bytecode file offset 0x9827b0"
!SGCodeVariantKey methodsFor: 'recovered'!
equalToLinkerOption: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) targetSettings.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) targetSettings.
    recoveredValue3 := (recoveredValue0) equalToLinkerOption: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20085e74; bytecode file offset 0x9827b0"
!SGCodeVariantKey methodsFor: 'recovered'!
equalToCompilerOption: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) targetSettings.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) targetSettings.
    recoveredValue3 := (recoveredValue0) equalToCompilerOption: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200be12c; bytecode file offset 0x9bb178"
!SGCodeVariantKey methodsFor: 'recovered'!
generatorVariant: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    generatorVariant := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf1d8; bytecode file offset 0x9bc0b4"
!SGCodeVariantKey methodsFor: 'recovered'!
target: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    target := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bffe4; bytecode file offset 0x9bd228"
!SGCodeVariantKey methodsFor: 'recovered'!
targetSettings: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    targetSettings := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d8974; bytecode file offset 0x9d5268"
!SGCodeVariantKey methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) variantKeyString.
    recoveredValue2 := (' ') , (recoveredValue1).
    (recoveredValue0) nextPutAll: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200df51c; bytecode file offset 0x9dbddc"
!SGCodeVariantKey methodsFor: 'recovered'!
asExternalVariantKey
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) duplicate.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (recoveredValue1) generatorVariant.
    (recoveredValue2) iaSettings: (nil).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e2994; bytecode file offset 0x9df430"
!SGCodeVariantKey methodsFor: 'recovered'!
isAnyPhysicalVariant
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
            recoveredStack2 := (recoveredStack2) isPhysicalVariant.
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
            recoveredStack1 := (recoveredStack1) isPhysicalControllerVariant.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200e3eb4; bytecode file offset 0x9e07ec"
!SGCodeVariantKey methodsFor: 'recovered'!
xmlGetExportPath
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) , ('.').
    recoveredValue2 := (self) generatorVariant.
    recoveredValue3 := (recoveredValue2) codeGenShortPathName.
    recoveredValue4 := (recoveredValue1) , (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200e3ed0; bytecode file offset 0x9e07ec"
!SGCodeVariantKey methodsFor: 'recovered'!
docuString
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) , ('::').
    recoveredValue2 := (self) generatorVariant.
    recoveredValue3 := (recoveredValue2) codeGenPathName.
    recoveredValue4 := (recoveredValue1) , (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2011f88c; bytecode file offset 0xa1c148"
!SGCodeVariantKey methodsFor: 'recovered'!
dbXmlDeepCopy: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := (self) duplicate.
    recoveredBlock6Value0
].
    recoveredValue2 := (recoveredValue0) at: (self) ifAbsentPut: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20129610; bytecode file offset 0xa25f5c"
!SGCodeVariantKey methodsFor: 'recovered'!
targetSettings
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := targetSettings.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGTargetOptions.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            targetSettings := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := targetSettings.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20161744; bytecode file offset 0xa5e018"
!SGCodeVariantKey methodsFor: 'recovered'!
duplicate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) generatorVariant.
    recoveredValue4 := (recoveredValue3) duplicate.
    (recoveredValue2) generatorVariant: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := (self) target.
    recoveredValue7 := (recoveredValue6) copy.
    (recoveredValue5) target: (recoveredValue7).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20192a04; bytecode file offset 0xa8f2d0"
!SGCodeVariantKey methodsFor: 'recovered'!
initOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    (self) initialize.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) getNMToken: ('target').
    target := recoveredValue1.
    recoveredValue2 := SGMdSettings.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) getNMToken: ('generator').
    recoveredValue5 := (recoveredValue2) createByShortName: (recoveredValue4).
    generatorVariant := recoveredValue5.
    ^self
! !

"ASDBase.ic method 0x201b51ec; bytecode file offset 0xab1ab4"
!SGCodeVariantKey methodsFor: 'recovered'!
variantKeyStringSeparator: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) printString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) generatorVariant.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) generatorVariant.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) generatorVariant.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeGenPathName.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e4668; bytecode file offset 0xae0f38"
!SGCodeVariantKey methodsFor: 'recovered'!
variantKeySlash
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) asString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := '/'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) generatorVariant.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := ' -'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) generatorVariant.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeGenPathName.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201eb5cc; bytecode file offset 0xae7ea0"
!SGCodeVariantKey methodsFor: 'recovered'!
dbXmlDesc
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EtasXmlSupportDOMElement.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) initOn: ('codeKey').
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := target.
    (recoveredValue3) setAttr: ('target') value: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := generatorVariant.
    recoveredValue7 := (recoveredValue6) codeGenShortPathName.
    (recoveredValue5) setAttr: ('generator') value: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x201f5d9c; bytecode file offset 0xaf2664"
!SGCodeVariantKey methodsFor: 'recovered'!
equalTo: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) generatorVariant.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) generatorVariant.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) equalToVariant: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) equalTo: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f9250; bytecode file offset 0xaf5b24"
!SGCodeVariantKey methodsFor: 'recovered'!
directAccessOptionsCommentForFix
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generatorVariant.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeOptimizationSettings.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := 'not determined'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := 'optimize direct access methods (one level) <%1> optimize direct access methods (multiple levels) <%2>'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) optimizeOneLevelDirectAccess.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) optimizeMultipleLevelDirectAccess.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) bindWith: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e81d8; bytecode file offset 0xbe4ab4"
!SGCodeVariantKey methodsFor: 'recovered'!
labelPostfixFromDirectAccessOption
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := '_BUGFIX_'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) generatorVariant.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeOptimizationSettings.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) optimizeMultipleLevelDirectAccess.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 'MLDA_'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'NOMLDA_'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) optimizeOneLevelDirectAccess.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 'OLDA'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 'NOOLDA'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

