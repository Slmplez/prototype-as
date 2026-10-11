"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002c5c4; bytecode file offset 0x934580"
!SGLmComponent methodsFor: 'recovered'!
isMethodInterfaceComponent
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sgClass.
    recoveredValue1 := (recoveredValue0) isClientServerInterface.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d498; bytecode file offset 0x93bf94"
!SGLmComponent methodsFor: 'recovered'!
codeManager
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCodeManager.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041e34; bytecode file offset 0x93e6e8"
!SGLmComponent methodsFor: 'recovered'!
preprocessingDone
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := preprocessedCMethods.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20049054; bytecode file offset 0x945920"
!SGLmComponent methodsFor: 'recovered'!
resetPreProcessedCMethods
    preprocessedCMethods := nil.
    ^self
! !

"ASDBase.ic method 0x20065ffc; bytecode file offset 0x963428"
!SGLmComponent methodsFor: 'recovered'!
instVarsOfClass
    | recoveredValue0 |
    recoveredValue0 := instVarsOfClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068e44; bytecode file offset 0x965b90"
!SGLmComponent methodsFor: 'recovered'!
classVars
    | recoveredValue0 |
    recoveredValue0 := classVars.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006baa0; bytecode file offset 0x96873c"
!SGLmComponent methodsFor: 'recovered'!
methodDecls
    | recoveredValue0 |
    recoveredValue0 := methodDecls.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c41c; bytecode file offset 0x9692b0"
!SGLmComponent methodsFor: 'recovered'!
logicSpecifications
    | recoveredValue0 |
    recoveredValue0 := specifications.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e7c8; bytecode file offset 0x96b41c"
!SGLmComponent methodsFor: 'recovered'!
makeConfig
    | recoveredValue0 |
    recoveredValue0 := makeConfig.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200732d0; bytecode file offset 0x970b34"
!SGLmComponent methodsFor: 'recovered'!
mdlClassInterface
    ^nil
! !

"ASDBase.ic method 0x200898a4; bytecode file offset 0x986180"
!SGLmComponent methodsFor: 'recovered'!
resetSpecifications
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    specifications := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2009427c; bytecode file offset 0x990b30"
!SGLmComponent methodsFor: 'recovered'!
header: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    header := recoveredValue0.
    recoveredValue1 := header.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ab88c; bytecode file offset 0x9a8250"
!SGLmComponent methodsFor: 'recovered'!
lookupType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) typeTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200bd528; bytecode file offset 0x9b9e88"
!SGLmComponent methodsFor: 'recovered'!
addToBePreprocessedCode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) preProcessedCMethods.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) errLabel.
    recoveredValue3 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue2) put: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200c068c; bytecode file offset 0x9bd228"
!SGLmComponent methodsFor: 'recovered'!
classVars: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    classVars := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4e70; bytecode file offset 0x9c1afc"
!SGLmComponent methodsFor: 'recovered'!
makeConfig: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    makeConfig := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d64c8; bytecode file offset 0x9d3134"
!SGLmComponent methodsFor: 'recovered'!
signalLmError
    super signalLmError.
    (self) resetPreProcessedCMethods.
    ^self
! !

"ASDBase.ic method 0x200d65b8; bytecode file offset 0x9d3134"
!SGLmComponent methodsFor: 'recovered'!
initialize
    super initialize.
    (self) reset.
    ^self
! !

"ASDBase.ic method 0x20112bf8; bytecode file offset 0xa0f4b8"
!SGLmComponent methodsFor: 'recovered'!
hasOrderedElements
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicManager.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) implForModule.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isUserDefinedOrder.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20141e14; bytecode file offset 0xa3e6d8"
!SGLmComponent methodsFor: 'recovered'!
mappings: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := mappings.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := [
    | block280cc09cValue0 block280cc09cValue1 |
    block280cc09cValue0 := OrderedCollection.
    block280cc09cValue1 := (block280cc09cValue0) new.
    block280cc09cValue1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2014eb08; bytecode file offset 0xa4b3d8"
!SGLmComponent methodsFor: 'recovered'!
createLogicAnalyzer
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) generatorFactory.
    recoveredValue1 := (recoveredValue0) createBlockAnalyzer.
    (self) mdlBuilder: (recoveredValue1).
    recoveredValue2 := (self) mdlBuilder.
    recoveredValue3 := (self) logicManager.
    recoveredValue4 := (recoveredValue3) asMdlClassType.
    (recoveredValue2) classDef: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2015080c; bytecode file offset 0xa4d0d8"
!SGLmComponent methodsFor: 'recovered'!
source
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicModel.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicManager.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) componentSource.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeConfigForModule.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) context.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) componentSource: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016f9f4; bytecode file offset 0xa6c2b0"
!SGLmComponent methodsFor: 'recovered'!
typeTable
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := typeTable.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := (self) initTypeTable.
    recoveredBlock6Value1 := recoveredBlock6Value0.
    typeTable := recoveredBlock6Value1.
    recoveredBlock6Value0
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := typeTable.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2017be84; bytecode file offset 0xa78750"
!SGLmComponent methodsFor: 'recovered'!
createLogicSpec: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGLmSpecification.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) modelSpec: (recoveredValue3).
    recoveredValue4 := (self) logicSpecifications.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue4) add: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    (self) logicSpec: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x2018dc2c; bytecode file offset 0xa8a53c"
!SGLmComponent methodsFor: 'recovered'!
methods
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := methods.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := OrderedCollection.
    recoveredBlock6Value1 := (recoveredBlock6Value0) new.
    recoveredBlock6Value2 := recoveredBlock6Value1.
    methods := recoveredBlock6Value2.
    recoveredBlock6Value1
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := methods.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2018dd84; bytecode file offset 0xa8a644"
!SGLmComponent methodsFor: 'recovered'!
header
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := header.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := SGLmCCodeMethod.
    recoveredBlock6Value1 := (recoveredBlock6Value0) create.
    recoveredBlock6Value2 := recoveredBlock6Value1.
    header := recoveredBlock6Value2.
    recoveredBlock6Value1
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := header.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2018df38; bytecode file offset 0xa8a7f8"
!SGLmComponent methodsFor: 'recovered'!
preProcessedCMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := preprocessedCMethods.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := LookupTable.
    recoveredBlock6Value1 := (recoveredBlock6Value0) new.
    recoveredBlock6Value2 := recoveredBlock6Value1.
    preprocessedCMethods := recoveredBlock6Value2.
    recoveredBlock6Value1
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := preprocessedCMethods.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20202b38; bytecode file offset 0xaff3fc"
!SGLmComponent methodsFor: 'recovered'!
instVarsOfClass: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasOrderedElements.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := [:block280d965cArg1 :block280d965cArg2 | 
    | block280d965cValue0 block280d965cValue1 block280d965cValue2 block280d965cValue3 block280d965cValue4 |
    block280d965cValue0 := block280d965cArg1.
    block280d965cValue1 := (block280d965cValue0) index.
    block280d965cValue2 := block280d965cArg2.
    block280d965cValue3 := (block280d965cValue2) index.
    block280d965cValue4 := (block280d965cValue1) <= (block280d965cValue3).
    block280d965cValue4
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            instVarsOfClass := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            instVarsOfClass := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20205acc; bytecode file offset 0xb02398"
!SGLmComponent methodsFor: 'recovered'!
ascetLinkCreateConfigForCGenMessage
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ascetLinkConfig.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) logicManager.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeConfigForModule.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeManager.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) ascetLinkCreateConfigForCGenMessage: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack2) enablePrefixCache.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) prepareSuffix.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ascetLinkConfig := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := ascetLinkConfig.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2020afb0; bytecode file offset 0xb07880"
!SGLmComponent methodsFor: 'recovered'!
buildMdlMethodDecls
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) methods.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d9c44Arg1 | 
    | block280d9c44Value0 block280d9c44Value1 |
    block280d9c44Value0 := block280d9c44Arg1.
    block280d9c44Value1 := (block280d9c44Value0) buildMdlDeclaration.
    block280d9c44Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicSpecifications.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:block280d9c68Arg1 | 
    | block280d9c68Value0 block280d9c68Value1 |
    block280d9c68Value0 := block280d9c68Arg1.
    block280d9c68Value1 := (block280d9c68Value0) buildMdlDeclarations.
    block280d9c68Value1
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026dc3c; bytecode file offset 0xb6a508"
!SGLmComponent methodsFor: 'recovered'!
prepareDiagramConversion: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) createLogicAnalyzer.
    (self) preprocessCMethods.
    recoveredValue0 := (self) logicSpecifications.
    recoveredValue1 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) modelSpec.
    recoveredBlock11Value2 := recoveredArg1.
    recoveredBlock11Value3 := (recoveredBlock11Value1) = (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    (recoveredValue3) prepareDiagramConversion.
    ^self
! !

"ASDBase.ic method 0x2028c394; bytecode file offset 0xb88c68"
!SGLmComponent methodsFor: 'recovered'!
analyze
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMethodInterfaceComponent.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := analyzed.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) createLogicAnalyzer.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) checkForLmErrors.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) preprocessCMethods.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicSpecifications.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:block280e2170Arg1 | 
    | block280e2170Value0 block280e2170Value1 |
    block280e2170Value0 := block280e2170Arg1.
    block280e2170Value1 := (block280e2170Value0) analyze.
    block280e2170Value1
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            analyzed := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202938c4; bytecode file offset 0xb9018c"
!SGLmComponent methodsFor: 'recovered'!
getPreprocessedCode: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) preProcessedCMethods.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) errLabel.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 |
    recoveredBlock9Value0 := recoveredArg1.
    recoveredBlock9Value1 := (recoveredBlock9Value0) code.
    recoveredBlock9Value1
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) isString.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) code.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202959e8; bytecode file offset 0xb922b0"
!SGLmComponent methodsFor: 'recovered'!
reset
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    mappings := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    instVarsOfClass := recoveredValue3.
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) new.
    classVars := recoveredValue5.
    recoveredValue6 := Dictionary.
    recoveredValue7 := (recoveredValue6) new.
    methods := recoveredValue7.
    header := nil.
    recoveredValue8 := OrderedCollection.
    recoveredValue9 := (recoveredValue8) new.
    methods := recoveredValue9.
    recoveredValue10 := OrderedCollection.
    recoveredValue11 := (recoveredValue10) new.
    methodDecls := recoveredValue11.
    analyzed := false.
    (self) resetSpecifications.
    ^self
! !

"ASDBase.ic method 0x202f5d8c; bytecode file offset 0xbf265c"
!SGLmComponent methodsFor: 'recovered'!
lookupIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) mdlClassInterface.
    recoveredValue1 := [
    ^nil
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue3 := (self) mdlClassInterface.
    recoveredValue4 := (recoveredValue3) elementMemberPrefix.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue4) , (recoveredValue5).
    recoveredValue7 := [
    | recoveredBlock22Stack0 recoveredBlock22Stack1 recoveredBlock22Stack2 recoveredBlock22Stack3 recoveredBlock22PC recoveredBlock22Step recoveredBlock22Done recoveredBlock22Result |
    recoveredBlock22Stack0 := self.
    recoveredBlock22PC := 28.
    recoveredBlock22Done := false.
    [recoveredBlock22Done not] whileTrue: [
        recoveredBlock22Step := recoveredBlock22PC.
        recoveredBlock22Step = 28 ifTrue: [
            recoveredBlock22Stack1 := recoveredArg1.
            recoveredBlock22PC := 31.
        ].
        recoveredBlock22Step = 31 ifTrue: [
            recoveredBlock22Stack2 := self.
            recoveredBlock22PC := 32.
        ].
        recoveredBlock22Step = 32 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) selfVarName.
            recoveredBlock22PC := 34.
        ].
        recoveredBlock22Step = 34 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) equals: (recoveredBlock22Stack2).
            recoveredBlock22PC := 36.
        ].
        recoveredBlock22Step = 36 ifTrue: [
            (recoveredBlock22Stack1) ifTrue: [recoveredBlock22PC := 40] ifFalse: [recoveredBlock22PC := 44].
        ].
        recoveredBlock22Step = 40 ifTrue: [
            recoveredBlock22Stack1 := self.
            recoveredBlock22PC := 41.
        ].
        recoveredBlock22Step = 41 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) selfVarName.
            recoveredBlock22PC := 43.
        ].
        recoveredBlock22Step = 43 ifTrue: [
            ^recoveredBlock22Stack1
        ].
        recoveredBlock22Step = 44 ifTrue: [
            recoveredBlock22Stack1 := nil.
            recoveredBlock22PC := 45.
        ].
        recoveredBlock22Step = 45 ifTrue: [
            ^recoveredBlock22Stack1
        ].
    ].
    recoveredBlock22Result
].
    (recoveredValue2) lookup: (recoveredValue6) ifFail: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x203193f0; bytecode file offset 0xc15ce0"
!SGLmComponent methodsFor: 'recovered'!
ascetLinkCreateConfigWithCodeVariantForCGenMessage
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ascetLinkConfigWithCodeVariant.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) logicManager.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeConfigForModule.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) generatorFactory.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) genContext.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeManager.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) ascetLinkCreateConfigForCGenMessage: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := (recoveredStack3) platform.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) targetIdentifier.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2) target: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) generationSettings.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) codeGenerationOptions.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := (recoveredStack3) codeGenShortPathName.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack2) generator: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack2) enablePrefixCache.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack2) prepareSuffix.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ascetLinkConfigWithCodeVariant := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := ascetLinkConfigWithCodeVariant.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2033a84c; bytecode file offset 0xc37130"
!SGLmComponent methodsFor: 'recovered'!
buildMdl
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInterface.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) preprocessCMethods.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) methods.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:block280ed5dcArg1 | 
    | block280ed5dcValue0 block280ed5dcValue1 |
    block280ed5dcValue0 := block280ed5dcArg1.
    block280ed5dcValue1 := (block280ed5dcValue0) buildMdl.
    block280ed5dcValue1
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasHandwrittenCode.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) logicSpecifications.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) buildMdlHeader: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicSpecifications.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := [:recoveredBlock45Arg1 | 
    | recoveredBlock45Value0 recoveredBlock45Value1 |
    recoveredBlock45Value0 := recoveredBlock45Arg1.
    (recoveredBlock45Value0) buildMdlMethods.
    recoveredBlock45Value1 := (self) checkForLmErrors.
    recoveredBlock45Value1
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20362f00; bytecode file offset 0xc5f7d0"
!SGLmComponent methodsFor: 'recovered'!
lookupEnumValue: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) mdlClassInterface.
    recoveredValue1 := [
    ^nil
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) usedEnumTypeTable.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 |
    recoveredBlock19Value0 := recoveredBlock19Arg1.
    ^recoveredBlock19Value0
].
    recoveredValue6 := [
    | recoveredBlock28Stack0 recoveredBlock28Stack1 recoveredBlock28Stack2 recoveredBlock28Stack3 recoveredBlock28Stack4 recoveredBlock28PC recoveredBlock28Step recoveredBlock28Done recoveredBlock28Result |
    recoveredBlock28Stack0 := self.
    recoveredBlock28PC := 34.
    recoveredBlock28Done := false.
    [recoveredBlock28Done not] whileTrue: [
        recoveredBlock28Step := recoveredBlock28PC.
        recoveredBlock28Step = 34 ifTrue: [
            recoveredBlock28Stack1 := nil.
            recoveredBlock28PC := 35.
        ].
        recoveredBlock28Step = 35 ifTrue: [
            recoveredBlock28Stack2 := recoveredArg1.
            recoveredBlock28PC := 38.
        ].
        recoveredBlock28Step = 38 ifTrue: [
            recoveredBlock28Stack3 := 'true'.
            recoveredBlock28PC := 40.
        ].
        recoveredBlock28Step = 40 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) equals: (recoveredBlock28Stack3).
            recoveredBlock28PC := 42.
        ].
        recoveredBlock28Step = 42 ifTrue: [
            (recoveredBlock28Stack2) ifTrue: [recoveredBlock28PC := 56] ifFalse: [recoveredBlock28PC := 46].
        ].
        recoveredBlock28Step = 46 ifTrue: [
            recoveredBlock28Stack2 := recoveredArg1.
            recoveredBlock28PC := 49.
        ].
        recoveredBlock28Step = 49 ifTrue: [
            recoveredBlock28Stack3 := 'false'.
            recoveredBlock28PC := 51.
        ].
        recoveredBlock28Step = 51 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) equals: (recoveredBlock28Stack3).
            recoveredBlock28PC := 53.
        ].
        recoveredBlock28Step = 53 ifTrue: [
            (recoveredBlock28Stack2) ifTrue: [recoveredBlock28PC := 56] ifFalse: [recoveredBlock28PC := 61].
        ].
        recoveredBlock28Step = 56 ifTrue: [
            recoveredBlock28PC := 57.
        ].
        recoveredBlock28Step = 57 ifTrue: [
            recoveredBlock28Stack1 := recoveredArg1.
            recoveredBlock28PC := 60.
        ].
        recoveredBlock28Step = 60 ifTrue: [
            ^recoveredBlock28Stack1
        ].
        recoveredBlock28Step = 61 ifTrue: [
            recoveredBlock28Result := recoveredBlock28Stack1.
            recoveredBlock28Done := true.
        ].
    ].
    recoveredBlock28Result
].
    (recoveredValue3) lookupEnumValue: (recoveredValue4) ifPresent: (recoveredValue5) ifAbsent: (recoveredValue6).
    ^nil
! !

"ASDBase.ic method 0x203a88d0; bytecode file offset 0xca51a8"
!SGLmComponent methodsFor: 'recovered'!
groupCharTables
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := groupCharTables.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    ^recoveredBlock6Value0
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    groupCharTables := recoveredValue3.
    recoveredValue4 := (self) instVarsOfClass.
    recoveredValue5 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Stack0 recoveredBlock22Stack1 recoveredBlock22Stack2 recoveredBlock22Stack3 recoveredBlock22PC recoveredBlock22Step recoveredBlock22Done recoveredBlock22Result |
    recoveredBlock22Stack0 := self.
    recoveredBlock22PC := 28.
    recoveredBlock22Done := false.
    [recoveredBlock22Done not] whileTrue: [
        recoveredBlock22Step := recoveredBlock22PC.
        recoveredBlock22Step = 28 ifTrue: [
            recoveredBlock22Stack1 := nil.
            recoveredBlock22PC := 29.
        ].
        recoveredBlock22Step = 29 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 30.
        ].
        recoveredBlock22Step = 30 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) dataModelRef.
            recoveredBlock22PC := 32.
        ].
        recoveredBlock22Step = 32 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) isGroupCharTable.
            recoveredBlock22PC := 34.
        ].
        recoveredBlock22Step = 34 ifTrue: [
            (recoveredBlock22Stack2) ifTrue: [recoveredBlock22PC := 38] ifFalse: [recoveredBlock22PC := 44].
        ].
        recoveredBlock22Step = 38 ifTrue: [
            recoveredBlock22PC := 39.
        ].
        recoveredBlock22Step = 39 ifTrue: [
            recoveredBlock22Stack1 := groupCharTables.
            recoveredBlock22PC := 41.
        ].
        recoveredBlock22Step = 41 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 42.
        ].
        recoveredBlock22Step = 42 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) add: (recoveredBlock22Stack2).
            recoveredBlock22PC := 44.
        ].
        recoveredBlock22Step = 44 ifTrue: [
            recoveredBlock22Result := recoveredBlock22Stack1.
            recoveredBlock22Done := true.
        ].
    ].
    recoveredBlock22Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := (self) classVars.
    recoveredValue7 := [:recoveredBlock50Arg1 | 
    | recoveredBlock50Stack0 recoveredBlock50Stack1 recoveredBlock50Stack2 recoveredBlock50Stack3 recoveredBlock50PC recoveredBlock50Step recoveredBlock50Done recoveredBlock50Result |
    recoveredBlock50Stack0 := self.
    recoveredBlock50PC := 56.
    recoveredBlock50Done := false.
    [recoveredBlock50Done not] whileTrue: [
        recoveredBlock50Step := recoveredBlock50PC.
        recoveredBlock50Step = 56 ifTrue: [
            recoveredBlock50Stack1 := nil.
            recoveredBlock50PC := 57.
        ].
        recoveredBlock50Step = 57 ifTrue: [
            recoveredBlock50Stack2 := recoveredBlock50Arg1.
            recoveredBlock50PC := 58.
        ].
        recoveredBlock50Step = 58 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) dataModelRef.
            recoveredBlock50PC := 60.
        ].
        recoveredBlock50Step = 60 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) isGroupCharTable.
            recoveredBlock50PC := 62.
        ].
        recoveredBlock50Step = 62 ifTrue: [
            (recoveredBlock50Stack2) ifTrue: [recoveredBlock50PC := 66] ifFalse: [recoveredBlock50PC := 72].
        ].
        recoveredBlock50Step = 66 ifTrue: [
            recoveredBlock50PC := 67.
        ].
        recoveredBlock50Step = 67 ifTrue: [
            recoveredBlock50Stack1 := groupCharTables.
            recoveredBlock50PC := 69.
        ].
        recoveredBlock50Step = 69 ifTrue: [
            recoveredBlock50Stack2 := recoveredBlock50Arg1.
            recoveredBlock50PC := 70.
        ].
        recoveredBlock50Step = 70 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) add: (recoveredBlock50Stack2).
            recoveredBlock50PC := 72.
        ].
        recoveredBlock50Step = 72 ifTrue: [
            recoveredBlock50Result := recoveredBlock50Stack1.
            recoveredBlock50Done := true.
        ].
    ].
    recoveredBlock50Result
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := groupCharTables.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2042b60c; bytecode file offset 0xd27f0c"
!SGLmComponent methodsFor: 'recovered'!
buildMdlHeader: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isEmpty.
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
            recoveredStack0 := (recoveredStack0) header.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) code.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [:block280fd2d8Arg1 | 
    | block280fd2d8Value0 block280fd2d8Value1 block280fd2d8Value2 |
    block280fd2d8Value0 := block280fd2d8Arg1.
    block280fd2d8Value1 := (block280fd2d8Value0) dataModelRef.
    block280fd2d8Value2 := (block280fd2d8Value1) isCCodeSpecification.
    block280fd2d8Value2
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [
    ^self
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) logicSpec: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) header.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) currentMethod: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) modelSpec.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) logicModel.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceForHeader.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) source: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) beginHeader.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := SGPmiParser.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) header.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) code.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock85Value0 |
    recoveredBlock85Value0 := (self) signalLmError.
    recoveredBlock85Value0
].
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) createOn: (recoveredStack1) ifFail: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) endHeader.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20453634; bytecode file offset 0xd4ff28"
!SGLmComponent methodsFor: 'recovered'!
getPreprocessResults: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) resultCode.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) adjustLineDelimiter.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 105.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) resultCode.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) upToAllGetMethodNameOn: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) resultCode.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) upToAllGetCode: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) preProcessedCMethods.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 105.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := SGLmManager.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWriteStream.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := Character.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) lf.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubStrings: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := [:recoveredBlock74Arg1 | 
    | recoveredBlock74Value0 recoveredBlock74Value1 recoveredBlock74Value2 recoveredBlock74Value3 |
    recoveredBlock74Value0 := recoveredLocal2.
    recoveredBlock74Value1 := recoveredBlock74Value0.
    recoveredBlock74Value2 := recoveredBlock74Arg1.
    (recoveredBlock74Value1) nextPutAll: (recoveredBlock74Value2).
    recoveredBlock74Value3 := (recoveredBlock74Value0) cr.
    recoveredBlock74Value3
].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) preProcessedCMethods.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := (recoveredStack3) contents.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) resultCode.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) atEnd.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 113] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20495d58; bytecode file offset 0xd92690"
!SGLmComponent methodsFor: 'recovered'!
precompileSO: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicManager.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceCode.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) getcppOutput: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorHandler.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) logicManager.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) stationOptionSource.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkIfCPPExecutableExists: (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) genContext.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) generationSettings.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) stationSettingsWorkingPath.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPathname.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) destinationPath: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := 'pp_in.$c$'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) fileName: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := 'pp_out.$c$'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) resultFileName: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := 'pp_err.log'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) errorFileName: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := (recoveredStack2) errorHandler.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) preprocessSO: (recoveredStack1) errorHandler: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 87] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) signalLmError.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicManager.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := ETASOSHandle.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := 'pp_out.$c$'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) readFile: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := (recoveredStack2) sourceCode.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) setcppOutput: (recoveredStack1) forInput: (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredPC := 114.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := ReadStream.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) resultCode: (recoveredStack1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) noErrorsAtAll.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) getPreprocessResults: (recoveredStack1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredPC := 132.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) evaluatePreprocessErrors: (recoveredStack1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20505344; bytecode file offset 0xe01c50"
!SGLmComponent methodsFor: 'recovered'!
evaluatePreprocessErrors: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) noCppErrors.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 167] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) preProcessedCMethods.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:block2810aa58Arg1 :block2810aa58Arg2 | 
    | block2810aa58Value0 block2810aa58Value1 block2810aa58Value2 block2810aa58Value3 block2810aa58Value4 |
    block2810aa58Value0 := block2810aa58Arg1.
    block2810aa58Value1 := (block2810aa58Value0) cppStartLine.
    block2810aa58Value2 := block2810aa58Arg2.
    block2810aa58Value3 := (block2810aa58Value2) cppStartLine.
    block2810aa58Value4 := (block2810aa58Value1) < (block2810aa58Value3).
    block2810aa58Value4
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) cppErrors.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Local1 recoveredBlock36Local2 recoveredBlock36Stack0 recoveredBlock36Stack1 recoveredBlock36Stack2 recoveredBlock36Stack3 recoveredBlock36Stack4 recoveredBlock36Stack5 recoveredBlock36PC recoveredBlock36Step recoveredBlock36Done recoveredBlock36Result |
    recoveredBlock36Stack0 := self.
    recoveredBlock36PC := 42.
    recoveredBlock36Done := false.
    [recoveredBlock36Done not] whileTrue: [
        recoveredBlock36Step := recoveredBlock36PC.
        recoveredBlock36Step = 42 ifTrue: [
            recoveredBlock36Stack1 := nil.
            recoveredBlock36PC := 43.
        ].
        recoveredBlock36Step = 43 ifTrue: [
            recoveredBlock36Stack2 := recoveredLocal2.
            recoveredBlock36PC := 46.
        ].
        recoveredBlock36Step = 46 ifTrue: [
            recoveredBlock36Stack3 := [:recoveredBlock36Block46Arg1 | 
    | recoveredBlock36Block46Value0 recoveredBlock36Block46Value1 recoveredBlock36Block46Value2 recoveredBlock36Block46Value3 recoveredBlock36Block46Value4 |
    recoveredBlock36Block46Value0 := recoveredBlock36Block46Arg1.
    recoveredBlock36Block46Value1 := (recoveredBlock36Block46Value0) cppStartLine.
    recoveredBlock36Block46Value2 := recoveredBlock36Arg1.
    recoveredBlock36Block46Value3 := (recoveredBlock36Block46Value2) at: (1).
    recoveredBlock36Block46Value4 := (recoveredBlock36Block46Value1) > (recoveredBlock36Block46Value3).
    recoveredBlock36Block46Value4
].
            recoveredBlock36PC := 63.
        ].
        recoveredBlock36Step = 63 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) findFirst: (recoveredBlock36Stack3).
            recoveredBlock36PC := 65.
        ].
        recoveredBlock36Step = 65 ifTrue: [
            recoveredBlock36Stack3 := recoveredBlock36Stack2.
            recoveredBlock36PC := 66.
        ].
        recoveredBlock36Step = 66 ifTrue: [
            recoveredLocal1 := recoveredBlock36Stack3.
            recoveredBlock36PC := 69.
        ].
        recoveredBlock36Step = 69 ifTrue: [
            recoveredBlock36Stack3 := 1.
            recoveredBlock36PC := 71.
        ].
        recoveredBlock36Step = 71 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) > (recoveredBlock36Stack3).
            recoveredBlock36PC := 72.
        ].
        recoveredBlock36Step = 72 ifTrue: [
            (recoveredBlock36Stack2) ifTrue: [recoveredBlock36PC := 76] ifFalse: [recoveredBlock36PC := 156].
        ].
        recoveredBlock36Step = 76 ifTrue: [
            recoveredBlock36PC := 77.
        ].
        recoveredBlock36Step = 77 ifTrue: [
            recoveredBlock36Stack1 := recoveredLocal2.
            recoveredBlock36PC := 80.
        ].
        recoveredBlock36Step = 80 ifTrue: [
            recoveredBlock36Stack2 := recoveredLocal1.
            recoveredBlock36PC := 83.
        ].
        recoveredBlock36Step = 83 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) + (-1).
            recoveredBlock36PC := 84.
        ].
        recoveredBlock36Step = 84 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) at: (recoveredBlock36Stack2).
            recoveredBlock36PC := 86.
        ].
        recoveredBlock36Step = 86 ifTrue: [
            recoveredBlock36Local2 := recoveredBlock36Stack1.
            recoveredBlock36PC := 89.
        ].
        recoveredBlock36Step = 89 ifTrue: [
            recoveredBlock36Stack1 := recoveredBlock36Local2.
            recoveredBlock36PC := 92.
        ].
        recoveredBlock36Step = 92 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) source.
            recoveredBlock36PC := 94.
        ].
        recoveredBlock36Step = 94 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) copy.
            recoveredBlock36PC := 96.
        ].
        recoveredBlock36Step = 96 ifTrue: [
            recoveredBlock36Local1 := recoveredBlock36Stack1.
            recoveredBlock36PC := 99.
        ].
        recoveredBlock36Step = 99 ifTrue: [
            recoveredBlock36Stack1 := recoveredBlock36Local1.
            recoveredBlock36PC := 102.
        ].
        recoveredBlock36Step = 102 ifTrue: [
            recoveredBlock36Stack2 := recoveredBlock36Arg1.
            recoveredBlock36PC := 105.
        ].
        recoveredBlock36Step = 105 ifTrue: [
            recoveredBlock36Stack3 := 1.
            recoveredBlock36PC := 107.
        ].
        recoveredBlock36Step = 107 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) at: (recoveredBlock36Stack3).
            recoveredBlock36PC := 109.
        ].
        recoveredBlock36Step = 109 ifTrue: [
            recoveredBlock36Stack3 := recoveredBlock36Local2.
            recoveredBlock36PC := 112.
        ].
        recoveredBlock36Step = 112 ifTrue: [
            recoveredBlock36Stack3 := (recoveredBlock36Stack3) cppStartLine.
            recoveredBlock36PC := 113.
        ].
        recoveredBlock36Step = 113 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) - (recoveredBlock36Stack3).
            recoveredBlock36PC := 114.
        ].
        recoveredBlock36Step = 114 ifTrue: [
            (recoveredBlock36Stack1) line: (recoveredBlock36Stack2).
            recoveredBlock36PC := 116.
        ].
        recoveredBlock36Step = 116 ifTrue: [
            recoveredBlock36Stack1 := self.
            recoveredBlock36PC := 117.
        ].
        recoveredBlock36Step = 117 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) errorHandler.
            recoveredBlock36PC := 119.
        ].
        recoveredBlock36Step = 119 ifTrue: [
            recoveredBlock36Stack2 := recoveredBlock36Local2.
            recoveredBlock36PC := 122.
        ].
        recoveredBlock36Step = 122 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) errLabel.
            recoveredBlock36PC := 124.
        ].
        recoveredBlock36Step = 124 ifTrue: [
            recoveredBlock36Stack3 := '(): cpp: "'.
            recoveredBlock36PC := 126.
        ].
        recoveredBlock36Step = 126 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) , (recoveredBlock36Stack3).
            recoveredBlock36PC := 128.
        ].
        recoveredBlock36Step = 128 ifTrue: [
            recoveredBlock36Stack3 := recoveredBlock36Arg1.
            recoveredBlock36PC := 131.
        ].
        recoveredBlock36Step = 131 ifTrue: [
            recoveredBlock36Stack4 := 2.
            recoveredBlock36PC := 133.
        ].
        recoveredBlock36Step = 133 ifTrue: [
            recoveredBlock36Stack3 := (recoveredBlock36Stack3) at: (recoveredBlock36Stack4).
            recoveredBlock36PC := 135.
        ].
        recoveredBlock36Step = 135 ifTrue: [
            recoveredBlock36Stack3 := (recoveredBlock36Stack3) trimBlanks.
            recoveredBlock36PC := 137.
        ].
        recoveredBlock36Step = 137 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) , (recoveredBlock36Stack3).
            recoveredBlock36PC := 139.
        ].
        recoveredBlock36Step = 139 ifTrue: [
            recoveredBlock36Stack3 := '"'.
            recoveredBlock36PC := 141.
        ].
        recoveredBlock36Step = 141 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) , (recoveredBlock36Stack3).
            recoveredBlock36PC := 143.
        ].
        recoveredBlock36Step = 143 ifTrue: [
            recoveredBlock36Stack3 := recoveredBlock36Local1.
            recoveredBlock36PC := 146.
        ].
        recoveredBlock36Step = 146 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) generalError: (recoveredBlock36Stack2) source: (recoveredBlock36Stack3).
            recoveredBlock36PC := 148.
        ].
        recoveredBlock36Step = 148 ifTrue: [
            recoveredBlock36Stack2 := nil.
            recoveredBlock36PC := 149.
        ].
        recoveredBlock36Step = 149 ifTrue: [
            recoveredBlock36Stack3 := recoveredBlock36Stack2.
            recoveredBlock36PC := 150.
        ].
        recoveredBlock36Step = 150 ifTrue: [
            recoveredBlock36Local2 := recoveredBlock36Stack3.
            recoveredBlock36PC := 153.
        ].
        recoveredBlock36Step = 153 ifTrue: [
            recoveredBlock36Local1 := recoveredBlock36Stack2.
            recoveredBlock36PC := 156.
        ].
        recoveredBlock36Step = 156 ifTrue: [
            recoveredBlock36Result := recoveredBlock36Stack1.
            recoveredBlock36Done := true.
        ].
    ].
    recoveredBlock36Result
].
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeManager.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack0) addErrorsAndWarningsFrom: (recoveredStack1).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack0) signalLmError.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2051ad00; bytecode file offset 0xe17600"
!SGLmComponent methodsFor: 'recovered'!
initTypeTable
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    typeTable := recoveredValue1.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := typeTable.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := recoveredBlock11Arg1.
    recoveredBlock11Value3 := (recoveredBlock11Value0) at: (recoveredBlock11Value1) put: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    (#('cont' 'log' 'sdisc' 'udisc' 'void' 'deltaT')) do: (recoveredValue2).
    recoveredValue3 := (self) logicManager.
    recoveredValue4 := (recoveredValue3) imports.
    recoveredValue5 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 recoveredBlock31Value3 recoveredBlock31Value4 recoveredBlock31Value5 |
    recoveredBlock31Value0 := typeTable.
    recoveredBlock31Value1 := recoveredBlock31Arg1.
    recoveredBlock31Value2 := (recoveredBlock31Value1) errLabel.
    recoveredBlock31Value3 := recoveredBlock31Arg1.
    recoveredBlock31Value4 := (recoveredBlock31Value3) mdlClassType.
    recoveredBlock31Value5 := (recoveredBlock31Value0) at: (recoveredBlock31Value2) put: (recoveredBlock31Value4).
    recoveredBlock31Value5
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := typeTable.
    recoveredValue7 := (self) sgClass.
    recoveredValue8 := (recoveredValue7) label.
    (recoveredValue6) at: (recoveredValue8) put: (self).
    recoveredValue9 := (self) instVarsOfClass.
    recoveredValue10 := [:recoveredBlock64Arg1 | 
    | recoveredBlock64Stack0 recoveredBlock64Stack1 recoveredBlock64Stack2 recoveredBlock64Stack3 recoveredBlock64Stack4 recoveredBlock64PC recoveredBlock64Step recoveredBlock64Done recoveredBlock64Result |
    recoveredBlock64Stack0 := self.
    recoveredBlock64PC := 70.
    recoveredBlock64Done := false.
    [recoveredBlock64Done not] whileTrue: [
        recoveredBlock64Step := recoveredBlock64PC.
        recoveredBlock64Step = 70 ifTrue: [
            recoveredBlock64Stack1 := recoveredBlock64Arg1.
            recoveredBlock64PC := 71.
        ].
        recoveredBlock64Step = 71 ifTrue: [
            recoveredBlock64Stack1 := (recoveredBlock64Stack1) isEnumeration.
            recoveredBlock64PC := 73.
        ].
        recoveredBlock64Step = 73 ifTrue: [
            (recoveredBlock64Stack1) ifTrue: [recoveredBlock64PC := 76] ifFalse: [recoveredBlock64PC := 92].
        ].
        recoveredBlock64Step = 76 ifTrue: [
            recoveredBlock64Stack1 := typeTable.
            recoveredBlock64PC := 78.
        ].
        recoveredBlock64Step = 78 ifTrue: [
            recoveredBlock64Stack2 := recoveredBlock64Arg1.
            recoveredBlock64PC := 79.
        ].
        recoveredBlock64Step = 79 ifTrue: [
            recoveredBlock64Stack2 := (recoveredBlock64Stack2) type.
            recoveredBlock64PC := 81.
        ].
        recoveredBlock64Step = 81 ifTrue: [
            recoveredBlock64Stack2 := (recoveredBlock64Stack2) mdlTypeLabel.
            recoveredBlock64PC := 83.
        ].
        recoveredBlock64Step = 83 ifTrue: [
            recoveredBlock64Stack3 := recoveredBlock64Arg1.
            recoveredBlock64PC := 84.
        ].
        recoveredBlock64Step = 84 ifTrue: [
            recoveredBlock64Stack3 := (recoveredBlock64Stack3) type.
            recoveredBlock64PC := 86.
        ].
        recoveredBlock64Step = 86 ifTrue: [
            recoveredBlock64Stack1 := (recoveredBlock64Stack1) at: (recoveredBlock64Stack2) put: (recoveredBlock64Stack3).
            recoveredBlock64PC := 88.
        ].
        recoveredBlock64Step = 88 ifTrue: [
            recoveredBlock64PC := 121.
        ].
        recoveredBlock64Step = 92 ifTrue: [
            recoveredBlock64Stack1 := nil.
            recoveredBlock64PC := 93.
        ].
        recoveredBlock64Step = 93 ifTrue: [
            recoveredBlock64Stack2 := recoveredBlock64Arg1.
            recoveredBlock64PC := 94.
        ].
        recoveredBlock64Step = 94 ifTrue: [
            recoveredBlock64Stack2 := (recoveredBlock64Stack2) isGeneratedData.
            recoveredBlock64PC := 96.
        ].
        recoveredBlock64Step = 96 ifTrue: [
            (recoveredBlock64Stack2) ifTrue: [recoveredBlock64PC := 108] ifFalse: [recoveredBlock64PC := 100].
        ].
        recoveredBlock64Step = 100 ifTrue: [
            recoveredBlock64Stack2 := recoveredBlock64Arg1.
            recoveredBlock64PC := 101.
        ].
        recoveredBlock64Step = 101 ifTrue: [
            recoveredBlock64Stack2 := (recoveredBlock64Stack2) dataModelRef.
            recoveredBlock64PC := 103.
        ].
        recoveredBlock64Step = 103 ifTrue: [
            recoveredBlock64Stack2 := (recoveredBlock64Stack2) isPrimitive.
            recoveredBlock64PC := 105.
        ].
        recoveredBlock64Step = 105 ifTrue: [
            (recoveredBlock64Stack2) ifTrue: [recoveredBlock64PC := 121] ifFalse: [recoveredBlock64PC := 108].
        ].
        recoveredBlock64Step = 108 ifTrue: [
            recoveredBlock64PC := 109.
        ].
        recoveredBlock64Step = 109 ifTrue: [
            recoveredBlock64Stack1 := typeTable.
            recoveredBlock64PC := 111.
        ].
        recoveredBlock64Step = 111 ifTrue: [
            recoveredBlock64Stack2 := recoveredBlock64Arg1.
            recoveredBlock64PC := 112.
        ].
        recoveredBlock64Step = 112 ifTrue: [
            recoveredBlock64Stack2 := (recoveredBlock64Stack2) type.
            recoveredBlock64PC := 114.
        ].
        recoveredBlock64Step = 114 ifTrue: [
            recoveredBlock64Stack2 := (recoveredBlock64Stack2) mdlTypeLabel.
            recoveredBlock64PC := 116.
        ].
        recoveredBlock64Step = 116 ifTrue: [
            recoveredBlock64Stack3 := recoveredBlock64Arg1.
            recoveredBlock64PC := 117.
        ].
        recoveredBlock64Step = 117 ifTrue: [
            recoveredBlock64Stack3 := (recoveredBlock64Stack3) type.
            recoveredBlock64PC := 119.
        ].
        recoveredBlock64Step = 119 ifTrue: [
            recoveredBlock64Stack1 := (recoveredBlock64Stack1) at: (recoveredBlock64Stack2) put: (recoveredBlock64Stack3).
            recoveredBlock64PC := 121.
        ].
        recoveredBlock64Step = 121 ifTrue: [
            recoveredBlock64Result := recoveredBlock64Stack1.
            recoveredBlock64Done := true.
        ].
    ].
    recoveredBlock64Result
].
    (recoveredValue9) do: (recoveredValue10).
    recoveredValue11 := (self) classVars.
    recoveredValue12 := [:recoveredBlock127Arg1 | 
    | recoveredBlock127Stack0 recoveredBlock127Stack1 recoveredBlock127Stack2 recoveredBlock127Stack3 recoveredBlock127Stack4 recoveredBlock127PC recoveredBlock127Step recoveredBlock127Done recoveredBlock127Result |
    recoveredBlock127Stack0 := self.
    recoveredBlock127PC := 134.
    recoveredBlock127Done := false.
    [recoveredBlock127Done not] whileTrue: [
        recoveredBlock127Step := recoveredBlock127PC.
        recoveredBlock127Step = 134 ifTrue: [
            recoveredBlock127Stack1 := recoveredBlock127Arg1.
            recoveredBlock127PC := 135.
        ].
        recoveredBlock127Step = 135 ifTrue: [
            recoveredBlock127Stack1 := (recoveredBlock127Stack1) isEnumeration.
            recoveredBlock127PC := 137.
        ].
        recoveredBlock127Step = 137 ifTrue: [
            (recoveredBlock127Stack1) ifTrue: [recoveredBlock127PC := 140] ifFalse: [recoveredBlock127PC := 156].
        ].
        recoveredBlock127Step = 140 ifTrue: [
            recoveredBlock127Stack1 := typeTable.
            recoveredBlock127PC := 142.
        ].
        recoveredBlock127Step = 142 ifTrue: [
            recoveredBlock127Stack2 := recoveredBlock127Arg1.
            recoveredBlock127PC := 143.
        ].
        recoveredBlock127Step = 143 ifTrue: [
            recoveredBlock127Stack2 := (recoveredBlock127Stack2) type.
            recoveredBlock127PC := 145.
        ].
        recoveredBlock127Step = 145 ifTrue: [
            recoveredBlock127Stack2 := (recoveredBlock127Stack2) mdlTypeLabel.
            recoveredBlock127PC := 147.
        ].
        recoveredBlock127Step = 147 ifTrue: [
            recoveredBlock127Stack3 := recoveredBlock127Arg1.
            recoveredBlock127PC := 148.
        ].
        recoveredBlock127Step = 148 ifTrue: [
            recoveredBlock127Stack3 := (recoveredBlock127Stack3) type.
            recoveredBlock127PC := 150.
        ].
        recoveredBlock127Step = 150 ifTrue: [
            recoveredBlock127Stack1 := (recoveredBlock127Stack1) at: (recoveredBlock127Stack2) put: (recoveredBlock127Stack3).
            recoveredBlock127PC := 152.
        ].
        recoveredBlock127Step = 152 ifTrue: [
            recoveredBlock127PC := 185.
        ].
        recoveredBlock127Step = 156 ifTrue: [
            recoveredBlock127Stack1 := nil.
            recoveredBlock127PC := 157.
        ].
        recoveredBlock127Step = 157 ifTrue: [
            recoveredBlock127Stack2 := recoveredBlock127Arg1.
            recoveredBlock127PC := 158.
        ].
        recoveredBlock127Step = 158 ifTrue: [
            recoveredBlock127Stack2 := (recoveredBlock127Stack2) isGeneratedData.
            recoveredBlock127PC := 160.
        ].
        recoveredBlock127Step = 160 ifTrue: [
            (recoveredBlock127Stack2) ifTrue: [recoveredBlock127PC := 172] ifFalse: [recoveredBlock127PC := 164].
        ].
        recoveredBlock127Step = 164 ifTrue: [
            recoveredBlock127Stack2 := recoveredBlock127Arg1.
            recoveredBlock127PC := 165.
        ].
        recoveredBlock127Step = 165 ifTrue: [
            recoveredBlock127Stack2 := (recoveredBlock127Stack2) dataModelRef.
            recoveredBlock127PC := 167.
        ].
        recoveredBlock127Step = 167 ifTrue: [
            recoveredBlock127Stack2 := (recoveredBlock127Stack2) isPrimitive.
            recoveredBlock127PC := 169.
        ].
        recoveredBlock127Step = 169 ifTrue: [
            (recoveredBlock127Stack2) ifTrue: [recoveredBlock127PC := 185] ifFalse: [recoveredBlock127PC := 172].
        ].
        recoveredBlock127Step = 172 ifTrue: [
            recoveredBlock127PC := 173.
        ].
        recoveredBlock127Step = 173 ifTrue: [
            recoveredBlock127Stack1 := typeTable.
            recoveredBlock127PC := 175.
        ].
        recoveredBlock127Step = 175 ifTrue: [
            recoveredBlock127Stack2 := recoveredBlock127Arg1.
            recoveredBlock127PC := 176.
        ].
        recoveredBlock127Step = 176 ifTrue: [
            recoveredBlock127Stack2 := (recoveredBlock127Stack2) type.
            recoveredBlock127PC := 178.
        ].
        recoveredBlock127Step = 178 ifTrue: [
            recoveredBlock127Stack2 := (recoveredBlock127Stack2) mdlTypeLabel.
            recoveredBlock127PC := 180.
        ].
        recoveredBlock127Step = 180 ifTrue: [
            recoveredBlock127Stack3 := recoveredBlock127Arg1.
            recoveredBlock127PC := 181.
        ].
        recoveredBlock127Step = 181 ifTrue: [
            recoveredBlock127Stack3 := (recoveredBlock127Stack3) type.
            recoveredBlock127PC := 183.
        ].
        recoveredBlock127Step = 183 ifTrue: [
            recoveredBlock127Stack1 := (recoveredBlock127Stack1) at: (recoveredBlock127Stack2) put: (recoveredBlock127Stack3).
            recoveredBlock127PC := 185.
        ].
        recoveredBlock127Step = 185 ifTrue: [
            recoveredBlock127Result := recoveredBlock127Stack1.
            recoveredBlock127Done := true.
        ].
    ].
    recoveredBlock127Result
].
    (recoveredValue11) do: (recoveredValue12).
    recoveredValue13 := typeTable.
    ^recoveredValue13
! !

"ASDBase.ic method 0x20558b08; bytecode file offset 0xe55444"
!SGLmComponent methodsFor: 'recovered'!
pmiDefineMacrosOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := (self) instVarsOfClass.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (self) pmiDefineAccessWithEnumLabels: (recoveredBlock5Value0) on: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := (self) classVars.
    recoveredValue3 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 |
    recoveredBlock23Value0 := recoveredBlock23Arg1.
    recoveredBlock23Value1 := recoveredArg1.
    recoveredBlock23Value2 := (self) pmiDefineAccessWithEnumLabels: (recoveredBlock23Value0) on: (recoveredBlock23Value1).
    recoveredBlock23Value2
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := (self) preProcessedCMethods.
    recoveredValue5 := [:recoveredBlock42Arg1 | 
    | recoveredBlock42Local1 recoveredBlock42Stack0 recoveredBlock42Stack1 recoveredBlock42Stack2 recoveredBlock42Stack3 recoveredBlock42PC recoveredBlock42Step recoveredBlock42Done recoveredBlock42Result |
    recoveredBlock42Stack0 := self.
    recoveredBlock42PC := 48.
    recoveredBlock42Done := false.
    [recoveredBlock42Done not] whileTrue: [
        recoveredBlock42Step := recoveredBlock42PC.
        recoveredBlock42Step = 48 ifTrue: [
            recoveredBlock42Stack1 := recoveredBlock42Arg1.
            recoveredBlock42PC := 49.
        ].
        recoveredBlock42Step = 49 ifTrue: [
            recoveredBlock42Stack1 := (recoveredBlock42Stack1) arguments.
            recoveredBlock42PC := 51.
        ].
        recoveredBlock42Step = 51 ifTrue: [
            recoveredBlock42Stack1 := (recoveredBlock42Stack1) copy.
            recoveredBlock42PC := 53.
        ].
        recoveredBlock42Step = 53 ifTrue: [
            recoveredBlock42Local1 := recoveredBlock42Stack1.
            recoveredBlock42PC := 54.
        ].
        recoveredBlock42Step = 54 ifTrue: [
            recoveredBlock42Stack1 := recoveredBlock42Arg1.
            recoveredBlock42PC := 55.
        ].
        recoveredBlock42Step = 55 ifTrue: [
            recoveredBlock42Stack1 := (recoveredBlock42Stack1) hasReturnValue.
            recoveredBlock42PC := 57.
        ].
        recoveredBlock42Step = 57 ifTrue: [
            (recoveredBlock42Stack1) ifTrue: [recoveredBlock42PC := 60] ifFalse: [recoveredBlock42PC := 66].
        ].
        recoveredBlock42Step = 60 ifTrue: [
            recoveredBlock42Stack1 := recoveredBlock42Local1.
            recoveredBlock42PC := 61.
        ].
        recoveredBlock42Step = 61 ifTrue: [
            recoveredBlock42Stack2 := recoveredBlock42Arg1.
            recoveredBlock42PC := 62.
        ].
        recoveredBlock42Step = 62 ifTrue: [
            recoveredBlock42Stack2 := (recoveredBlock42Stack2) returnValue.
            recoveredBlock42PC := 64.
        ].
        recoveredBlock42Step = 64 ifTrue: [
            (recoveredBlock42Stack1) add: (recoveredBlock42Stack2).
            recoveredBlock42PC := 66.
        ].
        recoveredBlock42Step = 66 ifTrue: [
            recoveredBlock42Stack1 := recoveredBlock42Local1.
            recoveredBlock42PC := 67.
        ].
        recoveredBlock42Step = 67 ifTrue: [
            recoveredBlock42Stack2 := [:recoveredBlock42Block67Arg1 | 
    | recoveredBlock42Block67Stack0 recoveredBlock42Block67Stack1 recoveredBlock42Block67Stack2 recoveredBlock42Block67Stack3 recoveredBlock42Block67Stack4 recoveredBlock42Block67PC recoveredBlock42Block67Step recoveredBlock42Block67Done recoveredBlock42Block67Result |
    recoveredBlock42Block67Stack0 := self.
    recoveredBlock42Block67PC := 74.
    recoveredBlock42Block67Done := false.
    [recoveredBlock42Block67Done not] whileTrue: [
        recoveredBlock42Block67Step := recoveredBlock42Block67PC.
        recoveredBlock42Block67Step = 74 ifTrue: [
            recoveredBlock42Block67Stack1 := nil.
            recoveredBlock42Block67PC := 75.
        ].
        recoveredBlock42Block67Step = 75 ifTrue: [
            recoveredBlock42Block67Stack2 := recoveredBlock42Block67Arg1.
            recoveredBlock42Block67PC := 78.
        ].
        recoveredBlock42Block67Step = 78 ifTrue: [
            recoveredBlock42Block67Stack2 := (recoveredBlock42Block67Stack2) type.
            recoveredBlock42Block67PC := 80.
        ].
        recoveredBlock42Block67Step = 80 ifTrue: [
            recoveredBlock42Block67Stack2 := (recoveredBlock42Block67Stack2) isMdlEnumType.
            recoveredBlock42Block67PC := 82.
        ].
        recoveredBlock42Block67Step = 82 ifTrue: [
            (recoveredBlock42Block67Stack2) ifTrue: [recoveredBlock42Block67PC := 86] ifFalse: [recoveredBlock42Block67PC := 158].
        ].
        recoveredBlock42Block67Step = 86 ifTrue: [
            recoveredBlock42Block67PC := 87.
        ].
        recoveredBlock42Block67Step = 87 ifTrue: [
            recoveredBlock42Block67Stack1 := nil.
            recoveredBlock42Block67PC := 88.
        ].
        recoveredBlock42Block67Step = 88 ifTrue: [
            recoveredBlock42Block67Stack2 := self.
            recoveredBlock42Block67PC := 89.
        ].
        recoveredBlock42Block67Step = 89 ifTrue: [
            recoveredBlock42Block67Stack2 := (recoveredBlock42Block67Stack2) instVarsOfClass.
            recoveredBlock42Block67PC := 90.
        ].
        recoveredBlock42Block67Step = 90 ifTrue: [
            recoveredBlock42Block67Stack3 := self.
            recoveredBlock42Block67PC := 91.
        ].
        recoveredBlock42Block67Step = 91 ifTrue: [
            recoveredBlock42Block67Stack3 := (recoveredBlock42Block67Stack3) classVars.
            recoveredBlock42Block67PC := 92.
        ].
        recoveredBlock42Block67Step = 92 ifTrue: [
            recoveredBlock42Block67Stack2 := (recoveredBlock42Block67Stack2) , (recoveredBlock42Block67Stack3).
            recoveredBlock42Block67PC := 94.
        ].
        recoveredBlock42Block67Step = 94 ifTrue: [
            recoveredBlock42Block67Stack3 := [:recoveredBlock42Block67Block94Arg1 | 
    | recoveredBlock42Block67Block94Stack0 recoveredBlock42Block67Block94Stack1 recoveredBlock42Block67Block94Stack2 recoveredBlock42Block67Block94Stack3 recoveredBlock42Block67Block94PC recoveredBlock42Block67Block94Step recoveredBlock42Block67Block94Done recoveredBlock42Block67Block94Result |
    recoveredBlock42Block67Block94Stack0 := nil.
    recoveredBlock42Block67Block94PC := 100.
    recoveredBlock42Block67Block94Done := false.
    [recoveredBlock42Block67Block94Done not] whileTrue: [
        recoveredBlock42Block67Block94Step := recoveredBlock42Block67Block94PC.
        recoveredBlock42Block67Block94Step = 100 ifTrue: [
            recoveredBlock42Block67Block94Stack1 := false.
            recoveredBlock42Block67Block94PC := 101.
        ].
        recoveredBlock42Block67Block94Step = 101 ifTrue: [
            recoveredBlock42Block67Block94Stack2 := recoveredBlock42Block67Block94Arg1.
            recoveredBlock42Block67Block94PC := 102.
        ].
        recoveredBlock42Block67Block94Step = 102 ifTrue: [
            recoveredBlock42Block67Block94Stack2 := (recoveredBlock42Block67Block94Stack2) type.
            recoveredBlock42Block67Block94PC := 104.
        ].
        recoveredBlock42Block67Block94Step = 104 ifTrue: [
            recoveredBlock42Block67Block94Stack2 := (recoveredBlock42Block67Block94Stack2) isMdlEnumType.
            recoveredBlock42Block67Block94PC := 106.
        ].
        recoveredBlock42Block67Block94Step = 106 ifTrue: [
            (recoveredBlock42Block67Block94Stack2) ifTrue: [recoveredBlock42Block67Block94PC := 110] ifFalse: [recoveredBlock42Block67Block94PC := 121].
        ].
        recoveredBlock42Block67Block94Step = 110 ifTrue: [
            recoveredBlock42Block67Block94PC := 111.
        ].
        recoveredBlock42Block67Block94Step = 111 ifTrue: [
            recoveredBlock42Block67Block94Stack1 := recoveredBlock42Block67Block94Arg1.
            recoveredBlock42Block67Block94PC := 112.
        ].
        recoveredBlock42Block67Block94Step = 112 ifTrue: [
            recoveredBlock42Block67Block94Stack1 := (recoveredBlock42Block67Block94Stack1) type.
            recoveredBlock42Block67Block94PC := 114.
        ].
        recoveredBlock42Block67Block94Step = 114 ifTrue: [
            recoveredBlock42Block67Block94Stack2 := recoveredBlock42Block67Arg1.
            recoveredBlock42Block67Block94PC := 117.
        ].
        recoveredBlock42Block67Block94Step = 117 ifTrue: [
            recoveredBlock42Block67Block94Stack2 := (recoveredBlock42Block67Block94Stack2) type.
            recoveredBlock42Block67Block94PC := 119.
        ].
        recoveredBlock42Block67Block94Step = 119 ifTrue: [
            recoveredBlock42Block67Block94Stack1 := (recoveredBlock42Block67Block94Stack1) equalsTypeAndImpl: (recoveredBlock42Block67Block94Stack2).
            recoveredBlock42Block67Block94PC := 121.
        ].
        recoveredBlock42Block67Block94Step = 121 ifTrue: [
            recoveredBlock42Block67Block94Result := recoveredBlock42Block67Block94Stack1.
            recoveredBlock42Block67Block94Done := true.
        ].
    ].
    recoveredBlock42Block67Block94Result
].
            recoveredBlock42Block67PC := 122.
        ].
        recoveredBlock42Block67Step = 122 ifTrue: [
            recoveredBlock42Block67Stack2 := (recoveredBlock42Block67Stack2) anySatisfy: (recoveredBlock42Block67Stack3).
            recoveredBlock42Block67PC := 124.
        ].
        recoveredBlock42Block67Step = 124 ifTrue: [
            (recoveredBlock42Block67Stack2) ifTrue: [recoveredBlock42Block67PC := 158] ifFalse: [recoveredBlock42Block67PC := 128].
        ].
        recoveredBlock42Block67Step = 128 ifTrue: [
            recoveredBlock42Block67PC := 129.
        ].
        recoveredBlock42Block67Step = 129 ifTrue: [
            recoveredBlock42Block67Stack1 := recoveredBlock42Block67Arg1.
            recoveredBlock42Block67PC := 132.
        ].
        recoveredBlock42Block67Step = 132 ifTrue: [
            recoveredBlock42Block67Stack1 := (recoveredBlock42Block67Stack1) type.
            recoveredBlock42Block67PC := 134.
        ].
        recoveredBlock42Block67Step = 134 ifTrue: [
            recoveredBlock42Block67Stack1 := (recoveredBlock42Block67Stack1) enumerationLabels.
            recoveredBlock42Block67PC := 136.
        ].
        recoveredBlock42Block67Step = 136 ifTrue: [
            recoveredBlock42Block67Stack2 := [:recoveredBlock42Block67Block136Arg1 | 
    | recoveredBlock42Block67Block136Value0 recoveredBlock42Block67Block136Value1 recoveredBlock42Block67Block136Value2 recoveredBlock42Block67Block136Value3 recoveredBlock42Block67Block136Value4 recoveredBlock42Block67Block136Value5 recoveredBlock42Block67Block136Value6 |
    recoveredBlock42Block67Block136Value0 := recoveredArg1.
    recoveredBlock42Block67Block136Value1 := recoveredBlock42Block67Block136Arg1.
    recoveredBlock42Block67Block136Value2 := (self) pmiCharacter.
    recoveredBlock42Block67Block136Value3 := (recoveredBlock42Block67Block136Value2) asString.
    recoveredBlock42Block67Block136Value4 := recoveredBlock42Block67Block136Arg1.
    recoveredBlock42Block67Block136Value5 := (recoveredBlock42Block67Block136Value3) , (recoveredBlock42Block67Block136Value4).
    recoveredBlock42Block67Block136Value6 := (recoveredBlock42Block67Block136Value0) cppDefine: (recoveredBlock42Block67Block136Value1) as: (recoveredBlock42Block67Block136Value5).
    recoveredBlock42Block67Block136Value6
].
            recoveredBlock42Block67PC := 157.
        ].
        recoveredBlock42Block67Step = 157 ifTrue: [
            recoveredBlock42Block67Stack1 := (recoveredBlock42Block67Stack1) do: (recoveredBlock42Block67Stack2).
            recoveredBlock42Block67PC := 158.
        ].
        recoveredBlock42Block67Step = 158 ifTrue: [
            recoveredBlock42Block67Result := recoveredBlock42Block67Stack1.
            recoveredBlock42Block67Done := true.
        ].
    ].
    recoveredBlock42Block67Result
].
            recoveredBlock42PC := 159.
        ].
        recoveredBlock42Step = 159 ifTrue: [
            recoveredBlock42Stack1 := (recoveredBlock42Stack1) do: (recoveredBlock42Stack2).
            recoveredBlock42PC := 160.
        ].
        recoveredBlock42Step = 160 ifTrue: [
            recoveredBlock42Result := recoveredBlock42Stack1.
            recoveredBlock42Done := true.
        ].
    ].
    recoveredBlock42Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := ('Rl') == ('Call_63957').
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := (self) pmiCharacter.
    recoveredValue10 := (recoveredValue9) asString.
    recoveredValue11 := (recoveredValue10) , ('self').
    (recoveredValue8) cppDefine: ('self') as: (recoveredValue11).
    recoveredValue12 := recoveredValue7.
    (recoveredValue12) cppDefine: ('ASD_GET(rcv, var)') as: ('rcv @. var').
    recoveredValue13 := recoveredValue7.
    (recoveredValue13) cppDefine: ('ASD_SET(rcv, var, val)') as: ('rcv @( val @) var').
    recoveredValue14 := recoveredValue7.
    (recoveredValue14) cppDefine: ('ASD_USE_ARRAY_EXTERNAL(array)') as: ('&array[0]').
    recoveredValue15 := recoveredValue7.
    (recoveredValue15) cppDefine: ('ASD_LENGTH(rcv)') as: ('rcv.length()').
    recoveredValue16 := recoveredValue7.
    (recoveredValue16) cppDefine: ('ASD_RESERVE(rcv)') as: ('rcv.reserve()').
    (recoveredValue7) cppDefine: ('ASD_RELEASE(rcv)') as: ('rcv.release()').
    ^self
! !

"ASDBase.ic method 0x2055fc24; bytecode file offset 0xe5c56c"
!SGLmComponent methodsFor: 'recovered'!
preprocessCMethods
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) preprocessingDone.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicSpecifications.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:block281106e0Arg1 | 
    | block281106e0Value0 block281106e0Value1 |
    block281106e0Value0 := block281106e0Arg1.
    block281106e0Value1 := (block281106e0Value0) collectPreprocessedCMethods.
    block281106e0Value1
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) preProcessedCMethods.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := TGPreProcessObject.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 'Preprocess code of c-code components'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) info: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := SGLmManager.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWriteStream.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) asAnsiCCodeStream.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) pmiDefineMacrosOn: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) numOfLines.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) preProcessedCMethods.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := [:recoveredBlock78Arg1 | 
    | recoveredBlock78Stack0 recoveredBlock78Stack1 recoveredBlock78Stack2 recoveredBlock78Stack3 recoveredBlock78Stack4 recoveredBlock78Stack5 recoveredBlock78PC recoveredBlock78Step recoveredBlock78Done recoveredBlock78Result |
    recoveredBlock78Stack0 := self.
    recoveredBlock78PC := 84.
    recoveredBlock78Done := false.
    [recoveredBlock78Done not] whileTrue: [
        recoveredBlock78Step := recoveredBlock78PC.
        recoveredBlock78Step = 84 ifTrue: [
            recoveredBlock78Stack1 := 'Kp'.
            recoveredBlock78PC := 86.
        ].
        recoveredBlock78Step = 86 ifTrue: [
            recoveredBlock78Stack2 := 'Call_64192'.
            recoveredBlock78PC := 88.
        ].
        recoveredBlock78Step = 88 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) = (recoveredBlock78Stack2).
            recoveredBlock78PC := 89.
        ].
        recoveredBlock78Step = 89 ifTrue: [
            recoveredBlock78PC := 90.
        ].
        recoveredBlock78Step = 90 ifTrue: [
            recoveredBlock78Stack1 := SGLmManager.
            recoveredBlock78PC := 92.
        ].
        recoveredBlock78Step = 92 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) createWriteStream.
            recoveredBlock78PC := 94.
        ].
        recoveredBlock78Step = 94 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) asAnsiCCodeStream.
            recoveredBlock78PC := 96.
        ].
        recoveredBlock78Step = 96 ifTrue: [
            recoveredLocal3 := recoveredBlock78Stack1.
            recoveredBlock78PC := 99.
        ].
        recoveredBlock78Step = 99 ifTrue: [
            recoveredBlock78Stack1 := recoveredBlock78Arg1.
            recoveredBlock78PC := 100.
        ].
        recoveredBlock78Step = 100 ifTrue: [
            recoveredBlock78Stack2 := recoveredLocal3.
            recoveredBlock78PC := 103.
        ].
        recoveredBlock78Step = 103 ifTrue: [
            (recoveredBlock78Stack1) pmiDefineMacrosOn: (recoveredBlock78Stack2).
            recoveredBlock78PC := 105.
        ].
        recoveredBlock78Step = 105 ifTrue: [
            recoveredBlock78Stack1 := recoveredBlock78Arg1.
            recoveredBlock78PC := 106.
        ].
        recoveredBlock78Step = 106 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) code.
            recoveredBlock78PC := 108.
        ].
        recoveredBlock78Step = 108 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) asReducedString.
            recoveredBlock78PC := 110.
        ].
        recoveredBlock78Step = 110 ifTrue: [
            recoveredLocal5 := recoveredBlock78Stack1.
            recoveredBlock78PC := 113.
        ].
        recoveredBlock78Step = 113 ifTrue: [
            recoveredBlock78Stack1 := CfsFileStream.
            recoveredBlock78PC := 115.
        ].
        recoveredBlock78Step = 115 ifTrue: [
            recoveredBlock78Stack2 := recoveredLocal5.
            recoveredBlock78PC := 118.
        ].
        recoveredBlock78Step = 118 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) couldWriteString: (recoveredBlock78Stack2).
            recoveredBlock78PC := 120.
        ].
        recoveredBlock78Step = 120 ifTrue: [
            (recoveredBlock78Stack1) ifTrue: [recoveredBlock78PC := 132] ifFalse: [recoveredBlock78PC := 124].
        ].
        recoveredBlock78Step = 124 ifTrue: [
            recoveredBlock78Stack1 := recoveredLocal5.
            recoveredBlock78PC := 127.
        ].
        recoveredBlock78Step = 127 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) forceToSBString.
            recoveredBlock78PC := 129.
        ].
        recoveredBlock78Step = 129 ifTrue: [
            recoveredLocal5 := recoveredBlock78Stack1.
            recoveredBlock78PC := 132.
        ].
        recoveredBlock78Step = 132 ifTrue: [
            recoveredBlock78Stack1 := recoveredLocal4.
            recoveredBlock78PC := 135.
        ].
        recoveredBlock78Step = 135 ifTrue: [
            recoveredBlock78Stack2 := recoveredBlock78Arg1.
            recoveredBlock78PC := 136.
        ].
        recoveredBlock78Step = 136 ifTrue: [
            recoveredBlock78Stack2 := (recoveredBlock78Stack2) errLabel.
            recoveredBlock78PC := 138.
        ].
        recoveredBlock78Step = 138 ifTrue: [
            recoveredBlock78Stack3 := recoveredLocal3.
            recoveredBlock78PC := 141.
        ].
        recoveredBlock78Step = 141 ifTrue: [
            (recoveredBlock78Stack1) pmiMarkBeginFunction: (recoveredBlock78Stack2) on: (recoveredBlock78Stack3).
            recoveredBlock78PC := 143.
        ].
        recoveredBlock78Step = 143 ifTrue: [
            recoveredBlock78Stack1 := recoveredBlock78Arg1.
            recoveredBlock78PC := 144.
        ].
        recoveredBlock78Step = 144 ifTrue: [
            recoveredBlock78Stack2 := recoveredLocal3.
            recoveredBlock78PC := 147.
        ].
        recoveredBlock78Step = 147 ifTrue: [
            recoveredBlock78Stack2 := (recoveredBlock78Stack2) numOfLines.
            recoveredBlock78PC := 149.
        ].
        recoveredBlock78Step = 149 ifTrue: [
            recoveredBlock78Stack3 := recoveredLocal2.
            recoveredBlock78PC := 152.
        ].
        recoveredBlock78Step = 152 ifTrue: [
            recoveredBlock78Stack2 := (recoveredBlock78Stack2) + (recoveredBlock78Stack3).
            recoveredBlock78PC := 153.
        ].
        recoveredBlock78Step = 153 ifTrue: [
            (recoveredBlock78Stack1) cppStartLine: (recoveredBlock78Stack2).
            recoveredBlock78PC := 155.
        ].
        recoveredBlock78Step = 155 ifTrue: [
            recoveredBlock78Stack1 := recoveredLocal4.
            recoveredBlock78PC := 158.
        ].
        recoveredBlock78Step = 158 ifTrue: [
            recoveredBlock78Stack2 := recoveredLocal5.
            recoveredBlock78PC := 161.
        ].
        recoveredBlock78Step = 161 ifTrue: [
            recoveredBlock78Stack3 := recoveredLocal3.
            recoveredBlock78PC := 164.
        ].
        recoveredBlock78Step = 164 ifTrue: [
            recoveredBlock78Stack4 := self.
            recoveredBlock78PC := 165.
        ].
        recoveredBlock78Step = 165 ifTrue: [
            recoveredBlock78Stack4 := (recoveredBlock78Stack4) escapeSequenceCpp.
            recoveredBlock78PC := 167.
        ].
        recoveredBlock78Step = 167 ifTrue: [
            (recoveredBlock78Stack1) escapePreprocessorCommands: (recoveredBlock78Stack2) on: (recoveredBlock78Stack3) with: (recoveredBlock78Stack4).
            recoveredBlock78PC := 170.
        ].
        recoveredBlock78Step = 170 ifTrue: [
            recoveredBlock78Stack1 := recoveredLocal4.
            recoveredBlock78PC := 173.
        ].
        recoveredBlock78Step = 173 ifTrue: [
            recoveredBlock78Stack2 := recoveredBlock78Arg1.
            recoveredBlock78PC := 174.
        ].
        recoveredBlock78Step = 174 ifTrue: [
            recoveredBlock78Stack2 := (recoveredBlock78Stack2) errLabel.
            recoveredBlock78PC := 176.
        ].
        recoveredBlock78Step = 176 ifTrue: [
            recoveredBlock78Stack3 := recoveredLocal3.
            recoveredBlock78PC := 179.
        ].
        recoveredBlock78Step = 179 ifTrue: [
            (recoveredBlock78Stack1) pmiMarkEndFunction: (recoveredBlock78Stack2) on: (recoveredBlock78Stack3).
            recoveredBlock78PC := 181.
        ].
        recoveredBlock78Step = 181 ifTrue: [
            recoveredBlock78Stack1 := recoveredBlock78Arg1.
            recoveredBlock78PC := 182.
        ].
        recoveredBlock78Step = 182 ifTrue: [
            recoveredBlock78Stack2 := recoveredLocal3.
            recoveredBlock78PC := 185.
        ].
        recoveredBlock78Step = 185 ifTrue: [
            (recoveredBlock78Stack1) pmiUndefineMacrosOn: (recoveredBlock78Stack2).
            recoveredBlock78PC := 187.
        ].
        recoveredBlock78Step = 187 ifTrue: [
            recoveredBlock78Stack1 := recoveredLocal2.
            recoveredBlock78PC := 190.
        ].
        recoveredBlock78Step = 190 ifTrue: [
            recoveredBlock78Stack2 := recoveredLocal3.
            recoveredBlock78PC := 193.
        ].
        recoveredBlock78Step = 193 ifTrue: [
            recoveredBlock78Stack2 := (recoveredBlock78Stack2) numOfLines.
            recoveredBlock78PC := 195.
        ].
        recoveredBlock78Step = 195 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) + (recoveredBlock78Stack2).
            recoveredBlock78PC := 196.
        ].
        recoveredBlock78Step = 196 ifTrue: [
            recoveredLocal2 := recoveredBlock78Stack1.
            recoveredBlock78PC := 199.
        ].
        recoveredBlock78Step = 199 ifTrue: [
            recoveredBlock78Stack1 := recoveredLocal6.
            recoveredBlock78PC := 202.
        ].
        recoveredBlock78Step = 202 ifTrue: [
            recoveredBlock78Stack2 := recoveredLocal3.
            recoveredBlock78PC := 205.
        ].
        recoveredBlock78Step = 205 ifTrue: [
            recoveredBlock78Stack2 := (recoveredBlock78Stack2) contents.
            recoveredBlock78PC := 207.
        ].
        recoveredBlock78Step = 207 ifTrue: [
            (recoveredBlock78Stack1) nextPutAll: (recoveredBlock78Stack2).
            recoveredBlock78PC := 209.
        ].
        recoveredBlock78Step = 209 ifTrue: [
            recoveredBlock78Stack1 := recoveredLocal1.
            recoveredBlock78PC := 212.
        ].
        recoveredBlock78Step = 212 ifTrue: [
            recoveredBlock78Stack2 := recoveredBlock78Arg1.
            recoveredBlock78PC := 213.
        ].
        recoveredBlock78Step = 213 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) add: (recoveredBlock78Stack2).
            recoveredBlock78PC := 215.
        ].
        recoveredBlock78Step = 215 ifTrue: [
            recoveredBlock78Result := recoveredBlock78Stack1.
            recoveredBlock78Done := true.
        ].
    ].
    recoveredBlock78Result
].
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceCode: (recoveredStack2).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack0) precompileSO: (recoveredStack1).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

