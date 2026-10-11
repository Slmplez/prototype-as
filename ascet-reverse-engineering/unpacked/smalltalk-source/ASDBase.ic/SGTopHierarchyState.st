"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002be0; bytecode file offset 0x8ffcfc"
!SGTopHierarchyState methodsFor: 'recovered'!
topCodeBlock
    ^self
! !

"ASDBase.ic method 0x20004310; bytecode file offset 0x90206c"
!SGTopHierarchyState methodsFor: 'recovered'!
foundPath: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004b78; bytecode file offset 0x90206c"
!SGTopHierarchyState methodsFor: 'recovered'!
collectCharacteristicValuesIn: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200065a0; bytecode file offset 0x902ecc"
!SGTopHierarchyState methodsFor: 'recovered'!
sequencing: recoveredArg1 onBlocks: recoveredArg2 useInfo: recoveredArg3 monitorStream: recoveredArg4
    ^self
! !

"ASDBase.ic method 0x2000b4d4; bytecode file offset 0x908be4"
!SGTopHierarchyState methodsFor: 'recovered'!
historyName
    | recoveredValue0 |
    recoveredValue0 := (self) hierarchyName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b894; bytecode file offset 0x908be4"
!SGTopHierarchyState methodsFor: 'recovered'!
stateVariableName
    | recoveredValue0 |
    recoveredValue0 := (self) hierarchyName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20012444; bytecode file offset 0x912098"
!SGTopHierarchyState methodsFor: 'recovered'!
logicMethodClass
    | recoveredValue0 |
    recoveredValue0 := SGLmTriggerMethod.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20023684; bytecode file offset 0x92209c"
!SGTopHierarchyState methodsFor: 'recovered'!
hierarchyName
    ^'sm'
! !

"ASDBase.ic method 0x20055b84; bytecode file offset 0x952a9c"
!SGTopHierarchyState methodsFor: 'recovered'!
acceptBdlVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) acceptTopHierarchyState: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005b93c; bytecode file offset 0x958548"
!SGTopHierarchyState methodsFor: 'recovered'!
hierarchyStates
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) with: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20071964; bytecode file offset 0x96e578"
!SGTopHierarchyState methodsFor: 'recovered'!
level
    ^0
! !

"ASDBase.ic method 0x200769c4; bytecode file offset 0x9757c8"
!SGTopHierarchyState methodsFor: 'recovered'!
isStateMachine
    ^true
! !

"ASDBase.ic method 0x2007991c; bytecode file offset 0x97c330"
!SGTopHierarchyState methodsFor: 'recovered'!
isHistory
    ^false
! !

"ASDBase.ic method 0x2007b93c; bytecode file offset 0x97c330"
!SGTopHierarchyState methodsFor: 'recovered'!
isBdlJunction
    ^false
! !

"ASDBase.ic method 0x2007de34; bytecode file offset 0x97c330"
!SGTopHierarchyState methodsFor: 'recovered'!
isBdlHierarchyState
    ^false
! !

"ASDBase.ic method 0x2007e864; bytecode file offset 0x97c330"
!SGTopHierarchyState methodsFor: 'recovered'!
isBdlState
    ^false
! !

"ASDBase.ic method 0x200e1dec; bytecode file offset 0x9de890"
!SGTopHierarchyState methodsFor: 'recovered'!
errLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) sgClass.
    recoveredValue1 := (recoveredValue0) label.
    recoveredValue2 := ('statemachine "') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , ('"').
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e5c38; bytecode file offset 0x9e2514"
!SGTopHierarchyState methodsFor: 'recovered'!
nilVariables
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super nilVariables.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) add: ('outlinedActions').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200ee4a4; bytecode file offset 0x9ead80"
!SGTopHierarchyState methodsFor: 'recovered'!
collectTransitions
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) children.
    recoveredValue3 := recoveredLocal1.
    (recoveredValue2) collectTransitionsOfHierarchy: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20109d6c; bytecode file offset 0xa06628"
!SGTopHierarchyState methodsFor: 'recovered'!
initStartState
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) startState.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) startState.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) initStartState.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20137864; bytecode file offset 0xa34120"
!SGTopHierarchyState methodsFor: 'recovered'!
asMdlInitValue
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) initStartState.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20190694; bytecode file offset 0xa8cf5c"
!SGTopHierarchyState methodsFor: 'recovered'!
startState
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) children.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := (self) logicManager.
    recoveredBlock5Value1 := (self) errLabel.
    (recoveredBlock5Value0) smSyntaxErrNo: (20) with: (recoveredBlock5Value1).
    nil
].
    recoveredValue2 := (recoveredValue0) startStateIfNone: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201b8a2c; bytecode file offset 0xab52f8"
!SGTopHierarchyState methodsFor: 'recovered'!
addInstVarsOfSM
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
            recoveredStack0 := (recoveredStack0) generateFlatStateMachine.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := SGSmFlatInstVarGenerator.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := SGSmHierarchyInstVarGenerator.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) addInstVarsOfSM: (recoveredStack1).
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

"ASDBase.ic method 0x20206a68; bytecode file offset 0xb03334"
!SGTopHierarchyState methodsFor: 'recovered'!
collectStates
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) children.
    recoveredValue3 := (recoveredValue2) statesOnly.
    recoveredValue4 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredLocal1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) collectStates: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20220154; bytecode file offset 0xb1ca20"
!SGTopHierarchyState methodsFor: 'recovered'!
allTransitions
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) children.
    recoveredValue1 := (recoveredValue0) transitionsOnly.
    recoveredValue2 := (recoveredValue1) copy.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) children.
    recoveredValue4 := (recoveredValue3) junctionsAndStatesOnly.
    recoveredValue5 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := recoveredLocal1.
    recoveredBlock13Value2 := (recoveredBlock13Value0) allTransitions: (recoveredBlock13Value1).
    recoveredBlock13Value2
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2026b524; bytecode file offset 0xb67df0"
!SGTopHierarchyState methodsFor: 'recovered'!
analyze
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
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) methods.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock13Value0 |
    (self) analyzeSyntax.
    recoveredBlock13Value0 := (self) analyzeComponentNoBuildMdl.
    recoveredBlock13Value0
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) collectMessagesDo: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) analyzeSyntax.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) analyzeComponentNoBuildMdl.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028315c; bytecode file offset 0xb7fa40"
!SGTopHierarchyState methodsFor: 'recovered'!
levelName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) statesOnly.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280e16c0Arg1 | 
    | block280e16c0Value0 block280e16c0Value1 |
    block280e16c0Value0 := block280e16c0Arg1.
    block280e16c0Value1 := (block280e16c0Value0) isBdlHierarchyState.
    block280e16c0Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := SGReservedNames.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) tempVarName.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 'smLevel_'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) level.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
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
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) stateVariableName.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203343f4; bytecode file offset 0xc30cd0"
!SGTopHierarchyState methodsFor: 'recovered'!
collectStateStructureIn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Muzaffar'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'EHI_2007401997'.
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
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:block280ed234Arg1 | 
    | block280ed234Value0 block280ed234Value1 |
    block280ed234Value0 := block280ed234Arg1.
    block280ed234Value1 := (block280ed234Value0) reset.
    block280ed234Value1
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectStates.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 |
    recoveredBlock25Value0 := recoveredArg1.
    recoveredBlock25Value1 := recoveredBlock25Arg1.
    recoveredBlock25Value2 := (recoveredBlock25Value0) putState: (recoveredBlock25Value1).
    recoveredBlock25Value2
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectTransitions.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 |
    recoveredBlock44Value0 := recoveredArg1.
    recoveredBlock44Value1 := recoveredBlock44Arg1.
    recoveredBlock44Value2 := (recoveredBlock44Value0) putTransition: (recoveredBlock44Value1).
    recoveredBlock44Value2
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033f464; bytecode file offset 0xc3bd58"
!SGTopHierarchyState methodsFor: 'recovered'!
analyzeSyntax
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super analyze.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) resetHierarchy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) analyzeHierarchyConnectors.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
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
            (recoveredStack0) analyzeBlockConnectors.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) analyzeTransitionsInHierarchy.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) analyzeOverlappingStates.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectStates.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) analyzeStateIds: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := Set.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) methods.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := SGSmSemanticAnalyser.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) analyze: (recoveredStack1) states: (recoveredStack2) triggers: (recoveredStack3).
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

"ASDBase.ic method 0x2035b9a0; bytecode file offset 0xc58284"
!SGTopHierarchyState methodsFor: 'recovered'!
checkCalledMethods: recoveredArg1 calledFromTransition: recoveredArg2 listener: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicManager.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) removeLogicListener: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) sortedMethods.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [:block280f00c0Arg1 | 
    | block280f00c0Value0 block280f00c0Value1 block280f00c0Value2 block280f00c0Value3 |
    block280f00c0Value0 := block280f00c0Arg1.
    block280f00c0Value1 := (block280f00c0Value0) declaration.
    block280f00c0Value2 := (block280f00c0Value1) isMdlReinitializeMethod.
    block280f00c0Value3 := (block280f00c0Value2) not.
    block280f00c0Value3
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSatisfy: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
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
            recoveredStack0 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := [:recoveredBlock37Arg1 :recoveredBlock37Arg2 | 
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 recoveredBlock37Value3 recoveredBlock37Value4 recoveredBlock37Value5 recoveredBlock37Value6 recoveredBlock37Value7 recoveredBlock37Value8 |
    recoveredBlock37Value0 := recoveredBlock37Arg1.
    recoveredBlock37Value1 := recoveredArg1.
    recoveredBlock37Value2 := (recoveredBlock37Value1) sortedMethods.
    recoveredBlock37Value3 := (recoveredBlock37Value2) first.
    recoveredBlock37Value4 := (recoveredBlock37Value3) declaration.
    recoveredBlock37Value5 := recoveredBlock37Arg2.
    recoveredBlock37Value6 := Set.
    recoveredBlock37Value7 := (recoveredBlock37Value6) new.
    recoveredBlock37Value8 := (self) checkCalledStateReset: (recoveredBlock37Value0) caller: (recoveredBlock37Value4) transitions: (recoveredBlock37Value5) visited: (recoveredBlock37Value7).
    recoveredBlock37Value8
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203fe248; bytecode file offset 0xcfab28"
!SGTopHierarchyState methodsFor: 'recovered'!
analyzeHierarchyConnectors
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredLocal1 := true.
    recoveredValue0 := iDTable.
    recoveredValue1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Local1 recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10Stack4 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
    recoveredBlock10Stack0 := self.
    recoveredBlock10PC := 16.
    recoveredBlock10Done := false.
    [recoveredBlock10Done not] whileTrue: [
        recoveredBlock10Step := recoveredBlock10PC.
        recoveredBlock10Step = 16 ifTrue: [
            recoveredBlock10Stack1 := nil.
            recoveredBlock10PC := 17.
        ].
        recoveredBlock10Step = 17 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 18.
        ].
        recoveredBlock10Step = 18 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) isBdlHierarchyConnector.
            recoveredBlock10PC := 19.
        ].
        recoveredBlock10Step = 19 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 22] ifFalse: [recoveredBlock10PC := 87].
        ].
        recoveredBlock10Step = 22 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 23.
        ].
        recoveredBlock10Step = 23 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) isConnected.
            recoveredBlock10PC := 24.
        ].
        recoveredBlock10Step = 24 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 28] ifFalse: [recoveredBlock10PC := 87].
        ].
        recoveredBlock10Step = 28 ifTrue: [
            recoveredBlock10PC := 29.
        ].
        recoveredBlock10Step = 29 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Arg1.
            recoveredBlock10PC := 30.
        ].
        recoveredBlock10Step = 30 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) connection.
            recoveredBlock10PC := 31.
        ].
        recoveredBlock10Step = 31 ifTrue: [
            recoveredBlock10Local1 := recoveredBlock10Stack1.
            recoveredBlock10PC := 32.
        ].
        recoveredBlock10Step = 32 ifTrue: [
            recoveredBlock10Stack1 := nil.
            recoveredBlock10PC := 33.
        ].
        recoveredBlock10Step = 33 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 34.
        ].
        recoveredBlock10Step = 34 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) interfaceElement.
            recoveredBlock10PC := 35.
        ].
        recoveredBlock10Step = 35 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) internalConnector.
            recoveredBlock10PC := 37.
        ].
        recoveredBlock10Step = 37 ifTrue: [
            recoveredBlock10Stack3 := recoveredBlock10Arg1.
            recoveredBlock10PC := 38.
        ].
        recoveredBlock10Step = 38 ifTrue: [
            (recoveredBlock10Stack2 ~~ recoveredBlock10Stack3) ifTrue: [recoveredBlock10PC := 85] ifFalse: [recoveredBlock10PC := 42].
        ].
        recoveredBlock10Step = 42 ifTrue: [
            recoveredBlock10PC := 43.
        ].
        recoveredBlock10Step = 43 ifTrue: [
            recoveredBlock10Stack1 := nil.
            recoveredBlock10PC := 44.
        ].
        recoveredBlock10Step = 44 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Local1.
            recoveredBlock10PC := 45.
        ].
        recoveredBlock10Step = 45 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) sender.
            recoveredBlock10PC := 47.
        ].
        recoveredBlock10Step = 47 ifTrue: [
            recoveredBlock10Stack3 := recoveredBlock10Arg1.
            recoveredBlock10PC := 48.
        ].
        recoveredBlock10Step = 48 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) == (recoveredBlock10Stack3).
            recoveredBlock10PC := 49.
        ].
        recoveredBlock10Step = 49 ifTrue: [
            recoveredBlock10Stack3 := recoveredBlock10Local1.
            recoveredBlock10PC := 50.
        ].
        recoveredBlock10Step = 50 ifTrue: [
            recoveredBlock10Stack3 := (recoveredBlock10Stack3) receiver.
            recoveredBlock10PC := 52.
        ].
        recoveredBlock10Step = 52 ifTrue: [
            recoveredBlock10Stack3 := (recoveredBlock10Stack3) isBdlHierarchyConnector.
            recoveredBlock10PC := 53.
        ].
        recoveredBlock10Step = 53 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) and: (recoveredBlock10Stack3).
            recoveredBlock10PC := 55.
        ].
        recoveredBlock10Step = 55 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 58] ifFalse: [recoveredBlock10PC := 85].
        ].
        recoveredBlock10Step = 58 ifTrue: [
            recoveredBlock10PC := 59.
        ].
        recoveredBlock10Step = 59 ifTrue: [
            recoveredBlock10Stack1 := nil.
            recoveredBlock10PC := 60.
        ].
        recoveredBlock10Step = 60 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Local1.
            recoveredBlock10PC := 61.
        ].
        recoveredBlock10Step = 61 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) receiver.
            recoveredBlock10PC := 63.
        ].
        recoveredBlock10Step = 63 ifTrue: [
            recoveredBlock10Stack3 := recoveredBlock10Local1.
            recoveredBlock10PC := 64.
        ].
        recoveredBlock10Step = 64 ifTrue: [
            recoveredBlock10Stack3 := (recoveredBlock10Stack3) receiver.
            recoveredBlock10PC := 66.
        ].
        recoveredBlock10Step = 66 ifTrue: [
            recoveredBlock10Stack3 := (recoveredBlock10Stack3) interfaceElement.
            recoveredBlock10PC := 67.
        ].
        recoveredBlock10Step = 67 ifTrue: [
            recoveredBlock10Stack3 := (recoveredBlock10Stack3) externalConnector.
            recoveredBlock10PC := 69.
        ].
        recoveredBlock10Step = 69 ifTrue: [
            (recoveredBlock10Stack2 == recoveredBlock10Stack3) ifTrue: [recoveredBlock10PC := 85] ifFalse: [recoveredBlock10PC := 72].
        ].
        recoveredBlock10Step = 72 ifTrue: [
            recoveredBlock10PC := 73.
        ].
        recoveredBlock10Step = 73 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Local1.
            recoveredBlock10PC := 74.
        ].
        recoveredBlock10Step = 74 ifTrue: [
            recoveredBlock10Stack2 := 90.
            recoveredBlock10PC := 78.
        ].
        recoveredBlock10Step = 78 ifTrue: [
            (recoveredBlock10Stack1) smSyntaxErrNo: (recoveredBlock10Stack2).
            recoveredBlock10PC := 80.
        ].
        recoveredBlock10Step = 80 ifTrue: [
            recoveredBlock10Stack1 := false.
            recoveredBlock10PC := 81.
        ].
        recoveredBlock10Step = 81 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Stack1.
            recoveredBlock10PC := 82.
        ].
        recoveredBlock10Step = 82 ifTrue: [
            recoveredLocal1 := recoveredBlock10Stack2.
            recoveredBlock10PC := 85.
        ].
        recoveredBlock10Step = 85 ifTrue: [
            recoveredBlock10Stack2 := nil.
            recoveredBlock10PC := 86.
        ].
        recoveredBlock10Step = 86 ifTrue: [
            recoveredBlock10Local1 := recoveredBlock10Stack2.
            recoveredBlock10PC := 87.
        ].
        recoveredBlock10Step = 87 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x203ff7ec; bytecode file offset 0xcfc0c0"
!SGTopHierarchyState methodsFor: 'recovered'!
analyzeBlockConnector: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) receiver.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isBdlHierarchyConnector.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiver.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) interfaceElement.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) externalConnector.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) receiver.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) internalConnector.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) externalConnector.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) isConnected.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := 11.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) smWarningNo: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) sender.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) isBdlHierarchyConnector.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 93].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) sender.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) interfaceElement.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) externalConnector.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) sender.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) internalConnector.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) externalConnector.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) isConnected.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 89] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) smWarningNo: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204e3300; bytecode file offset 0xddfc00"
!SGTopHierarchyState methodsFor: 'recovered'!
checkCalledStateReset: recoveredArg1 caller: recoveredArg2 transitions: recoveredArg3 visited: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlReinitializeMethod.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 96.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack5 := [:block281089b8Arg1 | 
    | block281089b8Value0 block281089b8Value1 |
    block281089b8Value0 := block281089b8Arg1.
    block281089b8Value1 := (block281089b8Value0) source.
    block281089b8Value1
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := (recoveredStack4) collect: (recoveredStack5).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack6 := [:block281089dcArg1 | 
    | block281089dcValue0 block281089dcValue1 |
    block281089dcValue0 := block281089dcArg1.
    block281089dcValue1 := (block281089dcValue0) errLabel.
    block281089dcValue1
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack5 := (recoveredStack5) collect: (recoveredStack6).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := (recoveredStack3) createMultiSource: (recoveredStack4) labels: (recoveredStack5).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) smSemErrNo: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) scope.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) scope.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := 96.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack5 := [:block28108a00Arg1 | 
    | block28108a00Value0 block28108a00Value1 |
    block28108a00Value0 := block28108a00Arg1.
    block28108a00Value1 := (block28108a00Value0) source.
    block28108a00Value1
].
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack4 := (recoveredStack4) collect: (recoveredStack5).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack6 := [:block28108a24Arg1 | 
    | block28108a24Value0 block28108a24Value1 |
    block28108a24Value0 := block28108a24Arg1.
    block28108a24Value1 := (block28108a24Value0) errLabel.
    block28108a24Value1
].
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack5 := (recoveredStack5) collect: (recoveredStack6).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := (recoveredStack3) createMultiSource: (recoveredStack4) labels: (recoveredStack5).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack1) smWarningNo: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) calledMethods.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := [:recoveredBlock131Arg1 | 
    | recoveredBlock131Value0 recoveredBlock131Value1 recoveredBlock131Value2 recoveredBlock131Value3 recoveredBlock131Value4 recoveredBlock131Value5 recoveredBlock131Value6 recoveredBlock131Value7 |
    recoveredBlock131Value0 := recoveredBlock131Arg1.
    recoveredBlock131Value1 := recoveredArg1.
    recoveredBlock131Value2 := recoveredArg3.
    recoveredBlock131Value3 := recoveredArg4.
    recoveredBlock131Value4 := (recoveredBlock131Value3) copy.
    recoveredBlock131Value5 := recoveredBlock131Value4.
    recoveredBlock131Value6 := recoveredArg1.
    (recoveredBlock131Value5) add: (recoveredBlock131Value6).
    recoveredBlock131Value7 := (self) checkCalledStateReset: (recoveredBlock131Value0) caller: (recoveredBlock131Value1) transitions: (recoveredBlock131Value2) visited: (recoveredBlock131Value4).
    recoveredBlock131Value7
].
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205038a0; bytecode file offset 0xe00198"
!SGTopHierarchyState methodsFor: 'recovered'!
analyzeBlockConnectors
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := iDTable.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) isBdlHierarchyConnector.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 24] ifFalse: [recoveredBlock12PC := 39].
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 25.
        ].
        recoveredBlock12Step = 25 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) isConnected.
            recoveredBlock12PC := 26.
        ].
        recoveredBlock12Step = 26 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 30] ifFalse: [recoveredBlock12PC := 39].
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12PC := 31.
        ].
        recoveredBlock12Step = 31 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal2.
            recoveredBlock12PC := 34.
        ].
        recoveredBlock12Step = 34 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 35.
        ].
        recoveredBlock12Step = 35 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) connection.
            recoveredBlock12PC := 37.
        ].
        recoveredBlock12Step = 37 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) add: (recoveredBlock12Stack2).
            recoveredBlock12PC := 39.
        ].
        recoveredBlock12Step = 39 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := (self) allTransitions.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := [:recoveredBlock50Arg1 | 
    | recoveredBlock50Local1 recoveredBlock50Stack0 recoveredBlock50Stack1 recoveredBlock50Stack2 recoveredBlock50Stack3 recoveredBlock50Stack4 recoveredBlock50PC recoveredBlock50Step recoveredBlock50Done recoveredBlock50Result |
    recoveredBlock50Stack0 := self.
    recoveredBlock50PC := 56.
    recoveredBlock50Done := false.
    [recoveredBlock50Done not] whileTrue: [
        recoveredBlock50Step := recoveredBlock50PC.
        recoveredBlock50Step = 56 ifTrue: [
            recoveredBlock50Stack1 := recoveredBlock50Arg1.
            recoveredBlock50PC := 57.
        ].
        recoveredBlock50Step = 57 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) startState.
            recoveredBlock50PC := 59.
        ].
        recoveredBlock50Step = 59 ifTrue: [
            recoveredBlock50Local1 := recoveredBlock50Stack1.
            recoveredBlock50PC := 60.
        ].
        recoveredBlock50Step = 60 ifTrue: [
            recoveredBlock50PC := 98.
        ].
        recoveredBlock50Step = 64 ifTrue: [
            recoveredBlock50Stack1 := recoveredBlock50Local1.
            recoveredBlock50PC := 65.
        ].
        recoveredBlock50Step = 65 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) interfaceElement.
            recoveredBlock50PC := 67.
        ].
        recoveredBlock50Step = 67 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) internalConnector.
            recoveredBlock50PC := 69.
        ].
        recoveredBlock50Step = 69 ifTrue: [
            recoveredBlock50Local1 := recoveredBlock50Stack1.
            recoveredBlock50PC := 70.
        ].
        recoveredBlock50Step = 70 ifTrue: [
            recoveredBlock50Stack1 := recoveredBlock50Local1.
            recoveredBlock50PC := 71.
        ].
        recoveredBlock50Step = 71 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) isConnected.
            recoveredBlock50PC := 72.
        ].
        recoveredBlock50Step = 72 ifTrue: [
            (recoveredBlock50Stack1) ifTrue: [recoveredBlock50PC := 76] ifFalse: [recoveredBlock50PC := 96].
        ].
        recoveredBlock50Step = 76 ifTrue: [
            recoveredBlock50Stack1 := recoveredBlock50Local1.
            recoveredBlock50PC := 77.
        ].
        recoveredBlock50Step = 77 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) connection.
            recoveredBlock50PC := 79.
        ].
        recoveredBlock50Step = 79 ifTrue: [
            recoveredBlock50Local1 := recoveredBlock50Stack1.
            recoveredBlock50PC := 80.
        ].
        recoveredBlock50Step = 80 ifTrue: [
            recoveredBlock50Stack1 := recoveredLocal2.
            recoveredBlock50PC := 83.
        ].
        recoveredBlock50Step = 83 ifTrue: [
            recoveredBlock50Stack2 := recoveredBlock50Local1.
            recoveredBlock50PC := 84.
        ].
        recoveredBlock50Step = 84 ifTrue: [
            recoveredBlock50Stack3 := [].
            recoveredBlock50PC := 86.
        ].
        recoveredBlock50Step = 86 ifTrue: [
            (recoveredBlock50Stack1) remove: (recoveredBlock50Stack2) ifAbsent: (recoveredBlock50Stack3).
            recoveredBlock50PC := 88.
        ].
        recoveredBlock50Step = 88 ifTrue: [
            recoveredBlock50Stack1 := recoveredBlock50Local1.
            recoveredBlock50PC := 89.
        ].
        recoveredBlock50Step = 89 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) sender.
            recoveredBlock50PC := 91.
        ].
        recoveredBlock50Step = 91 ifTrue: [
            recoveredBlock50Local1 := recoveredBlock50Stack1.
            recoveredBlock50PC := 92.
        ].
        recoveredBlock50Step = 92 ifTrue: [
            recoveredBlock50PC := 98.
        ].
        recoveredBlock50Step = 96 ifTrue: [
            recoveredBlock50Stack1 := nil.
            recoveredBlock50PC := 97.
        ].
        recoveredBlock50Step = 97 ifTrue: [
            recoveredBlock50Local1 := recoveredBlock50Stack1.
            recoveredBlock50PC := 98.
        ].
        recoveredBlock50Step = 98 ifTrue: [
            recoveredBlock50Stack1 := recoveredBlock50Local1.
            recoveredBlock50PC := 99.
        ].
        recoveredBlock50Step = 99 ifTrue: [
            (recoveredBlock50Stack1 == nil) ifTrue: [recoveredBlock50PC := 106] ifFalse: [recoveredBlock50PC := 102].
        ].
        recoveredBlock50Step = 102 ifTrue: [
            recoveredBlock50Stack1 := recoveredBlock50Local1.
            recoveredBlock50PC := 103.
        ].
        recoveredBlock50Step = 103 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) isBdlHierarchyConnector.
            recoveredBlock50PC := 104.
        ].
        recoveredBlock50Step = 104 ifTrue: [
            (recoveredBlock50Stack1) ifTrue: [recoveredBlock50PC := 64] ifFalse: [recoveredBlock50PC := 106].
        ].
        recoveredBlock50Step = 106 ifTrue: [
            recoveredBlock50Stack1 := recoveredBlock50Arg1.
            recoveredBlock50PC := 107.
        ].
        recoveredBlock50Step = 107 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) endState.
            recoveredBlock50PC := 109.
        ].
        recoveredBlock50Step = 109 ifTrue: [
            recoveredBlock50Local1 := recoveredBlock50Stack1.
            recoveredBlock50PC := 110.
        ].
        recoveredBlock50Step = 110 ifTrue: [
            recoveredBlock50PC := 148.
        ].
        recoveredBlock50Step = 114 ifTrue: [
            recoveredBlock50Stack1 := recoveredBlock50Local1.
            recoveredBlock50PC := 115.
        ].
        recoveredBlock50Step = 115 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) interfaceElement.
            recoveredBlock50PC := 117.
        ].
        recoveredBlock50Step = 117 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) internalConnector.
            recoveredBlock50PC := 119.
        ].
        recoveredBlock50Step = 119 ifTrue: [
            recoveredBlock50Local1 := recoveredBlock50Stack1.
            recoveredBlock50PC := 120.
        ].
        recoveredBlock50Step = 120 ifTrue: [
            recoveredBlock50Stack1 := recoveredBlock50Local1.
            recoveredBlock50PC := 121.
        ].
        recoveredBlock50Step = 121 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) isConnected.
            recoveredBlock50PC := 122.
        ].
        recoveredBlock50Step = 122 ifTrue: [
            (recoveredBlock50Stack1) ifTrue: [recoveredBlock50PC := 126] ifFalse: [recoveredBlock50PC := 146].
        ].
        recoveredBlock50Step = 126 ifTrue: [
            recoveredBlock50Stack1 := recoveredBlock50Local1.
            recoveredBlock50PC := 127.
        ].
        recoveredBlock50Step = 127 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) connection.
            recoveredBlock50PC := 129.
        ].
        recoveredBlock50Step = 129 ifTrue: [
            recoveredBlock50Local1 := recoveredBlock50Stack1.
            recoveredBlock50PC := 130.
        ].
        recoveredBlock50Step = 130 ifTrue: [
            recoveredBlock50Stack1 := recoveredLocal2.
            recoveredBlock50PC := 133.
        ].
        recoveredBlock50Step = 133 ifTrue: [
            recoveredBlock50Stack2 := recoveredBlock50Local1.
            recoveredBlock50PC := 134.
        ].
        recoveredBlock50Step = 134 ifTrue: [
            recoveredBlock50Stack3 := [].
            recoveredBlock50PC := 136.
        ].
        recoveredBlock50Step = 136 ifTrue: [
            (recoveredBlock50Stack1) remove: (recoveredBlock50Stack2) ifAbsent: (recoveredBlock50Stack3).
            recoveredBlock50PC := 138.
        ].
        recoveredBlock50Step = 138 ifTrue: [
            recoveredBlock50Stack1 := recoveredBlock50Local1.
            recoveredBlock50PC := 139.
        ].
        recoveredBlock50Step = 139 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) receiver.
            recoveredBlock50PC := 141.
        ].
        recoveredBlock50Step = 141 ifTrue: [
            recoveredBlock50Local1 := recoveredBlock50Stack1.
            recoveredBlock50PC := 142.
        ].
        recoveredBlock50Step = 142 ifTrue: [
            recoveredBlock50PC := 148.
        ].
        recoveredBlock50Step = 146 ifTrue: [
            recoveredBlock50Stack1 := nil.
            recoveredBlock50PC := 147.
        ].
        recoveredBlock50Step = 147 ifTrue: [
            recoveredBlock50Local1 := recoveredBlock50Stack1.
            recoveredBlock50PC := 148.
        ].
        recoveredBlock50Step = 148 ifTrue: [
            recoveredBlock50Stack1 := recoveredBlock50Local1.
            recoveredBlock50PC := 149.
        ].
        recoveredBlock50Step = 149 ifTrue: [
            (recoveredBlock50Stack1 == nil) ifTrue: [recoveredBlock50PC := 156] ifFalse: [recoveredBlock50PC := 152].
        ].
        recoveredBlock50Step = 152 ifTrue: [
            recoveredBlock50Stack1 := recoveredBlock50Local1.
            recoveredBlock50PC := 153.
        ].
        recoveredBlock50Step = 153 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) isBdlHierarchyConnector.
            recoveredBlock50PC := 154.
        ].
        recoveredBlock50Step = 154 ifTrue: [
            (recoveredBlock50Stack1) ifTrue: [recoveredBlock50PC := 114] ifFalse: [recoveredBlock50PC := 156].
        ].
        recoveredBlock50Step = 156 ifTrue: [
            recoveredBlock50Stack1 := nil.
            recoveredBlock50PC := 157.
        ].
        recoveredBlock50Step = 157 ifTrue: [
            recoveredBlock50Result := recoveredBlock50Stack1.
            recoveredBlock50Done := true.
        ].
    ].
    recoveredBlock50Result
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := [:recoveredBlock163Arg1 | 
    | recoveredBlock163Value0 recoveredBlock163Value1 |
    recoveredBlock163Value0 := recoveredBlock163Arg1.
    recoveredBlock163Value1 := (self) analyzeBlockConnector: (recoveredBlock163Value0).
    recoveredBlock163Value1
].
    (recoveredValue7) do: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x20517b28; bytecode file offset 0xe14448"
!SGTopHierarchyState methodsFor: 'recovered'!
analyzeStateIds: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Local1 recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17Stack5 recoveredBlock17Stack6 recoveredBlock17Stack7 recoveredBlock17Stack8 recoveredBlock17Stack9 recoveredBlock17Stack10 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal2.
            recoveredBlock17PC := 27.
        ].
        recoveredBlock17Step = 27 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 28.
        ].
        recoveredBlock17Step = 28 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) cgenId.
            recoveredBlock17PC := 29.
        ].
        recoveredBlock17Step = 29 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) includesKey: (recoveredBlock17Stack2).
            recoveredBlock17PC := 30.
        ].
        recoveredBlock17Step = 30 ifTrue: [
            (recoveredBlock17Stack1) ifTrue: [recoveredBlock17PC := 34] ifFalse: [recoveredBlock17PC := 121].
        ].
        recoveredBlock17Step = 34 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal2.
            recoveredBlock17PC := 37.
        ].
        recoveredBlock17Step = 37 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 38.
        ].
        recoveredBlock17Step = 38 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) cgenId.
            recoveredBlock17PC := 39.
        ].
        recoveredBlock17Step = 39 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) at: (recoveredBlock17Stack2).
            recoveredBlock17PC := 41.
        ].
        recoveredBlock17Step = 41 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack1.
            recoveredBlock17PC := 42.
        ].
        recoveredBlock17Step = 42 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Arg1.
            recoveredBlock17PC := 43.
        ].
        recoveredBlock17Step = 43 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) name.
            recoveredBlock17PC := 45.
        ].
        recoveredBlock17Step = 45 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local1.
            recoveredBlock17PC := 46.
        ].
        recoveredBlock17Step = 46 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) name.
            recoveredBlock17PC := 48.
        ].
        recoveredBlock17Step = 48 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) = (recoveredBlock17Stack2).
            recoveredBlock17PC := 49.
        ].
        recoveredBlock17Step = 49 ifTrue: [
            (recoveredBlock17Stack1) ifTrue: [recoveredBlock17PC := 52] ifFalse: [recoveredBlock17PC := 100].
        ].
        recoveredBlock17Step = 52 ifTrue: [
            recoveredBlock17Stack1 := true.
            recoveredBlock17PC := 53.
        ].
        recoveredBlock17Step = 53 ifTrue: [
            recoveredLocal1 := recoveredBlock17Stack1.
            recoveredBlock17PC := 56.
        ].
        recoveredBlock17Step = 56 ifTrue: [
            recoveredBlock17Stack1 := self.
            recoveredBlock17PC := 57.
        ].
        recoveredBlock17Step = 57 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) errorHandler.
            recoveredBlock17PC := 59.
        ].
        recoveredBlock17Step = 59 ifTrue: [
            recoveredBlock17Stack2 := 73.
            recoveredBlock17PC := 62.
        ].
        recoveredBlock17Step = 62 ifTrue: [
            recoveredBlock17Stack3 := Array.
            recoveredBlock17PC := 64.
        ].
        recoveredBlock17Step = 64 ifTrue: [
            recoveredBlock17Stack4 := recoveredBlock17Arg1.
            recoveredBlock17PC := 65.
        ].
        recoveredBlock17Step = 65 ifTrue: [
            recoveredBlock17Stack4 := (recoveredBlock17Stack4) name.
            recoveredBlock17PC := 67.
        ].
        recoveredBlock17Step = 67 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) with: (recoveredBlock17Stack4).
            recoveredBlock17PC := 69.
        ].
        recoveredBlock17Step = 69 ifTrue: [
            recoveredBlock17Stack4 := 'Sm'.
            recoveredBlock17PC := 71.
        ].
        recoveredBlock17Step = 71 ifTrue: [
            recoveredBlock17Stack5 := recoveredBlock17Arg1.
            recoveredBlock17PC := 72.
        ].
        recoveredBlock17Step = 72 ifTrue: [
            recoveredBlock17Stack5 := (recoveredBlock17Stack5) source.
            recoveredBlock17PC := 74.
        ].
        recoveredBlock17Step = 74 ifTrue: [
            recoveredBlock17Stack6 := Array.
            recoveredBlock17PC := 76.
        ].
        recoveredBlock17Step = 76 ifTrue: [
            recoveredBlock17Stack7 := recoveredBlock17Arg1.
            recoveredBlock17PC := 77.
        ].
        recoveredBlock17Step = 77 ifTrue: [
            recoveredBlock17Stack7 := (recoveredBlock17Stack7) source.
            recoveredBlock17PC := 79.
        ].
        recoveredBlock17Step = 79 ifTrue: [
            recoveredBlock17Stack8 := recoveredBlock17Local1.
            recoveredBlock17PC := 80.
        ].
        recoveredBlock17Step = 80 ifTrue: [
            recoveredBlock17Stack8 := (recoveredBlock17Stack8) source.
            recoveredBlock17PC := 82.
        ].
        recoveredBlock17Step = 82 ifTrue: [
            recoveredBlock17Stack6 := (recoveredBlock17Stack6) with: (recoveredBlock17Stack7) with: (recoveredBlock17Stack8).
            recoveredBlock17PC := 84.
        ].
        recoveredBlock17Step = 84 ifTrue: [
            recoveredBlock17Stack7 := Array.
            recoveredBlock17PC := 86.
        ].
        recoveredBlock17Step = 86 ifTrue: [
            recoveredBlock17Stack8 := 'first'.
            recoveredBlock17PC := 88.
        ].
        recoveredBlock17Step = 88 ifTrue: [
            recoveredBlock17Stack9 := 'second'.
            recoveredBlock17PC := 90.
        ].
        recoveredBlock17Step = 90 ifTrue: [
            recoveredBlock17Stack7 := (recoveredBlock17Stack7) with: (recoveredBlock17Stack8) with: (recoveredBlock17Stack9).
            recoveredBlock17PC := 92.
        ].
        recoveredBlock17Step = 92 ifTrue: [
            recoveredBlock17Stack5 := (recoveredBlock17Stack5) createMultiSource: (recoveredBlock17Stack6) labels: (recoveredBlock17Stack7).
            recoveredBlock17PC := 94.
        ].
        recoveredBlock17Step = 94 ifTrue: [
            (recoveredBlock17Stack1) syntaxErrorNo: (recoveredBlock17Stack2) args: (recoveredBlock17Stack3) category: (recoveredBlock17Stack4) source: (recoveredBlock17Stack5).
            recoveredBlock17PC := 97.
        ].
        recoveredBlock17Step = 97 ifTrue: [
            recoveredBlock17PC := 119.
        ].
        recoveredBlock17Step = 100 ifTrue: [
            recoveredBlock17Stack1 := self.
            recoveredBlock17PC := 101.
        ].
        recoveredBlock17Step = 101 ifTrue: [
            recoveredBlock17Stack2 := [
    false
].
            recoveredBlock17PC := 103.
        ].
        recoveredBlock17Step = 103 ifTrue: [
            recoveredBlock17PC := 108.
        ].
        recoveredBlock17Step = 108 ifTrue: [
            recoveredBlock17Stack3 := [
    'State machine contains duplicate state numbers'
].
            recoveredBlock17PC := 110.
        ].
        recoveredBlock17Step = 110 ifTrue: [
            recoveredBlock17PC := 117.
        ].
        recoveredBlock17Step = 117 ifTrue: [
            (recoveredBlock17Stack1) ileAssert: (recoveredBlock17Stack2) message: (recoveredBlock17Stack3).
            recoveredBlock17PC := 119.
        ].
        recoveredBlock17Step = 119 ifTrue: [
            recoveredBlock17Stack1 := nil.
            recoveredBlock17PC := 120.
        ].
        recoveredBlock17Step = 120 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack1.
            recoveredBlock17PC := 121.
        ].
        recoveredBlock17Step = 121 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal2.
            recoveredBlock17PC := 124.
        ].
        recoveredBlock17Step = 124 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 125.
        ].
        recoveredBlock17Step = 125 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) cgenId.
            recoveredBlock17PC := 126.
        ].
        recoveredBlock17Step = 126 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Arg1.
            recoveredBlock17PC := 127.
        ].
        recoveredBlock17Step = 127 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) at: (recoveredBlock17Stack2) put: (recoveredBlock17Stack3).
            recoveredBlock17PC := 129.
        ].
        recoveredBlock17Step = 129 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) keys.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := [:recoveredBlock153Arg1 :recoveredBlock153Arg2 | 
    | recoveredBlock153Stack0 recoveredBlock153Stack1 recoveredBlock153Stack2 recoveredBlock153Stack3 recoveredBlock153PC recoveredBlock153Step recoveredBlock153Done recoveredBlock153Result |
    recoveredBlock153Stack0 := self.
    recoveredBlock153PC := 160.
    recoveredBlock153Done := false.
    [recoveredBlock153Done not] whileTrue: [
        recoveredBlock153Step := recoveredBlock153PC.
        recoveredBlock153Step = 160 ifTrue: [
            recoveredBlock153Stack1 := [
    | recoveredBlock153Block160Value0 recoveredBlock153Block160Value1 recoveredBlock153Block160Value2 recoveredBlock153Block160Value3 |
    recoveredBlock153Block160Value0 := recoveredBlock153Arg1.
    recoveredBlock153Block160Value1 := recoveredBlock153Arg2.
    recoveredBlock153Block160Value2 := (recoveredBlock153Block160Value1) + (-1).
    recoveredBlock153Block160Value3 := (recoveredBlock153Block160Value0) = (recoveredBlock153Block160Value2).
    recoveredBlock153Block160Value3
].
            recoveredBlock153PC := 175.
        ].
        recoveredBlock153Step = 175 ifTrue: [
            recoveredBlock153Stack2 := [
    'States are not numbered consecutively'
].
            recoveredBlock153PC := 177.
        ].
        recoveredBlock153Step = 177 ifTrue: [
            recoveredBlock153PC := 183.
        ].
        recoveredBlock153Step = 183 ifTrue: [
            recoveredBlock153Stack0 := (recoveredBlock153Stack0) ileAssert: (recoveredBlock153Stack1) message: (recoveredBlock153Stack2).
            recoveredBlock153PC := 185.
        ].
        recoveredBlock153Step = 185 ifTrue: [
            recoveredBlock153Result := recoveredBlock153Stack0.
            recoveredBlock153Done := true.
        ].
    ].
    recoveredBlock153Result
].
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2051bc78; bytecode file offset 0xe185a8"
!SGTopHierarchyState methodsFor: 'recovered'!
buildMdlMethods
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) initESDLController.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := SGSmGenerator.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) logicManager.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := SGSmAbstractEstimateSize.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := SGSmAbstractEstimateSize.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) GenericCost.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) setCost: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicManager.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizeOutlineStatemachineMethods.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicManager.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) autoInlinePrivateMethodsForSM.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := SGSmOutlineMethodStrategy.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlBuilder.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdClassInProcess.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := SGSmEstimateSizeSimple.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) logicManager.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := (recoveredStack3) optimizeOutlineStatemachineMethods.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack4 := (recoveredStack4) logicManager.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := (recoveredStack4) autoInlinePrivateMethodsForSM.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForClass: (recoveredStack1) sizeEstimatorClass: (recoveredStack2) outlining: (recoveredStack3) autoInlining: (recoveredStack4).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) methodStrategy: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 90.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := SGSmInlineMethodStrategy.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlBuilder.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdClassInProcess.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForClass: (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) methodStrategy: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) methods.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := [:recoveredBlock93Arg1 | 
    | recoveredBlock93Value0 recoveredBlock93Value1 recoveredBlock93Value2 |
    recoveredBlock93Value0 := recoveredBlock93Arg1.
    recoveredBlock93Value1 := recoveredLocal3.
    recoveredBlock93Value2 := (recoveredBlock93Value0) generator: (recoveredBlock93Value1).
    recoveredBlock93Value2
].
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) enableVirtualMethodCreation.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            super buildMdlMethods.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) disableVirtualMethodCreation.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodStrategy.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) outlineMethods: (recoveredStack1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            super buildMdlMethods.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodStrategy.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack0) dispose.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) methods.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := [:block2810bdc0Arg1 | 
    | block2810bdc0Value0 block2810bdc0Value1 |
    block2810bdc0Value0 := block2810bdc0Arg1.
    block2810bdc0Value1 := (block2810bdc0Value0) generator: (nil).
    block2810bdc0Value1
].
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := [:recoveredBlock159Arg1 | 
    | recoveredBlock159Value0 recoveredBlock159Value1 recoveredBlock159Value2 recoveredBlock159Value3 recoveredBlock159Value4 |
    recoveredBlock159Value0 := recoveredBlock159Arg1.
    recoveredBlock159Value1 := recoveredLocal3.
    recoveredBlock159Value2 := (recoveredBlock159Value1) calledFromTransition.
    recoveredBlock159Value3 := recoveredLocal2.
    recoveredBlock159Value4 := (self) checkCalledMethods: (recoveredBlock159Value0) calledFromTransition: (recoveredBlock159Value2) listener: (recoveredBlock159Value3).
    recoveredBlock159Value4
].
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicManager.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack0) addLogicListener: (recoveredStack1).
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

