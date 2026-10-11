"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200031d8; bytecode file offset 0x8ffcfc"
!SGMdAbstractDataTypeInterface methodsFor: 'recovered'!
initCtVariables
    ^self
! !

"ASDBase.ic method 0x200058a0; bytecode file offset 0x902744"
!SGMdAbstractDataTypeInterface methodsFor: 'recovered'!
storeInstVar: recoveredArg1 initValue: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20005b38; bytecode file offset 0x902744"
!SGMdAbstractDataTypeInterface methodsFor: 'recovered'!
restoreAnalysisInfo: recoveredArg1 imports: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x2000d254; bytecode file offset 0x909e08"
!SGMdAbstractDataTypeInterface methodsFor: 'recovered'!
containsDataSet: recoveredArg1
    ^true
! !

"ASDBase.ic method 0x2000d274; bytecode file offset 0x909e08"
!SGMdAbstractDataTypeInterface methodsFor: 'recovered'!
allowsForInstVarSetAccess: recoveredArg1
    ^true
! !

"ASDBase.ic method 0x2000d37c; bytecode file offset 0x909e08"
!SGMdAbstractDataTypeInterface methodsFor: 'recovered'!
allowsForInstVarGetAccess: recoveredArg1
    ^true
! !

"ASDBase.ic method 0x2003f108; bytecode file offset 0x93bf94"
!SGMdAbstractDataTypeInterface methodsFor: 'recovered'!
expander
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGMdManager.
    recoveredValue1 := (recoveredValue0) currentExpander.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200490dc; bytecode file offset 0x945990"
!SGMdAbstractDataTypeInterface methodsFor: 'recovered'!
resetInstVars
    instVars := nil.
    ^self
! !

"ASDBase.ic method 0x200496dc; bytecode file offset 0x947128"
!SGMdAbstractDataTypeInterface methodsFor: 'recovered'!
hasCharTableTypedInstVars
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) instanceVars.
    recoveredValue1 := (self) hasCharTableTypedVars: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20050b10; bytecode file offset 0x94d4ec"
!SGMdAbstractDataTypeInterface methodsFor: 'recovered'!
generateInitCode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) generatorFactory.
    recoveredValue1 := (recoveredValue0) generateInitCode: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005493c; bytecode file offset 0x952a9c"
!SGMdAbstractDataTypeInterface methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlAbstractDataTypeInterface: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006149c; bytecode file offset 0x95e838"
!SGMdAbstractDataTypeInterface methodsFor: 'recovered'!
mdlEnumTypeLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlLabel.
    recoveredValue1 := (recoveredValue0) , ('_ENUM').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006f168; bytecode file offset 0x96bc1c"
!SGMdAbstractDataTypeInterface methodsFor: 'recovered'!
dataLabel
    | recoveredValue0 |
    recoveredValue0 := dataLabel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007616c; bytecode file offset 0x9757c8"
!SGMdAbstractDataTypeInterface methodsFor: 'recovered'!
hasMdlRcvInArgList
    ^true
! !

"ASDBase.ic method 0x2007d0a4; bytecode file offset 0x97c330"
!SGMdAbstractDataTypeInterface methodsFor: 'recovered'!
hasExecutablesToBeGenerated
    ^false
! !

"ASDBase.ic method 0x2007db24; bytecode file offset 0x97c330"
!SGMdAbstractDataTypeInterface methodsFor: 'recovered'!
hasCharTableTypedClassVars
    ^false
! !

"ASDBase.ic method 0x20084918; bytecode file offset 0x981ca4"
!SGMdAbstractDataTypeInterface methodsFor: 'recovered'!
switchToDataset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) currentDataSet: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008ef50; bytecode file offset 0x98b80c"
!SGMdAbstractDataTypeInterface methodsFor: 'recovered'!
semAnaDataset
    | recoveredValue0 |
    recoveredValue0 := (self) generator.
    (recoveredValue0) semanticAnalysis: (self).
    ^self
! !

"ASDBase.ic method 0x200c5a14; bytecode file offset 0x9c22c8"
!SGMdAbstractDataTypeInterface methodsFor: 'recovered'!
dataLabel: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dataLabel := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5ae8; bytecode file offset 0x9c25bc"
!SGMdAbstractDataTypeInterface methodsFor: 'recovered'!
currentDataSet: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    currentDataSet := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5ed0; bytecode file offset 0x9c2804"
!SGMdAbstractDataTypeInterface methodsFor: 'recovered'!
compileTimeRestrictions: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    compileTimeRestrictions := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e29d4; bytecode file offset 0x9df430"
!SGMdAbstractDataTypeInterface methodsFor: 'recovered'!
hasCharTableTypedVars
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
            recoveredStack2 := (recoveredStack2) hasCharTableTypedInstVars.
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
            recoveredStack1 := (recoveredStack1) hasCharTableTypedClassVars.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200f7cd4; bytecode file offset 0x9f4e38"
!SGMdAbstractDataTypeInterface methodsFor: 'recovered'!
exportedClassVars
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) classVars.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c513cArg1 | 
    | block280c513cValue0 block280c513cValue1 |
    block280c513cValue0 := block280c513cArg1.
    block280c513cValue1 := (block280c513cValue0) isMdlImported.
    block280c513cValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f81e4; bytecode file offset 0x9f4e38"
!SGMdAbstractDataTypeInterface methodsFor: 'recovered'!
importedClassVars
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) classVars.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c58d4Arg1 | 
    | block280c58d4Value0 block280c58d4Value1 |
    block280c58d4Value0 := block280c58d4Arg1.
    block280c58d4Value1 := (block280c58d4Value0) isMdlImported.
    block280c58d4Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012a960; bytecode file offset 0xa2724c"
!SGMdAbstractDataTypeInterface methodsFor: 'recovered'!
compileTimeRestrictions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := compileTimeRestrictions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            compileTimeRestrictions := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := compileTimeRestrictions.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012cbf8; bytecode file offset 0xa2951c"
!SGMdAbstractDataTypeInterface methodsFor: 'recovered'!
sortedClassVars
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) classVars.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c9eb8Arg1 :block280c9eb8Arg2 | 
    | block280c9eb8Value0 block280c9eb8Value1 block280c9eb8Value2 block280c9eb8Value3 block280c9eb8Value4 |
    block280c9eb8Value0 := block280c9eb8Arg1.
    block280c9eb8Value1 := (block280c9eb8Value0) position.
    block280c9eb8Value2 := block280c9eb8Arg2.
    block280c9eb8Value3 := (block280c9eb8Value2) position.
    block280c9eb8Value4 := (block280c9eb8Value1) < (block280c9eb8Value3).
    block280c9eb8Value4
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012cc58; bytecode file offset 0xa2951c"
!SGMdAbstractDataTypeInterface methodsFor: 'recovered'!
sortedInstVars
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) instanceVars.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c9f48Arg1 :block280c9f48Arg2 | 
    | block280c9f48Value0 block280c9f48Value1 block280c9f48Value2 block280c9f48Value3 block280c9f48Value4 |
    block280c9f48Value0 := block280c9f48Arg1.
    block280c9f48Value1 := (block280c9f48Value0) position.
    block280c9f48Value2 := block280c9f48Arg2.
    block280c9f48Value3 := (block280c9f48Value2) position.
    block280c9f48Value4 := (block280c9f48Value1) < (block280c9f48Value3).
    block280c9f48Value4
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012e4b4; bytecode file offset 0xa2b0c4"
!SGMdAbstractDataTypeInterface methodsFor: 'recovered'!
instVars
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) symbols.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280ca7dcArg1 | 
    | block280ca7dcValue0 block280ca7dcValue1 |
    block280ca7dcValue0 := block280ca7dcArg1.
    block280ca7dcValue1 := (block280ca7dcValue0) isMdlInstVarDecl.
    block280ca7dcValue1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015da90; bytecode file offset 0xa5a350"
!SGMdAbstractDataTypeInterface methodsFor: 'recovered'!
currentDataSet
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := currentDataSet.
    recoveredValue1 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := (self) mdlFatalExpect: ('current data set to be selected and instantiated').
    recoveredBlock6Value0
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := currentDataSet.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20160de8; bytecode file offset 0xa5d6cc"
!SGMdAbstractDataTypeInterface methodsFor: 'recovered'!
resetPropagatedMemory
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizations.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) resetPropagatedMemory.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) symbols.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := [:block280ce2ecArg1 | 
    | block280ce2ecValue0 block280ce2ecValue1 |
    block280ce2ecValue0 := block280ce2ecArg1.
    block280ce2ecValue1 := (block280ce2ecValue0) resetPropagatedMemory.
    block280ce2ecValue1
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"ASDBase.ic method 0x20161844; bytecode file offset 0xa5e10c"
!SGMdAbstractDataTypeInterface methodsFor: 'recovered'!
sortedEnumValues
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) usedTypesTable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) allEnumValues.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280ce3e8Arg1 :block280ce3e8Arg2 | 
    | block280ce3e8Value0 block280ce3e8Value1 block280ce3e8Value2 block280ce3e8Value3 block280ce3e8Value4 |
    block280ce3e8Value0 := block280ce3e8Arg1.
    block280ce3e8Value1 := (block280ce3e8Value0) value.
    block280ce3e8Value2 := block280ce3e8Arg2.
    block280ce3e8Value3 := (block280ce3e8Value2) value.
    block280ce3e8Value4 := (block280ce3e8Value1) <= (block280ce3e8Value3).
    block280ce3e8Value4
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018c004; bytecode file offset 0xa888c8"
!SGMdAbstractDataTypeInterface methodsFor: 'recovered'!
deepLookup: recoveredArg1 accessChain: recoveredArg2 ifFail: recoveredArg3
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
            recoveredStack2 := [].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) lookup: (recoveredStack1) ifFail: (recoveredStack2).
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) addFirst: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20197a54; bytecode file offset 0xa94318"
!SGMdAbstractDataTypeInterface methodsFor: 'recovered'!
lookupElementNamed: recoveredArg1 ifFail: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) elementMemberPrefix.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    recoveredValue3 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 |
    recoveredBlock10Value0 := recoveredArg2.
    recoveredBlock10Value1 := (recoveredBlock10Value0) value.
    recoveredBlock10Value1
].
    recoveredValue4 := (self) lookup: (recoveredValue2) ifFail: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201afde0; bytecode file offset 0xaac6b0"
!SGMdAbstractDataTypeInterface methodsFor: 'recovered'!
resetIleTypes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) symbols.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d3ba8Arg1 | 
    | block280d3ba8Value0 block280d3ba8Value1 |
    block280d3ba8Value0 := block280d3ba8Arg1.
    block280d3ba8Value1 := (block280d3ba8Value0) resetIleType.
    block280d3ba8Value1
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
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) compileTimeRestrictions: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            super resetIleTypes.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f3fa4; bytecode file offset 0xaf0874"
!SGMdAbstractDataTypeInterface methodsFor: 'recovered'!
hasCharTableTypedVars: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Rl'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_74180'.
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
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block280d8264Arg1 | 
    | block280d8264Value0 block280d8264Value1 block280d8264Value2 |
    block280d8264Value0 := block280d8264Arg1.
    block280d8264Value1 := (block280d8264Value0) mdlClass.
    block280d8264Value2 := (block280d8264Value1) isMdlCharTable.
    block280d8264Value2
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) findFirst: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201fd5bc; bytecode file offset 0xaf9e88"
!SGMdAbstractDataTypeInterface methodsFor: 'recovered'!
instanceVars
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := instVars.
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
            recoveredStack1 := (recoveredStack1) symbols.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block280d872cArg1 | 
    | block280d872cValue0 block280d872cValue1 |
    block280d872cValue0 := block280d872cArg1.
    block280d872cValue1 := (block280d872cValue0) isMdlInstVarDecl.
    block280d872cValue1
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSet.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            instVars := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := instVars.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2024545c; bytecode file offset 0xb41d1c"
!SGMdAbstractDataTypeInterface methodsFor: 'recovered'!
deepLookup: recoveredArg1 expr: recoveredArg2 ifFail: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg3.
    recoveredBlock7Value1 := (recoveredBlock7Value0) value.
    ^recoveredBlock7Value1
].
    recoveredValue2 := (self) lookup: (recoveredValue0) ifFail: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) accessChainAddFirst: (recoveredValue4).
    recoveredValue5 := recoveredArg2.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20293dfc; bytecode file offset 0xb906bc"
!SGMdAbstractDataTypeInterface methodsFor: 'recovered'!
lookupInstVar: recoveredArg1 ifFail: recoveredArg2
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
            recoveredStack2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg2.
    recoveredBlock7Value1 := (recoveredBlock7Value0) value.
    ^recoveredBlock7Value1
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) lookup: (recoveredStack1) ifFail: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlInstVarDecl.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

