"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20009d88; bytecode file offset 0x908be4"
!SGBdlHierarchyState methodsFor: 'recovered'!
isHistory
    | recoveredValue0 |
    recoveredValue0 := (self) history.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016b44; bytecode file offset 0x92209c"
!SGBdlHierarchyState methodsFor: 'recovered'!
hierarchyLabel
    ^'hierarchy'
! !

"ASDBase.ic method 0x20033ef4; bytecode file offset 0x934580"
!SGBdlHierarchyState methodsFor: 'recovered'!
allStates
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) children.
    recoveredValue1 := (recoveredValue0) statesOnly.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20050d48; bytecode file offset 0x94d604"
!SGBdlHierarchyState methodsFor: 'recovered'!
level
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (recoveredValue0) level.
    recoveredValue2 := (recoveredValue1) + (1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20054ac8; bytecode file offset 0x952a9c"
!SGBdlHierarchyState methodsFor: 'recovered'!
acceptBdlVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) acceptBdlHierarchyState: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20057ff8; bytecode file offset 0x956284"
!SGBdlHierarchyState methodsFor: 'recovered'!
iDTableAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) iDTableAt: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200646a4; bytecode file offset 0x961970"
!SGBdlHierarchyState methodsFor: 'recovered'!
analyzeOverlappingStates
    | recoveredValue0 |
    recoveredValue0 := (self) children.
    (recoveredValue0) analyzeOverlappingStates.
    ^self
! !

"ASDBase.ic method 0x2006e204; bytecode file offset 0x96af48"
!SGBdlHierarchyState methodsFor: 'recovered'!
children
    | recoveredValue0 |
    recoveredValue0 := children.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ea68; bytecode file offset 0x96b41c"
!SGBdlHierarchyState methodsFor: 'recovered'!
history
    | recoveredValue0 |
    recoveredValue0 := history.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20077fdc; bytecode file offset 0x9757c8"
!SGBdlHierarchyState methodsFor: 'recovered'!
isHierarchyState
    ^true
! !

"ASDBase.ic method 0x200ae4c8; bytecode file offset 0x9ab034"
!SGBdlHierarchyState methodsFor: 'recovered'!
iDTableAt: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) iDTableAt: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c5038; bytecode file offset 0x9c1afc"
!SGBdlHierarchyState methodsFor: 'recovered'!
history: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    history := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d229c; bytecode file offset 0x9cebc0"
!SGBdlHierarchyState methodsFor: 'recovered'!
errLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super errLabel.
    recoveredValue1 := ('hierarchy ') , (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200e6630; bytecode file offset 0x9e30bc"
!SGBdlHierarchyState methodsFor: 'recovered'!
analyzeTransitions
    | recoveredValue0 |
    super analyzeTransitions.
    recoveredValue0 := (self) children.
    (recoveredValue0) analyzeTransitionsInHierarchy.
    ^self
! !

"ASDBase.ic method 0x200e6648; bytecode file offset 0x9e30bc"
!SGBdlHierarchyState methodsFor: 'recovered'!
reset
    | recoveredValue0 |
    super reset.
    recoveredValue0 := (self) children.
    (recoveredValue0) resetHierarchy.
    ^self
! !

"ASDBase.ic method 0x200e92c0; bytecode file offset 0x9e5b7c"
!SGBdlHierarchyState methodsFor: 'recovered'!
addBlock: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) parent: (self).
    recoveredValue1 := children.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) add: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200f01dc; bytecode file offset 0x9ecaa0"
!SGBdlHierarchyState methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    children := recoveredValue1.
    super initialize.
    ^self
! !

"ASDBase.ic method 0x200f0274; bytecode file offset 0x9ecb3c"
!SGBdlHierarchyState methodsFor: 'recovered'!
historyName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGReservedNames.
    recoveredValue1 := (recoveredValue0) tempVarName.
    recoveredValue2 := (recoveredValue1) , ('history_').
    recoveredValue3 := (self) mdlLabel.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f7d64; bytecode file offset 0x9f4e38"
!SGBdlHierarchyState methodsFor: 'recovered'!
transitionOnlyChildren
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
            recoveredStack1 := [:block280c5214Arg1 | 
    | block280c5214Value0 block280c5214Value1 |
    block280c5214Value0 := block280c5214Arg1.
    block280c5214Value1 := (block280c5214Value0) isBdlTransition.
    block280c5214Value1
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

"ASDBase.ic method 0x200f90a0; bytecode file offset 0x9f595c"
!SGBdlHierarchyState methodsFor: 'recovered'!
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

"ASDBase.ic method 0x2010f068; bytecode file offset 0xa0b974"
!SGBdlHierarchyState methodsFor: 'recovered'!
collectOutTransitions: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super collectOutTransitions: (recoveredValue0).
    recoveredValue1 := (self) children.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) collectTransitionsOfHierarchy: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2011b958; bytecode file offset 0xa18214"
!SGBdlHierarchyState methodsFor: 'recovered'!
asMdlInitValue
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := -1.
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
            recoveredStack0 := (recoveredStack0) startState.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201566a0; bytecode file offset 0xa52fb0"
!SGBdlHierarchyState methodsFor: 'recovered'!
isProperHierarchyChild: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) children.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) isHierarchyChild: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    recoveredValue2 := (recoveredValue0) anySatisfy: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20181ef8; bytecode file offset 0xa7e7c8"
!SGBdlHierarchyState methodsFor: 'recovered'!
hasHierarchyExit
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasExit.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) statesOnly.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:block280d02fcArg1 | 
    | block280d02fcValue0 block280d02fcValue1 |
    block280d02fcValue0 := block280d02fcArg1.
    block280d02fcValue1 := (block280d02fcValue0) hasHierarchyExit.
    block280d02fcValue1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) or: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20190678; bytecode file offset 0xa8cf5c"
!SGBdlHierarchyState methodsFor: 'recovered'!
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

"ASDBase.ic method 0x201db240; bytecode file offset 0xad7b00"
!SGBdlHierarchyState methodsFor: 'recovered'!
isHierarchyChild: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := true.
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
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := recoveredArg1.
    recoveredBlock14Value2 := (recoveredBlock14Value0) isHierarchyChild: (recoveredBlock14Value1).
    recoveredBlock14Value2
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f65c4; bytecode file offset 0xaf2e8c"
!SGBdlHierarchyState methodsFor: 'recovered'!
collectStates: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    super collectStates: (recoveredValue0).
    recoveredValue1 := (self) children.
    recoveredValue2 := (recoveredValue1) statesOnly.
    recoveredValue3 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := recoveredArg1.
    recoveredBlock14Value2 := (recoveredBlock14Value0) collectStates: (recoveredBlock14Value1).
    recoveredBlock14Value2
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20203364; bytecode file offset 0xaffc30"
!SGBdlHierarchyState methodsFor: 'recovered'!
allTransitions: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) children.
    recoveredValue2 := (recoveredValue1) transitionsOnly.
    (recoveredValue0) addAll: (recoveredValue2).
    recoveredValue3 := (self) children.
    recoveredValue4 := (recoveredValue3) junctionsAndStatesOnly.
    recoveredValue5 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := recoveredArg1.
    recoveredBlock14Value2 := (recoveredBlock14Value0) allTransitions: (recoveredBlock14Value1).
    recoveredBlock14Value2
].
    (recoveredValue4) do: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20220cec; bytecode file offset 0xb1d5bc"
!SGBdlHierarchyState methodsFor: 'recovered'!
addPort: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGHierarchyBlockPort.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 'UNDEF'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPort: (recoveredStack2) direction: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            super addPort: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceEntryPoint.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ea5dc; bytecode file offset 0xbe6ec8"
!SGBdlHierarchyState methodsFor: 'recovered'!
levelName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isHistory.
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
            recoveredStack0 := (recoveredStack0) historyName.
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
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) statesOnly.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [:block280e7abcArg1 | 
    | block280e7abcValue0 block280e7abcValue1 |
    block280e7abcValue0 := block280e7abcArg1.
    block280e7abcValue1 := (block280e7abcValue0) isBdlHierarchyState.
    block280e7abcValue1
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := SGReservedNames.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) tempVarName.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 'smLevel_'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) level.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) stateVariableName.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

