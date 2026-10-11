"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000bd68; bytecode file offset 0x908be4"
!SGSmFlatGenerator methodsFor: 'recovered'!
mostConcreteEffectiveStartState
    | recoveredValue0 |
    recoveredValue0 := (self) effectiveFinalStartState.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ebdc; bytecode file offset 0x96b8a0"
!SGSmFlatGenerator methodsFor: 'recovered'!
effectiveFinalStartState
    | recoveredValue0 |
    recoveredValue0 := effectiveFinalStartState.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20086418; bytecode file offset 0x982e18"
!SGSmFlatGenerator methodsFor: 'recovered'!
exits: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) effectiveFinalStartState.
    recoveredValue1 := (recoveredValue0) fullPath.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) backUnequal: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b2664; bytecode file offset 0x9aef4c"
!SGSmFlatGenerator methodsFor: 'recovered'!
buildMdlExitActions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) statics.
    recoveredValue1 := (self) exits: (recoveredValue0).
    (self) buildMdlExitActions: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c5370; bytecode file offset 0x9c1f64"
!SGSmFlatGenerator methodsFor: 'recovered'!
effectiveFinalStartState: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    effectiveFinalStartState := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c8ff4; bytecode file offset 0x9c58b0"
!SGSmFlatGenerator methodsFor: 'recovered'!
buildMdlStateAssign: recoveredArg1 entries: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    super buildMdlSMAssign: (recoveredValue0) entries: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2013267c; bytecode file offset 0xa2ef68"
!SGSmFlatGenerator methodsFor: 'recovered'!
buildMdlExitActions: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (self) exitAction: (recoveredBlock5Value0).
    recoveredBlock5Value1
].
    (recoveredValue0) reverseDo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201ea380; bytecode file offset 0xae6c44"
!SGSmFlatGenerator methodsFor: 'recovered'!
generateCode: recoveredArg1 trigger: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    (self) trigger: (recoveredValue0).
    recoveredValue1 := (self) methodStrategy.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := [
    | recoveredBlock14Value0 recoveredBlock14Value1 |
    recoveredBlock14Value0 := recoveredArg1.
    recoveredBlock14Value1 := (self) buildMdlSwitch: (recoveredBlock14Value0).
    recoveredBlock14Value1
].
    (recoveredValue1) method: (recoveredValue2) code: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2031f29c; bytecode file offset 0xc1bb80"
!SGSmFlatGenerator methodsFor: 'recovered'!
buildMdlSwitch: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) allStates: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280eb89cArg1 :block280eb89cArg2 | 
    | block280eb89cValue0 block280eb89cValue1 block280eb89cValue2 block280eb89cValue3 block280eb89cValue4 |
    block280eb89cValue0 := block280eb89cArg1.
    block280eb89cValue1 := (block280eb89cValue0) cgenId.
    block280eb89cValue2 := block280eb89cArg2.
    block280eb89cValue3 := (block280eb89cValue2) cgenId.
    block280eb89cValue4 := (block280eb89cValue1) < (block280eb89cValue3).
    block280eb89cValue4
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) misraCompliance.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) stateVariableName.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 |
    recoveredBlock27Value0 := recoveredBlock27Arg1.
    recoveredBlock27Value1 := (self) buildMdlCase: (recoveredBlock27Value0).
    recoveredBlock27Value1
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack5 := [:block280eb8c0Arg1 | 
    | block280eb8c0Value0 block280eb8c0Value1 |
    block280eb8c0Value0 := block280eb8c0Arg1.
    block280eb8c0Value1 := (block280eb8c0Value0) isStartState.
    block280eb8c0Value1
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := (recoveredStack4) detect: (recoveredStack5).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack6 := 'switch'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) stateSwitch: (recoveredStack1) states: (recoveredStack2) stateBlock: (recoveredStack3) defaultState: (recoveredStack4) source: (recoveredStack5) label: (recoveredStack6).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033714c; bytecode file offset 0xc33a2c"
!SGSmFlatGenerator methodsFor: 'recovered'!
transitionStaticActions: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) effectiveStartState.
    recoveredValue1 := (recoveredValue0) path.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Local1 recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := SGBdlState.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            recoveredBlock12Stack2 := OrderedCollection.
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Arg1.
            recoveredBlock12PC := 23.
        ].
        recoveredBlock12Step = 23 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) connectedEndState.
            recoveredBlock12PC := 25.
        ].
        recoveredBlock12Step = 25 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) with: (recoveredBlock12Stack3).
            recoveredBlock12PC := 27.
        ].
        recoveredBlock12Step = 27 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) commonHierarchy: (recoveredBlock12Stack2).
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            recoveredBlock12Local1 := recoveredBlock12Stack1.
            recoveredBlock12PC := 30.
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Local1.
            recoveredBlock12PC := 31.
        ].
        recoveredBlock12Step = 31 ifTrue: [
            (recoveredBlock12Stack1 ~~ nil) ifTrue: [recoveredBlock12PC := 42] ifFalse: [recoveredBlock12PC := 34].
        ].
        recoveredBlock12Step = 34 ifTrue: [
            recoveredBlock12Stack1 := OrderedCollection.
            recoveredBlock12PC := 36.
        ].
        recoveredBlock12Step = 36 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) new.
            recoveredBlock12PC := 38.
        ].
        recoveredBlock12Step = 38 ifTrue: [
            recoveredBlock12PC := 50.
        ].
        recoveredBlock12Step = 42 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal1.
            recoveredBlock12PC := 45.
        ].
        recoveredBlock12Step = 45 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Local1.
            recoveredBlock12PC := 46.
        ].
        recoveredBlock12Step = 46 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) fullPath.
            recoveredBlock12PC := 48.
        ].
        recoveredBlock12Step = 48 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) frontEqual: (recoveredBlock12Stack2).
            recoveredBlock12PC := 50.
        ].
        recoveredBlock12Step = 50 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Stack1.
            recoveredBlock12PC := 51.
        ].
        recoveredBlock12Step = 51 ifTrue: [
            recoveredLocal1 := recoveredBlock12Stack2.
            recoveredBlock12PC := 54.
        ].
        recoveredBlock12Step = 54 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20363424; bytecode file offset 0xc5fcfc"
!SGSmFlatGenerator methodsFor: 'recovered'!
buildMdlEntryActions: recoveredArg1 entries: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := self.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) entriesDone.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Arg1.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) includes: (recoveredBlock7Stack3).
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 47] ifFalse: [recoveredBlock7PC := 22].
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg2.
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) isHistoryAssignNeeded: (recoveredBlock7Stack2) entries: (recoveredBlock7Stack3).
            recoveredBlock7PC := 30.
        ].
        recoveredBlock7Step = 30 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 34] ifFalse: [recoveredBlock7PC := 38].
        ].
        recoveredBlock7Step = 34 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 35.
        ].
        recoveredBlock7Step = 35 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 36.
        ].
        recoveredBlock7Step = 36 ifTrue: [
            (recoveredBlock7Stack1) buildMdlHistoryAssign: (recoveredBlock7Stack2).
            recoveredBlock7PC := 38.
        ].
        recoveredBlock7Step = 38 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 39.
        ].
        recoveredBlock7Step = 39 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 40.
        ].
        recoveredBlock7Step = 40 ifTrue: [
            (recoveredBlock7Stack1) entryAction: (recoveredBlock7Stack2).
            recoveredBlock7PC := 42.
        ].
        recoveredBlock7Step = 42 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 43.
        ].
        recoveredBlock7Step = 43 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) entriesDone.
            recoveredBlock7PC := 44.
        ].
        recoveredBlock7Step = 44 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 45.
        ].
        recoveredBlock7Step = 45 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) add: (recoveredBlock7Stack2).
            recoveredBlock7PC := 47.
        ].
        recoveredBlock7Step = 47 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) assignSMBeforeTransitionAction.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 65] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) buildMdlSMAssign: (recoveredStack1) entries: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2047fb0c; bytecode file offset 0xd7c41c"
!SGSmFlatGenerator methodsFor: 'recovered'!
buildMdlCase: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := recoveredArg1.
    (self) effectiveFinalStartState: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) fullPath.
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := (recoveredValue3) copy.
    (self) staticsToDo: (recoveredValue4).
    recoveredValue5 := OrderedCollection.
    recoveredValue6 := (recoveredValue5) new.
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := (self) staticsOptimizer.
    (recoveredValue7) initialize.
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Value0 recoveredBlock38Value1 recoveredBlock38Value2 recoveredBlock38Value3 recoveredBlock38Value4 |
    recoveredBlock38Value0 := recoveredLocal1.
    recoveredBlock38Value1 := recoveredBlock38Arg1.
    recoveredBlock38Value2 := (self) trigger.
    recoveredBlock38Value3 := (recoveredBlock38Value1) transitionsForTrigger: (recoveredBlock38Value2).
    recoveredBlock38Value4 := (recoveredBlock38Value0) addAll: (recoveredBlock38Value3).
    recoveredBlock38Value4
].
    (recoveredValue8) do: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := [:recoveredBlock61Arg1 :recoveredBlock61Arg2 | 
    | recoveredBlock61Stack0 recoveredBlock61Stack1 recoveredBlock61Stack2 recoveredBlock61Stack3 recoveredBlock61Stack4 recoveredBlock61Stack5 recoveredBlock61PC recoveredBlock61Step recoveredBlock61Done recoveredBlock61Result |
    recoveredBlock61Stack0 := self.
    recoveredBlock61PC := 68.
    recoveredBlock61Done := false.
    [recoveredBlock61Done not] whileTrue: [
        recoveredBlock61Step := recoveredBlock61PC.
        recoveredBlock61Step = 68 ifTrue: [
            recoveredBlock61Stack1 := recoveredBlock61Arg1.
            recoveredBlock61PC := 69.
        ].
        recoveredBlock61Step = 69 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) connectedStartState.
            recoveredBlock61PC := 71.
        ].
        recoveredBlock61Step = 71 ifTrue: [
            (recoveredBlock61Stack0) effectiveStartState: (recoveredBlock61Stack1).
            recoveredBlock61PC := 73.
        ].
        recoveredBlock61Step = 73 ifTrue: [
            recoveredBlock61Stack0 := self.
            recoveredBlock61PC := 74.
        ].
        recoveredBlock61Step = 74 ifTrue: [
            recoveredBlock61Stack0 := (recoveredBlock61Stack0) staticsOptimizer.
            recoveredBlock61PC := 76.
        ].
        recoveredBlock61Step = 76 ifTrue: [
            recoveredBlock61Stack1 := self.
            recoveredBlock61PC := 77.
        ].
        recoveredBlock61Step = 77 ifTrue: [
            recoveredBlock61Stack2 := recoveredLocal1.
            recoveredBlock61PC := 80.
        ].
        recoveredBlock61Step = 80 ifTrue: [
            recoveredBlock61Stack3 := recoveredBlock61Arg2.
            recoveredBlock61PC := 81.
        ].
        recoveredBlock61Step = 81 ifTrue: [
            recoveredBlock61Stack4 := recoveredLocal1.
            recoveredBlock61PC := 84.
        ].
        recoveredBlock61Step = 84 ifTrue: [
            recoveredBlock61Stack4 := (recoveredBlock61Stack4) size.
            recoveredBlock61PC := 86.
        ].
        recoveredBlock61Step = 86 ifTrue: [
            recoveredBlock61Stack2 := (recoveredBlock61Stack2) copyFrom: (recoveredBlock61Stack3) to: (recoveredBlock61Stack4).
            recoveredBlock61PC := 88.
        ].
        recoveredBlock61Step = 88 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) transitionStaticActions: (recoveredBlock61Stack2).
            recoveredBlock61PC := 90.
        ].
        recoveredBlock61Step = 90 ifTrue: [
            recoveredBlock61Stack2 := self.
            recoveredBlock61PC := 91.
        ].
        recoveredBlock61Step = 91 ifTrue: [
            recoveredBlock61Stack2 := (recoveredBlock61Stack2) staticsToDo.
            recoveredBlock61PC := 93.
        ].
        recoveredBlock61Step = 93 ifTrue: [
            (recoveredBlock61Stack0) buildMdlBetweenIfStaticActions: (recoveredBlock61Stack1) staticsToDo: (recoveredBlock61Stack2).
            recoveredBlock61PC := 95.
        ].
        recoveredBlock61Step = 95 ifTrue: [
            recoveredBlock61Stack0 := self.
            recoveredBlock61PC := 96.
        ].
        recoveredBlock61Step = 96 ifTrue: [
            recoveredBlock61Stack1 := recoveredBlock61Arg1.
            recoveredBlock61PC := 97.
        ].
        recoveredBlock61Step = 97 ifTrue: [
            recoveredBlock61Stack0 := (recoveredBlock61Stack0) buildMdlTransitionThen: (recoveredBlock61Stack1).
            recoveredBlock61PC := 99.
        ].
        recoveredBlock61Step = 99 ifTrue: [
            (recoveredBlock61Stack0) ifTrue: [recoveredBlock61PC := 104] ifFalse: [recoveredBlock61PC := 102].
        ].
        recoveredBlock61Step = 102 ifTrue: [
            recoveredBlock61Stack0 := self.
            recoveredBlock61PC := 103.
        ].
        recoveredBlock61Step = 103 ifTrue: [
            ^recoveredBlock61Stack0
        ].
        recoveredBlock61Step = 104 ifTrue: [
            recoveredBlock61Stack0 := self.
            recoveredBlock61PC := 105.
        ].
        recoveredBlock61Step = 105 ifTrue: [
            recoveredBlock61Stack0 := (recoveredBlock61Stack0) staticsOptimizer.
            recoveredBlock61PC := 107.
        ].
        recoveredBlock61Step = 107 ifTrue: [
            recoveredBlock61Stack1 := recoveredBlock61Arg1.
            recoveredBlock61PC := 108.
        ].
        recoveredBlock61Step = 108 ifTrue: [
            recoveredBlock61Stack0 := (recoveredBlock61Stack0) lastTransition: (recoveredBlock61Stack1).
            recoveredBlock61PC := 110.
        ].
        recoveredBlock61Step = 110 ifTrue: [
            recoveredBlock61Result := recoveredBlock61Stack0.
            recoveredBlock61Done := true.
        ].
    ].
    recoveredBlock61Result
].
    (recoveredValue10) doWithIndex: (recoveredValue11).
    recoveredValue12 := (self) staticsOptimizer.
    recoveredValue13 := (self) staticsToDo.
    recoveredValue14 := (recoveredValue13) copy.
    recoveredValue15 := (self) staticsToDo.
    (recoveredValue12) buildMdlCaseStaticActions: (recoveredValue14) staticsToDo: (recoveredValue15).
    ^self
! !

