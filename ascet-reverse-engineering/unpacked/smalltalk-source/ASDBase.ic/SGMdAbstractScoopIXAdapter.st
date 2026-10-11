"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001190; bytecode file offset 0x8ffcfc"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixCharTableDefinitions
    ^self
! !

"ASDBase.ic method 0x2000ca04; bytecode file offset 0x909658"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
requiresBaseDefinition: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2000cae4; bytecode file offset 0x909658"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
addToNegativeList: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2000cb2c; bytecode file offset 0x909658"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
requiresCStructDefinition: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2000e2bc; bytecode file offset 0x90ab8c"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixInterfaceKind: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) sixInterfaceKindExport.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000f51c; bytecode file offset 0x90bef8"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixCharTableInitValue: recoveredArg1 implType: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016c64; bytecode file offset 0x92209c"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
sixInterfaceKindImport
    ^'import'
! !

"ASDBase.ic method 0x20026224; bytecode file offset 0x923928"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
sixInterfaceKindExport
    ^'export'
! !

"ASDBase.ic method 0x2002c2c4; bytecode file offset 0x934580"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
codeGeneratorStrategy
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) generatorFactory.
    recoveredValue1 := (recoveredValue0) codeGeneratorStrategy.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c624; bytecode file offset 0x934580"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
context
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sixGenerator.
    recoveredValue1 := (recoveredValue0) context.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002d1b4; bytecode file offset 0x934580"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
scoopIXFunctionElementsInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sixGenerator.
    recoveredValue1 := (recoveredValue0) scoopIXFunctionElementsInfo.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f234; bytecode file offset 0x934580"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
exportedFilesMarker
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sixGenerator.
    recoveredValue1 := (recoveredValue0) exportedFilesMarker.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ffa4; bytecode file offset 0x934580"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
valuesModelIdentifier
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sixGenerator.
    recoveredValue1 := (recoveredValue0) valuesModelIdentifier.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032604; bytecode file offset 0x934580"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
scoopixContentsOrFilename
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sixGenerator.
    recoveredValue1 := (recoveredValue0) scoopixContentsOrFilename.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037f74; bytecode file offset 0x934b68"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixDistanceRefs: recoveredArg1
    ^#()
! !

"ASDBase.ic method 0x2003816c; bytecode file offset 0x934b68"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixOffsetRefs: recoveredArg1
    ^#()
! !

"ASDBase.ic method 0x20057d68; bytecode file offset 0x956284"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixModelOriginalIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) sixGenerator.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) genSixModelOriginalIdentifier: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20059ba8; bytecode file offset 0x9566ac"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixEndRecordInstanceDataElement: recoveredArg1 mdlInterface: recoveredArg2
    (self) removeCurrentRecordInstance.
    ^self
! !

"ASDBase.ic method 0x20059c14; bytecode file offset 0x9566ac"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixEndComponentStructDataElement: recoveredArg1 mdlInterface: recoveredArg2
    (self) removeCurrentComponentInstance.
    ^self
! !

"ASDBase.ic method 0x20063844; bytecode file offset 0x961970"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
beginModuleInterface
    | recoveredValue0 |
    recoveredValue0 := (self) sixGenerator.
    (recoveredValue0) beginModuleInterface.
    ^self
! !

"ASDBase.ic method 0x20063c14; bytecode file offset 0x961970"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
endGenericModule
    | recoveredValue0 |
    recoveredValue0 := (self) sixGenerator.
    (recoveredValue0) endGenericModule.
    ^self
! !

"ASDBase.ic method 0x20063d84; bytecode file offset 0x961970"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixFileMarker
    | recoveredValue0 |
    recoveredValue0 := (self) sixGenerator.
    (recoveredValue0) genSixFileMarker.
    ^self
! !

"ASDBase.ic method 0x20063f34; bytecode file offset 0x961970"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixTarget
    | recoveredValue0 |
    recoveredValue0 := (self) sixGenerator.
    (recoveredValue0) genSixExperimentalTarget.
    ^self
! !

"ASDBase.ic method 0x20063fd4; bytecode file offset 0x961970"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
beginGenericModule
    | recoveredValue0 |
    recoveredValue0 := (self) sixGenerator.
    (recoveredValue0) beginGenericModule.
    ^self
! !

"ASDBase.ic method 0x200642a4; bytecode file offset 0x961970"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
endModule
    | recoveredValue0 |
    recoveredValue0 := (self) sixGenerator.
    (recoveredValue0) endModule.
    ^self
! !

"ASDBase.ic method 0x20064854; bytecode file offset 0x961970"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
endModuleInterface
    | recoveredValue0 |
    recoveredValue0 := (self) sixGenerator.
    (recoveredValue0) endModuleInterface.
    ^self
! !

"ASDBase.ic method 0x20064874; bytecode file offset 0x961970"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixBaseTypeUsage
    | recoveredValue0 |
    recoveredValue0 := (self) sixGenerator.
    (recoveredValue0) genSixBaseTypeUsage.
    ^self
! !

"ASDBase.ic method 0x20064ea4; bytecode file offset 0x961970"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
beginModule
    | recoveredValue0 |
    recoveredValue0 := (self) sixGenerator.
    (recoveredValue0) beginModule.
    ^self
! !

"ASDBase.ic method 0x200661bc; bytecode file offset 0x963428"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
sixGenerator
    | recoveredValue0 |
    recoveredValue0 := sixGenerator.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006731c; bytecode file offset 0x9646f8"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
structCollection
    | recoveredValue0 |
    recoveredValue0 := structCollection.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068abc; bytecode file offset 0x965b90"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
formulaTable
    | recoveredValue0 |
    recoveredValue0 := formulaTable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069fa8; bytecode file offset 0x966bdc"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
enumTypeTable
    | recoveredValue0 |
    recoveredValue0 := enumTypeTable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20084468; bytecode file offset 0x981ca4"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixFixedCharTableDataElement: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) genSixCharTableDataElement: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200976a4; bytecode file offset 0x995850"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
addCurrentComponentInstance: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) componentInstanceStack.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200977e4; bytecode file offset 0x995850"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixUsageCharacteristic: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sixGenerator.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) genSixUsageCharacteristic: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20098b04; bytecode file offset 0x995850"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixDestinationPath: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sixGenerator.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) genSixDestinationPath: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20098d14; bytecode file offset 0x995850"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
addCurrentRecordInstance: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) recordInstanceStack.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a0f5c; bytecode file offset 0x99db8c"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixModuleInfo
    | recoveredValue0 |
    recoveredValue0 := (self) sixGenerator.
    (recoveredValue0) genSixModuleInfo: ('ASCET').
    ^self
! !

"ASDBase.ic method 0x200adeb0; bytecode file offset 0x9aa770"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
dataElementNeedsImpl: recoveredArg1 implementation: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlVarDecl.
    recoveredValue2 := (recoveredValue1) generator.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) notNil.
    recoveredValue5 := (recoveredValue2) isMdlVarNeedsImpl: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200babf8; bytecode file offset 0x9b74bc"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixDataElementLeafNodeNames: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) mdlLabel.
    recoveredValue4 := (recoveredValue1) with: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) genSixLeafNodeNames: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200bd514; bytecode file offset 0x9b9e88"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
addEnumType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) enumTypeTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) mdlFormulaName.
    recoveredValue3 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue2) put: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200bd53c; bytecode file offset 0x9b9e88"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
addFormulaConversion: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) formulaTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) name.
    recoveredValue3 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue2) put: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200d84ac; bytecode file offset 0x9d4d64"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
sixGenerator: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    sixGenerator := recoveredValue0.
    recoveredValue1 := sixGenerator.
    (recoveredValue1) sixAdapter: (self).
    ^self
! !

"ASDBase.ic method 0x200da9f8; bytecode file offset 0x9d72bc"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixUsageAddress: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) sixGenerator.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) mdlVarDecl.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) pseudoAddress.
    (recoveredValue0) putSixElement: (recoveredValue2) pseudoAddress: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x200daa60; bytecode file offset 0x9d7328"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixCFileReference: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) sixGenerator.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) pathInfoNode.
    recoveredValue3 := (recoveredValue2) mdlClassInterface.
    recoveredValue4 := (recoveredValue3) fileName.
    (recoveredValue0) putSixCFile: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x200ec484; bytecode file offset 0x9e8d44"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixBeginComponentStructDataElement: recoveredArg1 mdlInterface: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) structCollection.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) addCurrentComponentInstance: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2010ac58; bytecode file offset 0xa07554"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
removeCurrentRecordInstance
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) recordInstanceStack.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) recordInstanceStack.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) removeLast.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010ac94; bytecode file offset 0xa07554"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
removeCurrentComponentInstance
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) componentInstanceStack.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) componentInstanceStack.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) removeLast.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010ad2c; bytecode file offset 0xa07614"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
currentRecordInstance
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) recordInstanceStack.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) recordInstanceStack.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010ad40; bytecode file offset 0xa07614"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
currentComponentInstance
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) componentInstanceStack.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) componentInstanceStack.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010dd00; bytecode file offset 0xa0a5c4"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
filterMessageAccesses: recoveredArg1
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
            recoveredStack2 := [:block280c6990Arg1 | 
    | block280c6990Value0 block280c6990Value1 block280c6990Value2 |
    block280c6990Value0 := block280c6990Arg1.
    block280c6990Value1 := (block280c6990Value0) varDecl.
    block280c6990Value2 := (block280c6990Value1) isMdlInstVarDecl.
    block280c6990Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) reject: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20132ee0; bytecode file offset 0xa2f7a4"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixDataElementCInterfaceFileReference: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) genSixInterfaceKind: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) sixInterfaceKindImport.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) genSixCFileReference: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013da48; bytecode file offset 0xa3a310"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixCodeInfo
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) sixGenerator.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) beginCodeInfo.
    (recoveredValue0) genSixConstitution.
    (self) genSixTarget.
    recoveredValue2 := (self) sixGenerator.
    (recoveredValue2) endCodeInfo.
    ^self
! !

"ASDBase.ic method 0x201454ac; bytecode file offset 0xa41d74"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixCName: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlResource.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlLabel.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) cInstancePath.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) genSixCName: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201690b0; bytecode file offset 0xa65974"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixBeginRecordInstanceDataElement: recoveredArg1 mdlInterface: recoveredArg2
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
            recoveredStack0 := (recoveredStack0) requiresCStructDefinition: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) structCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) addCurrentRecordInstance: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20183658; bytecode file offset 0xa7ff18"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
recordInstanceStack
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recordInstanceStack.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    ^recoveredBlock6Value0
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredValue4 := recoveredValue3.
    recordInstanceStack := recoveredValue4.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20183684; bytecode file offset 0xa7ff44"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
componentInstanceStack
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := componentInstanceStack.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    ^recoveredBlock6Value0
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredValue4 := recoveredValue3.
    componentInstanceStack := recoveredValue4.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2019b42c; bytecode file offset 0xa97d10"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixDataElementModelOriginIdentifier: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) mdlVarDecl.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlClassVarDecl.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlLabel.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) hierarchicalModelName.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) genSixOriginaIdentifier: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2019b448; bytecode file offset 0xa97d10"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixDataElementOriginaHref: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) mdlVarDecl.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlClassVarDecl.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlLabel.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) hierarchicalModelName.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) genSixOriginaHref: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201a30f0; bytecode file offset 0xa9f9b8"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    formulaTable := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    structCollection := recoveredValue3.
    recoveredValue4 := LookupTable.
    recoveredValue5 := (recoveredValue4) new.
    enumTypeTable := recoveredValue5.
    ^self
! !

"ASDBase.ic method 0x201abee8; bytecode file offset 0xaa87ac"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixDataElementModelOriginName: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) mdlVarDecl.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlClassVarDecl.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlLabel.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlVarDecl.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) genSixOriginalName: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) genSixOriginalName: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201abfd4; bytecode file offset 0xaa88a0"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixHeaderFileList: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectAllHFiles: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280d3650Arg1 | 
    | block280d3650Value0 block280d3650Value1 |
    block280d3650Value0 := block280d3650Arg1.
    block280d3650Value1 := (block280d3650Value0) asLowercase.
    block280d3650Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) sixGenerator.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) genSixHeaderFileList: (recoveredStack1).
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

"ASDBase.ic method 0x201b4910; bytecode file offset 0xab11e4"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixStructMember: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) sixGenerator.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) mdlVarDecl.
    recoveredValue4 := (recoveredValue3) mdlLabel.
    (recoveredValue1) beginStructMember: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (self) sixType: (recoveredValue6).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (self) sixTypeWidth: (recoveredValue8).
    (recoveredValue5) putSixType: (recoveredValue7) width: (recoveredValue9).
    (recoveredValue0) endStructMember.
    ^self
! !

"ASDBase.ic method 0x201d1fa4; bytecode file offset 0xace868"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixComponentName: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) implName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) className.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) className.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := '_'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) implName.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201d9c18; bytecode file offset 0xad64f0"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixFunctionElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) mdlProcessDecl.
    recoveredValue3 := (recoveredValue2) scope.
    recoveredValue4 := (recoveredValue3) className.
    recoveredValue5 := (recoveredValue4) , ('.').
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) mdlProcessDecl.
    recoveredValue8 := (recoveredValue7) mdlLabel.
    recoveredValue9 := (recoveredValue5) , (recoveredValue8).
    (recoveredValue0) originalId: (recoveredValue9).
    recoveredValue10 := (self) sixGenerator.
    recoveredValue11 := recoveredArg1.
    (recoveredValue10) genSixFunctionElement: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x201daa24; bytecode file offset 0xad72f4"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixDataElementCInterface: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) sixGenerator.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) genSixCName: (recoveredValue1).
    (recoveredValue0) beginCInterface: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) genSixDataElementCInterfaceTypeOrDefinitionLocation: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) genSixDataElementCInterfaceFileReference: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (self) genSixDataElementCInterfaceInitValue: (recoveredValue5).
    recoveredValue6 := (self) sixGenerator.
    (recoveredValue6) endCInterface.
    ^self
! !

"ASDBase.ic method 0x201f27b8; bytecode file offset 0xaef08c"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixDefinitions
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) sixGenerator.
    recoveredValue1 := (recoveredValue0) projectInterface.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 recoveredBlock6Value5 recoveredBlock6Value6 recoveredBlock6Value7 recoveredBlock6Value8 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) sixFormulas.
    recoveredBlock6Value2 := (recoveredBlock6Value1) values.
    recoveredBlock6Value3 := recoveredBlock6Arg1.
    recoveredBlock6Value4 := (recoveredBlock6Value3) sixEnumTypes.
    recoveredBlock6Value5 := (recoveredBlock6Value4) values.
    recoveredBlock6Value6 := recoveredBlock6Arg1.
    recoveredBlock6Value7 := (recoveredBlock6Value6) sixStructTypes.
    recoveredBlock6Value8 := (self) genSixDefinitions: (recoveredBlock6Value2) enumTypes: (recoveredBlock6Value5) structs: (recoveredBlock6Value7).
    recoveredBlock6Value8
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20200b04; bytecode file offset 0xafd410"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
createDistributionValuesDataElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := SGMdScoopIXStructuredDataElement.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) create: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) setValuesIdentifier.
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) mdlClass.
    (recoveredValue4) mdlClass: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := (self) codeGeneratorStrategy.
    recoveredValue9 := (recoveredValue8) cgDistribValuesFieldName.
    (recoveredValue7) cIdentifier: (recoveredValue9).
    recoveredValue10 := recoveredValue2.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) implType.
    (recoveredValue10) implType: (recoveredValue12).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20200b34; bytecode file offset 0xafd410"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
createArrayValuesDataElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := SGMdScoopIXStructuredDataElement.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) create: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) setValuesIdentifier.
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) mdlClass.
    (recoveredValue4) mdlClass: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := (self) codeGeneratorStrategy.
    recoveredValue9 := (recoveredValue8) cgArrayValuesFieldName.
    (recoveredValue7) cIdentifier: (recoveredValue9).
    recoveredValue10 := recoveredValue2.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) implType.
    (recoveredValue10) implType: (recoveredValue12).
    ^recoveredValue2
! !

"ASDBase.ic method 0x202015ec; bytecode file offset 0xafdeb4"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
selectAllCFiles: recoveredArg1
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
            recoveredStack2 := [:block280d94f4Arg1 | 
    | block280d94f4Value0 block280d94f4Value1 block280d94f4Value2 |
    block280d94f4Value0 := block280d94f4Arg1.
    block280d94f4Value1 := (block280d94f4Value0) last.
    block280d94f4Value2 := (block280d94f4Value1) == ($C).
    block280d94f4Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:block280d9518Arg1 :block280d9518Arg2 | 
    | block280d9518Value0 block280d9518Value1 block280d9518Value2 |
    block280d9518Value0 := block280d9518Arg1.
    block280d9518Value1 := block280d9518Arg2.
    block280d9518Value2 := (block280d9518Value0) < (block280d9518Value1).
    block280d9518Value2
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20201628; bytecode file offset 0xafdef0"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
selectAllHFiles: recoveredArg1
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
            recoveredStack2 := [:block280d953cArg1 | 
    | block280d953cValue0 block280d953cValue1 block280d953cValue2 |
    block280d953cValue0 := block280d953cArg1.
    block280d953cValue1 := (block280d953cValue0) last.
    block280d953cValue2 := (block280d953cValue1) == ($H).
    block280d953cValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:block280d9560Arg1 :block280d9560Arg2 | 
    | block280d9560Value0 block280d9560Value1 block280d9560Value2 |
    block280d9560Value0 := block280d9560Arg1.
    block280d9560Value1 := block280d9560Arg2.
    block280d9560Value2 := (block280d9560Value0) < (block280d9560Value1).
    block280d9560Value2
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2020e8b4; bytecode file offset 0xb0b188"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixDataElementUsage: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) sixGenerator.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) genSixDataElementUsageAttributes: (recoveredValue1).
    (recoveredValue0) beginElementUsage: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) genSixUsageAxis: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) genSixUsageCharacteristic: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (self) genSixUsageAddress: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (self) genSixUsageDependency: (recoveredValue6).
    recoveredValue7 := (self) sixGenerator.
    (recoveredValue7) endElementUsage.
    ^self
! !

"ASDBase.ic method 0x2021aa80; bytecode file offset 0xb17360"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
createDistributionSizeDataElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := SGMdScoopIXStructuredDataElement.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) create: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) setSizeIdentifier.
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) mdlClass.
    recoveredValue7 := (recoveredValue6) mdlComponentClassType.
    (recoveredValue4) mdlClass: (recoveredValue7).
    recoveredValue8 := recoveredValue2.
    recoveredValue9 := (self) codeGeneratorStrategy.
    recoveredValue10 := (recoveredValue9) cgDistribSizeFieldName.
    (recoveredValue8) cIdentifier: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) implType.
    (recoveredValue11) implType: (recoveredValue13).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2024b308; bytecode file offset 0xb47bd8"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixDataElementCInterfaceInitValue: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) mdlVarDecl.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlRedundantDataSlave.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
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
            recoveredStack1 := (recoveredStack1) mdlVarDecl.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlResource.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
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
            recoveredStack1 := (recoveredStack1) mdlVarDecl.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) initValue.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) sixGenerator.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) genSixInitValue.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) putSixCInitValue: (recoveredStack1).
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

"ASDBase.ic method 0x20254fd8; bytecode file offset 0xb518fc"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
createCharTableXSizeDataElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := SGMdScoopIXStructuredDataElement.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) create: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) identifier: ('xSize').
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) mdlClass.
    recoveredValue7 := (recoveredValue6) xDistributionType.
    (recoveredValue4) mdlClass: (recoveredValue7).
    recoveredValue8 := recoveredValue2.
    recoveredValue9 := (self) codeGeneratorStrategy.
    recoveredValue10 := (recoveredValue9) cgCharTableXSizeFieldName.
    (recoveredValue8) cIdentifier: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) implType.
    recoveredValue14 := (recoveredValue13) xDistribution.
    (recoveredValue11) implType: (recoveredValue14).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20255014; bytecode file offset 0xb518fc"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
createCharTableYSizeDataElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := SGMdScoopIXStructuredDataElement.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) create: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) identifier: ('vSize').
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) mdlClass.
    recoveredValue7 := (recoveredValue6) yDistributionType.
    (recoveredValue4) mdlClass: (recoveredValue7).
    recoveredValue8 := recoveredValue2.
    recoveredValue9 := (self) codeGeneratorStrategy.
    recoveredValue10 := (recoveredValue9) cgCharTableYSizeFieldName.
    (recoveredValue8) cIdentifier: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) implType.
    recoveredValue14 := (recoveredValue13) yDistribution.
    (recoveredValue11) implType: (recoveredValue14).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20273aa0; bytecode file offset 0xb70374"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixDataElementImplementation: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) mdlVarDecl.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgRescalableType.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) pathInfoNode.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlComplexClassType.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlRescaledTo: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) genSixDataElement: (recoveredStack2) implementation: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) genSixImplementation.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) genSixDataElement: (recoveredStack2) implementation: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028a91c; bytecode file offset 0xb871f0"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixFileContainer: recoveredArg1 asapFile: recoveredArg2
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
            recoveredStack0 := (recoveredStack0) selectAllCFiles: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280e1da4Arg1 | 
    | block280e1da4Value0 block280e1da4Value1 |
    block280e1da4Value0 := block280e1da4Arg1.
    block280e1da4Value1 := (block280e1da4Value0) asLowercase.
    block280e1da4Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectAllHFiles: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [:block280e1dc8Arg1 | 
    | block280e1dc8Value0 block280e1dc8Value1 |
    block280e1dc8Value0 := block280e1dc8Arg1.
    block280e1dc8Value1 := (block280e1dc8Value0) asLowercase.
    block280e1dc8Value1
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) sixGenerator.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) genSixFileContainerCFiles: (recoveredStack1) hFiles: (recoveredStack2) asapFile: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20298160; bytecode file offset 0xb94a3c"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixDataElementCInterfaceTypeOrDefinitionLocation: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) requiresCStructDefinition: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) sixGenerator.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) genSixCStructDefinitionBaseRefName.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) genSixMemberName.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) putSixCDefinitionLocation: (recoveredStack1) member: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) sixGenerator.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) beginCInterfaceType.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) sixGenerator.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) sixType: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) sixTypeWidth: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) putSixType: (recoveredStack1) width: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) sixGenerator.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) endCInterfaceType.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d2fd0; bytecode file offset 0xbcf8ac"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixUsageAxis: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isScoopIXCharTableDataElement.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
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
            recoveredStack1 := (recoveredStack1) mdlComplexBaseClassType.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlDistribution.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
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
            recoveredStack1 := (recoveredStack1) genSixNoAxisPtsRefs.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) sixGenerator.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) beginUsageAxis.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) putSixNoAxisPtsRef: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) endUsageAxis.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202fce80; bytecode file offset 0xbf975c"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
sixTypeWidth: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isMdlArray.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) implType.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxSize.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) sixGenerator.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsCStructDefinition.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlDistribution.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) implType.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) maxSize.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlMatrix.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) implType.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) maxXSize.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) implType.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxYSize.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20303900; bytecode file offset 0xc001e0"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixCharTableDataElement: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) implType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlVarDecl.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) genIleInitValue.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) createCharTableXSizeDataElement: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlTwoDCharTable.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) createCharTableYSizeDataElement: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) genSixCharTableAxesDataElement: (recoveredStack1) noAxisPtsRefs: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2030d1a4; bytecode file offset 0xc09a80"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
propagateSixTypeDefinitions: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeGeneratorStrategy.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isQuantVariant.
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
            recoveredStack0 := (recoveredStack0) codeGeneratorStrategy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPhysicalVariant.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeGeneratorStrategy.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isControllerVariant.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) formulaTable.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) enumTypeTable.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := OrderedCollection.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) propagateSixFormulas: (recoveredStack1) enumTypes: (recoveredStack2) structs: (recoveredStack3) mdlProjectInterface: (recoveredStack4).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) enumTypeTable.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := OrderedCollection.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) propagateSixFormulas: (recoveredStack1) enumTypes: (recoveredStack2) structs: (recoveredStack3) mdlProjectInterface: (recoveredStack4).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034e68c; bytecode file offset 0xc4af6c"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixDataElement: recoveredArg1 implementation: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) mdlVarDecl.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlResource.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElementNeedsImpl: (recoveredStack1) implementation: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlVarDecl.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlEnumType.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) sixGenerator.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) beginImplementation.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) genSixFormulaName: (recoveredStack2) implementation: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) putSixConversionRef: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 57].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) sixGenerator.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) putSixArithmeticTypeImplementation: (recoveredStack1) implementation: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) sixGenerator.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) endImplementation.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034fbf8; bytecode file offset 0xc4c4f8"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
createCharTableValuesDataElement: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) implType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) valueType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxXSize.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlTwoDCharTable.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxYSize.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := SGMdScoopIXStructuredDataElement.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack2) setValuesIdentifier.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlClass.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) valueType.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack2) mdlClass: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := (recoveredStack3) codeGeneratorStrategy.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := (recoveredStack3) cgCharTableValuesFieldName.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack2) cIdentifier: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack2) implType: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := (recoveredStack3) asArray.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack2) modelWidth: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20357214; bytecode file offset 0xc53b08"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixDistributionStructDefinition: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) implType.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) genSixStructName: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) sixGenerator.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue5) beginStructDefinition: (recoveredValue6).
    recoveredValue7 := recoveredValue4.
    (recoveredValue7) beginStructMember: ('size').
    recoveredValue8 := recoveredValue4.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (self) sixSizeType: (recoveredValue9).
    (recoveredValue8) putSixType: (recoveredValue10).
    recoveredValue11 := recoveredValue4.
    (recoveredValue11) endStructMember.
    recoveredValue12 := recoveredValue4.
    (recoveredValue12) beginStructMember: ('dist').
    recoveredValue13 := recoveredValue4.
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := (recoveredValue14) implType.
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := (recoveredValue16) implType.
    recoveredValue18 := (recoveredValue17) maxSize.
    (recoveredValue13) putSixType: (recoveredValue15) width: (recoveredValue18).
    recoveredValue19 := recoveredValue4.
    (recoveredValue19) endStructMember.
    recoveredValue20 := recoveredValue4.
    (recoveredValue20) endStructDefinition.
    recoveredValue21 := recoveredValue4.
    recoveredValue22 := recoveredArg1.
    recoveredValue23 := (recoveredValue22) genSixImportedElementCName.
    (recoveredValue21) beginBaseDefinition: (recoveredValue23).
    recoveredValue24 := recoveredValue4.
    recoveredValue25 := recoveredLocal1.
    (recoveredValue24) putSixType: (recoveredValue25).
    (recoveredValue4) endBaseDefinition.
    ^self
! !

"ASDBase.ic method 0x2035d578; bytecode file offset 0xc59e70"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
sixType: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredStack1 := (recoveredStack1) isMdlBaseClassType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) implType.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) asCType.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) genSixStructName: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := RBBit.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) asCType.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := SGCgErrorHandler.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 'WMdl500'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := 'Implementation type "%1" for logic typed element "%2" not supported by %3 - changed to "bool"'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlVarDecl.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 500.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack4 := (recoveredStack4) mdlLabel.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack5 := 'SCOOP-IX'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) mdlWarningNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := RBImplBoolean.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) asCType.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203c14ac; bytecode file offset 0xcbdd9c"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixDataElement: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sixGenerator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) genSixInterfaceKind: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) beginDataElement: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasDataCInterface.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isScoopIXCharTableDataElement.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) sixGenerator.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsCStructDefinition.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlArray.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlMatrix.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) createArrayValuesDataElement: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) genSixDataElementCInterface: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) genSixDataElementCInterface: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) genSixDataElementModelOrigin: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) genSixDataElementImplementation: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) genSixDataElementUsage: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) sixGenerator.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) endDataElement.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203e031c; bytecode file offset 0xcdcc04"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
sixSizeType: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) mdlVarDecl.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlDistribution.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) implType.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBInteger.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) implType.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) byteSize.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := RBInt8Unsigned.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlVarDecl.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlCharTable.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 83].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) implType.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBInteger.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 83].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) implType.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBInt8Signed.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) implType.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBInt8Unsigned.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 83].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := RBInt8Unsigned.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := RBInt16Unsigned.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20437754; bytecode file offset 0xd34098"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixComponentStructDefinition: recoveredArg1 alreadyDefinedTable: recoveredArg2
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
            recoveredStack0 := (recoveredStack0) genSixStructName: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) sixGenerator.
            recoveredBlock17PC := 25.
        ].
        recoveredBlock17Step = 25 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal1.
            recoveredBlock17PC := 28.
        ].
        recoveredBlock17Step = 28 ifTrue: [
            (recoveredBlock17Stack0) beginStructDefinition: (recoveredBlock17Stack1).
            recoveredBlock17PC := 30.
        ].
        recoveredBlock17Step = 30 ifTrue: [
            recoveredBlock17Stack0 := recoveredArg1.
            recoveredBlock17PC := 33.
        ].
        recoveredBlock17Step = 33 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) members.
            recoveredBlock17PC := 34.
        ].
        recoveredBlock17Step = 34 ifTrue: [
            recoveredBlock17Stack1 := [:block280fdd98Arg1 :block280fdd98Arg2 | 
    | block280fdd98Value0 block280fdd98Value1 block280fdd98Value2 block280fdd98Value3 block280fdd98Value4 block280fdd98Value5 block280fdd98Value6 |
    block280fdd98Value0 := block280fdd98Arg1.
    block280fdd98Value1 := (block280fdd98Value0) mdlVarDecl.
    block280fdd98Value2 := (block280fdd98Value1) errLabel.
    block280fdd98Value3 := block280fdd98Arg2.
    block280fdd98Value4 := (block280fdd98Value3) mdlVarDecl.
    block280fdd98Value5 := (block280fdd98Value4) errLabel.
    block280fdd98Value6 := (block280fdd98Value2) < (block280fdd98Value5).
    block280fdd98Value6
].
            recoveredBlock17PC := 36.
        ].
        recoveredBlock17Step = 36 ifTrue: [
            recoveredBlock17PC := 52.
        ].
        recoveredBlock17Step = 52 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) asSortedCollection: (recoveredBlock17Stack1).
            recoveredBlock17PC := 54.
        ].
        recoveredBlock17Step = 54 ifTrue: [
            recoveredBlock17Stack1 := [:recoveredBlock17Block54Arg1 | 
    | recoveredBlock17Block54Value0 recoveredBlock17Block54Value1 |
    recoveredBlock17Block54Value0 := recoveredBlock17Block54Arg1.
    recoveredBlock17Block54Value1 := (self) genSixStructMember: (recoveredBlock17Block54Value0).
    recoveredBlock17Block54Value1
].
            recoveredBlock17PC := 64.
        ].
        recoveredBlock17Step = 64 ifTrue: [
            (recoveredBlock17Stack0) do: (recoveredBlock17Stack1).
            recoveredBlock17PC := 66.
        ].
        recoveredBlock17Step = 66 ifTrue: [
            recoveredBlock17Stack0 := self.
            recoveredBlock17PC := 67.
        ].
        recoveredBlock17Step = 67 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) sixGenerator.
            recoveredBlock17PC := 68.
        ].
        recoveredBlock17Step = 68 ifTrue: [
            (recoveredBlock17Stack0) endStructDefinition.
            recoveredBlock17PC := 70.
        ].
        recoveredBlock17Step = 70 ifTrue: [
            recoveredBlock17Stack0 := recoveredArg1.
            recoveredBlock17PC := 73.
        ].
        recoveredBlock17Step = 73 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack0.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) requiresBaseDefinition: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 105].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) sixGenerator.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := (recoveredStack2) genSixImportedElementCName.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) beginBaseDefinition: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1) putSixType: (recoveredStack2) width: (recoveredStack3).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) endBaseDefinition.
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

"ASDBase.ic method 0x204377a0; bytecode file offset 0xd34098"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixRecordStructDefinition: recoveredArg1 alreadyDefinedTable: recoveredArg2
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
            recoveredStack0 := (recoveredStack0) genSixStructName: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) sixGenerator.
            recoveredBlock17PC := 25.
        ].
        recoveredBlock17Step = 25 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal1.
            recoveredBlock17PC := 28.
        ].
        recoveredBlock17Step = 28 ifTrue: [
            (recoveredBlock17Stack0) beginStructDefinition: (recoveredBlock17Stack1).
            recoveredBlock17PC := 30.
        ].
        recoveredBlock17Step = 30 ifTrue: [
            recoveredBlock17Stack0 := recoveredArg1.
            recoveredBlock17PC := 33.
        ].
        recoveredBlock17Step = 33 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) fields.
            recoveredBlock17PC := 34.
        ].
        recoveredBlock17Step = 34 ifTrue: [
            recoveredBlock17Stack1 := [:block280fddbcArg1 :block280fddbcArg2 | 
    | block280fddbcValue0 block280fddbcValue1 block280fddbcValue2 block280fddbcValue3 block280fddbcValue4 block280fddbcValue5 block280fddbcValue6 |
    block280fddbcValue0 := block280fddbcArg1.
    block280fddbcValue1 := (block280fddbcValue0) mdlVarDecl.
    block280fddbcValue2 := (block280fddbcValue1) errLabel.
    block280fddbcValue3 := block280fddbcArg2.
    block280fddbcValue4 := (block280fddbcValue3) mdlVarDecl.
    block280fddbcValue5 := (block280fddbcValue4) errLabel.
    block280fddbcValue6 := (block280fddbcValue2) < (block280fddbcValue5).
    block280fddbcValue6
].
            recoveredBlock17PC := 36.
        ].
        recoveredBlock17Step = 36 ifTrue: [
            recoveredBlock17PC := 52.
        ].
        recoveredBlock17Step = 52 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) asSortedCollection: (recoveredBlock17Stack1).
            recoveredBlock17PC := 54.
        ].
        recoveredBlock17Step = 54 ifTrue: [
            recoveredBlock17Stack1 := [:recoveredBlock17Block54Arg1 | 
    | recoveredBlock17Block54Value0 recoveredBlock17Block54Value1 |
    recoveredBlock17Block54Value0 := recoveredBlock17Block54Arg1.
    recoveredBlock17Block54Value1 := (self) genSixStructMember: (recoveredBlock17Block54Value0).
    recoveredBlock17Block54Value1
].
            recoveredBlock17PC := 64.
        ].
        recoveredBlock17Step = 64 ifTrue: [
            (recoveredBlock17Stack0) do: (recoveredBlock17Stack1).
            recoveredBlock17PC := 66.
        ].
        recoveredBlock17Step = 66 ifTrue: [
            recoveredBlock17Stack0 := self.
            recoveredBlock17PC := 67.
        ].
        recoveredBlock17Step = 67 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) sixGenerator.
            recoveredBlock17PC := 68.
        ].
        recoveredBlock17Step = 68 ifTrue: [
            (recoveredBlock17Stack0) endStructDefinition.
            recoveredBlock17PC := 70.
        ].
        recoveredBlock17Step = 70 ifTrue: [
            recoveredBlock17Stack0 := recoveredArg1.
            recoveredBlock17PC := 73.
        ].
        recoveredBlock17Step = 73 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack0.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) requiresBaseDefinition: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 105].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) sixGenerator.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := (recoveredStack2) genSixImportedElementCName.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) beginBaseDefinition: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1) putSixType: (recoveredStack2) width: (recoveredStack3).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) endBaseDefinition.
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

"ASDBase.ic method 0x20437908; bytecode file offset 0xd34200"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
propagateSixFormulas: recoveredArg1 enumTypes: recoveredArg2 structs: recoveredArg3 mdlProjectInterface: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) enumTypeTable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Local1 recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6Stack5 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredArg1.
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6Stack3 := recoveredBlock6Arg1.
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) mdlFormulaName.
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack4 := recoveredBlock6Stack3.
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Local1 := recoveredBlock6Stack4.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) includesKey: (recoveredBlock6Stack3).
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 24] ifFalse: [recoveredBlock6PC := 33].
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 26.
        ].
        recoveredBlock6Step = 26 ifTrue: [
            recoveredBlock6Stack2 := 560.
            recoveredBlock6PC := 30.
        ].
        recoveredBlock6Step = 30 ifTrue: [
            recoveredBlock6Stack3 := recoveredBlock6Local1.
            recoveredBlock6PC := 31.
        ].
        recoveredBlock6Step = 31 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) mdlSemErrNo: (recoveredBlock6Stack2) with: (recoveredBlock6Stack3).
            recoveredBlock6PC := 33.
        ].
        recoveredBlock6Step = 33 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := [:block280fdde0Arg1 | 
    | block280fdde0Value0 block280fdde0Value1 block280fdde0Value2 |
    block280fdde0Value0 := block280fdde0Arg1.
    block280fdde0Value1 := (block280fdde0Value0) name.
    block280fdde0Value2 := (block280fdde0Value1) isEmpty.
    block280fdde0Value2
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock56Value0 recoveredBlock56Value1 recoveredBlock56Value2 recoveredBlock56Value3 recoveredBlock56Value4 |
    recoveredBlock56Value0 := recoveredArg1.
    recoveredBlock56Value1 := (recoveredBlock56Value0) size.
    recoveredBlock56Value2 := recoveredLocal1.
    recoveredBlock56Value3 := (recoveredBlock56Value2) size.
    recoveredBlock56Value4 := (recoveredBlock56Value1) == (recoveredBlock56Value3).
    recoveredBlock56Value4
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := [
    'SCOOP-IX generation: used formula should have a name'
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) sixFormulas: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) sixEnumTypes: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) sixStructTypes: (recoveredStack1).
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

"ASDBase.ic method 0x20439238; bytecode file offset 0xd35b3c"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixDataElementUsageAttributes: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlVarDecl.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlCalibration.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlParameter.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 'calibration'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 'measurement'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) isMdlConstant.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSystemConstant.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := 'virtual'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := (recoveredStack3) isMdlVirtual.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := 'variant'.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := (recoveredStack3) isMdlVariant.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := 'nonVolatile'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlVarDecl.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := (recoveredStack3) isMdlNonVolatile.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) isScoopIXCharTableDataElement.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 105].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) isValuesField.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 105].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := 'layoutFamily'.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := 'asd:standardLayout'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2045450c; bytecode file offset 0xd50e40"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixDataElementModelOrigin: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sixGenerator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) genSixDataElementModelOriginIdentifier: (recoveredStack3).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) beginModelOrigin: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) genSixDataElementModelOriginName: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) putSixModelName: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) genSixDataElementOriginaHref: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) putSixModelLink: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) beginModelLocation.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlVarDecl.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) pathInfoNodes.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := [:block280ff850Arg1 | 
    | block280ff850Value0 block280ff850Value1 |
    block280ff850Value0 := block280ff850Arg1.
    block280ff850Value1 := (block280ff850Value0) mdlClassInterface.
    block280ff850Value1
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := (recoveredStack3) collect: (recoveredStack4).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := [:block280ff874Arg1 | 
    | block280ff874Value0 block280ff874Value1 |
    block280ff874Value0 := block280ff874Arg1.
    block280ff874Value1 := (block280ff874Value0) isMdlProject.
    block280ff874Value1
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := (recoveredStack3) reject: (recoveredStack4).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) genSixPath: (recoveredStack2) innerNodes: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlVarDecl.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) sixPathKind.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := (recoveredStack3) genSixDataElementLeafNodeNames: (recoveredStack4).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) putSixPathLeafNodeKind: (recoveredStack2) names: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) endModelLocation.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) genSixModelKind.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := (recoveredStack3) genSixVisibility.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) beginModelKind: (recoveredStack2) visibility: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlVarDecl.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) genSixFlowDirection: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) endModelKind.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlVarDecl.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlClass.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack4 := (recoveredStack4) genSixImplementation.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) genSixModelType: (recoveredStack2) type: (recoveredStack3) impl: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := (recoveredStack2) genSixAnnotations.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1) putSixAnnotations: (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) endModelOrigin.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2045e870; bytecode file offset 0xd5b16c"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixFormulaName: recoveredArg1 implementation: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlVarDecl.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSmVariable.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlVarDecl.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlName.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := '_ASCET_history'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) startsWith: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlVarDecl.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlFormulaName.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) addEnumType: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 115.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlVarDecl.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlEnumType.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlVarDecl.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlFormulaName.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) addEnumType: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredPC := 115.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlVarDecl.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlBaseClassType.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 105].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBFloat.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 105].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIdentityCompliant.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 105] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := RBFormulaId.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) createIdent.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlFormulaName.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) addFormulaConversion: (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20467020; bytecode file offset 0xd63930"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixDataElementCharTableValues: recoveredArg1 axisRefs: recoveredArg2 noAxisPtsRefs: recoveredArg3 initValue: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) createCharTableValuesDataElement: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := (recoveredStack3) valuesModelIdentifier.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) genSixModelOriginalIdentifier: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) modelOriginIdentifier: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) valuesModelIdentifier.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) notEmpty.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := ' '.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) valuesModelIdentifier.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) modelOriginName: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileNativeInitValue.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) cInitValue: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) genSixOffsetRefs: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) offsetRefs: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) genSixDistanceRefs: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) distanceRefs: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) sixGenerator.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsCStructDefinition.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := [:recoveredBlock70Arg1 | 
    | recoveredBlock70Value0 recoveredBlock70Value1 |
    recoveredBlock70Value0 := recoveredBlock70Arg1.
    recoveredBlock70Value1 := (self) genSixCName: (recoveredBlock70Value0).
    recoveredBlock70Value1
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) axisRefs: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := [:recoveredBlock86Arg1 | 
    | recoveredBlock86Value0 recoveredBlock86Value1 |
    recoveredBlock86Value0 := recoveredBlock86Arg1.
    recoveredBlock86Value1 := (self) genSixCName: (recoveredBlock86Value0).
    recoveredBlock86Value1
].
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) noAxisPtsRefs: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredPC := 114.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) axisRefs: (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) noAxisPtsRefs: (recoveredStack1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) genSixDataElement: (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20476a10; bytecode file offset 0xd73328"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixUsageDependency: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlVarDecl.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) initValue.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasDependencies.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) updatedFormula.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 67].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) dependencyList.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlVarDecl.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := 'Inconsistent dependency formula for parameter "'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := (recoveredStack4) mdlVarDecl.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack4 := (recoveredStack4) errLabel.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := '" - no formula, but dependencies available'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := 'perform a CLEAN and TOUCH RECURSIVE on the project level'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlCharTable.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) isValuesField.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := 'Rl'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := 'Call_79712'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) dependentFormulaPlaceHolder.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) sixGenerator.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) beginDependency: (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := (recoveredStack2) updatedDependencyList.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) genSixDependency: (recoveredStack1) parameterList: (recoveredStack2) charTableDistr: (recoveredStack3).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) sixGenerator.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) endDependency.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2049b22c; bytecode file offset 0xd97b1c"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
createScoopIxDataElement: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentRecordInstance.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Local1 recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 |
    recoveredBlock5Value0 := SGMdScoopIXRecordDataElement.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) create: (recoveredBlock5Value1).
    recoveredBlock5Value3 := recoveredBlock5Value2.
    recoveredBlock5Value4 := recoveredBlock5Arg1.
    (recoveredBlock5Value3) recordInstance: (recoveredBlock5Value4).
    recoveredBlock5Local1 := recoveredBlock5Value2.
    recoveredBlock5Value5 := recoveredBlock5Arg1.
    recoveredBlock5Value6 := recoveredBlock5Local1.
    (recoveredBlock5Value5) addField: (recoveredBlock5Value6).
    recoveredBlock5Value7 := recoveredBlock5Local1.
    ^recoveredBlock5Value7
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentComponentInstance.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Local1 recoveredBlock34Stack0 recoveredBlock34Stack1 recoveredBlock34Stack2 recoveredBlock34Stack3 recoveredBlock34Stack4 recoveredBlock34PC recoveredBlock34Step recoveredBlock34Done recoveredBlock34Result |
    recoveredBlock34Stack0 := self.
    recoveredBlock34PC := 40.
    recoveredBlock34Done := false.
    [recoveredBlock34Done not] whileTrue: [
        recoveredBlock34Step := recoveredBlock34PC.
        recoveredBlock34Step = 40 ifTrue: [
            recoveredBlock34Stack1 := nil.
            recoveredBlock34PC := 41.
        ].
        recoveredBlock34Step = 41 ifTrue: [
            recoveredBlock34Stack2 := recoveredArg1.
            recoveredBlock34PC := 44.
        ].
        recoveredBlock34Step = 44 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) isSixMemberOfComponentStructure.
            recoveredBlock34PC := 46.
        ].
        recoveredBlock34Step = 46 ifTrue: [
            (recoveredBlock34Stack2) ifTrue: [recoveredBlock34PC := 50] ifFalse: [recoveredBlock34PC := 91].
        ].
        recoveredBlock34Step = 50 ifTrue: [
            recoveredBlock34PC := 51.
        ].
        recoveredBlock34Step = 51 ifTrue: [
            recoveredBlock34Stack1 := recoveredArg1.
            recoveredBlock34PC := 54.
        ].
        recoveredBlock34Step = 54 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) mdlClass.
            recoveredBlock34PC := 56.
        ].
        recoveredBlock34Step = 56 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) isMdlRecordType.
            recoveredBlock34PC := 58.
        ].
        recoveredBlock34Step = 58 ifTrue: [
            (recoveredBlock34Stack1) ifTrue: [recoveredBlock34PC := 62] ifFalse: [recoveredBlock34PC := 72].
        ].
        recoveredBlock34Step = 62 ifTrue: [
            recoveredBlock34Stack1 := SGMdScoopIXRecordDataElement.
            recoveredBlock34PC := 64.
        ].
        recoveredBlock34Step = 64 ifTrue: [
            recoveredBlock34Stack2 := recoveredArg1.
            recoveredBlock34PC := 67.
        ].
        recoveredBlock34Step = 67 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) create: (recoveredBlock34Stack2).
            recoveredBlock34PC := 68.
        ].
        recoveredBlock34Step = 68 ifTrue: [
            recoveredBlock34Local1 := recoveredBlock34Stack1.
            recoveredBlock34PC := 69.
        ].
        recoveredBlock34Step = 69 ifTrue: [
            recoveredBlock34PC := 79.
        ].
        recoveredBlock34Step = 72 ifTrue: [
            recoveredBlock34Stack1 := SGMdScoopIXComponentDataElement.
            recoveredBlock34PC := 74.
        ].
        recoveredBlock34Step = 74 ifTrue: [
            recoveredBlock34Stack2 := recoveredArg1.
            recoveredBlock34PC := 77.
        ].
        recoveredBlock34Step = 77 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) create: (recoveredBlock34Stack2).
            recoveredBlock34PC := 78.
        ].
        recoveredBlock34Step = 78 ifTrue: [
            recoveredBlock34Local1 := recoveredBlock34Stack1.
            recoveredBlock34PC := 79.
        ].
        recoveredBlock34Step = 79 ifTrue: [
            recoveredBlock34Stack1 := recoveredBlock34Local1.
            recoveredBlock34PC := 80.
        ].
        recoveredBlock34Step = 80 ifTrue: [
            recoveredBlock34Stack2 := recoveredBlock34Stack1.
            recoveredBlock34PC := 81.
        ].
        recoveredBlock34Step = 81 ifTrue: [
            recoveredBlock34Stack3 := recoveredBlock34Arg1.
            recoveredBlock34PC := 82.
        ].
        recoveredBlock34Step = 82 ifTrue: [
            (recoveredBlock34Stack2) componentInstance: (recoveredBlock34Stack3).
            recoveredBlock34PC := 84.
        ].
        recoveredBlock34Step = 84 ifTrue: [
            recoveredBlock34PC := 85.
        ].
        recoveredBlock34Step = 85 ifTrue: [
            recoveredBlock34Stack1 := recoveredBlock34Arg1.
            recoveredBlock34PC := 86.
        ].
        recoveredBlock34Step = 86 ifTrue: [
            recoveredBlock34Stack2 := recoveredBlock34Local1.
            recoveredBlock34PC := 87.
        ].
        recoveredBlock34Step = 87 ifTrue: [
            (recoveredBlock34Stack1) addMember: (recoveredBlock34Stack2).
            recoveredBlock34PC := 89.
        ].
        recoveredBlock34Step = 89 ifTrue: [
            recoveredBlock34Stack1 := recoveredBlock34Local1.
            recoveredBlock34PC := 90.
        ].
        recoveredBlock34Step = 90 ifTrue: [
            ^recoveredBlock34Stack1
        ].
        recoveredBlock34Step = 91 ifTrue: [
            recoveredBlock34Result := recoveredBlock34Stack1.
            recoveredBlock34Done := true.
        ].
    ].
    recoveredBlock34Result
].
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlRecordType.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 111].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := SGMdScoopIXRecordDataElement.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlComplexClassNoEnumType.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 129].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := SGMdScoopIXComponentDataElement.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := SGMdScoopIXDataElement.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204c63b8; bytecode file offset 0xdc2cd8"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixDependency: recoveredArg1 parameterList: recoveredArg2 charTableDistr: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := [:recoveredBlock7Arg1 :recoveredBlock7Arg2 | 
    | recoveredBlock7Local1 recoveredBlock7Local2 recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := 'Rl'.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Stack2 := 'Call_80026'.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) == (recoveredBlock7Stack2).
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) isMdlImported.
            recoveredBlock7PC := 22.
        ].
        recoveredBlock7Step = 22 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 26] ifFalse: [recoveredBlock7PC := 32].
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) exportDecl.
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Local2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            recoveredBlock7PC := 34.
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 33.
        ].
        recoveredBlock7Step = 33 ifTrue: [
            recoveredBlock7Local2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 34.
        ].
        recoveredBlock7Step = 34 ifTrue: [
            recoveredBlock7Stack1 := SGMdScoopIXDataElement.
            recoveredBlock7PC := 36.
        ].
        recoveredBlock7Step = 36 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Local2.
            recoveredBlock7PC := 37.
        ].
        recoveredBlock7Step = 37 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) create: (recoveredBlock7Stack2).
            recoveredBlock7PC := 39.
        ].
        recoveredBlock7Step = 39 ifTrue: [
            recoveredBlock7Local1 := recoveredBlock7Stack1.
            recoveredBlock7PC := 40.
        ].
        recoveredBlock7Step = 40 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Local1.
            recoveredBlock7PC := 41.
        ].
        recoveredBlock7Step = 41 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg1.
            recoveredBlock7PC := 44.
        ].
        recoveredBlock7Step = 44 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) pathInfoNodes.
            recoveredBlock7PC := 46.
        ].
        recoveredBlock7Step = 46 ifTrue: [
            (recoveredBlock7Stack1) pathInfoNodes: (recoveredBlock7Stack2).
            recoveredBlock7PC := 48.
        ].
        recoveredBlock7Step = 48 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Local1.
            recoveredBlock7PC := 49.
        ].
        recoveredBlock7Step = 49 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg1.
            recoveredBlock7PC := 52.
        ].
        recoveredBlock7Step = 52 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) pseudoAddress.
            recoveredBlock7PC := 54.
        ].
        recoveredBlock7Step = 54 ifTrue: [
            (recoveredBlock7Stack1) pseudoAddress: (recoveredBlock7Stack2).
            recoveredBlock7PC := 56.
        ].
        recoveredBlock7Step = 56 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Local1.
            recoveredBlock7PC := 57.
        ].
        recoveredBlock7Step = 57 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg1.
            recoveredBlock7PC := 60.
        ].
        recoveredBlock7Step = 60 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) hierarchicalModelName.
            recoveredBlock7PC := 62.
        ].
        recoveredBlock7Step = 62 ifTrue: [
            (recoveredBlock7Stack1) hierarchicalModelName: (recoveredBlock7Stack2).
            recoveredBlock7PC := 64.
        ].
        recoveredBlock7Step = 64 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Local2.
            recoveredBlock7PC := 65.
        ].
        recoveredBlock7Step = 65 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) mdlClass.
            recoveredBlock7PC := 67.
        ].
        recoveredBlock7Step = 67 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) isMdlCharTable.
            recoveredBlock7PC := 69.
        ].
        recoveredBlock7Step = 69 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 72] ifFalse: [recoveredBlock7PC := 92].
        ].
        recoveredBlock7Step = 72 ifTrue: [
            recoveredBlock7Stack1 := SGMdScoopIXStructuredDataElement.
            recoveredBlock7PC := 74.
        ].
        recoveredBlock7Step = 74 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Local1.
            recoveredBlock7PC := 75.
        ].
        recoveredBlock7Step = 75 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) create: (recoveredBlock7Stack2).
            recoveredBlock7PC := 77.
        ].
        recoveredBlock7Step = 77 ifTrue: [
            recoveredBlock7Local1 := recoveredBlock7Stack1.
            recoveredBlock7PC := 78.
        ].
        recoveredBlock7Step = 78 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Local1.
            recoveredBlock7PC := 79.
        ].
        recoveredBlock7Step = 79 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Local2.
            recoveredBlock7PC := 80.
        ].
        recoveredBlock7Step = 80 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) mdlClass.
            recoveredBlock7PC := 82.
        ].
        recoveredBlock7Step = 82 ifTrue: [
            (recoveredBlock7Stack1) mdlClass: (recoveredBlock7Stack2).
            recoveredBlock7PC := 84.
        ].
        recoveredBlock7Step = 84 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Local1.
            recoveredBlock7PC := 85.
        ].
        recoveredBlock7Step = 85 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg1.
            recoveredBlock7PC := 88.
        ].
        recoveredBlock7Step = 88 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) cIdentifier.
            recoveredBlock7PC := 90.
        ].
        recoveredBlock7Step = 90 ifTrue: [
            (recoveredBlock7Stack1) cIdentifier: (recoveredBlock7Stack2).
            recoveredBlock7PC := 92.
        ].
        recoveredBlock7Step = 92 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg3.
            recoveredBlock7PC := 95.
        ].
        recoveredBlock7Step = 95 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 98] ifFalse: [recoveredBlock7PC := 126].
        ].
        recoveredBlock7Step = 98 ifTrue: [
            recoveredBlock7Stack1 := 'Rl'.
            recoveredBlock7PC := 100.
        ].
        recoveredBlock7Step = 100 ifTrue: [
            recoveredBlock7Stack2 := 'Call_79712'.
            recoveredBlock7PC := 102.
        ].
        recoveredBlock7Step = 102 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) == (recoveredBlock7Stack2).
            recoveredBlock7PC := 103.
        ].
        recoveredBlock7Step = 103 ifTrue: [
            recoveredBlock7PC := 104.
        ].
        recoveredBlock7Step = 104 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 105.
        ].
        recoveredBlock7Step = 105 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) sixGenerator.
            recoveredBlock7PC := 107.
        ].
        recoveredBlock7Step = 107 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg1.
            recoveredBlock7PC := 110.
        ].
        recoveredBlock7Step = 110 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) mdlVarDecl.
            recoveredBlock7PC := 112.
        ].
        recoveredBlock7Step = 112 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) initValue.
            recoveredBlock7PC := 114.
        ].
        recoveredBlock7Step = 114 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) dependentFormulaPlaceHolder.
            recoveredBlock7PC := 116.
        ].
        recoveredBlock7Step = 116 ifTrue: [
            recoveredBlock7Stack3 := self.
            recoveredBlock7PC := 117.
        ].
        recoveredBlock7Step = 117 ifTrue: [
            recoveredBlock7Stack4 := recoveredBlock7Local1.
            recoveredBlock7PC := 118.
        ].
        recoveredBlock7Step = 118 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) genSixCName: (recoveredBlock7Stack4).
            recoveredBlock7PC := 120.
        ].
        recoveredBlock7Step = 120 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) putSixFormalOperand: (recoveredBlock7Stack2) actualOperand: (recoveredBlock7Stack3).
            recoveredBlock7PC := 122.
        ].
        recoveredBlock7Step = 122 ifTrue: [
            recoveredBlock7PC := 148.
        ].
        recoveredBlock7Step = 126 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 127.
        ].
        recoveredBlock7Step = 127 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) sixGenerator.
            recoveredBlock7PC := 129.
        ].
        recoveredBlock7Step = 129 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg1.
            recoveredBlock7PC := 132.
        ].
        recoveredBlock7Step = 132 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) mdlVarDecl.
            recoveredBlock7PC := 134.
        ].
        recoveredBlock7Step = 134 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) initValue.
            recoveredBlock7PC := 136.
        ].
        recoveredBlock7Step = 136 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Arg2.
            recoveredBlock7PC := 137.
        ].
        recoveredBlock7Step = 137 ifTrue: [
            recoveredBlock7Stack4 := recoveredArg2.
            recoveredBlock7PC := 140.
        ].
        recoveredBlock7Step = 140 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) dependentFormulaPlaceHolder: (recoveredBlock7Stack3) in: (recoveredBlock7Stack4).
            recoveredBlock7PC := 142.
        ].
        recoveredBlock7Step = 142 ifTrue: [
            recoveredBlock7Stack3 := self.
            recoveredBlock7PC := 143.
        ].
        recoveredBlock7Step = 143 ifTrue: [
            recoveredBlock7Stack4 := recoveredBlock7Local1.
            recoveredBlock7PC := 144.
        ].
        recoveredBlock7Step = 144 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) genSixCName: (recoveredBlock7Stack4).
            recoveredBlock7PC := 146.
        ].
        recoveredBlock7Step = 146 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) putSixFormalOperand: (recoveredBlock7Stack2) actualOperand: (recoveredBlock7Stack3).
            recoveredBlock7PC := 148.
        ].
        recoveredBlock7Step = 148 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) doWithIndex: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2050a0a8; bytecode file offset 0xe069b8"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixGroupCharTableDataElement: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlVarDecl.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) initValue.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) xDistribVarName.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 recoveredBlock17Value4 recoveredBlock17Value5 recoveredBlock17Value6 recoveredBlock17Value7 recoveredBlock17Value8 recoveredBlock17Value9 recoveredBlock17Value10 recoveredBlock17Value11 recoveredBlock17Value12 recoveredBlock17Value13 recoveredBlock17Value14 recoveredBlock17Value15 recoveredBlock17Value16 |
    recoveredBlock17Value0 := SGMdScoopIXDataElement.
    recoveredBlock17Value1 := recoveredBlock17Arg1.
    recoveredBlock17Value2 := (recoveredBlock17Value1) varDecl.
    recoveredBlock17Value3 := (recoveredBlock17Value0) create: (recoveredBlock17Value2).
    recoveredLocal1 := recoveredBlock17Value3.
    recoveredBlock17Value4 := recoveredLocal1.
    recoveredBlock17Value5 := recoveredArg1.
    recoveredBlock17Value6 := (recoveredBlock17Value5) pathInfoNodes.
    (recoveredBlock17Value4) pathInfoNodes: (recoveredBlock17Value6).
    recoveredBlock17Value7 := recoveredLocal1.
    recoveredBlock17Value8 := recoveredArg1.
    recoveredBlock17Value9 := (recoveredBlock17Value8) pseudoAddress.
    (recoveredBlock17Value7) pseudoAddress: (recoveredBlock17Value9).
    recoveredBlock17Value10 := recoveredLocal1.
    recoveredBlock17Value11 := recoveredArg1.
    recoveredBlock17Value12 := (recoveredBlock17Value11) hierarchicalModelName.
    (recoveredBlock17Value10) hierarchicalModelName: (recoveredBlock17Value12).
    recoveredBlock17Value13 := recoveredLocal2.
    recoveredBlock17Value14 := recoveredLocal1.
    recoveredBlock17Value15 := (self) createDistributionValuesDataElement: (recoveredBlock17Value14).
    recoveredBlock17Value16 := (recoveredBlock17Value13) add: (recoveredBlock17Value15).
    recoveredBlock17Value16
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlVarDecl.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) initValue.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) yDistribVarName.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := [:recoveredBlock85Arg1 | 
    | recoveredBlock85Value0 recoveredBlock85Value1 recoveredBlock85Value2 recoveredBlock85Value3 recoveredBlock85Value4 recoveredBlock85Value5 recoveredBlock85Value6 recoveredBlock85Value7 recoveredBlock85Value8 recoveredBlock85Value9 recoveredBlock85Value10 recoveredBlock85Value11 recoveredBlock85Value12 recoveredBlock85Value13 recoveredBlock85Value14 recoveredBlock85Value15 recoveredBlock85Value16 |
    recoveredBlock85Value0 := SGMdScoopIXDataElement.
    recoveredBlock85Value1 := recoveredBlock85Arg1.
    recoveredBlock85Value2 := (recoveredBlock85Value1) varDecl.
    recoveredBlock85Value3 := (recoveredBlock85Value0) create: (recoveredBlock85Value2).
    recoveredLocal1 := recoveredBlock85Value3.
    recoveredBlock85Value4 := recoveredLocal1.
    recoveredBlock85Value5 := recoveredArg1.
    recoveredBlock85Value6 := (recoveredBlock85Value5) pathInfoNodes.
    (recoveredBlock85Value4) pathInfoNodes: (recoveredBlock85Value6).
    recoveredBlock85Value7 := recoveredLocal1.
    recoveredBlock85Value8 := recoveredArg1.
    recoveredBlock85Value9 := (recoveredBlock85Value8) pseudoAddress.
    (recoveredBlock85Value7) pseudoAddress: (recoveredBlock85Value9).
    recoveredBlock85Value10 := recoveredLocal1.
    recoveredBlock85Value11 := recoveredArg1.
    recoveredBlock85Value12 := (recoveredBlock85Value11) hierarchicalModelName.
    (recoveredBlock85Value10) hierarchicalModelName: (recoveredBlock85Value12).
    recoveredBlock85Value13 := recoveredLocal2.
    recoveredBlock85Value14 := recoveredLocal1.
    recoveredBlock85Value15 := (self) createDistributionValuesDataElement: (recoveredBlock85Value14).
    recoveredBlock85Value16 := (recoveredBlock85Value13) add: (recoveredBlock85Value15).
    recoveredBlock85Value16
].
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := #().
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack4 := (recoveredStack4) mdlVarDecl.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack4 := (recoveredStack4) genIleInitValue.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack0) genSixDataElementCharTableValues: (recoveredStack1) axisRefs: (recoveredStack2) noAxisPtsRefs: (recoveredStack3) initValue: (recoveredStack4).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := (recoveredStack0) requiresCStructDefinition: (recoveredStack1).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 180].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) structCollection.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2051b478; bytecode file offset 0xe17d94"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixDefinitions: recoveredArg1 enumTypes: recoveredArg2 structs: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sixGenerator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) beginDefinitions.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:block2810bd78Arg1 :block2810bd78Arg2 | 
    | block2810bd78Value0 block2810bd78Value1 block2810bd78Value2 block2810bd78Value3 block2810bd78Value4 |
    block2810bd78Value0 := block2810bd78Arg1.
    block2810bd78Value1 := (block2810bd78Value0) name.
    block2810bd78Value2 := block2810bd78Arg2.
    block2810bd78Value3 := (block2810bd78Value2) name.
    block2810bd78Value4 := (block2810bd78Value1) < (block2810bd78Value3).
    block2810bd78Value4
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 |
    recoveredBlock24Value0 := recoveredBlock24Arg1.
    recoveredBlock24Value1 := (self) sixGenerator.
    recoveredBlock24Value2 := (recoveredBlock24Value1) expander.
    recoveredBlock24Value3 := (recoveredBlock24Value0) generateScoopIX: (recoveredBlock24Value2).
    recoveredBlock24Value3
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := [:block2810bd9cArg1 :block2810bd9cArg2 | 
    | block2810bd9cValue0 block2810bd9cValue1 block2810bd9cValue2 block2810bd9cValue3 block2810bd9cValue4 |
    block2810bd9cValue0 := block2810bd9cArg1.
    block2810bd9cValue1 := (block2810bd9cValue0) mdlFormulaName.
    block2810bd9cValue2 := block2810bd9cArg2.
    block2810bd9cValue3 := (block2810bd9cValue2) mdlFormulaName.
    block2810bd9cValue4 := (block2810bd9cValue1) < (block2810bd9cValue3).
    block2810bd9cValue4
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := [:recoveredBlock58Arg1 | 
    | recoveredBlock58Value0 recoveredBlock58Value1 recoveredBlock58Value2 recoveredBlock58Value3 recoveredBlock58Value4 recoveredBlock58Value5 |
    recoveredBlock58Value0 := (self) sixGenerator.
    recoveredBlock58Value1 := recoveredBlock58Arg1.
    recoveredBlock58Value2 := (recoveredBlock58Value1) mdlFormulaName.
    recoveredBlock58Value3 := recoveredBlock58Arg1.
    recoveredBlock58Value4 := (recoveredBlock58Value3) enumerationMap.
    recoveredBlock58Value5 := (recoveredBlock58Value0) putSixEnumDefinition: (recoveredBlock58Value2) enumerationMap: (recoveredBlock58Value4).
    recoveredBlock58Value5
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := [:recoveredBlock86Arg1 :recoveredBlock86Arg2 | 
    | recoveredBlock86Value0 recoveredBlock86Value1 recoveredBlock86Value2 recoveredBlock86Value3 recoveredBlock86Value4 |
    recoveredBlock86Value0 := recoveredBlock86Arg1.
    recoveredBlock86Value1 := (self) genSixStructName: (recoveredBlock86Value0).
    recoveredBlock86Value2 := recoveredBlock86Arg2.
    recoveredBlock86Value3 := (self) genSixStructName: (recoveredBlock86Value2).
    recoveredBlock86Value4 := (recoveredBlock86Value1) < (recoveredBlock86Value3).
    recoveredBlock86Value4
].
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := [:recoveredBlock103Arg1 | 
    | recoveredBlock103Stack0 recoveredBlock103Stack1 recoveredBlock103Stack2 recoveredBlock103Stack3 recoveredBlock103Stack4 recoveredBlock103PC recoveredBlock103Step recoveredBlock103Done recoveredBlock103Result |
    recoveredBlock103Stack0 := self.
    recoveredBlock103PC := 110.
    recoveredBlock103Done := false.
    [recoveredBlock103Done not] whileTrue: [
        recoveredBlock103Step := recoveredBlock103PC.
        recoveredBlock103Step = 110 ifTrue: [
            recoveredBlock103Stack1 := recoveredBlock103Arg1.
            recoveredBlock103PC := 111.
        ].
        recoveredBlock103Step = 111 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) mdlVarDecl.
            recoveredBlock103PC := 113.
        ].
        recoveredBlock103Step = 113 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) mdlClass.
            recoveredBlock103PC := 115.
        ].
        recoveredBlock103Step = 115 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) isMdlCharTable.
            recoveredBlock103PC := 117.
        ].
        recoveredBlock103Step = 117 ifTrue: [
            (recoveredBlock103Stack1) ifTrue: [recoveredBlock103PC := 120] ifFalse: [recoveredBlock103PC := 127].
        ].
        recoveredBlock103Step = 120 ifTrue: [
            recoveredBlock103Stack1 := self.
            recoveredBlock103PC := 121.
        ].
        recoveredBlock103Step = 121 ifTrue: [
            recoveredBlock103Stack2 := recoveredBlock103Arg1.
            recoveredBlock103PC := 122.
        ].
        recoveredBlock103Step = 122 ifTrue: [
            recoveredBlock103Stack3 := recoveredLocal1.
            recoveredBlock103PC := 125.
        ].
        recoveredBlock103Step = 125 ifTrue: [
            (recoveredBlock103Stack1) genSixChartableStructDefinition: (recoveredBlock103Stack2) alreadyDefinedTable: (recoveredBlock103Stack3).
            recoveredBlock103PC := 127.
        ].
        recoveredBlock103Step = 127 ifTrue: [
            recoveredBlock103Stack1 := recoveredBlock103Arg1.
            recoveredBlock103PC := 128.
        ].
        recoveredBlock103Step = 128 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) mdlVarDecl.
            recoveredBlock103PC := 130.
        ].
        recoveredBlock103Step = 130 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) mdlClass.
            recoveredBlock103PC := 132.
        ].
        recoveredBlock103Step = 132 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) isMdlDistribution.
            recoveredBlock103PC := 134.
        ].
        recoveredBlock103Step = 134 ifTrue: [
            (recoveredBlock103Stack1) ifTrue: [recoveredBlock103PC := 138] ifFalse: [recoveredBlock103PC := 142].
        ].
        recoveredBlock103Step = 138 ifTrue: [
            recoveredBlock103Stack1 := self.
            recoveredBlock103PC := 139.
        ].
        recoveredBlock103Step = 139 ifTrue: [
            recoveredBlock103Stack2 := recoveredBlock103Arg1.
            recoveredBlock103PC := 140.
        ].
        recoveredBlock103Step = 140 ifTrue: [
            (recoveredBlock103Stack1) genSixDistributionStructDefinition: (recoveredBlock103Stack2).
            recoveredBlock103PC := 142.
        ].
        recoveredBlock103Step = 142 ifTrue: [
            recoveredBlock103Stack1 := recoveredBlock103Arg1.
            recoveredBlock103PC := 143.
        ].
        recoveredBlock103Step = 143 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) mdlVarDecl.
            recoveredBlock103PC := 145.
        ].
        recoveredBlock103Step = 145 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) mdlClass.
            recoveredBlock103PC := 147.
        ].
        recoveredBlock103Step = 147 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) isMdlRecordType.
            recoveredBlock103PC := 149.
        ].
        recoveredBlock103Step = 149 ifTrue: [
            (recoveredBlock103Stack1) ifTrue: [recoveredBlock103PC := 152] ifFalse: [recoveredBlock103PC := 162].
        ].
        recoveredBlock103Step = 152 ifTrue: [
            recoveredBlock103Stack1 := self.
            recoveredBlock103PC := 153.
        ].
        recoveredBlock103Step = 153 ifTrue: [
            recoveredBlock103Stack2 := recoveredBlock103Arg1.
            recoveredBlock103PC := 154.
        ].
        recoveredBlock103Step = 154 ifTrue: [
            recoveredBlock103Stack3 := recoveredLocal1.
            recoveredBlock103PC := 157.
        ].
        recoveredBlock103Step = 157 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) genSixRecordStructDefinition: (recoveredBlock103Stack2) alreadyDefinedTable: (recoveredBlock103Stack3).
            recoveredBlock103PC := 159.
        ].
        recoveredBlock103Step = 159 ifTrue: [
            recoveredBlock103PC := 182.
        ].
        recoveredBlock103Step = 162 ifTrue: [
            recoveredBlock103Stack1 := nil.
            recoveredBlock103PC := 163.
        ].
        recoveredBlock103Step = 163 ifTrue: [
            recoveredBlock103Stack2 := recoveredBlock103Arg1.
            recoveredBlock103PC := 164.
        ].
        recoveredBlock103Step = 164 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) mdlVarDecl.
            recoveredBlock103PC := 166.
        ].
        recoveredBlock103Step = 166 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) mdlClass.
            recoveredBlock103PC := 168.
        ].
        recoveredBlock103Step = 168 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) isMdlComplexClassType.
            recoveredBlock103PC := 170.
        ].
        recoveredBlock103Step = 170 ifTrue: [
            (recoveredBlock103Stack2) ifTrue: [recoveredBlock103PC := 174] ifFalse: [recoveredBlock103PC := 182].
        ].
        recoveredBlock103Step = 174 ifTrue: [
            recoveredBlock103PC := 175.
        ].
        recoveredBlock103Step = 175 ifTrue: [
            recoveredBlock103Stack1 := self.
            recoveredBlock103PC := 176.
        ].
        recoveredBlock103Step = 176 ifTrue: [
            recoveredBlock103Stack2 := recoveredBlock103Arg1.
            recoveredBlock103PC := 177.
        ].
        recoveredBlock103Step = 177 ifTrue: [
            recoveredBlock103Stack3 := recoveredLocal1.
            recoveredBlock103PC := 180.
        ].
        recoveredBlock103Step = 180 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) genSixComponentStructDefinition: (recoveredBlock103Stack2) alreadyDefinedTable: (recoveredBlock103Stack3).
            recoveredBlock103PC := 182.
        ].
        recoveredBlock103Step = 182 ifTrue: [
            recoveredBlock103Result := recoveredBlock103Stack1.
            recoveredBlock103Done := true.
        ].
    ].
    recoveredBlock103Result
].
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := (recoveredStack0) sixGenerator.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack0) endDefinitions.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205770bc; bytecode file offset 0xe73a1c"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixCharTableAxesDataElement: recoveredArg1 noAxisPtsRefs: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) implType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlVarDecl.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) genIleInitValue.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := SGMdScoopIXStructuredDataElement.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := 'xAxis'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack2) identifier: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := 'xaxis'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) genSixModelOriginalIdentifier: (recoveredStack4).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack2) modelOriginIdentifier: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := ' xaxis'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack2) modelOriginName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := (recoveredStack3) xDistribution.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack2) mdlClass: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack4 := (recoveredStack4) maxXSize.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack2) modelWidth: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := (recoveredStack3) xDistribution.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileNativeInitValue.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack2) cInitValue: (recoveredStack3).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) xDistribution.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) implType: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) sixGenerator.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsCStructDefinition.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeGeneratorStrategy.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) cgCharTableXDistFieldNEWName.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) cIdentifier: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredPC := 106.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeGeneratorStrategy.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) cgCharTableXDistFieldName.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) cIdentifier: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) genSixDataElement: (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlTwoDCharTable.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 222].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := SGMdScoopIXStructuredDataElement.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := 'yAxis'.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack1) identifier: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack3 := 'yaxis'.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := (recoveredStack2) genSixModelOriginalIdentifier: (recoveredStack3).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack1) modelOriginIdentifier: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := ' yaxis'.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack1) modelOriginName: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := (recoveredStack2) yDistribution.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack1) mdlClass: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := (recoveredStack3) maxYSize.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack1) modelWidth: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := (recoveredStack2) yDistribution.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileNativeInitValue.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack1) cInitValue: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := (recoveredStack2) codeGeneratorStrategy.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := (recoveredStack2) cgCharTableYDistFieldName.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack1) cIdentifier: (recoveredStack2).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := (recoveredStack1) yDistribution.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack0) implType: (recoveredStack1).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := (recoveredStack0) sixGenerator.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsCStructDefinition.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 194] ifFalse: [recoveredPC := 206].
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeGeneratorStrategy.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := (recoveredStack1) cgCharTableYDistFieldNEWName.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack0) cIdentifier: (recoveredStack1).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredPC := 214.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeGeneratorStrategy.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := (recoveredStack1) cgCharTableYDistFieldName.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack0) cIdentifier: (recoveredStack1).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack0) genSixDataElement: (recoveredStack1).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack0) genSixDataElementCharTableValues: (recoveredStack1) axisRefs: (recoveredStack2) noAxisPtsRefs: (recoveredStack3) initValue: (recoveredStack4).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack0 := (recoveredStack0) requiresCStructDefinition: (recoveredStack1).
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 242] ifFalse: [recoveredPC := 249].
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack0 := (recoveredStack0) structCollection.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20592a58; bytecode file offset 0xe8f374"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixStructName: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlVarDecl.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) scope.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) genSixComponentName: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) asUppercase.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlVarDecl.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlDistribution.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := '_'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlVarDecl.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlLabel.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := '_TYPE'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlVarDecl.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlRecordType.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlVarDecl.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) genSixComponentName: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) asUppercase.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := '_TYPE'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlVarDecl.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlCharTable.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 277].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) implType.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBOneDCharTable.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 157].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) implType.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) asCType.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) implType.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) isStaticCharTable.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := 'Fixed'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredPC := 98.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := '_'.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) implType.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) xDistribution.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) asCType.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := '_'.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) implType.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) xDistribution.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxSize.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := '_'.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := (recoveredStack1) implType.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) asCType.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := '_'.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := '_TYPE'.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := (recoveredStack0) implType.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBTwoDCharTable.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 166] ifFalse: [recoveredPC := 277].
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := (recoveredStack0) implType.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := (recoveredStack0) asCType.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := (recoveredStack1) implType.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := (recoveredStack1) isStaticCharTable.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 180] ifFalse: [recoveredPC := 186].
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := 'Fixed'.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredPC := 188.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := '_'.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := (recoveredStack1) implType.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := (recoveredStack1) xDistribution.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := (recoveredStack1) asCType.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := '_'.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := (recoveredStack1) implType.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := (recoveredStack1) xDistribution.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxSize.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := '_'.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := (recoveredStack1) implType.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := (recoveredStack1) yDistribution.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := (recoveredStack1) asCType.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := '_'.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := (recoveredStack1) implType.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := (recoveredStack1) yDistribution.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxSize.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := '_'.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := (recoveredStack1) implType.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := (recoveredStack1) asCType.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := '_'.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := '_TYPE'.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack0 := 'unknown struct name'.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205933b4; bytecode file offset 0xe8fd20"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixDistributionDataElement: recoveredArg1 mdlInterface: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sixGenerator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsCStructDefinition.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) genSixDataElement: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlVarDecl.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) genIleInitValue.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDistributionSizeDataElement: (recoveredStack1).
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
            recoveredStack2 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := 'size'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) genSixModelOriginalIdentifier: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) modelOriginIdentifier: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := ' size'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) modelOriginName: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentSize.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) cInitValue: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) genSixDataElement: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDistributionValuesDataElement: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := (recoveredStack3) valuesModelIdentifier.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := (recoveredStack2) genSixModelOriginalIdentifier: (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) modelOriginIdentifier: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) valuesModelIdentifier.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) notEmpty.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := ' '.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := (recoveredStack3) valuesModelIdentifier.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredPC := 106.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) modelOriginName: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileNativeInitValue.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) cInitValue: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) sixGenerator.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsCStructDefinition.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := (recoveredStack2) genSixCName: (recoveredStack3).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) noAxisPtsRefs: (recoveredStack1).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredPC := 147.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack0) noAxisPtsRefs: (recoveredStack1).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0) genSixDataElement: (recoveredStack1).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataStructureGenerator.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlVarDecl.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := [:recoveredBlock162Arg1 :recoveredBlock162Arg2 :recoveredBlock162Arg3 :recoveredBlock162Arg4 :recoveredBlock162Arg5 | 
    | recoveredBlock162Value0 recoveredBlock162Value1 recoveredBlock162Value2 recoveredBlock162Value3 recoveredBlock162Value4 recoveredBlock162Value5 |
    recoveredBlock162Value0 := recoveredArg2.
    recoveredBlock162Value1 := (recoveredBlock162Value0) ileElementList.
    recoveredBlock162Value2 := recoveredBlock162Arg1.
    recoveredBlock162Value3 := (recoveredBlock162Value1) lookupElementDecl: (recoveredBlock162Value2).
    recoveredBlock162Value4 := [:recoveredBlock162Block178Arg1 | 
    | recoveredBlock162Block178Local1 recoveredBlock162Block178Value0 recoveredBlock162Block178Value1 recoveredBlock162Block178Value2 recoveredBlock162Block178Value3 recoveredBlock162Block178Value4 recoveredBlock162Block178Value5 recoveredBlock162Block178Value6 recoveredBlock162Block178Value7 recoveredBlock162Block178Value8 recoveredBlock162Block178Value9 recoveredBlock162Block178Value10 recoveredBlock162Block178Value11 recoveredBlock162Block178Value12 recoveredBlock162Block178Value13 recoveredBlock162Block178Value14 recoveredBlock162Block178Value15 recoveredBlock162Block178Value16 recoveredBlock162Block178Value17 recoveredBlock162Block178Value18 recoveredBlock162Block178Value19 recoveredBlock162Block178Value20 recoveredBlock162Block178Value21 recoveredBlock162Block178Value22 recoveredBlock162Block178Value23 recoveredBlock162Block178Value24 recoveredBlock162Block178Value25 recoveredBlock162Block178Value26 recoveredBlock162Block178Value27 |
    recoveredBlock162Block178Value0 := recoveredBlock162Arg2.
    recoveredBlock162Block178Value1 := (recoveredBlock162Block178Value0) subStrings: ('_').
    recoveredBlock162Block178Value2 := (recoveredBlock162Block178Value1) last.
    recoveredBlock162Block178Local1 := recoveredBlock162Block178Value2.
    recoveredBlock162Block178Value3 := SGMdScoopIXAdditionalDataElement.
    recoveredBlock162Block178Value4 := recoveredArg1.
    recoveredBlock162Block178Value5 := (recoveredBlock162Block178Value3) create: (recoveredBlock162Block178Value4).
    recoveredLocal2 := recoveredBlock162Block178Value5.
    recoveredBlock162Block178Value6 := recoveredLocal2.
    recoveredBlock162Block178Value7 := recoveredBlock162Block178Value6.
    recoveredBlock162Block178Value8 := recoveredBlock162Block178Local1.
    (recoveredBlock162Block178Value7) modelOriginIdentifier: (recoveredBlock162Block178Value8).
    recoveredBlock162Block178Value9 := recoveredBlock162Block178Value6.
    recoveredBlock162Block178Value10 := recoveredBlock162Block178Local1.
    recoveredBlock162Block178Value11 := (' ') , (recoveredBlock162Block178Value10).
    (recoveredBlock162Block178Value9) modelOriginName: (recoveredBlock162Block178Value11).
    recoveredBlock162Block178Value12 := recoveredBlock162Block178Value6.
    recoveredBlock162Block178Value13 := recoveredBlock162Block178Arg1.
    recoveredBlock162Block178Value14 := (recoveredBlock162Block178Value13) type.
    (recoveredBlock162Block178Value12) mdlClass: (recoveredBlock162Block178Value14).
    recoveredBlock162Block178Value15 := recoveredBlock162Block178Value6.
    recoveredBlock162Block178Value16 := recoveredBlock162Arg4.
    recoveredBlock162Block178Value17 := (recoveredBlock162Block178Value16) ileNativeInitValue.
    (recoveredBlock162Block178Value15) cInitValue: (recoveredBlock162Block178Value17).
    recoveredBlock162Block178Value18 := recoveredBlock162Block178Value6.
    recoveredBlock162Block178Value19 := recoveredBlock162Block178Arg1.
    recoveredBlock162Block178Value20 := (recoveredBlock162Block178Value19) genName.
    (recoveredBlock162Block178Value18) cIdentifier: (recoveredBlock162Block178Value20).
    recoveredBlock162Block178Value21 := recoveredBlock162Block178Value6.
    recoveredBlock162Block178Value22 := recoveredBlock162Block178Arg1.
    recoveredBlock162Block178Value23 := (recoveredBlock162Block178Value22) attributes.
    (recoveredBlock162Block178Value21) attributes: (recoveredBlock162Block178Value23).
    recoveredBlock162Block178Value24 := recoveredBlock162Block178Arg1.
    recoveredBlock162Block178Value25 := (recoveredBlock162Block178Value24) type.
    (recoveredBlock162Block178Value6) implType: (recoveredBlock162Block178Value25).
    recoveredBlock162Block178Value26 := recoveredLocal2.
    recoveredBlock162Block178Value27 := (self) genSixDataElement: (recoveredBlock162Block178Value26).
    recoveredBlock162Block178Value27
].
    recoveredBlock162Value5 := (recoveredBlock162Value3) ifNotNil: (recoveredBlock162Value4).
    recoveredBlock162Value5
].
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            (recoveredStack0) generateDistributionSearchResult: (recoveredStack1) generator: (recoveredStack2).
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack0 := (recoveredStack0) requiresCStructDefinition: (recoveredStack1).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 270] ifFalse: [recoveredPC := 278].
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack0 := (recoveredStack0) structCollection.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205ff904; bytecode file offset 0xefc23c"
!SGMdAbstractScoopIXAdapter methodsFor: 'recovered'!
genSixChartableStructDefinition: recoveredArg1 alreadyDefinedTable: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) implType.
    recoveredLocal4 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) genSixStructName: (recoveredValue2).
    recoveredLocal3 := recoveredValue3.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredLocal3.
    recoveredValue6 := [
    | recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24Stack4 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
    recoveredBlock24Stack0 := self.
    recoveredBlock24PC := 30.
    recoveredBlock24Done := false.
    [recoveredBlock24Done not] whileTrue: [
        recoveredBlock24Step := recoveredBlock24PC.
        recoveredBlock24Step = 30 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) sixGenerator.
            recoveredBlock24PC := 31.
        ].
        recoveredBlock24Step = 31 ifTrue: [
            recoveredBlock24Stack1 := recoveredLocal3.
            recoveredBlock24PC := 34.
        ].
        recoveredBlock24Step = 34 ifTrue: [
            (recoveredBlock24Stack0) beginStructDefinition: (recoveredBlock24Stack1).
            recoveredBlock24PC := 36.
        ].
        recoveredBlock24Step = 36 ifTrue: [
            recoveredBlock24Stack0 := recoveredArg1.
            recoveredBlock24PC := 39.
        ].
        recoveredBlock24Step = 39 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) mdlVarDecl.
            recoveredBlock24PC := 41.
        ].
        recoveredBlock24Step = 41 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) mdlClass.
            recoveredBlock24PC := 43.
        ].
        recoveredBlock24Step = 43 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) isMdlGroupCharTable.
            recoveredBlock24PC := 45.
        ].
        recoveredBlock24Step = 45 ifTrue: [
            (recoveredBlock24Stack0) ifTrue: [recoveredBlock24PC := 48] ifFalse: [recoveredBlock24PC := 90].
        ].
        recoveredBlock24Step = 48 ifTrue: [
            recoveredBlock24Stack0 := recoveredArg1.
            recoveredBlock24PC := 51.
        ].
        recoveredBlock24Step = 51 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) implType.
            recoveredBlock24PC := 52.
        ].
        recoveredBlock24Step = 52 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) xDistribution.
            recoveredBlock24PC := 54.
        ].
        recoveredBlock24Step = 54 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) maxSize.
            recoveredBlock24PC := 56.
        ].
        recoveredBlock24Step = 56 ifTrue: [
            recoveredLocal2 := recoveredBlock24Stack0.
            recoveredBlock24PC := 59.
        ].
        recoveredBlock24Step = 59 ifTrue: [
            recoveredBlock24Stack0 := recoveredArg1.
            recoveredBlock24PC := 62.
        ].
        recoveredBlock24Step = 62 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) mdlVarDecl.
            recoveredBlock24PC := 64.
        ].
        recoveredBlock24Step = 64 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) mdlClass.
            recoveredBlock24PC := 66.
        ].
        recoveredBlock24Step = 66 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) isMdlTwoDCharTable.
            recoveredBlock24PC := 68.
        ].
        recoveredBlock24Step = 68 ifTrue: [
            (recoveredBlock24Stack0) ifTrue: [recoveredBlock24PC := 72] ifFalse: [recoveredBlock24PC := 87].
        ].
        recoveredBlock24Step = 72 ifTrue: [
            recoveredBlock24Stack0 := recoveredLocal2.
            recoveredBlock24PC := 75.
        ].
        recoveredBlock24Step = 75 ifTrue: [
            recoveredBlock24Stack1 := recoveredArg1.
            recoveredBlock24PC := 78.
        ].
        recoveredBlock24Step = 78 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) implType.
            recoveredBlock24PC := 79.
        ].
        recoveredBlock24Step = 79 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) yDistribution.
            recoveredBlock24PC := 81.
        ].
        recoveredBlock24Step = 81 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) maxSize.
            recoveredBlock24PC := 83.
        ].
        recoveredBlock24Step = 83 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) * (recoveredBlock24Stack1).
            recoveredBlock24PC := 84.
        ].
        recoveredBlock24Step = 84 ifTrue: [
            recoveredLocal2 := recoveredBlock24Stack0.
            recoveredBlock24PC := 87.
        ].
        recoveredBlock24Step = 87 ifTrue: [
            recoveredBlock24PC := 392.
        ].
        recoveredBlock24Step = 90 ifTrue: [
            recoveredBlock24Stack0 := self.
            recoveredBlock24PC := 91.
        ].
        recoveredBlock24Step = 91 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) sixGenerator.
            recoveredBlock24PC := 92.
        ].
        recoveredBlock24Step = 92 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Stack0.
            recoveredBlock24PC := 93.
        ].
        recoveredBlock24Step = 93 ifTrue: [
            recoveredBlock24Stack2 := self.
            recoveredBlock24PC := 94.
        ].
        recoveredBlock24Step = 94 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) generator.
            recoveredBlock24PC := 96.
        ].
        recoveredBlock24Step = 96 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) cgCharTableXSizeFieldName.
            recoveredBlock24PC := 98.
        ].
        recoveredBlock24Step = 98 ifTrue: [
            (recoveredBlock24Stack1) beginStructMember: (recoveredBlock24Stack2).
            recoveredBlock24Stack1 := recoveredBlock24Stack0.
            recoveredBlock24PC := 101.
        ].
        recoveredBlock24Step = 101 ifTrue: [
            recoveredBlock24Stack2 := self.
            recoveredBlock24PC := 102.
        ].
        recoveredBlock24Step = 102 ifTrue: [
            recoveredBlock24Stack3 := recoveredArg1.
            recoveredBlock24PC := 105.
        ].
        recoveredBlock24Step = 105 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) sixSizeType: (recoveredBlock24Stack3).
            recoveredBlock24PC := 107.
        ].
        recoveredBlock24Step = 107 ifTrue: [
            (recoveredBlock24Stack1) putSixType: (recoveredBlock24Stack2).
            recoveredBlock24PC := 109.
        ].
        recoveredBlock24Step = 109 ifTrue: [
            (recoveredBlock24Stack0) endStructMember.
            recoveredBlock24PC := 111.
        ].
        recoveredBlock24Step = 111 ifTrue: [
            recoveredBlock24Stack0 := recoveredArg1.
            recoveredBlock24PC := 114.
        ].
        recoveredBlock24Step = 114 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) mdlVarDecl.
            recoveredBlock24PC := 116.
        ].
        recoveredBlock24Step = 116 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) mdlClass.
            recoveredBlock24PC := 118.
        ].
        recoveredBlock24Step = 118 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) isMdlTwoDCharTable.
            recoveredBlock24PC := 120.
        ].
        recoveredBlock24Step = 120 ifTrue: [
            (recoveredBlock24Stack0) ifTrue: [recoveredBlock24PC := 124] ifFalse: [recoveredBlock24PC := 145].
        ].
        recoveredBlock24Step = 124 ifTrue: [
            recoveredBlock24Stack0 := self.
            recoveredBlock24PC := 125.
        ].
        recoveredBlock24Step = 125 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) sixGenerator.
            recoveredBlock24PC := 126.
        ].
        recoveredBlock24Step = 126 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Stack0.
            recoveredBlock24PC := 127.
        ].
        recoveredBlock24Step = 127 ifTrue: [
            recoveredBlock24Stack2 := self.
            recoveredBlock24PC := 128.
        ].
        recoveredBlock24Step = 128 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) generator.
            recoveredBlock24PC := 130.
        ].
        recoveredBlock24Step = 130 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) cgCharTableYSizeFieldName.
            recoveredBlock24PC := 132.
        ].
        recoveredBlock24Step = 132 ifTrue: [
            (recoveredBlock24Stack1) beginStructMember: (recoveredBlock24Stack2).
            recoveredBlock24Stack1 := recoveredBlock24Stack0.
            recoveredBlock24PC := 135.
        ].
        recoveredBlock24Step = 135 ifTrue: [
            recoveredBlock24Stack2 := self.
            recoveredBlock24PC := 136.
        ].
        recoveredBlock24Step = 136 ifTrue: [
            recoveredBlock24Stack3 := recoveredArg1.
            recoveredBlock24PC := 139.
        ].
        recoveredBlock24Step = 139 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) sixSizeType: (recoveredBlock24Stack3).
            recoveredBlock24PC := 141.
        ].
        recoveredBlock24Step = 141 ifTrue: [
            (recoveredBlock24Stack1) putSixType: (recoveredBlock24Stack2).
            recoveredBlock24PC := 143.
        ].
        recoveredBlock24Step = 143 ifTrue: [
            (recoveredBlock24Stack0) endStructMember.
            recoveredBlock24PC := 145.
        ].
        recoveredBlock24Step = 145 ifTrue: [
            recoveredBlock24Stack0 := recoveredArg1.
            recoveredBlock24PC := 148.
        ].
        recoveredBlock24Step = 148 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) mdlVarDecl.
            recoveredBlock24PC := 150.
        ].
        recoveredBlock24Step = 150 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) mdlClass.
            recoveredBlock24PC := 152.
        ].
        recoveredBlock24Step = 152 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) isMdlFixedCharTable.
            recoveredBlock24PC := 154.
        ].
        recoveredBlock24Step = 154 ifTrue: [
            (recoveredBlock24Stack0) ifTrue: [recoveredBlock24PC := 158] ifFalse: [recoveredBlock24PC := 296].
        ].
        recoveredBlock24Step = 158 ifTrue: [
            recoveredBlock24Stack0 := recoveredArg1.
            recoveredBlock24PC := 161.
        ].
        recoveredBlock24Step = 161 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) implType.
            recoveredBlock24PC := 162.
        ].
        recoveredBlock24Step = 162 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) xDistribution.
            recoveredBlock24PC := 164.
        ].
        recoveredBlock24Step = 164 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) maxSize.
            recoveredBlock24PC := 166.
        ].
        recoveredBlock24Step = 166 ifTrue: [
            recoveredLocal2 := recoveredBlock24Stack0.
            recoveredBlock24PC := 169.
        ].
        recoveredBlock24Step = 169 ifTrue: [
            recoveredBlock24Stack0 := self.
            recoveredBlock24PC := 170.
        ].
        recoveredBlock24Step = 170 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) sixGenerator.
            recoveredBlock24PC := 171.
        ].
        recoveredBlock24Step = 171 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Stack0.
            recoveredBlock24PC := 172.
        ].
        recoveredBlock24Step = 172 ifTrue: [
            recoveredBlock24Stack2 := self.
            recoveredBlock24PC := 173.
        ].
        recoveredBlock24Step = 173 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) generator.
            recoveredBlock24PC := 175.
        ].
        recoveredBlock24Step = 175 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) cgCharTableXOffsetFieldName.
            recoveredBlock24PC := 177.
        ].
        recoveredBlock24Step = 177 ifTrue: [
            (recoveredBlock24Stack1) beginStructMember: (recoveredBlock24Stack2).
            recoveredBlock24Stack1 := recoveredBlock24Stack0.
            recoveredBlock24PC := 180.
        ].
        recoveredBlock24Step = 180 ifTrue: [
            recoveredBlock24Stack2 := recoveredArg1.
            recoveredBlock24PC := 183.
        ].
        recoveredBlock24Step = 183 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) implType.
            recoveredBlock24PC := 184.
        ].
        recoveredBlock24Step = 184 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) xDistribution.
            recoveredBlock24PC := 186.
        ].
        recoveredBlock24Step = 186 ifTrue: [
            (recoveredBlock24Stack1) putSixType: (recoveredBlock24Stack2).
            recoveredBlock24PC := 188.
        ].
        recoveredBlock24Step = 188 ifTrue: [
            (recoveredBlock24Stack0) endStructMember.
            recoveredBlock24PC := 190.
        ].
        recoveredBlock24Step = 190 ifTrue: [
            recoveredBlock24Stack0 := recoveredArg1.
            recoveredBlock24PC := 193.
        ].
        recoveredBlock24Step = 193 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) mdlVarDecl.
            recoveredBlock24PC := 195.
        ].
        recoveredBlock24Step = 195 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) mdlClass.
            recoveredBlock24PC := 197.
        ].
        recoveredBlock24Step = 197 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) isMdlTwoDCharTable.
            recoveredBlock24PC := 199.
        ].
        recoveredBlock24Step = 199 ifTrue: [
            (recoveredBlock24Stack0) ifTrue: [recoveredBlock24PC := 202] ifFalse: [recoveredBlock24PC := 238].
        ].
        recoveredBlock24Step = 202 ifTrue: [
            recoveredBlock24Stack0 := recoveredLocal2.
            recoveredBlock24PC := 205.
        ].
        recoveredBlock24Step = 205 ifTrue: [
            recoveredBlock24Stack1 := recoveredArg1.
            recoveredBlock24PC := 208.
        ].
        recoveredBlock24Step = 208 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) implType.
            recoveredBlock24PC := 209.
        ].
        recoveredBlock24Step = 209 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) yDistribution.
            recoveredBlock24PC := 211.
        ].
        recoveredBlock24Step = 211 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) maxSize.
            recoveredBlock24PC := 213.
        ].
        recoveredBlock24Step = 213 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) * (recoveredBlock24Stack1).
            recoveredBlock24PC := 214.
        ].
        recoveredBlock24Step = 214 ifTrue: [
            recoveredLocal2 := recoveredBlock24Stack0.
            recoveredBlock24PC := 217.
        ].
        recoveredBlock24Step = 217 ifTrue: [
            recoveredBlock24Stack0 := self.
            recoveredBlock24PC := 218.
        ].
        recoveredBlock24Step = 218 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) sixGenerator.
            recoveredBlock24PC := 219.
        ].
        recoveredBlock24Step = 219 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Stack0.
            recoveredBlock24PC := 220.
        ].
        recoveredBlock24Step = 220 ifTrue: [
            recoveredBlock24Stack2 := self.
            recoveredBlock24PC := 221.
        ].
        recoveredBlock24Step = 221 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) generator.
            recoveredBlock24PC := 223.
        ].
        recoveredBlock24Step = 223 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) cgCharTableYOffsetFieldName.
            recoveredBlock24PC := 225.
        ].
        recoveredBlock24Step = 225 ifTrue: [
            (recoveredBlock24Stack1) beginStructMember: (recoveredBlock24Stack2).
            recoveredBlock24Stack1 := recoveredBlock24Stack0.
            recoveredBlock24PC := 228.
        ].
        recoveredBlock24Step = 228 ifTrue: [
            recoveredBlock24Stack2 := recoveredArg1.
            recoveredBlock24PC := 231.
        ].
        recoveredBlock24Step = 231 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) implType.
            recoveredBlock24PC := 232.
        ].
        recoveredBlock24Step = 232 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) yDistribution.
            recoveredBlock24PC := 234.
        ].
        recoveredBlock24Step = 234 ifTrue: [
            (recoveredBlock24Stack1) putSixType: (recoveredBlock24Stack2).
            recoveredBlock24PC := 236.
        ].
        recoveredBlock24Step = 236 ifTrue: [
            (recoveredBlock24Stack0) endStructMember.
            recoveredBlock24PC := 238.
        ].
        recoveredBlock24Step = 238 ifTrue: [
            recoveredBlock24Stack0 := self.
            recoveredBlock24PC := 239.
        ].
        recoveredBlock24Step = 239 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) sixGenerator.
            recoveredBlock24PC := 240.
        ].
        recoveredBlock24Step = 240 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Stack0.
            recoveredBlock24PC := 241.
        ].
        recoveredBlock24Step = 241 ifTrue: [
            recoveredBlock24Stack2 := self.
            recoveredBlock24PC := 242.
        ].
        recoveredBlock24Step = 242 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) generator.
            recoveredBlock24PC := 244.
        ].
        recoveredBlock24Step = 244 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) cgCharTableXDistanceFieldName.
            recoveredBlock24PC := 246.
        ].
        recoveredBlock24Step = 246 ifTrue: [
            (recoveredBlock24Stack1) beginStructMember: (recoveredBlock24Stack2).
            recoveredBlock24Stack1 := recoveredBlock24Stack0.
            recoveredBlock24PC := 249.
        ].
        recoveredBlock24Step = 249 ifTrue: [
            recoveredBlock24Stack2 := recoveredArg1.
            recoveredBlock24PC := 252.
        ].
        recoveredBlock24Step = 252 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) implType.
            recoveredBlock24PC := 253.
        ].
        recoveredBlock24Step = 253 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) xDistribution.
            recoveredBlock24PC := 255.
        ].
        recoveredBlock24Step = 255 ifTrue: [
            (recoveredBlock24Stack1) putSixType: (recoveredBlock24Stack2).
            recoveredBlock24PC := 257.
        ].
        recoveredBlock24Step = 257 ifTrue: [
            (recoveredBlock24Stack0) endStructMember.
            recoveredBlock24PC := 259.
        ].
        recoveredBlock24Step = 259 ifTrue: [
            recoveredBlock24Stack0 := recoveredArg1.
            recoveredBlock24PC := 262.
        ].
        recoveredBlock24Step = 262 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) mdlVarDecl.
            recoveredBlock24PC := 264.
        ].
        recoveredBlock24Step = 264 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) mdlClass.
            recoveredBlock24PC := 266.
        ].
        recoveredBlock24Step = 266 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) isMdlTwoDCharTable.
            recoveredBlock24PC := 268.
        ].
        recoveredBlock24Step = 268 ifTrue: [
            (recoveredBlock24Stack0) ifTrue: [recoveredBlock24PC := 272] ifFalse: [recoveredBlock24PC := 293].
        ].
        recoveredBlock24Step = 272 ifTrue: [
            recoveredBlock24Stack0 := self.
            recoveredBlock24PC := 273.
        ].
        recoveredBlock24Step = 273 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) sixGenerator.
            recoveredBlock24PC := 274.
        ].
        recoveredBlock24Step = 274 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Stack0.
            recoveredBlock24PC := 275.
        ].
        recoveredBlock24Step = 275 ifTrue: [
            recoveredBlock24Stack2 := self.
            recoveredBlock24PC := 276.
        ].
        recoveredBlock24Step = 276 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) generator.
            recoveredBlock24PC := 278.
        ].
        recoveredBlock24Step = 278 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) cgCharTableYDistanceFieldName.
            recoveredBlock24PC := 280.
        ].
        recoveredBlock24Step = 280 ifTrue: [
            (recoveredBlock24Stack1) beginStructMember: (recoveredBlock24Stack2).
            recoveredBlock24Stack1 := recoveredBlock24Stack0.
            recoveredBlock24PC := 283.
        ].
        recoveredBlock24Step = 283 ifTrue: [
            recoveredBlock24Stack2 := recoveredArg1.
            recoveredBlock24PC := 286.
        ].
        recoveredBlock24Step = 286 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) implType.
            recoveredBlock24PC := 287.
        ].
        recoveredBlock24Step = 287 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) yDistribution.
            recoveredBlock24PC := 289.
        ].
        recoveredBlock24Step = 289 ifTrue: [
            (recoveredBlock24Stack1) putSixType: (recoveredBlock24Stack2).
            recoveredBlock24PC := 291.
        ].
        recoveredBlock24Step = 291 ifTrue: [
            (recoveredBlock24Stack0) endStructMember.
            recoveredBlock24PC := 293.
        ].
        recoveredBlock24Step = 293 ifTrue: [
            recoveredBlock24PC := 392.
        ].
        recoveredBlock24Step = 296 ifTrue: [
            recoveredBlock24Stack0 := recoveredArg1.
            recoveredBlock24PC := 299.
        ].
        recoveredBlock24Step = 299 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) implType.
            recoveredBlock24PC := 300.
        ].
        recoveredBlock24Step = 300 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) xDistribution.
            recoveredBlock24PC := 302.
        ].
        recoveredBlock24Step = 302 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) maxSize.
            recoveredBlock24PC := 304.
        ].
        recoveredBlock24Step = 304 ifTrue: [
            recoveredLocal2 := recoveredBlock24Stack0.
            recoveredBlock24PC := 307.
        ].
        recoveredBlock24Step = 307 ifTrue: [
            recoveredBlock24Stack0 := self.
            recoveredBlock24PC := 308.
        ].
        recoveredBlock24Step = 308 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) sixGenerator.
            recoveredBlock24PC := 309.
        ].
        recoveredBlock24Step = 309 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Stack0.
            recoveredBlock24PC := 310.
        ].
        recoveredBlock24Step = 310 ifTrue: [
            recoveredBlock24Stack2 := self.
            recoveredBlock24PC := 311.
        ].
        recoveredBlock24Step = 311 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) generator.
            recoveredBlock24PC := 313.
        ].
        recoveredBlock24Step = 313 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) cgCharTableXDistFieldName.
            recoveredBlock24PC := 315.
        ].
        recoveredBlock24Step = 315 ifTrue: [
            (recoveredBlock24Stack1) beginStructMember: (recoveredBlock24Stack2).
            recoveredBlock24Stack1 := recoveredBlock24Stack0.
            recoveredBlock24PC := 318.
        ].
        recoveredBlock24Step = 318 ifTrue: [
            recoveredBlock24Stack2 := recoveredArg1.
            recoveredBlock24PC := 321.
        ].
        recoveredBlock24Step = 321 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) implType.
            recoveredBlock24PC := 322.
        ].
        recoveredBlock24Step = 322 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) xDistribution.
            recoveredBlock24PC := 324.
        ].
        recoveredBlock24Step = 324 ifTrue: [
            recoveredBlock24Stack3 := recoveredArg1.
            recoveredBlock24PC := 327.
        ].
        recoveredBlock24Step = 327 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) implType.
            recoveredBlock24PC := 328.
        ].
        recoveredBlock24Step = 328 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) xDistribution.
            recoveredBlock24PC := 330.
        ].
        recoveredBlock24Step = 330 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) maxSize.
            recoveredBlock24PC := 332.
        ].
        recoveredBlock24Step = 332 ifTrue: [
            (recoveredBlock24Stack1) putSixType: (recoveredBlock24Stack2) width: (recoveredBlock24Stack3).
            recoveredBlock24PC := 334.
        ].
        recoveredBlock24Step = 334 ifTrue: [
            (recoveredBlock24Stack0) endStructMember.
            recoveredBlock24PC := 336.
        ].
        recoveredBlock24Step = 336 ifTrue: [
            recoveredBlock24Stack0 := recoveredArg1.
            recoveredBlock24PC := 339.
        ].
        recoveredBlock24Step = 339 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) mdlVarDecl.
            recoveredBlock24PC := 341.
        ].
        recoveredBlock24Step = 341 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) mdlClass.
            recoveredBlock24PC := 343.
        ].
        recoveredBlock24Step = 343 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) isMdlTwoDCharTable.
            recoveredBlock24PC := 345.
        ].
        recoveredBlock24Step = 345 ifTrue: [
            (recoveredBlock24Stack0) ifTrue: [recoveredBlock24PC := 348] ifFalse: [recoveredBlock24PC := 392].
        ].
        recoveredBlock24Step = 348 ifTrue: [
            recoveredBlock24Stack0 := recoveredLocal2.
            recoveredBlock24PC := 351.
        ].
        recoveredBlock24Step = 351 ifTrue: [
            recoveredBlock24Stack1 := recoveredArg1.
            recoveredBlock24PC := 354.
        ].
        recoveredBlock24Step = 354 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) implType.
            recoveredBlock24PC := 355.
        ].
        recoveredBlock24Step = 355 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) yDistribution.
            recoveredBlock24PC := 357.
        ].
        recoveredBlock24Step = 357 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) maxSize.
            recoveredBlock24PC := 359.
        ].
        recoveredBlock24Step = 359 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) * (recoveredBlock24Stack1).
            recoveredBlock24PC := 360.
        ].
        recoveredBlock24Step = 360 ifTrue: [
            recoveredLocal2 := recoveredBlock24Stack0.
            recoveredBlock24PC := 363.
        ].
        recoveredBlock24Step = 363 ifTrue: [
            recoveredBlock24Stack0 := self.
            recoveredBlock24PC := 364.
        ].
        recoveredBlock24Step = 364 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) sixGenerator.
            recoveredBlock24PC := 365.
        ].
        recoveredBlock24Step = 365 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Stack0.
            recoveredBlock24PC := 366.
        ].
        recoveredBlock24Step = 366 ifTrue: [
            recoveredBlock24Stack2 := self.
            recoveredBlock24PC := 367.
        ].
        recoveredBlock24Step = 367 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) generator.
            recoveredBlock24PC := 369.
        ].
        recoveredBlock24Step = 369 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) cgCharTableYDistFieldName.
            recoveredBlock24PC := 371.
        ].
        recoveredBlock24Step = 371 ifTrue: [
            (recoveredBlock24Stack1) beginStructMember: (recoveredBlock24Stack2).
            recoveredBlock24Stack1 := recoveredBlock24Stack0.
            recoveredBlock24PC := 374.
        ].
        recoveredBlock24Step = 374 ifTrue: [
            recoveredBlock24Stack2 := recoveredArg1.
            recoveredBlock24PC := 377.
        ].
        recoveredBlock24Step = 377 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) implType.
            recoveredBlock24PC := 378.
        ].
        recoveredBlock24Step = 378 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) yDistribution.
            recoveredBlock24PC := 380.
        ].
        recoveredBlock24Step = 380 ifTrue: [
            recoveredBlock24Stack3 := recoveredArg1.
            recoveredBlock24PC := 383.
        ].
        recoveredBlock24Step = 383 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) implType.
            recoveredBlock24PC := 384.
        ].
        recoveredBlock24Step = 384 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) yDistribution.
            recoveredBlock24PC := 386.
        ].
        recoveredBlock24Step = 386 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) maxSize.
            recoveredBlock24PC := 388.
        ].
        recoveredBlock24Step = 388 ifTrue: [
            (recoveredBlock24Stack1) putSixType: (recoveredBlock24Stack2) width: (recoveredBlock24Stack3).
            recoveredBlock24PC := 390.
        ].
        recoveredBlock24Step = 390 ifTrue: [
            (recoveredBlock24Stack0) endStructMember.
            recoveredBlock24PC := 392.
        ].
        recoveredBlock24Step = 392 ifTrue: [
            recoveredBlock24Stack0 := self.
            recoveredBlock24PC := 393.
        ].
        recoveredBlock24Step = 393 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) sixGenerator.
            recoveredBlock24PC := 394.
        ].
        recoveredBlock24Step = 394 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Stack0.
            recoveredBlock24PC := 395.
        ].
        recoveredBlock24Step = 395 ifTrue: [
            recoveredBlock24Stack2 := self.
            recoveredBlock24PC := 396.
        ].
        recoveredBlock24Step = 396 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) generator.
            recoveredBlock24PC := 398.
        ].
        recoveredBlock24Step = 398 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) cgCharTableValuesFieldName.
            recoveredBlock24PC := 400.
        ].
        recoveredBlock24Step = 400 ifTrue: [
            (recoveredBlock24Stack1) beginStructMember: (recoveredBlock24Stack2).
            recoveredBlock24Stack1 := recoveredBlock24Stack0.
            recoveredBlock24PC := 403.
        ].
        recoveredBlock24Step = 403 ifTrue: [
            recoveredBlock24Stack2 := recoveredArg1.
            recoveredBlock24PC := 406.
        ].
        recoveredBlock24Step = 406 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) implType.
            recoveredBlock24PC := 407.
        ].
        recoveredBlock24Step = 407 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) values.
            recoveredBlock24PC := 409.
        ].
        recoveredBlock24Step = 409 ifTrue: [
            recoveredBlock24Stack3 := recoveredLocal2.
            recoveredBlock24PC := 412.
        ].
        recoveredBlock24Step = 412 ifTrue: [
            (recoveredBlock24Stack1) putSixType: (recoveredBlock24Stack2) width: (recoveredBlock24Stack3).
            recoveredBlock24Stack1 := recoveredBlock24Stack0.
            recoveredBlock24PC := 415.
        ].
        recoveredBlock24Step = 415 ifTrue: [
            (recoveredBlock24Stack1) endStructMember.
            recoveredBlock24PC := 417.
        ].
        recoveredBlock24Step = 417 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) endStructDefinition.
            recoveredBlock24PC := 419.
        ].
        recoveredBlock24Step = 419 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack0.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
    (recoveredValue4) at: (recoveredValue5) ifAbsentPut: (recoveredValue6).
    recoveredValue7 := (self) sixGenerator.
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) genSixImportedElementCName.
    (recoveredValue8) beginBaseDefinition: (recoveredValue10).
    recoveredValue11 := recoveredValue7.
    recoveredValue12 := recoveredLocal3.
    (recoveredValue11) putSixType: (recoveredValue12).
    (recoveredValue7) endBaseDefinition.
    ^self
! !

