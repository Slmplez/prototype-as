"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20009758; bytecode file offset 0x908be4"
!SGSmHierarchyGenerator methodsFor: 'recovered'!
mostConcreteEffectiveStartState
    | recoveredValue0 |
    recoveredValue0 := (self) effectiveStartState.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20087010; bytecode file offset 0x98396c"
!SGSmHierarchyGenerator methodsFor: 'recovered'!
exits: recoveredArg1 statics: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) fullPath.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) backUnequal: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b2820; bytecode file offset 0x9af0e0"
!SGSmHierarchyGenerator methodsFor: 'recovered'!
buildMdlExitActions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) effectiveStartState.
    recoveredValue1 := (self) statics.
    (self) buildMdlExitActions: (recoveredValue0) statics: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200dbaac; bytecode file offset 0x9d8368"
!SGSmHierarchyGenerator methodsFor: 'recovered'!
buildMdlExitActions: recoveredArg1 statics: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) exit: (recoveredValue0) statics: (recoveredValue1).
    (self) buildMdlExitActions: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2014b2d4; bytecode file offset 0xa47b94"
!SGSmHierarchyGenerator methodsFor: 'recovered'!
exit: recoveredArg1 statics: recoveredArg2
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) exits: (recoveredStack1) statics: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2025806c; bytecode file offset 0xb5493c"
!SGSmHierarchyGenerator methodsFor: 'recovered'!
generateCode: recoveredArg1 trigger: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg2.
    (self) trigger: (recoveredValue0).
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (recoveredValue1) new.
    (self) staticsToDo: (recoveredValue2).
    recoveredValue3 := (self) methodStrategy.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := [
    | recoveredBlock21Value0 recoveredBlock21Value1 |
    recoveredBlock21Value0 := recoveredArg1.
    recoveredBlock21Value1 := (self) buildMdlChildrenSwitch: (recoveredBlock21Value0).
    recoveredBlock21Value1
].
    (recoveredValue3) method: (recoveredValue4) code: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x202d0e68; bytecode file offset 0xbcd73c"
!SGSmHierarchyGenerator methodsFor: 'recovered'!
buildMdlStateAssign: recoveredArg1 entries: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
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
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Stack3 := self.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) effectiveStartState.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) isHierarchyChild: (recoveredBlock7Stack3).
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 45] ifFalse: [recoveredBlock7PC := 22].
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) owner.
            recoveredBlock7PC := 26.
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) isHistory.
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg2.
            recoveredBlock7PC := 30.
        ].
        recoveredBlock7Step = 30 ifTrue: [
            recoveredBlock7Stack4 := recoveredBlock7Arg1.
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Stack4 := (recoveredBlock7Stack4) owner.
            recoveredBlock7PC := 32.
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) includes: (recoveredBlock7Stack4).
            recoveredBlock7PC := 34.
        ].
        recoveredBlock7Step = 34 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) and: (recoveredBlock7Stack3).
            recoveredBlock7PC := 36.
        ].
        recoveredBlock7Step = 36 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 45] ifFalse: [recoveredBlock7PC := 40].
        ].
        recoveredBlock7Step = 40 ifTrue: [
            recoveredBlock7PC := 41.
        ].
        recoveredBlock7Step = 41 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 42.
        ].
        recoveredBlock7Step = 42 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 43.
        ].
        recoveredBlock7Step = 43 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) buildMdlLevelAssign: (recoveredBlock7Stack2).
            recoveredBlock7PC := 45.
        ].
        recoveredBlock7Step = 45 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20419cc0; bytecode file offset 0xd165ac"
!SGSmHierarchyGenerator methodsFor: 'recovered'!
buildMdlEntryActions: recoveredArg1 entries: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack2 := self.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) entriesDone.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Arg1.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) includes: (recoveredBlock11Stack3).
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 81] ifFalse: [recoveredBlock11PC := 26].
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 28.
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            (recoveredBlock11Stack1) entryAction: (recoveredBlock11Stack2).
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) assignSMBeforeTransitionAction.
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 76] ifFalse: [recoveredBlock11PC := 36].
        ].
        recoveredBlock11Step = 36 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 37.
        ].
        recoveredBlock11Step = 37 ifTrue: [
            recoveredBlock11Stack2 := self.
            recoveredBlock11PC := 38.
        ].
        recoveredBlock11Step = 38 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) effectiveStartState.
            recoveredBlock11PC := 40.
        ].
        recoveredBlock11Step = 40 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) isHierarchyChild: (recoveredBlock11Stack2).
            recoveredBlock11PC := 42.
        ].
        recoveredBlock11Step = 42 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 76] ifFalse: [recoveredBlock11PC := 46].
        ].
        recoveredBlock11Step = 46 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 47.
        ].
        recoveredBlock11Step = 47 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) owner.
            recoveredBlock11PC := 49.
        ].
        recoveredBlock11Step = 49 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) isHistory.
            recoveredBlock11PC := 51.
        ].
        recoveredBlock11Step = 51 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 54] ifFalse: [recoveredBlock11PC := 64].
        ].
        recoveredBlock11Step = 54 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 55.
        ].
        recoveredBlock11Step = 55 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 56.
        ].
        recoveredBlock11Step = 56 ifTrue: [
            recoveredBlock11Stack3 := recoveredArg2.
            recoveredBlock11PC := 59.
        ].
        recoveredBlock11Step = 59 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) isHistoryAssignNeeded: (recoveredBlock11Stack2) entries: (recoveredBlock11Stack3).
            recoveredBlock11PC := 61.
        ].
        recoveredBlock11Step = 61 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 64] ifFalse: [recoveredBlock11PC := 76].
        ].
        recoveredBlock11Step = 64 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 65.
        ].
        recoveredBlock11Step = 65 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 66.
        ].
        recoveredBlock11Step = 66 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) buildMdlLevelAssign: (recoveredBlock11Stack2).
            recoveredBlock11PC := 68.
        ].
        recoveredBlock11Step = 68 ifTrue: [
            recoveredBlock11Stack2 := recoveredLocal1.
            recoveredBlock11PC := 71.
        ].
        recoveredBlock11Step = 71 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) or: (recoveredBlock11Stack2).
            recoveredBlock11PC := 73.
        ].
        recoveredBlock11Step = 73 ifTrue: [
            recoveredLocal1 := recoveredBlock11Stack1.
            recoveredBlock11PC := 76.
        ].
        recoveredBlock11Step = 76 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 77.
        ].
        recoveredBlock11Step = 77 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) entriesDone.
            recoveredBlock11PC := 78.
        ].
        recoveredBlock11Step = 78 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 79.
        ].
        recoveredBlock11Step = 79 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) add: (recoveredBlock11Stack2).
            recoveredBlock11PC := 81.
        ].
        recoveredBlock11Step = 81 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 99] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) buildMdlSMAssign: (recoveredStack2) entries: (recoveredStack3).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20433a80; bytecode file offset 0xd30378"
!SGSmHierarchyGenerator methodsFor: 'recovered'!
buildMdlCase: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := recoveredArg1.
    (self) effectiveStartState: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) trigger.
    recoveredValue3 := (recoveredValue1) transitionsForTrigger: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) staticsToDo.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) add: (recoveredValue5).
    recoveredValue6 := (self) staticsOptimizer.
    (recoveredValue6) initialize.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := [:recoveredBlock33Arg1 :recoveredBlock33Arg2 | 
    | recoveredBlock33Stack0 recoveredBlock33Stack1 recoveredBlock33Stack2 recoveredBlock33Stack3 recoveredBlock33Stack4 recoveredBlock33Stack5 recoveredBlock33PC recoveredBlock33Step recoveredBlock33Done recoveredBlock33Result |
    recoveredBlock33Stack0 := self.
    recoveredBlock33PC := 40.
    recoveredBlock33Done := false.
    [recoveredBlock33Done not] whileTrue: [
        recoveredBlock33Step := recoveredBlock33PC.
        recoveredBlock33Step = 40 ifTrue: [
            recoveredBlock33Stack0 := (recoveredBlock33Stack0) staticsOptimizer.
            recoveredBlock33PC := 42.
        ].
        recoveredBlock33Step = 42 ifTrue: [
            recoveredBlock33Stack1 := self.
            recoveredBlock33PC := 43.
        ].
        recoveredBlock33Step = 43 ifTrue: [
            recoveredBlock33Stack2 := recoveredLocal1.
            recoveredBlock33PC := 46.
        ].
        recoveredBlock33Step = 46 ifTrue: [
            recoveredBlock33Stack3 := recoveredBlock33Arg2.
            recoveredBlock33PC := 47.
        ].
        recoveredBlock33Step = 47 ifTrue: [
            recoveredBlock33Stack4 := recoveredLocal1.
            recoveredBlock33PC := 50.
        ].
        recoveredBlock33Step = 50 ifTrue: [
            recoveredBlock33Stack4 := (recoveredBlock33Stack4) size.
            recoveredBlock33PC := 52.
        ].
        recoveredBlock33Step = 52 ifTrue: [
            recoveredBlock33Stack2 := (recoveredBlock33Stack2) copyFrom: (recoveredBlock33Stack3) to: (recoveredBlock33Stack4).
            recoveredBlock33PC := 54.
        ].
        recoveredBlock33Step = 54 ifTrue: [
            recoveredBlock33Stack3 := recoveredArg1.
            recoveredBlock33PC := 57.
        ].
        recoveredBlock33Step = 57 ifTrue: [
            recoveredBlock33Stack1 := (recoveredBlock33Stack1) transitionStaticActions: (recoveredBlock33Stack2) state: (recoveredBlock33Stack3).
            recoveredBlock33PC := 59.
        ].
        recoveredBlock33Step = 59 ifTrue: [
            recoveredBlock33Stack2 := self.
            recoveredBlock33PC := 60.
        ].
        recoveredBlock33Step = 60 ifTrue: [
            recoveredBlock33Stack2 := (recoveredBlock33Stack2) staticsToDo.
            recoveredBlock33PC := 61.
        ].
        recoveredBlock33Step = 61 ifTrue: [
            (recoveredBlock33Stack0) buildMdlBetweenIfStaticActions: (recoveredBlock33Stack1) staticsToDo: (recoveredBlock33Stack2).
            recoveredBlock33PC := 63.
        ].
        recoveredBlock33Step = 63 ifTrue: [
            recoveredBlock33Stack0 := self.
            recoveredBlock33PC := 64.
        ].
        recoveredBlock33Step = 64 ifTrue: [
            recoveredBlock33Stack1 := recoveredBlock33Arg1.
            recoveredBlock33PC := 65.
        ].
        recoveredBlock33Step = 65 ifTrue: [
            recoveredBlock33Stack0 := (recoveredBlock33Stack0) buildMdlTransitionThen: (recoveredBlock33Stack1).
            recoveredBlock33PC := 67.
        ].
        recoveredBlock33Step = 67 ifTrue: [
            (recoveredBlock33Stack0) ifTrue: [recoveredBlock33PC := 72] ifFalse: [recoveredBlock33PC := 70].
        ].
        recoveredBlock33Step = 70 ifTrue: [
            recoveredBlock33Stack0 := self.
            recoveredBlock33PC := 71.
        ].
        recoveredBlock33Step = 71 ifTrue: [
            ^recoveredBlock33Stack0
        ].
        recoveredBlock33Step = 72 ifTrue: [
            recoveredBlock33Stack0 := self.
            recoveredBlock33PC := 73.
        ].
        recoveredBlock33Step = 73 ifTrue: [
            recoveredBlock33Stack0 := (recoveredBlock33Stack0) staticsOptimizer.
            recoveredBlock33PC := 75.
        ].
        recoveredBlock33Step = 75 ifTrue: [
            recoveredBlock33Stack1 := recoveredBlock33Arg1.
            recoveredBlock33PC := 76.
        ].
        recoveredBlock33Step = 76 ifTrue: [
            recoveredBlock33Stack0 := (recoveredBlock33Stack0) lastTransition: (recoveredBlock33Stack1).
            recoveredBlock33PC := 78.
        ].
        recoveredBlock33Step = 78 ifTrue: [
            recoveredBlock33Result := recoveredBlock33Stack0.
            recoveredBlock33Done := true.
        ].
    ].
    recoveredBlock33Result
].
    (recoveredValue7) doWithIndex: (recoveredValue8).
    recoveredValue9 := (self) staticsOptimizer.
    recoveredValue10 := OrderedCollection.
    recoveredValue11 := (recoveredValue10) new.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (self) transitionStaticActions: (recoveredValue11) state: (recoveredValue12).
    recoveredValue14 := (self) staticsToDo.
    (recoveredValue9) buildMdlBetweenIfStaticActions: (recoveredValue13) staticsToDo: (recoveredValue14).
    recoveredValue15 := recoveredArg1.
    (self) buildMdlChildrenSwitch: (recoveredValue15).
    ^self
! !

"ASDBase.ic method 0x204e62dc; bytecode file offset 0xde2bf4"
!SGSmHierarchyGenerator methodsFor: 'recovered'!
buildMdlLevelAssign: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isHistory.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) buildMdlHistoryAssign: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 160.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) statesOnly.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [:block28108c88Arg1 | 
    | block28108c88Value0 block28108c88Value1 |
    block28108c88Value0 := block28108c88Arg1.
    block28108c88Value1 := (block28108c88Value0) isBdlHierarchyState.
    block28108c88Value1
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodStrategy.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock57Value0 recoveredBlock57Value1 recoveredBlock57Value2 recoveredBlock57Value3 recoveredBlock57Value4 recoveredBlock57Value5 recoveredBlock57Value6 recoveredBlock57Value7 recoveredBlock57Value8 recoveredBlock57Value9 recoveredBlock57Value10 recoveredBlock57Value11 recoveredBlock57Value12 recoveredBlock57Value13 recoveredBlock57Value14 recoveredBlock57Value15 |
    recoveredBlock57Value0 := (self) mdlBuilder.
    recoveredBlock57Value1 := recoveredBlock57Value0.
    recoveredBlock57Value2 := recoveredArg1.
    recoveredBlock57Value3 := (recoveredBlock57Value2) hierarchyBlock.
    recoveredBlock57Value4 := (recoveredBlock57Value3) levelName.
    (recoveredBlock57Value1) id: (recoveredBlock57Value4).
    recoveredBlock57Value5 := recoveredBlock57Value0.
    recoveredBlock57Value6 := recoveredArg1.
    recoveredBlock57Value7 := (recoveredBlock57Value6) mdlLabel.
    (recoveredBlock57Value5) id: (recoveredBlock57Value7).
    recoveredBlock57Value8 := recoveredBlock57Value0.
    recoveredBlock57Value9 := recoveredArg1.
    recoveredBlock57Value10 := (recoveredBlock57Value9) errLabel.
    recoveredBlock57Value11 := ('Switch to ') , (recoveredBlock57Value10).
    recoveredBlock57Value12 := recoveredArg1.
    recoveredBlock57Value13 := (self) commentSource: (recoveredBlock57Value11) for: (recoveredBlock57Value12).
    (recoveredBlock57Value8) source: (recoveredBlock57Value13).
    recoveredBlock57Value14 := recoveredBlock57Value0.
    (recoveredBlock57Value14) assign.
    recoveredBlock57Value15 := (recoveredBlock57Value0) endStmnt.
    recoveredBlock57Value15
].
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := (recoveredStack3) hierarchyBlock.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := (recoveredStack3) levelName.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack4 := '='.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack4 := (recoveredStack4) mdlLabel.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) atomicCode: (recoveredStack2) tag: (recoveredStack3).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredPC := 156.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := (recoveredStack1) isBdlHierarchyState.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack1) buildMdlSMAssign: (recoveredStack2).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204f600c; bytecode file offset 0xdf2918"
!SGSmHierarchyGenerator methodsFor: 'recovered'!
transitionStaticActions: recoveredArg1 state: recoveredArg2
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
            recoveredStack2 := [:block28109b94Arg1 | 
    | block28109b94Value0 block28109b94Value1 |
    block28109b94Value0 := block28109b94Arg1.
    block28109b94Value1 := (block28109b94Value0) connectedEndState.
    block28109b94Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSet.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) statesOnly.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 121.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := [:recoveredBlock51Arg1 | 
    | recoveredBlock51Stack0 recoveredBlock51Stack1 recoveredBlock51Stack2 recoveredBlock51Stack3 recoveredBlock51Stack4 recoveredBlock51PC recoveredBlock51Step recoveredBlock51Done recoveredBlock51Result |
    recoveredBlock51Stack0 := self.
    recoveredBlock51PC := 58.
    recoveredBlock51Done := false.
    [recoveredBlock51Done not] whileTrue: [
        recoveredBlock51Step := recoveredBlock51PC.
        recoveredBlock51Step = 58 ifTrue: [
            recoveredBlock51Stack1 := recoveredLocal5.
            recoveredBlock51PC := 61.
        ].
        recoveredBlock51Step = 61 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Arg1.
            recoveredBlock51PC := 62.
        ].
        recoveredBlock51Step = 62 ifTrue: [
            recoveredBlock51Stack3 := self.
            recoveredBlock51PC := 63.
        ].
        recoveredBlock51Step = 63 ifTrue: [
            recoveredBlock51Stack3 := (recoveredBlock51Stack3) trigger.
            recoveredBlock51PC := 65.
        ].
        recoveredBlock51Step = 65 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) transitionsForTrigger: (recoveredBlock51Stack3).
            recoveredBlock51PC := 67.
        ].
        recoveredBlock51Step = 67 ifTrue: [
            recoveredBlock51Stack3 := [:block28109bb8Arg1 | 
    | block28109bb8Value0 block28109bb8Value1 |
    block28109bb8Value0 := block28109bb8Arg1.
    block28109bb8Value1 := (block28109bb8Value0) connectedEndState.
    block28109bb8Value1
].
            recoveredBlock51PC := 69.
        ].
        recoveredBlock51Step = 69 ifTrue: [
            recoveredBlock51PC := 75.
        ].
        recoveredBlock51Step = 75 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) collect: (recoveredBlock51Stack3).
            recoveredBlock51PC := 76.
        ].
        recoveredBlock51Step = 76 ifTrue: [
            (recoveredBlock51Stack1) addAll: (recoveredBlock51Stack2).
            recoveredBlock51PC := 78.
        ].
        recoveredBlock51Step = 78 ifTrue: [
            recoveredBlock51Stack1 := recoveredLocal1.
            recoveredBlock51PC := 81.
        ].
        recoveredBlock51Step = 81 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Arg1.
            recoveredBlock51PC := 82.
        ].
        recoveredBlock51Step = 82 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) children.
            recoveredBlock51PC := 84.
        ].
        recoveredBlock51Step = 84 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) statesOnly.
            recoveredBlock51PC := 86.
        ].
        recoveredBlock51Step = 86 ifTrue: [
            (recoveredBlock51Stack1) addAll: (recoveredBlock51Stack2).
            recoveredBlock51PC := 88.
        ].
        recoveredBlock51Step = 88 ifTrue: [
            recoveredBlock51Stack1 := recoveredLocal2.
            recoveredBlock51PC := 91.
        ].
        recoveredBlock51Step = 91 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Arg1.
            recoveredBlock51PC := 92.
        ].
        recoveredBlock51Step = 92 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) add: (recoveredBlock51Stack2).
            recoveredBlock51PC := 94.
        ].
        recoveredBlock51Step = 94 ifTrue: [
            recoveredBlock51Result := recoveredBlock51Stack1.
            recoveredBlock51Done := true.
        ].
    ].
    recoveredBlock51Result
].
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) removeAll: (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := SGBdlState.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) commonHierarchy: (recoveredStack2).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredPC := 164.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) effectiveStartState.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) fullPath.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := (recoveredStack2) fullPath.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := (recoveredStack1) frontEqual: (recoveredStack2).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2050fc8c; bytecode file offset 0xe0c5b0"
!SGSmHierarchyGenerator methodsFor: 'recovered'!
buildMdlChildrenSwitch: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isBdlHierarchyState.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) isBdlState.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 18].
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
            recoveredStack1 := (recoveredStack1) childrenNoTransitions: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) childrenNoStatics: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) staticsOptimizer.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) fullPath.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := (recoveredStack3) staticsToDo.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) buildMdlCaseStaticActions: (recoveredStack2) staticsToDo: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) isStateMachine.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodStrategy.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock74Local1 recoveredBlock74Local2 recoveredBlock74Local3 recoveredBlock74Stack0 recoveredBlock74Stack1 recoveredBlock74Stack2 recoveredBlock74Stack3 recoveredBlock74Stack4 recoveredBlock74Stack5 recoveredBlock74Stack6 recoveredBlock74Stack7 recoveredBlock74PC recoveredBlock74Step recoveredBlock74Done recoveredBlock74Result |
    recoveredBlock74Stack0 := self.
    recoveredBlock74PC := 80.
    recoveredBlock74Done := false.
    [recoveredBlock74Done not] whileTrue: [
        recoveredBlock74Step := recoveredBlock74PC.
        recoveredBlock74Step = 80 ifTrue: [
            recoveredBlock74Stack0 := (recoveredBlock74Stack0) staticsToDo.
            recoveredBlock74PC := 82.
        ].
        recoveredBlock74Step = 82 ifTrue: [
            recoveredBlock74Local2 := recoveredBlock74Stack0.
            recoveredBlock74PC := 85.
        ].
        recoveredBlock74Step = 85 ifTrue: [
            recoveredBlock74Stack0 := staticsOptimizer.
            recoveredBlock74PC := 87.
        ].
        recoveredBlock74Step = 87 ifTrue: [
            recoveredBlock74Local1 := recoveredBlock74Stack0.
            recoveredBlock74PC := 90.
        ].
        recoveredBlock74Step = 90 ifTrue: [
            recoveredBlock74Stack0 := recoveredArg1.
            recoveredBlock74PC := 93.
        ].
        recoveredBlock74Step = 93 ifTrue: [
            recoveredBlock74Stack0 := (recoveredBlock74Stack0) children.
            recoveredBlock74PC := 95.
        ].
        recoveredBlock74Step = 95 ifTrue: [
            recoveredBlock74Stack0 := (recoveredBlock74Stack0) statesOnly.
            recoveredBlock74PC := 97.
        ].
        recoveredBlock74Step = 97 ifTrue: [
            recoveredBlock74Stack1 := [:block2810b2a4Arg1 :block2810b2a4Arg2 | 
    | block2810b2a4Value0 block2810b2a4Value1 block2810b2a4Value2 block2810b2a4Value3 block2810b2a4Value4 |
    block2810b2a4Value0 := block2810b2a4Arg1.
    block2810b2a4Value1 := (block2810b2a4Value0) cgenId.
    block2810b2a4Value2 := block2810b2a4Arg2.
    block2810b2a4Value3 := (block2810b2a4Value2) cgenId.
    block2810b2a4Value4 := (block2810b2a4Value1) < (block2810b2a4Value3).
    block2810b2a4Value4
].
            recoveredBlock74PC := 99.
        ].
        recoveredBlock74Step = 99 ifTrue: [
            recoveredBlock74PC := 110.
        ].
        recoveredBlock74Step = 110 ifTrue: [
            recoveredBlock74Stack0 := (recoveredBlock74Stack0) asSortedCollection: (recoveredBlock74Stack1).
            recoveredBlock74PC := 112.
        ].
        recoveredBlock74Step = 112 ifTrue: [
            recoveredBlock74Local3 := recoveredBlock74Stack0.
            recoveredBlock74PC := 115.
        ].
        recoveredBlock74Step = 115 ifTrue: [
            recoveredBlock74Stack0 := self.
            recoveredBlock74PC := 116.
        ].
        recoveredBlock74Step = 116 ifTrue: [
            recoveredBlock74Stack0 := (recoveredBlock74Stack0) misraCompliance.
            recoveredBlock74PC := 118.
        ].
        recoveredBlock74Step = 118 ifTrue: [
            recoveredBlock74Stack1 := recoveredArg1.
            recoveredBlock74PC := 121.
        ].
        recoveredBlock74Step = 121 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) levelName.
            recoveredBlock74PC := 123.
        ].
        recoveredBlock74Step = 123 ifTrue: [
            recoveredBlock74Stack2 := recoveredBlock74Local3.
            recoveredBlock74PC := 126.
        ].
        recoveredBlock74Step = 126 ifTrue: [
            recoveredBlock74Stack3 := [:recoveredBlock74Block126Arg1 | 
    | recoveredBlock74Block126Value0 recoveredBlock74Block126Value1 recoveredBlock74Block126Value2 recoveredBlock74Block126Value3 recoveredBlock74Block126Value4 recoveredBlock74Block126Value5 |
    recoveredBlock74Block126Value0 := recoveredBlock74Local2.
    recoveredBlock74Block126Value1 := (recoveredBlock74Block126Value0) copy.
    (self) staticsToDo: (recoveredBlock74Block126Value1).
    recoveredBlock74Block126Value2 := recoveredBlock74Local1.
    recoveredBlock74Block126Value3 := (recoveredBlock74Block126Value2) create.
    staticsOptimizer := recoveredBlock74Block126Value3.
    recoveredBlock74Block126Value4 := recoveredBlock74Block126Arg1.
    recoveredBlock74Block126Value5 := (self) buildMdlCase: (recoveredBlock74Block126Value4).
    recoveredBlock74Block126Value5
].
            recoveredBlock74PC := 151.
        ].
        recoveredBlock74Step = 151 ifTrue: [
            recoveredBlock74Stack4 := recoveredBlock74Local3.
            recoveredBlock74PC := 154.
        ].
        recoveredBlock74Step = 154 ifTrue: [
            recoveredBlock74Stack5 := [:block2810b2c8Arg1 | 
    | block2810b2c8Value0 block2810b2c8Value1 |
    block2810b2c8Value0 := block2810b2c8Arg1.
    block2810b2c8Value1 := (block2810b2c8Value0) isStartState.
    block2810b2c8Value1
].
            recoveredBlock74PC := 156.
        ].
        recoveredBlock74Step = 156 ifTrue: [
            recoveredBlock74PC := 164.
        ].
        recoveredBlock74Step = 164 ifTrue: [
            recoveredBlock74Stack4 := (recoveredBlock74Stack4) detect: (recoveredBlock74Stack5).
            recoveredBlock74PC := 166.
        ].
        recoveredBlock74Step = 166 ifTrue: [
            recoveredBlock74Stack5 := recoveredLocal1.
            recoveredBlock74PC := 169.
        ].
        recoveredBlock74Step = 169 ifTrue: [
            recoveredBlock74Stack6 := recoveredArg1.
            recoveredBlock74PC := 172.
        ].
        recoveredBlock74Step = 172 ifTrue: [
            recoveredBlock74Stack6 := (recoveredBlock74Stack6) levelName.
            recoveredBlock74PC := 174.
        ].
        recoveredBlock74Step = 174 ifTrue: [
            recoveredBlock74Stack0 := (recoveredBlock74Stack0) stateSwitch: (recoveredBlock74Stack1) states: (recoveredBlock74Stack2) stateBlock: (recoveredBlock74Stack3) defaultState: (recoveredBlock74Stack4) source: (recoveredBlock74Stack5) label: (recoveredBlock74Stack6).
            recoveredBlock74PC := 177.
        ].
        recoveredBlock74Step = 177 ifTrue: [
            recoveredBlock74Result := recoveredBlock74Stack0.
            recoveredBlock74Done := true.
        ].
    ].
    recoveredBlock74Result
].
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack0) codeSequence: (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205f7fcc; bytecode file offset 0xef4928"
!SGSmHierarchyGenerator methodsFor: 'recovered'!
buildMdlExitActions: recoveredArg1
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isHierarchyState.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 416].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) effectiveStartState.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) isHierarchyChild: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) effectiveStartState.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) ~= (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) statesOnly.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := [:recoveredBlock49Arg1 | 
    | recoveredBlock49Stack0 recoveredBlock49Stack1 recoveredBlock49Stack2 recoveredBlock49Stack3 recoveredBlock49Stack4 recoveredBlock49PC recoveredBlock49Step recoveredBlock49Done recoveredBlock49Result |
    recoveredBlock49Stack0 := self.
    recoveredBlock49PC := 56.
    recoveredBlock49Done := false.
    [recoveredBlock49Done not] whileTrue: [
        recoveredBlock49Step := recoveredBlock49PC.
        recoveredBlock49Step = 56 ifTrue: [
            recoveredBlock49Stack1 := nil.
            recoveredBlock49PC := 57.
        ].
        recoveredBlock49Step = 57 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Arg1.
            recoveredBlock49PC := 58.
        ].
        recoveredBlock49Step = 58 ifTrue: [
            recoveredBlock49Stack3 := self.
            recoveredBlock49PC := 59.
        ].
        recoveredBlock49Step = 59 ifTrue: [
            recoveredBlock49Stack3 := (recoveredBlock49Stack3) effectiveStartState.
            recoveredBlock49PC := 60.
        ].
        recoveredBlock49Step = 60 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) isHierarchyChild: (recoveredBlock49Stack3).
            recoveredBlock49PC := 61.
        ].
        recoveredBlock49Step = 61 ifTrue: [
            (recoveredBlock49Stack2) ifTrue: [recoveredBlock49PC := 64] ifFalse: [recoveredBlock49PC := 69].
        ].
        recoveredBlock49Step = 64 ifTrue: [
            recoveredBlock49PC := 65.
        ].
        recoveredBlock49Step = 65 ifTrue: [
            recoveredBlock49Stack1 := self.
            recoveredBlock49PC := 66.
        ].
        recoveredBlock49Step = 66 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Arg1.
            recoveredBlock49PC := 67.
        ].
        recoveredBlock49Step = 67 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) buildMdlExitActions: (recoveredBlock49Stack2).
            recoveredBlock49PC := 69.
        ].
        recoveredBlock49Step = 69 ifTrue: [
            recoveredBlock49Result := recoveredBlock49Stack1.
            recoveredBlock49Done := true.
        ].
    ].
    recoveredBlock49Result
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredPC := 416.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) statesOnly.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := [:block2811bdd4Arg1 | 
    | block2811bdd4Value0 block2811bdd4Value1 |
    block2811bdd4Value0 := block2811bdd4Arg1.
    block2811bdd4Value1 := (block2811bdd4Value0) hasHierarchyExit.
    block2811bdd4Value1
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 198].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodStrategy.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock119Value0 recoveredBlock119Value1 recoveredBlock119Value2 recoveredBlock119Value3 recoveredBlock119Value4 recoveredBlock119Value5 recoveredBlock119Value6 recoveredBlock119Value7 recoveredBlock119Value8 |
    recoveredBlock119Value0 := (self) methodStrategy.
    recoveredBlock119Value1 := [
    | recoveredBlock119Block128Value0 recoveredBlock119Block128Value1 recoveredBlock119Block128Value2 recoveredBlock119Block128Value3 recoveredBlock119Block128Value4 recoveredBlock119Block128Value5 recoveredBlock119Block128Value6 recoveredBlock119Block128Value7 |
    recoveredBlock119Block128Value0 := (self) mdlBuilder.
    recoveredBlock119Block128Value1 := recoveredBlock119Block128Value0.
    recoveredBlock119Block128Value2 := recoveredArg1.
    recoveredBlock119Block128Value3 := (recoveredBlock119Block128Value2) levelName.
    (recoveredBlock119Block128Value1) id: (recoveredBlock119Block128Value3).
    recoveredBlock119Block128Value4 := recoveredBlock119Block128Value0.
    recoveredBlock119Block128Value5 := recoveredLocal1.
    recoveredBlock119Block128Value6 := (recoveredBlock119Block128Value5) mdlLabel.
    (recoveredBlock119Block128Value4) id: (recoveredBlock119Block128Value6).
    recoveredBlock119Block128Value7 := (recoveredBlock119Block128Value0) eq.
    recoveredBlock119Block128Value7
].
    recoveredBlock119Value2 := recoveredArg1.
    recoveredBlock119Value3 := (recoveredBlock119Value2) levelName.
    recoveredBlock119Value4 := (recoveredBlock119Value3) , ('==').
    recoveredBlock119Value5 := recoveredLocal1.
    recoveredBlock119Value6 := (recoveredBlock119Value5) mdlLabel.
    recoveredBlock119Value7 := (recoveredBlock119Value4) , (recoveredBlock119Value6).
    recoveredBlock119Value8 := (recoveredBlock119Value0) atomicExpr: (recoveredBlock119Value1) tag: (recoveredBlock119Value7).
    recoveredBlock119Value8
].
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock174Value0 recoveredBlock174Value1 |
    recoveredBlock174Value0 := recoveredLocal1.
    recoveredBlock174Value1 := (self) buildMdlExitActions: (recoveredBlock174Value0).
    recoveredBlock174Value1
].
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack4 := (recoveredStack4) source.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack1) if: (recoveredStack2) codeSequence: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredPC := 416.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 210] ifFalse: [recoveredPC := 416].
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodStrategy.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock213Value0 recoveredBlock213Value1 recoveredBlock213Value2 recoveredBlock213Value3 recoveredBlock213Value4 recoveredBlock213Value5 recoveredBlock213Value6 recoveredBlock213Value7 recoveredBlock213Value8 recoveredBlock213Value9 recoveredBlock213Value10 |
    recoveredBlock213Value0 := (self) methodStrategy.
    recoveredBlock213Value1 := [
    | recoveredBlock213Block222Value0 recoveredBlock213Block222Value1 recoveredBlock213Block222Value2 recoveredBlock213Block222Value3 recoveredBlock213Block222Value4 |
    recoveredBlock213Block222Value0 := (self) mdlBuilder.
    recoveredBlock213Block222Value1 := recoveredBlock213Block222Value0.
    recoveredBlock213Block222Value2 := recoveredArg1.
    recoveredBlock213Block222Value3 := (recoveredBlock213Block222Value2) levelName.
    (recoveredBlock213Block222Value1) id: (recoveredBlock213Block222Value3).
    recoveredBlock213Block222Value4 := (recoveredBlock213Block222Value0) block.
    recoveredBlock213Block222Value4
].
    recoveredBlock213Value2 := [
    | recoveredBlock213Block241Stack0 recoveredBlock213Block241Stack1 recoveredBlock213Block241Stack2 recoveredBlock213Block241Stack3 recoveredBlock213Block241PC recoveredBlock213Block241Step recoveredBlock213Block241Done recoveredBlock213Block241Result |
    recoveredBlock213Block241Stack0 := self.
    recoveredBlock213Block241PC := 248.
    recoveredBlock213Block241Done := false.
    [recoveredBlock213Block241Done not] whileTrue: [
        recoveredBlock213Block241Step := recoveredBlock213Block241PC.
        recoveredBlock213Block241Step = 248 ifTrue: [
            recoveredBlock213Block241Stack1 := recoveredLocal2.
            recoveredBlock213Block241PC := 251.
        ].
        recoveredBlock213Block241Step = 251 ifTrue: [
            recoveredBlock213Block241Stack2 := [:block2811bdf8Arg1 :block2811bdf8Arg2 | 
    | block2811bdf8Value0 block2811bdf8Value1 block2811bdf8Value2 block2811bdf8Value3 block2811bdf8Value4 |
    block2811bdf8Value0 := block2811bdf8Arg1.
    block2811bdf8Value1 := (block2811bdf8Value0) cgenId.
    block2811bdf8Value2 := block2811bdf8Arg2.
    block2811bdf8Value3 := (block2811bdf8Value2) cgenId.
    block2811bdf8Value4 := (block2811bdf8Value1) < (block2811bdf8Value3).
    block2811bdf8Value4
].
            recoveredBlock213Block241PC := 253.
        ].
        recoveredBlock213Block241Step = 253 ifTrue: [
            recoveredBlock213Block241PC := 264.
        ].
        recoveredBlock213Block241Step = 264 ifTrue: [
            recoveredBlock213Block241Stack1 := (recoveredBlock213Block241Stack1) asSortedCollection: (recoveredBlock213Block241Stack2).
            recoveredBlock213Block241PC := 266.
        ].
        recoveredBlock213Block241Step = 266 ifTrue: [
            recoveredBlock213Block241Stack2 := [:recoveredBlock213Block241Block266Arg1 | 
    | recoveredBlock213Block241Block266Value0 recoveredBlock213Block241Block266Value1 recoveredBlock213Block241Block266Value2 recoveredBlock213Block241Block266Value3 recoveredBlock213Block241Block266Value4 recoveredBlock213Block241Block266Value5 recoveredBlock213Block241Block266Value6 recoveredBlock213Block241Block266Value7 recoveredBlock213Block241Block266Value8 recoveredBlock213Block241Block266Value9 recoveredBlock213Block241Block266Value10 |
    recoveredBlock213Block241Block266Value0 := (self) methodStrategy.
    recoveredBlock213Block241Block266Value1 := [
    | recoveredBlock213Block241Block266Block274Value0 recoveredBlock213Block241Block266Block274Value1 recoveredBlock213Block241Block266Block274Value2 recoveredBlock213Block241Block266Block274Value3 recoveredBlock213Block241Block266Block274Value4 |
    recoveredBlock213Block241Block266Block274Value0 := (self) mdlBuilder.
    recoveredBlock213Block241Block266Block274Value1 := recoveredBlock213Block241Block266Block274Value0.
    recoveredBlock213Block241Block266Block274Value2 := recoveredBlock213Block241Block266Arg1.
    recoveredBlock213Block241Block266Block274Value3 := (recoveredBlock213Block241Block266Block274Value2) mdlLabel.
    (recoveredBlock213Block241Block266Block274Value1) id: (recoveredBlock213Block241Block266Block274Value3).
    recoveredBlock213Block241Block266Block274Value4 := (recoveredBlock213Block241Block266Block274Value0) block.
    recoveredBlock213Block241Block266Block274Value4
].
    recoveredBlock213Block241Block266Value2 := [
    | recoveredBlock213Block241Block266Block293Value0 recoveredBlock213Block241Block266Block293Value1 |
    recoveredBlock213Block241Block266Block293Value0 := recoveredBlock213Block241Block266Arg1.
    recoveredBlock213Block241Block266Block293Value1 := (self) buildMdlExitActions: (recoveredBlock213Block241Block266Block293Value0).
    recoveredBlock213Block241Block266Block293Value1
].
    recoveredBlock213Block241Block266Value3 := [
    | recoveredBlock213Block241Block266Block306Value0 recoveredBlock213Block241Block266Block306Value1 recoveredBlock213Block241Block266Block306Value2 recoveredBlock213Block241Block266Block306Value3 |
    recoveredBlock213Block241Block266Block306Value0 := (self) mdlBuilder.
    recoveredBlock213Block241Block266Block306Value1 := recoveredBlock213Block241Block266Block306Value0.
    (recoveredBlock213Block241Block266Block306Value1) break.
    recoveredBlock213Block241Block266Block306Value2 := recoveredBlock213Block241Block266Block306Value0.
    (recoveredBlock213Block241Block266Block306Value2) endBlock.
    recoveredBlock213Block241Block266Block306Value3 := (recoveredBlock213Block241Block266Block306Value0) case.
    recoveredBlock213Block241Block266Block306Value3
].
    recoveredBlock213Block241Block266Value4 := [
    | recoveredBlock213Block241Block266Block323Value0 recoveredBlock213Block241Block266Block323Value1 recoveredBlock213Block241Block266Block323Value2 |
    recoveredBlock213Block241Block266Block323Value0 := (self) mdlBuilder.
    recoveredBlock213Block241Block266Block323Value1 := recoveredBlock213Block241Block266Block323Value0.
    (recoveredBlock213Block241Block266Block323Value1) endBlock.
    recoveredBlock213Block241Block266Block323Value2 := (recoveredBlock213Block241Block266Block323Value0) case.
    recoveredBlock213Block241Block266Block323Value2
].
    recoveredBlock213Block241Block266Value5 := recoveredArg1.
    recoveredBlock213Block241Block266Value6 := (recoveredBlock213Block241Block266Value5) source.
    recoveredBlock213Block241Block266Value7 := recoveredBlock213Block241Block266Arg1.
    recoveredBlock213Block241Block266Value8 := (recoveredBlock213Block241Block266Value7) mdlLabel.
    recoveredBlock213Block241Block266Value9 := (recoveredBlock213Block241Block266Value8) , (':exitCase').
    recoveredBlock213Block241Block266Value10 := (recoveredBlock213Block241Block266Value0) codeBefore: (recoveredBlock213Block241Block266Value1) sequence: (recoveredBlock213Block241Block266Value2) after: (recoveredBlock213Block241Block266Value3) afterOptimized: (recoveredBlock213Block241Block266Value4) source: (recoveredBlock213Block241Block266Value6) label: (recoveredBlock213Block241Block266Value9).
    recoveredBlock213Block241Block266Value10
].
            recoveredBlock213Block241PC := 356.
        ].
        recoveredBlock213Block241Step = 356 ifTrue: [
            recoveredBlock213Block241Stack1 := (recoveredBlock213Block241Stack1) do: (recoveredBlock213Block241Stack2).
            recoveredBlock213Block241PC := 358.
        ].
        recoveredBlock213Block241Step = 358 ifTrue: [
            recoveredBlock213Block241Result := recoveredBlock213Block241Stack1.
            recoveredBlock213Block241Done := true.
        ].
    ].
    recoveredBlock213Block241Result
].
    recoveredBlock213Value3 := [
    | recoveredBlock213Block359Value0 recoveredBlock213Block359Value1 recoveredBlock213Block359Value2 recoveredBlock213Block359Value3 recoveredBlock213Block359Value4 |
    recoveredBlock213Block359Value0 := (self) mdlBuilder.
    recoveredBlock213Block359Value1 := recoveredBlock213Block359Value0.
    (recoveredBlock213Block359Value1) emptyStmnt.
    recoveredBlock213Block359Value2 := recoveredBlock213Block359Value0.
    (recoveredBlock213Block359Value2) default.
    recoveredBlock213Block359Value3 := recoveredBlock213Block359Value0.
    (recoveredBlock213Block359Value3) endBlock.
    recoveredBlock213Block359Value4 := (recoveredBlock213Block359Value0) switch.
    recoveredBlock213Block359Value4
].
    recoveredBlock213Value4 := recoveredArg1.
    recoveredBlock213Value5 := (recoveredBlock213Value4) source.
    recoveredBlock213Value6 := recoveredArg1.
    recoveredBlock213Value7 := (recoveredBlock213Value6) levelName.
    recoveredBlock213Value8 := (recoveredBlock213Value7) , (':exits').
    recoveredBlock213Value9 := [:recoveredBlock213Block394Arg1 :recoveredBlock213Block394Arg2 | 
    | recoveredBlock213Block394Value0 recoveredBlock213Block394Value1 recoveredBlock213Block394Value2 |
    recoveredBlock213Block394Value0 := recoveredBlock213Block394Arg1.
    recoveredBlock213Block394Value1 := recoveredBlock213Block394Arg2.
    recoveredBlock213Block394Value2 := (self) optimizeSwitch: (recoveredBlock213Block394Value0) onChange: (recoveredBlock213Block394Value1).
    recoveredBlock213Block394Value2
].
    recoveredBlock213Value10 := (recoveredBlock213Value0) codeBefore: (recoveredBlock213Value1) sequence: (recoveredBlock213Value2) after: (recoveredBlock213Value3) source: (recoveredBlock213Value5) label: (recoveredBlock213Value8) optimize: (recoveredBlock213Value9).
    recoveredBlock213Value10
].
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            (recoveredStack1) codeSequence: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            (recoveredStack0) exitAction: (recoveredStack1).
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

