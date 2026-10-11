"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20004bf0; bytecode file offset 0x90206c"
!SGSmGenerator methodsFor: 'recovered'!
acceptBdlVisitor: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20031ca4; bytecode file offset 0x934580"
!SGSmGenerator methodsFor: 'recovered'!
initializeHistoryWith0
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) initializeHistoryWith0.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035234; bytecode file offset 0x934580"
!SGSmGenerator methodsFor: 'recovered'!
optimizeSMAssign
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) optimizeSMAssign.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036034; bytecode file offset 0x934580"
!SGSmGenerator methodsFor: 'recovered'!
assignSMBeforeTransitionAction
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) assignSMBeforeTransitionAction.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039944; bytecode file offset 0x938608"
!SGSmGenerator methodsFor: 'recovered'!
acceptBdlJunction: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) buildMdlJunctionThen: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b1bc; bytecode file offset 0x938608"
!SGSmGenerator methodsFor: 'recovered'!
acceptBdlState: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) buildMdlStateThen: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a56c; bytecode file offset 0x947128"
!SGSmGenerator methodsFor: 'recovered'!
statics
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) endState.
    recoveredValue1 := (self) statics: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004fb3c; bytecode file offset 0x94d048"
!SGSmGenerator methodsFor: 'recovered'!
buildMdlExitActions
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004fef0; bytecode file offset 0x94d048"
!SGSmGenerator methodsFor: 'recovered'!
mostConcreteEffectiveStartState
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20056c90; bytecode file offset 0x9536dc"
!SGSmGenerator methodsFor: 'recovered'!
parentHistoryPlainChildren: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) owner.
    recoveredValue2 := (self) historyPlainChildren: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20057438; bytecode file offset 0x956284"
!SGSmGenerator methodsFor: 'recovered'!
normalizeESDL: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) normalizeESDL: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20059aa0; bytecode file offset 0x9566ac"
!SGSmGenerator methodsFor: 'recovered'!
buildMdlStateAssign: recoveredArg1 entries: recoveredArg2
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20059b00; bytecode file offset 0x9566ac"
!SGSmGenerator methodsFor: 'recovered'!
generateCode: recoveredArg1 trigger: recoveredArg2
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20059cd4; bytecode file offset 0x9566ac"
!SGSmGenerator methodsFor: 'recovered'!
buildMdlEntryActions: recoveredArg1 entries: recoveredArg2
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20065f6c; bytecode file offset 0x963428"
!SGSmGenerator methodsFor: 'recovered'!
methodStrategy
    | recoveredValue0 |
    recoveredValue0 := methodStrategy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067ccc; bytecode file offset 0x9646f8"
!SGSmGenerator methodsFor: 'recovered'!
staticsOptimizer
    | recoveredValue0 |
    recoveredValue0 := staticsOptimizer.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068a7c; bytecode file offset 0x965b90"
!SGSmGenerator methodsFor: 'recovered'!
misraCompliance
    | recoveredValue0 |
    recoveredValue0 := misraCompliance.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069bb0; bytecode file offset 0x966bdc"
!SGSmGenerator methodsFor: 'recovered'!
trigger
    | recoveredValue0 |
    recoveredValue0 := trigger.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a5bc; bytecode file offset 0x967a18"
!SGSmGenerator methodsFor: 'recovered'!
effectiveStartState
    | recoveredValue0 |
    recoveredValue0 := effectiveStartState.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bc38; bytecode file offset 0x96873c"
!SGSmGenerator methodsFor: 'recovered'!
endState
    | recoveredValue0 |
    recoveredValue0 := endState.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c9cc; bytecode file offset 0x9692b0"
!SGSmGenerator methodsFor: 'recovered'!
staticsToDo
    | recoveredValue0 |
    recoveredValue0 := staticsToDo.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ced0; bytecode file offset 0x969c04"
!SGSmGenerator methodsFor: 'recovered'!
entriesDone
    | recoveredValue0 |
    recoveredValue0 := entriesDone.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d394; bytecode file offset 0x96a390"
!SGSmGenerator methodsFor: 'recovered'!
transition
    | recoveredValue0 |
    recoveredValue0 := transition.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006df50; bytecode file offset 0x96a9dc"
!SGSmGenerator methodsFor: 'recovered'!
staticExitActionDone
    | recoveredValue0 |
    recoveredValue0 := staticExitActionDone.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e1ec; bytecode file offset 0x96af48"
!SGSmGenerator methodsFor: 'recovered'!
historyAssign
    | recoveredValue0 |
    recoveredValue0 := historyAssign.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20087050; bytecode file offset 0x98396c"
!SGSmGenerator methodsFor: 'recovered'!
entries: recoveredArg1 statics: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) fullPath.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) backUnequal: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200898f0; bytecode file offset 0x9861bc"
!SGSmGenerator methodsFor: 'recovered'!
entriesDoneReset
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    entriesDone := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2008d024; bytecode file offset 0x989db0"
!SGSmGenerator methodsFor: 'recovered'!
buildMdlTriggerAction
    | recoveredValue0 |
    recoveredValue0 := (self) transition.
    (self) transitionAction: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20099058; bytecode file offset 0x995918"
!SGSmGenerator methodsFor: 'recovered'!
statics: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) effectiveStartState.
    recoveredValue1 := (recoveredValue0) path.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) path.
    recoveredValue4 := (recoveredValue1) frontEqual: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200c1030; bytecode file offset 0x9bdf14"
!SGSmGenerator methodsFor: 'recovered'!
trigger: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    trigger := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1cec; bytecode file offset 0x9beac8"
!SGSmGenerator methodsFor: 'recovered'!
effectiveStartState: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    effectiveStartState := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2a50; bytecode file offset 0x9bf474"
!SGSmGenerator methodsFor: 'recovered'!
endState: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    endState := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c320c; bytecode file offset 0x9bfde0"
!SGSmGenerator methodsFor: 'recovered'!
staticsToDo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    staticsToDo := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c42ac; bytecode file offset 0x9c0bf0"
!SGSmGenerator methodsFor: 'recovered'!
transition: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    transition := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4458; bytecode file offset 0x9c11bc"
!SGSmGenerator methodsFor: 'recovered'!
staticExitActionDone: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    staticExitActionDone := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4bf4; bytecode file offset 0x9c16b0"
!SGSmGenerator methodsFor: 'recovered'!
historyAssign: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    historyAssign := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d8508; bytecode file offset 0x9d4dc0"
!SGSmGenerator methodsFor: 'recovered'!
staticsOptimizer: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    staticsOptimizer := recoveredValue0.
    recoveredValue1 := staticsOptimizer.
    (recoveredValue1) generator: (self).
    ^self
! !

"ASDBase.ic method 0x2010f540; bytecode file offset 0xa0be1c"
!SGSmGenerator methodsFor: 'recovered'!
acceptTopHierarchyState: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) generalError: ('Internal Error in state machine code generation') source: (recoveredValue1).
    recoveredValue2 := (self) errorHandler.
    (recoveredValue2) fatalWithDisplay.
    ^self
! !

"ASDBase.ic method 0x2010f558; bytecode file offset 0xa0be1c"
!SGSmGenerator methodsFor: 'recovered'!
acceptBdlTransition: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) generalError: ('Internal Error in state machine code generation') source: (recoveredValue1).
    recoveredValue2 := (self) errorHandler.
    (recoveredValue2) fatalWithDisplay.
    ^self
! !

"ASDBase.ic method 0x2012a668; bytecode file offset 0xa26f34"
!SGSmGenerator methodsFor: 'recovered'!
calledFromTransition
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := calledFromTransition.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            calledFromTransition := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := calledFromTransition.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20175a4c; bytecode file offset 0xa72364"
!SGSmGenerator methodsFor: 'recovered'!
exitAction: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) exitPort.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) id.
    recoveredValue5 := (recoveredValue4) asString.
    recoveredValue6 := ('X') , (recoveredValue5).
    (self) buildMdlAction: (recoveredValue0) port: (recoveredValue2) category: ('EXIT') tag: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20175a70; bytecode file offset 0xa72364"
!SGSmGenerator methodsFor: 'recovered'!
transitionCondition: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) conditionPort.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) id.
    recoveredValue5 := (recoveredValue4) asString.
    recoveredValue6 := ('C') , (recoveredValue5).
    (self) buildMdlCondition: (recoveredValue0) port: (recoveredValue2) category: ('COND') tag: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20175a94; bytecode file offset 0xa72364"
!SGSmGenerator methodsFor: 'recovered'!
staticAction: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) staticPort.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) id.
    recoveredValue5 := (recoveredValue4) asString.
    recoveredValue6 := ('S') , (recoveredValue5).
    (self) buildMdlAction: (recoveredValue0) port: (recoveredValue2) category: ('STATIC') tag: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20184b10; bytecode file offset 0xa813d0"
!SGSmGenerator methodsFor: 'recovered'!
misraCompliance: recoveredArg1
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
            misraCompliance := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := misraCompliance.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) generator: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodStrategy.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodStrategy.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) misraCompliance: (recoveredStack1).
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

"ASDBase.ic method 0x20192c5c; bytecode file offset 0xa8f520"
!SGSmGenerator methodsFor: 'recovered'!
methodStrategy: recoveredArg1
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
            methodStrategy := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := methodStrategy.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) generator: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) misraCompliance.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodStrategy.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) misraCompliance.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) misraCompliance: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ccdac; bytecode file offset 0xac9674"
!SGSmGenerator methodsFor: 'recovered'!
historyPlainChildren: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isHistory.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
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
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:block280d5270Arg1 | 
    | block280d5270Value0 block280d5270Value1 block280d5270Value2 |
    block280d5270Value0 := block280d5270Arg1.
    block280d5270Value1 := (block280d5270Value0) isBdlHierarchyState.
    block280d5270Value2 := (block280d5270Value1) not.
    block280d5270Value2
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSatisfy: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202072f0; bytecode file offset 0xb03bec"
!SGSmGenerator methodsFor: 'recovered'!
entryAction: recoveredArg1
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
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) entryPort.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := 'ENTRY'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := 'E'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := (recoveredStack5) id.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack5 := (recoveredStack5) asString.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildMdlAction: (recoveredStack1) port: (recoveredStack2) category: (recoveredStack3) tag: (recoveredStack4).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) checkSMUsage.
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

"ASDBase.ic method 0x20207318; bytecode file offset 0xb03bec"
!SGSmGenerator methodsFor: 'recovered'!
transitionAction: recoveredArg1
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
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) actionPort.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := 'ACTION'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := 'A'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := (recoveredStack5) id.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack5 := (recoveredStack5) asString.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildMdlAction: (recoveredStack1) port: (recoveredStack2) category: (recoveredStack3) tag: (recoveredStack4).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) checkSMUsage.
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

"ASDBase.ic method 0x2020f3ac; bytecode file offset 0xb0bc70"
!SGSmGenerator methodsFor: 'recovered'!
buildMdlJunctionThen: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) trigger.
    recoveredValue2 := (recoveredValue0) transitionsForTrigger: (recoveredValue1).
    recoveredValue3 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10Stack4 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
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
            recoveredBlock10Stack2 := self.
            recoveredBlock10PC := 18.
        ].
        recoveredBlock10Step = 18 ifTrue: [
            recoveredBlock10Stack3 := recoveredBlock10Arg1.
            recoveredBlock10PC := 19.
        ].
        recoveredBlock10Step = 19 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) buildMdlTransitionThen: (recoveredBlock10Stack3).
            recoveredBlock10PC := 20.
        ].
        recoveredBlock10Step = 20 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 27] ifFalse: [recoveredBlock10PC := 24].
        ].
        recoveredBlock10Step = 24 ifTrue: [
            recoveredBlock10PC := 25.
        ].
        recoveredBlock10Step = 25 ifTrue: [
            recoveredBlock10Stack1 := false.
            recoveredBlock10PC := 26.
        ].
        recoveredBlock10Step = 26 ifTrue: [
            ^recoveredBlock10Stack1
        ].
        recoveredBlock10Step = 27 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
    (recoveredValue2) do: (recoveredValue3).
    ^true
! !

"ASDBase.ic method 0x20229dac; bytecode file offset 0xb26674"
!SGSmGenerator methodsFor: 'recovered'!
buildMdlSMAssign: recoveredArg1 entries: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isBdlHierarchyState.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
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
            recoveredStack0 := (recoveredStack0) historyAssign.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) mostConcreteEffectiveStartState.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizeSMAssign.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) buildMdlSMAssign: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20277050; bytecode file offset 0xb73920"
!SGSmGenerator methodsFor: 'recovered'!
acceptBdlHierarchyState: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) history.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
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
            recoveredStack1 := (recoveredStack1) buildMdlHistoryStateThen: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:block280e0d54Arg1 | 
    | block280e0d54Value0 block280e0d54Value1 |
    block280e0d54Value0 := block280e0d54Arg1.
    block280e0d54Value1 := (block280e0d54Value0) isStartState.
    block280e0d54Value1
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := [
    self
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) acceptBdlVisitor: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20278030; bytecode file offset 0xb748fc"
!SGSmGenerator methodsFor: 'recovered'!
isHistoryAssignNeeded: recoveredArg1 entries: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) owner.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isHistory.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) owner.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) includes: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) effectiveStartState.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) owner.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) ~= (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) endState.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) isProperHierarchyChild: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202842b4; bytecode file offset 0xb80b88"
!SGSmGenerator methodsFor: 'recovered'!
childrenNoStatics: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isStateMachine.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
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
            recoveredStack1 := (recoveredStack1) isHierarchyState.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) statesOnly.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Value0 recoveredBlock21Value1 |
    recoveredBlock21Value0 := recoveredBlock21Arg1.
    recoveredBlock21Value1 := (self) childrenAndSelfNoStatics: (recoveredBlock21Value0).
    recoveredBlock21Value1
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSatisfy: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) staticPort.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) isUndef.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202a1690; bytecode file offset 0xb9df68"
!SGSmGenerator methodsFor: 'recovered'!
childrenNoTransitions: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isStateMachine.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
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
            recoveredStack1 := (recoveredStack1) isHierarchyState.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) statesOnly.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Value0 recoveredBlock21Value1 |
    recoveredBlock21Value0 := recoveredBlock21Arg1.
    recoveredBlock21Value1 := (self) childrenAndSelfNoTransitions: (recoveredBlock21Value0).
    recoveredBlock21Value1
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSatisfy: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) trigger.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) transitionsForTrigger: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202b5298; bytecode file offset 0xbb1b88"
!SGSmGenerator methodsFor: 'recovered'!
commentSource: recoveredArg1 for: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := SGLmCommentSource.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) configForModule.
    (recoveredValue2) valueConfig: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue6) implForModule.
    (recoveredValue5) implConfig: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg2.
    recoveredValue10 := (recoveredValue9) specification.
    (recoveredValue8) specification: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := recoveredArg2.
    recoveredValue13 := (recoveredValue12) context.
    (recoveredValue11) context: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := recoveredArg2.
    recoveredValue16 := (recoveredValue15) logicModel.
    (recoveredValue14) logicModel: (recoveredValue16).
    recoveredValue17 := recoveredValue1.
    recoveredValue18 := recoveredArg1.
    (recoveredValue17) comment: (recoveredValue18).
    recoveredValue19 := recoveredValue1.
    recoveredValue20 := recoveredArg2.
    recoveredValue21 := (recoveredValue20) id.
    (recoveredValue19) blockId: (recoveredValue21).
    ^recoveredValue1
! !

"ASDBase.ic method 0x202d9150; bytecode file offset 0xbd5a24"
!SGSmGenerator methodsFor: 'recovered'!
childrenAndSelfNoStatics: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isStateMachine.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
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
            recoveredStack1 := (recoveredStack1) isHierarchyState.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) staticPort.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) isUndef.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) statesOnly.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Value0 recoveredBlock32Value1 |
    recoveredBlock32Value0 := recoveredBlock32Arg1.
    recoveredBlock32Value1 := (self) childrenAndSelfNoStatics: (recoveredBlock32Value0).
    recoveredBlock32Value1
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSatisfy: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) staticPort.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) isUndef.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202ddee8; bytecode file offset 0xbda7c8"
!SGSmGenerator methodsFor: 'recovered'!
port: recoveredArg1 tag: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isUndef.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) sequence.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := SGGlSmSequence.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 'action::'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) sequence.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlName.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlLabel.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) sequence.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := SGBdlInlinedSequence.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) sequence.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) code.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) normalizeESDL: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202e8ae4; bytecode file offset 0xbe53c4"
!SGSmGenerator methodsFor: 'recovered'!
buildMdlStateThen: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) statics.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) entries: (recoveredStack1) statics: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) staticExitActionDone.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) buildMdlExitActions.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) staticsOptimizer.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) staticsToDo.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) buildMdlStaticActions: (recoveredStack1) staticsToDo: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) assignSMBeforeTransitionAction.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) buildMdlStateAssign: (recoveredStack1) entries: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) buildMdlTriggerAction.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) buildMdlEntryActions: (recoveredStack1) entries: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f85d8; bytecode file offset 0xbf4eb0"
!SGSmGenerator methodsFor: 'recovered'!
allStates: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) children.
    recoveredValue4 := (recoveredValue3) statesOnly.
    recoveredValue5 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15Stack4 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Arg1.
            recoveredBlock15PC := 23.
        ].
        recoveredBlock15Step = 23 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) isBdlHierarchyState.
            recoveredBlock15PC := 25.
        ].
        recoveredBlock15Step = 25 ifTrue: [
            (recoveredBlock15Stack1) ifTrue: [recoveredBlock15PC := 28] ifFalse: [recoveredBlock15PC := 40].
        ].
        recoveredBlock15Step = 28 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal1.
            recoveredBlock15PC := 31.
        ].
        recoveredBlock15Step = 31 ifTrue: [
            recoveredBlock15Stack2 := self.
            recoveredBlock15PC := 32.
        ].
        recoveredBlock15Step = 32 ifTrue: [
            recoveredBlock15Stack3 := recoveredBlock15Arg1.
            recoveredBlock15PC := 33.
        ].
        recoveredBlock15Step = 33 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) allStates: (recoveredBlock15Stack3).
            recoveredBlock15PC := 35.
        ].
        recoveredBlock15Step = 35 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) addAll: (recoveredBlock15Stack2).
            recoveredBlock15PC := 37.
        ].
        recoveredBlock15Step = 37 ifTrue: [
            recoveredBlock15PC := 46.
        ].
        recoveredBlock15Step = 40 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal1.
            recoveredBlock15PC := 43.
        ].
        recoveredBlock15Step = 43 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 44.
        ].
        recoveredBlock15Step = 44 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) add: (recoveredBlock15Stack2).
            recoveredBlock15PC := 46.
        ].
        recoveredBlock15Step = 46 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20305724; bytecode file offset 0xc01ffc"
!SGSmGenerator methodsFor: 'recovered'!
childrenAndSelfNoTransitions: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isStateMachine.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
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
            recoveredStack1 := (recoveredStack1) isHierarchyState.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) trigger.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) transitionsForTrigger: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEmpty.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) statesOnly.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Value0 recoveredBlock34Value1 |
    recoveredBlock34Value0 := recoveredBlock34Arg1.
    recoveredBlock34Value1 := (self) childrenAndSelfNoTransitions: (recoveredBlock34Value0).
    recoveredBlock34Value1
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSatisfy: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) trigger.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) transitionsForTrigger: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20395998; bytecode file offset 0xc9228c"
!SGSmGenerator methodsFor: 'recovered'!
buildMdlSMAssign: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) methodStrategy.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 recoveredBlock5Value11 recoveredBlock5Value12 recoveredBlock5Value13 recoveredBlock5Value14 recoveredBlock5Value15 |
    recoveredBlock5Value0 := (self) mdlBuilder.
    recoveredBlock5Value1 := recoveredBlock5Value0.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value2) topCodeBlock.
    recoveredBlock5Value4 := (recoveredBlock5Value3) stateVariableName.
    (recoveredBlock5Value1) id: (recoveredBlock5Value4).
    recoveredBlock5Value5 := recoveredBlock5Value0.
    recoveredBlock5Value6 := recoveredArg1.
    recoveredBlock5Value7 := (recoveredBlock5Value6) mdlLabel.
    (recoveredBlock5Value5) id: (recoveredBlock5Value7).
    recoveredBlock5Value8 := recoveredBlock5Value0.
    (recoveredBlock5Value8) sourceComment: ('switch the current state').
    recoveredBlock5Value9 := recoveredBlock5Value0.
    recoveredBlock5Value10 := recoveredArg1.
    recoveredBlock5Value11 := (recoveredBlock5Value10) errLabel.
    recoveredBlock5Value12 := ('Switch to ') , (recoveredBlock5Value11).
    recoveredBlock5Value13 := recoveredArg1.
    recoveredBlock5Value14 := (self) commentSource: (recoveredBlock5Value12) for: (recoveredBlock5Value13).
    (recoveredBlock5Value9) source: (recoveredBlock5Value14).
    recoveredBlock5Value15 := (recoveredBlock5Value0) assignSMStmnt.
    recoveredBlock5Value15
].
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) topCodeBlock.
    recoveredValue4 := (recoveredValue3) stateVariableName.
    recoveredValue5 := (recoveredValue4) , ('=').
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) mdlLabel.
    recoveredValue8 := (recoveredValue5) , (recoveredValue7).
    (recoveredValue0) atomicCode: (recoveredValue1) tag: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x203b015c; bytecode file offset 0xcaca44"
!SGSmGenerator methodsFor: 'recovered'!
buildMdlAction: recoveredArg1 port: recoveredArg2 category: recoveredArg3 tag: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isUndef.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 77] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodStrategy.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock14Local1 recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 recoveredBlock14Value5 recoveredBlock14Value6 recoveredBlock14Value7 recoveredBlock14Value8 recoveredBlock14Value9 recoveredBlock14Value10 recoveredBlock14Value11 recoveredBlock14Value12 recoveredBlock14Value13 recoveredBlock14Value14 |
    recoveredBlock14Value0 := recoveredArg3.
    recoveredBlock14Value1 := (recoveredBlock14Value0) , (' of ').
    recoveredBlock14Value2 := recoveredArg1.
    recoveredBlock14Value3 := (recoveredBlock14Value2) errLabel.
    recoveredBlock14Value4 := (recoveredBlock14Value1) , (recoveredBlock14Value3).
    recoveredBlock14Local1 := recoveredBlock14Value4.
    recoveredBlock14Value5 := (self) mdlBuilder.
    recoveredBlock14Value6 := recoveredBlock14Local1.
    (recoveredBlock14Value5) sourceComment: (recoveredBlock14Value6).
    recoveredBlock14Value7 := (self) mdlBuilder.
    recoveredBlock14Value8 := recoveredArg1.
    recoveredBlock14Value9 := (recoveredBlock14Value8) source.
    (recoveredBlock14Value7) source: (recoveredBlock14Value9).
    recoveredBlock14Value10 := recoveredArg2.
    recoveredBlock14Value11 := (recoveredBlock14Value10) sequence.
    recoveredBlock14Value12 := recoveredArg2.
    (recoveredBlock14Value11) buidlMdlAction: (recoveredBlock14Value12).
    recoveredBlock14Value13 := (self) mdlBuilder.
    recoveredBlock14Value14 := (recoveredBlock14Value13) source: (nil).
    recoveredBlock14Value14
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := (recoveredStack3) port: (recoveredStack4) tag: (recoveredStack5).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) atomicCode: (recoveredStack2) tag: (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203d0b28; bytecode file offset 0xccd420"
!SGSmGenerator methodsFor: 'recovered'!
buildMdlSMHistoryAssign: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) historyPlainChildren: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 83].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodStrategy.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 recoveredBlock14Value5 recoveredBlock14Value6 recoveredBlock14Value7 recoveredBlock14Value8 recoveredBlock14Value9 recoveredBlock14Value10 recoveredBlock14Value11 recoveredBlock14Value12 recoveredBlock14Value13 recoveredBlock14Value14 recoveredBlock14Value15 |
    recoveredBlock14Value0 := (self) mdlBuilder.
    recoveredBlock14Value1 := recoveredBlock14Value0.
    recoveredBlock14Value2 := recoveredArg1.
    recoveredBlock14Value3 := (recoveredBlock14Value2) topCodeBlock.
    recoveredBlock14Value4 := (recoveredBlock14Value3) stateVariableName.
    (recoveredBlock14Value1) id: (recoveredBlock14Value4).
    recoveredBlock14Value5 := recoveredBlock14Value0.
    recoveredBlock14Value6 := recoveredArg1.
    recoveredBlock14Value7 := (recoveredBlock14Value6) historyName.
    (recoveredBlock14Value5) id: (recoveredBlock14Value7).
    recoveredBlock14Value8 := recoveredBlock14Value0.
    (recoveredBlock14Value8) sourceComment: ('switch the current state').
    recoveredBlock14Value9 := recoveredBlock14Value0.
    recoveredBlock14Value10 := recoveredArg1.
    recoveredBlock14Value11 := (recoveredBlock14Value10) errLabel.
    recoveredBlock14Value12 := ('Update history variable ') , (recoveredBlock14Value11).
    recoveredBlock14Value13 := recoveredArg1.
    recoveredBlock14Value14 := (self) commentSource: (recoveredBlock14Value12) for: (recoveredBlock14Value13).
    (recoveredBlock14Value9) source: (recoveredBlock14Value14).
    recoveredBlock14Value15 := (recoveredBlock14Value0) assignSMStmnt.
    recoveredBlock14Value15
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) topCodeBlock.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) stateVariableName.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := '='.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := (recoveredStack3) historyName.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) atomicCode: (recoveredStack1) tag: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203db09c; bytecode file offset 0xcd7994"
!SGSmGenerator methodsFor: 'recovered'!
buildMdlHistoryAssign: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) methodStrategy.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 recoveredBlock5Value11 recoveredBlock5Value12 recoveredBlock5Value13 recoveredBlock5Value14 recoveredBlock5Value15 recoveredBlock5Value16 recoveredBlock5Value17 recoveredBlock5Value18 recoveredBlock5Value19 recoveredBlock5Value20 recoveredBlock5Value21 |
    recoveredBlock5Value0 := (self) mdlBuilder.
    recoveredBlock5Value1 := recoveredBlock5Value0.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value2) hierarchyBlock.
    recoveredBlock5Value4 := (recoveredBlock5Value3) historyName.
    (recoveredBlock5Value1) id: (recoveredBlock5Value4).
    recoveredBlock5Value5 := recoveredBlock5Value0.
    recoveredBlock5Value6 := recoveredArg1.
    recoveredBlock5Value7 := (recoveredBlock5Value6) mdlLabel.
    (recoveredBlock5Value5) id: (recoveredBlock5Value7).
    recoveredBlock5Value8 := recoveredBlock5Value0.
    recoveredBlock5Value9 := recoveredArg1.
    recoveredBlock5Value10 := (recoveredBlock5Value9) hierarchyBlock.
    recoveredBlock5Value11 := (recoveredBlock5Value10) errLabel.
    recoveredBlock5Value12 := ('remember ') , (recoveredBlock5Value11).
    recoveredBlock5Value13 := (recoveredBlock5Value12) , (' as history state of ').
    recoveredBlock5Value14 := recoveredArg1.
    recoveredBlock5Value15 := (recoveredBlock5Value14) errLabel.
    recoveredBlock5Value16 := (recoveredBlock5Value13) , (recoveredBlock5Value15).
    (recoveredBlock5Value8) sourceComment: (recoveredBlock5Value16).
    recoveredBlock5Value17 := recoveredBlock5Value0.
    recoveredBlock5Value18 := recoveredArg1.
    recoveredBlock5Value19 := (recoveredBlock5Value18) source.
    (recoveredBlock5Value17) source: (recoveredBlock5Value19).
    recoveredBlock5Value20 := recoveredBlock5Value0.
    (recoveredBlock5Value20) assign.
    recoveredBlock5Value21 := (recoveredBlock5Value0) endStmnt.
    recoveredBlock5Value21
].
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) hierarchyBlock.
    recoveredValue4 := (recoveredValue3) historyName.
    recoveredValue5 := (recoveredValue4) , ('=').
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) mdlLabel.
    recoveredValue8 := (recoveredValue5) , (recoveredValue7).
    (recoveredValue0) atomicCode: (recoveredValue1) tag: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x203e54b0; bytecode file offset 0xce1dac"
!SGSmGenerator methodsFor: 'recovered'!
checkCalledMethods: recoveredArg1 transition: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGMdCalledMethodsCollector.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) allowPublic: (true).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue1) methodCallsIn: (recoveredValue3).
    recoveredValue5 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15Stack4 recoveredBlock15Stack5 recoveredBlock15Stack6 recoveredBlock15Stack7 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Arg1.
            recoveredBlock15PC := 23.
        ].
        recoveredBlock15Step = 23 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) methodDecl.
            recoveredBlock15PC := 25.
        ].
        recoveredBlock15Step = 25 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) isMdlReinitializeMethod.
            recoveredBlock15PC := 27.
        ].
        recoveredBlock15Step = 27 ifTrue: [
            (recoveredBlock15Stack1) ifTrue: [recoveredBlock15PC := 30] ifFalse: [recoveredBlock15PC := 62].
        ].
        recoveredBlock15Step = 30 ifTrue: [
            recoveredBlock15Stack1 := self.
            recoveredBlock15PC := 31.
        ].
        recoveredBlock15Step = 31 ifTrue: [
            recoveredBlock15Stack2 := 96.
            recoveredBlock15PC := 34.
        ].
        recoveredBlock15Step = 34 ifTrue: [
            recoveredBlock15Stack3 := recoveredBlock15Arg1.
            recoveredBlock15PC := 35.
        ].
        recoveredBlock15Step = 35 ifTrue: [
            recoveredBlock15Stack3 := (recoveredBlock15Stack3) source.
            recoveredBlock15PC := 37.
        ].
        recoveredBlock15Step = 37 ifTrue: [
            recoveredBlock15Stack4 := Array.
            recoveredBlock15PC := 39.
        ].
        recoveredBlock15Step = 39 ifTrue: [
            recoveredBlock15Stack5 := recoveredArg2.
            recoveredBlock15PC := 42.
        ].
        recoveredBlock15Step = 42 ifTrue: [
            recoveredBlock15Stack5 := (recoveredBlock15Stack5) source.
            recoveredBlock15PC := 44.
        ].
        recoveredBlock15Step = 44 ifTrue: [
            recoveredBlock15Stack4 := (recoveredBlock15Stack4) with: (recoveredBlock15Stack5).
            recoveredBlock15PC := 46.
        ].
        recoveredBlock15Step = 46 ifTrue: [
            recoveredBlock15Stack5 := Array.
            recoveredBlock15PC := 48.
        ].
        recoveredBlock15Step = 48 ifTrue: [
            recoveredBlock15Stack6 := recoveredArg2.
            recoveredBlock15PC := 51.
        ].
        recoveredBlock15Step = 51 ifTrue: [
            recoveredBlock15Stack6 := (recoveredBlock15Stack6) errLabel.
            recoveredBlock15PC := 53.
        ].
        recoveredBlock15Step = 53 ifTrue: [
            recoveredBlock15Stack5 := (recoveredBlock15Stack5) with: (recoveredBlock15Stack6).
            recoveredBlock15PC := 55.
        ].
        recoveredBlock15Step = 55 ifTrue: [
            recoveredBlock15Stack3 := (recoveredBlock15Stack3) createMultiSource: (recoveredBlock15Stack4) labels: (recoveredBlock15Stack5).
            recoveredBlock15PC := 57.
        ].
        recoveredBlock15Step = 57 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) smSemErrNo: (recoveredBlock15Stack2) source: (recoveredBlock15Stack3).
            recoveredBlock15PC := 59.
        ].
        recoveredBlock15Step = 59 ifTrue: [
            recoveredBlock15PC := 85.
        ].
        recoveredBlock15Step = 62 ifTrue: [
            recoveredBlock15Stack1 := self.
            recoveredBlock15PC := 63.
        ].
        recoveredBlock15Step = 63 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) calledFromTransition.
            recoveredBlock15PC := 65.
        ].
        recoveredBlock15Step = 65 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 66.
        ].
        recoveredBlock15Step = 66 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) methodDecl.
            recoveredBlock15PC := 68.
        ].
        recoveredBlock15Step = 68 ifTrue: [
            recoveredBlock15Stack3 := [
    | block280f8808Value0 block280f8808Value1 |
    block280f8808Value0 := OrderedCollection.
    block280f8808Value1 := (block280f8808Value0) new.
    block280f8808Value1
].
            recoveredBlock15PC := 70.
        ].
        recoveredBlock15Step = 70 ifTrue: [
            recoveredBlock15PC := 78.
        ].
        recoveredBlock15Step = 78 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) at: (recoveredBlock15Stack2) ifAbsentPut: (recoveredBlock15Stack3).
            recoveredBlock15PC := 80.
        ].
        recoveredBlock15Step = 80 ifTrue: [
            recoveredBlock15Stack2 := recoveredArg2.
            recoveredBlock15PC := 83.
        ].
        recoveredBlock15Step = 83 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) add: (recoveredBlock15Stack2).
            recoveredBlock15PC := 85.
        ].
        recoveredBlock15Step = 85 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
    (recoveredValue4) do: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20432c44; bytecode file offset 0xd2f530"
!SGSmGenerator methodsFor: 'recovered'!
buildMdlCondition: recoveredArg1 port: recoveredArg2 category: recoveredArg3 tag: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isUndef.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodStrategy.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 recoveredBlock14Value5 recoveredBlock14Value6 recoveredBlock14Value7 |
    recoveredBlock14Value0 := (self) mdlBuilder.
    recoveredBlock14Value1 := recoveredArg3.
    recoveredBlock14Value2 := ('no ') , (recoveredBlock14Value1).
    (recoveredBlock14Value0) sourceComment: (recoveredBlock14Value2).
    recoveredBlock14Value3 := (self) mdlBuilder.
    recoveredBlock14Value4 := recoveredArg1.
    recoveredBlock14Value5 := (recoveredBlock14Value4) source.
    (recoveredBlock14Value3) source: (recoveredBlock14Value5).
    recoveredBlock14Value6 := recoveredArg2.
    recoveredBlock14Value7 := (recoveredBlock14Value6) buildMdlCondition.
    recoveredBlock14Value7
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := 'true'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) atomicExpr: (recoveredStack2) tag: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 105.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodStrategy.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock54Local1 recoveredBlock54Value0 recoveredBlock54Value1 recoveredBlock54Value2 recoveredBlock54Value3 recoveredBlock54Value4 recoveredBlock54Value5 recoveredBlock54Value6 recoveredBlock54Value7 recoveredBlock54Value8 recoveredBlock54Value9 recoveredBlock54Value10 recoveredBlock54Value11 |
    recoveredBlock54Value0 := recoveredArg3.
    recoveredBlock54Value1 := (recoveredBlock54Value0) , (' of ').
    recoveredBlock54Value2 := recoveredArg1.
    recoveredBlock54Value3 := (recoveredBlock54Value2) errLabel.
    recoveredBlock54Value4 := (recoveredBlock54Value1) , (recoveredBlock54Value3).
    recoveredBlock54Local1 := recoveredBlock54Value4.
    recoveredBlock54Value5 := (self) mdlBuilder.
    recoveredBlock54Value6 := recoveredBlock54Local1.
    (recoveredBlock54Value5) sourceComment: (recoveredBlock54Value6).
    recoveredBlock54Value7 := (self) mdlBuilder.
    recoveredBlock54Value8 := recoveredArg1.
    recoveredBlock54Value9 := (recoveredBlock54Value8) source.
    (recoveredBlock54Value7) source: (recoveredBlock54Value9).
    recoveredBlock54Value10 := recoveredArg2.
    recoveredBlock54Value11 := (recoveredBlock54Value10) buildMdlCondition.
    recoveredBlock54Value11
].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := (recoveredStack3) port: (recoveredStack4) tag: (recoveredStack5).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) atomicExpr: (recoveredStack2) tag: (recoveredStack3).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20471130; bytecode file offset 0xd6da34"
!SGSmGenerator methodsFor: 'recovered'!
buildMdlHistoryStateThen: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) mostConcreteEffectiveStartState.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isHierarchyChild: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) statesOnly.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 28.
        ].
        recoveredBlock19Step = 28 ifTrue: [
            recoveredBlock19Stack3 := self.
            recoveredBlock19PC := 29.
        ].
        recoveredBlock19Step = 29 ifTrue: [
            recoveredBlock19Stack3 := (recoveredBlock19Stack3) mostConcreteEffectiveStartState.
            recoveredBlock19PC := 30.
        ].
        recoveredBlock19Step = 30 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) isHierarchyChild: (recoveredBlock19Stack3).
            recoveredBlock19PC := 31.
        ].
        recoveredBlock19Step = 31 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 34] ifFalse: [recoveredBlock19PC := 40].
        ].
        recoveredBlock19Step = 34 ifTrue: [
            recoveredBlock19PC := 35.
        ].
        recoveredBlock19Step = 35 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg1.
            recoveredBlock19PC := 36.
        ].
        recoveredBlock19Step = 36 ifTrue: [
            recoveredBlock19Stack2 := self.
            recoveredBlock19PC := 37.
        ].
        recoveredBlock19Step = 37 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) acceptBdlVisitor: (recoveredBlock19Stack2).
            recoveredBlock19PC := 39.
        ].
        recoveredBlock19Step = 39 ifTrue: [
            ^recoveredBlock19Stack1
        ].
        recoveredBlock19Step = 40 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) statics.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal2 := recoveredStack0.
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
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) entries: (recoveredStack1) statics: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) staticExitActionDone.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 87] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) buildMdlExitActions.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) staticsOptimizer.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) staticsToDo.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) buildMdlStaticActions: (recoveredStack1) staticsToDo: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) buildMdlTriggerAction.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) staticExitActionDone: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) buildMdlEntryActions: (recoveredStack1) entries: (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) historyPlainChildren: (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) historyAssign: (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) buildMdlHistorySwitch: (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) historyAssign: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) buildMdlSMHistoryAssign: (recoveredStack1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204f7380; bytecode file offset 0xdf3c88"
!SGSmGenerator methodsFor: 'recovered'!
buildMdlTransitionThen: recoveredArg1
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
            (recoveredStack0) transition: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) historyAssign: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 |
    recoveredBlock13Value0 := recoveredArg1.
    recoveredBlock13Value1 := (recoveredBlock13Value0) connectedEndState.
    (self) endState: (recoveredBlock13Value1).
    (self) entriesDoneReset.
    (self) staticExitActionDone: (false).
    recoveredBlock13Value2 := recoveredArg1.
    recoveredBlock13Value3 := (recoveredBlock13Value2) connectedEndState.
    recoveredBlock13Value4 := (recoveredBlock13Value3) acceptBdlVisitor: (self).
    recoveredBlock13Value4
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) conditionPort.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) isUndef.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodStrategy.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock57Value0 recoveredBlock57Value1 recoveredBlock57Value2 |
    recoveredBlock57Value0 := recoveredLocal2.
    recoveredBlock57Value1 := (recoveredBlock57Value0) value.
    recoveredBlock57Value2 := recoveredBlock57Value1.
    recoveredLocal1 := recoveredBlock57Value2.
    recoveredBlock57Value1
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) conditionPort.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) sequence.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) codeSequence: (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredPC := 157.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodStrategy.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock91Value0 recoveredBlock91Value1 |
    recoveredBlock91Value0 := recoveredArg1.
    recoveredBlock91Value1 := (self) transitionCondition: (recoveredBlock91Value0).
    recoveredBlock91Value1
].
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock104Stack0 recoveredBlock104Stack1 recoveredBlock104Stack2 recoveredBlock104Stack3 recoveredBlock104PC recoveredBlock104Step recoveredBlock104Done recoveredBlock104Result |
    recoveredBlock104Stack0 := self.
    recoveredBlock104PC := 110.
    recoveredBlock104Done := false.
    [recoveredBlock104Done not] whileTrue: [
        recoveredBlock104Step := recoveredBlock104PC.
        recoveredBlock104Step = 110 ifTrue: [
            recoveredBlock104Stack1 := recoveredLocal2.
            recoveredBlock104PC := 113.
        ].
        recoveredBlock104Step = 113 ifTrue: [
            recoveredBlock104Stack1 := (recoveredBlock104Stack1) value.
            recoveredBlock104PC := 115.
        ].
        recoveredBlock104Step = 115 ifTrue: [
            recoveredLocal1 := recoveredBlock104Stack1.
            recoveredBlock104PC := 118.
        ].
        recoveredBlock104Step = 118 ifTrue: [
            recoveredBlock104Stack1 := nil.
            recoveredBlock104PC := 119.
        ].
        recoveredBlock104Step = 119 ifTrue: [
            recoveredBlock104Stack2 := recoveredArg1.
            recoveredBlock104PC := 122.
        ].
        recoveredBlock104Step = 122 ifTrue: [
            recoveredBlock104Stack2 := (recoveredBlock104Stack2) connectedEndState.
            recoveredBlock104PC := 123.
        ].
        recoveredBlock104Step = 123 ifTrue: [
            recoveredBlock104Stack2 := (recoveredBlock104Stack2) isBdlJunction.
            recoveredBlock104PC := 125.
        ].
        recoveredBlock104Step = 125 ifTrue: [
            (recoveredBlock104Stack2) ifTrue: [recoveredBlock104PC := 128] ifFalse: [recoveredBlock104PC := 134].
        ].
        recoveredBlock104Step = 128 ifTrue: [
            recoveredBlock104Stack2 := recoveredLocal1.
            recoveredBlock104PC := 131.
        ].
        recoveredBlock104Step = 131 ifTrue: [
            (recoveredBlock104Stack2) ifTrue: [recoveredBlock104PC := 140] ifFalse: [recoveredBlock104PC := 134].
        ].
        recoveredBlock104Step = 134 ifTrue: [
            recoveredBlock104PC := 135.
        ].
        recoveredBlock104Step = 135 ifTrue: [
            recoveredBlock104Stack1 := self.
            recoveredBlock104PC := 136.
        ].
        recoveredBlock104Step = 136 ifTrue: [
            recoveredBlock104Stack1 := (recoveredBlock104Stack1) methodStrategy.
            recoveredBlock104PC := 138.
        ].
        recoveredBlock104Step = 138 ifTrue: [
            recoveredBlock104Stack1 := (recoveredBlock104Stack1) methodExit.
            recoveredBlock104PC := 140.
        ].
        recoveredBlock104Step = 140 ifTrue: [
            recoveredBlock104Result := recoveredBlock104Stack1.
            recoveredBlock104Done := true.
        ].
    ].
    recoveredBlock104Result
].
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := (recoveredStack3) conditionPort.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack3 := (recoveredStack3) sequence.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack0) if: (recoveredStack1) codeSequence: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlBuilder.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := (recoveredStack1) peekStack.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack0) checkCalledMethods: (recoveredStack1) transition: (recoveredStack2).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20544d38; bytecode file offset 0xe41668"
!SGSmGenerator methodsFor: 'recovered'!
optimizeSwitch: recoveredArg1 onChange: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) list.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 189.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 179] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) addFirst: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredPC := 173.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) listEquals: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 168].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := SGSmInlinedNonOutlinableCode.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := (recoveredStack2) beforeCode.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := OrderedCollection.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack4 := SGSmAtomicCode.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock98Value0 recoveredBlock98Value1 |
    recoveredBlock98Value0 := (self) mdlBuilder.
    recoveredBlock98Value1 := (recoveredBlock98Value0) emptyStmnt.
    recoveredBlock98Value1
].
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack6 := ''.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack7 := recoveredLocal3.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack7 := (recoveredStack7) outlineStrategy.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack7 := (recoveredStack7) sizeEstimatorClass.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack7 := (recoveredStack7) create.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack8 := (recoveredStack8) methodStrategy.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack9 := recoveredLocal3.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack9 := (recoveredStack9) method.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack4 := (recoveredStack4) createWithBlock: (recoveredStack5) tag: (recoveredStack6) size: (recoveredStack7) outlineStrategy: (recoveredStack8) method: (recoveredStack9).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack6 := #().
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack5) addCalledMethods: (recoveredStack6).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack4 := (recoveredStack4) afterOptimizedBlock.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack5 := (recoveredStack5) source.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack6 := recoveredLocal3.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack6 := (recoveredStack6) label.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack7 := recoveredLocal3.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack7 := (recoveredStack7) outlineStrategy.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack8 := recoveredLocal3.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack8 := (recoveredStack8) method.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack9 := recoveredLocal3.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack9 := (recoveredStack9) beginEndSize.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) createBefore: (recoveredStack2) sequence: (recoveredStack3) afterBlock: (recoveredStack4) source: (recoveredStack5) label: (recoveredStack6) outlineStrategy: (recoveredStack7) method: (recoveredStack8) beginEndSize: (recoveredStack9).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack1) addFirst: (recoveredStack2).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 179].
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 198].
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 204] ifFalse: [recoveredPC := 212].
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack1) value: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205b0474; bytecode file offset 0xeacdc4"
!SGSmGenerator methodsFor: 'recovered'!
buildMdlHistorySwitch: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) methodStrategy.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 |
    recoveredBlock5Value0 := (self) methodStrategy.
    recoveredBlock5Value1 := [
    | recoveredBlock5Block13Value0 recoveredBlock5Block13Value1 recoveredBlock5Block13Value2 recoveredBlock5Block13Value3 recoveredBlock5Block13Value4 |
    recoveredBlock5Block13Value0 := (self) mdlBuilder.
    recoveredBlock5Block13Value1 := recoveredBlock5Block13Value0.
    recoveredBlock5Block13Value2 := recoveredArg1.
    recoveredBlock5Block13Value3 := (recoveredBlock5Block13Value2) historyName.
    (recoveredBlock5Block13Value1) id: (recoveredBlock5Block13Value3).
    recoveredBlock5Block13Value4 := (recoveredBlock5Block13Value0) block.
    recoveredBlock5Block13Value4
].
    recoveredBlock5Value2 := [
    | recoveredBlock5Block31Stack0 recoveredBlock5Block31Stack1 recoveredBlock5Block31Stack2 recoveredBlock5Block31Stack3 recoveredBlock5Block31PC recoveredBlock5Block31Step recoveredBlock5Block31Done recoveredBlock5Block31Result |
    recoveredBlock5Block31Stack0 := self.
    recoveredBlock5Block31PC := 38.
    recoveredBlock5Block31Done := false.
    [recoveredBlock5Block31Done not] whileTrue: [
        recoveredBlock5Block31Step := recoveredBlock5Block31PC.
        recoveredBlock5Block31Step = 38 ifTrue: [
            recoveredBlock5Block31Stack1 := recoveredArg1.
            recoveredBlock5Block31PC := 41.
        ].
        recoveredBlock5Block31Step = 41 ifTrue: [
            recoveredBlock5Block31Stack1 := (recoveredBlock5Block31Stack1) children.
            recoveredBlock5Block31PC := 43.
        ].
        recoveredBlock5Block31Step = 43 ifTrue: [
            recoveredBlock5Block31Stack1 := (recoveredBlock5Block31Stack1) statesOrHierarchyStates.
            recoveredBlock5Block31PC := 45.
        ].
        recoveredBlock5Block31Step = 45 ifTrue: [
            recoveredBlock5Block31Stack2 := [:block28116adcArg1 :block28116adcArg2 | 
    | block28116adcValue0 block28116adcValue1 block28116adcValue2 block28116adcValue3 block28116adcValue4 |
    block28116adcValue0 := block28116adcArg1.
    block28116adcValue1 := (block28116adcValue0) cgenId.
    block28116adcValue2 := block28116adcArg2.
    block28116adcValue3 := (block28116adcValue2) cgenId.
    block28116adcValue4 := (block28116adcValue1) < (block28116adcValue3).
    block28116adcValue4
].
            recoveredBlock5Block31PC := 47.
        ].
        recoveredBlock5Block31Step = 47 ifTrue: [
            recoveredBlock5Block31PC := 58.
        ].
        recoveredBlock5Block31Step = 58 ifTrue: [
            recoveredBlock5Block31Stack1 := (recoveredBlock5Block31Stack1) asSortedCollection: (recoveredBlock5Block31Stack2).
            recoveredBlock5Block31PC := 60.
        ].
        recoveredBlock5Block31Step = 60 ifTrue: [
            recoveredBlock5Block31Stack2 := [:recoveredBlock5Block31Block60Arg1 | 
    | recoveredBlock5Block31Block60Value0 recoveredBlock5Block31Block60Value1 recoveredBlock5Block31Block60Value2 recoveredBlock5Block31Block60Value3 recoveredBlock5Block31Block60Value4 recoveredBlock5Block31Block60Value5 recoveredBlock5Block31Block60Value6 recoveredBlock5Block31Block60Value7 recoveredBlock5Block31Block60Value8 recoveredBlock5Block31Block60Value9 |
    recoveredBlock5Block31Block60Value0 := (self) methodStrategy.
    recoveredBlock5Block31Block60Value1 := [
    | recoveredBlock5Block31Block60Block67Stack0 recoveredBlock5Block31Block60Block67Stack1 recoveredBlock5Block31Block60Block67Stack2 recoveredBlock5Block31Block60Block67Stack3 recoveredBlock5Block31Block60Block67Stack4 recoveredBlock5Block31Block60Block67Stack5 recoveredBlock5Block31Block60Block67Stack6 recoveredBlock5Block31Block60Block67PC recoveredBlock5Block31Block60Block67Step recoveredBlock5Block31Block60Block67Done recoveredBlock5Block31Block60Block67Result |
    recoveredBlock5Block31Block60Block67Stack0 := self.
    recoveredBlock5Block31Block60Block67PC := 74.
    recoveredBlock5Block31Block60Block67Done := false.
    [recoveredBlock5Block31Block60Block67Done not] whileTrue: [
        recoveredBlock5Block31Block60Block67Step := recoveredBlock5Block31Block60Block67PC.
        recoveredBlock5Block31Block60Block67Step = 74 ifTrue: [
            recoveredBlock5Block31Block60Block67Stack1 := recoveredBlock5Block31Block60Arg1.
            recoveredBlock5Block31Block60Block67PC := 77.
        ].
        recoveredBlock5Block31Block60Block67Step = 77 ifTrue: [
            recoveredBlock5Block31Block60Block67Stack1 := (recoveredBlock5Block31Block60Block67Stack1) isStartState.
            recoveredBlock5Block31Block60Block67PC := 79.
        ].
        recoveredBlock5Block31Block60Block67Step = 79 ifTrue: [
            (recoveredBlock5Block31Block60Block67Stack1) ifTrue: [recoveredBlock5Block31Block60Block67PC := 82] ifFalse: [recoveredBlock5Block31Block60Block67PC := 142].
        ].
        recoveredBlock5Block31Block60Block67Step = 82 ifTrue: [
            recoveredBlock5Block31Block60Block67Stack1 := self.
            recoveredBlock5Block31Block60Block67PC := 83.
        ].
        recoveredBlock5Block31Block60Block67Step = 83 ifTrue: [
            recoveredBlock5Block31Block60Block67Stack1 := (recoveredBlock5Block31Block60Block67Stack1) initializeHistoryWith0.
            recoveredBlock5Block31Block60Block67PC := 85.
        ].
        recoveredBlock5Block31Block60Block67Step = 85 ifTrue: [
            (recoveredBlock5Block31Block60Block67Stack1) ifTrue: [recoveredBlock5Block31Block60Block67PC := 88] ifFalse: [recoveredBlock5Block31Block60Block67PC := 142].
        ].
        recoveredBlock5Block31Block60Block67Step = 88 ifTrue: [
            recoveredBlock5Block31Block60Block67Stack1 := self.
            recoveredBlock5Block31Block60Block67PC := 89.
        ].
        recoveredBlock5Block31Block60Block67Step = 89 ifTrue: [
            recoveredBlock5Block31Block60Block67Stack1 := (recoveredBlock5Block31Block60Block67Stack1) mdlBuilder.
            recoveredBlock5Block31Block60Block67PC := 90.
        ].
        recoveredBlock5Block31Block60Block67Step = 90 ifTrue: [
            recoveredBlock5Block31Block60Block67Stack2 := recoveredBlock5Block31Block60Block67Stack1.
            recoveredBlock5Block31Block60Block67PC := 91.
        ].
        recoveredBlock5Block31Block60Block67Step = 91 ifTrue: [
            (recoveredBlock5Block31Block60Block67Stack2) block.
            recoveredBlock5Block31Block60Block67Stack2 := recoveredBlock5Block31Block60Block67Stack1.
            recoveredBlock5Block31Block60Block67PC := 94.
        ].
        recoveredBlock5Block31Block60Block67Step = 94 ifTrue: [
            recoveredBlock5Block31Block60Block67Stack3 := recoveredArg1.
            recoveredBlock5Block31Block60Block67PC := 97.
        ].
        recoveredBlock5Block31Block60Block67Step = 97 ifTrue: [
            recoveredBlock5Block31Block60Block67Stack3 := (recoveredBlock5Block31Block60Block67Stack3) historyName.
            recoveredBlock5Block31Block60Block67PC := 98.
        ].
        recoveredBlock5Block31Block60Block67Step = 98 ifTrue: [
            (recoveredBlock5Block31Block60Block67Stack2) id: (recoveredBlock5Block31Block60Block67Stack3).
            recoveredBlock5Block31Block60Block67Stack2 := recoveredBlock5Block31Block60Block67Stack1.
            recoveredBlock5Block31Block60Block67PC := 101.
        ].
        recoveredBlock5Block31Block60Block67Step = 101 ifTrue: [
            recoveredBlock5Block31Block60Block67Stack3 := recoveredBlock5Block31Block60Arg1.
            recoveredBlock5Block31Block60Block67PC := 104.
        ].
        recoveredBlock5Block31Block60Block67Step = 104 ifTrue: [
            recoveredBlock5Block31Block60Block67Stack3 := (recoveredBlock5Block31Block60Block67Stack3) mdlLabel.
            recoveredBlock5Block31Block60Block67PC := 106.
        ].
        recoveredBlock5Block31Block60Block67Step = 106 ifTrue: [
            (recoveredBlock5Block31Block60Block67Stack2) id: (recoveredBlock5Block31Block60Block67Stack3).
            recoveredBlock5Block31Block60Block67Stack2 := recoveredBlock5Block31Block60Block67Stack1.
            recoveredBlock5Block31Block60Block67PC := 109.
        ].
        recoveredBlock5Block31Block60Block67Step = 109 ifTrue: [
            recoveredBlock5Block31Block60Block67Stack3 := 'Initialize history variable'.
            recoveredBlock5Block31Block60Block67PC := 111.
        ].
        recoveredBlock5Block31Block60Block67Step = 111 ifTrue: [
            (recoveredBlock5Block31Block60Block67Stack2) sourceComment: (recoveredBlock5Block31Block60Block67Stack3).
            recoveredBlock5Block31Block60Block67Stack2 := recoveredBlock5Block31Block60Block67Stack1.
            recoveredBlock5Block31Block60Block67PC := 114.
        ].
        recoveredBlock5Block31Block60Block67Step = 114 ifTrue: [
            recoveredBlock5Block31Block60Block67Stack3 := self.
            recoveredBlock5Block31Block60Block67PC := 115.
        ].
        recoveredBlock5Block31Block60Block67Step = 115 ifTrue: [
            recoveredBlock5Block31Block60Block67Stack4 := 'Initialize history variable of '.
            recoveredBlock5Block31Block60Block67PC := 117.
        ].
        recoveredBlock5Block31Block60Block67Step = 117 ifTrue: [
            recoveredBlock5Block31Block60Block67Stack5 := recoveredArg1.
            recoveredBlock5Block31Block60Block67PC := 120.
        ].
        recoveredBlock5Block31Block60Block67Step = 120 ifTrue: [
            recoveredBlock5Block31Block60Block67Stack5 := (recoveredBlock5Block31Block60Block67Stack5) errLabel.
            recoveredBlock5Block31Block60Block67PC := 122.
        ].
        recoveredBlock5Block31Block60Block67Step = 122 ifTrue: [
            recoveredBlock5Block31Block60Block67Stack4 := (recoveredBlock5Block31Block60Block67Stack4) , (recoveredBlock5Block31Block60Block67Stack5).
            recoveredBlock5Block31Block60Block67PC := 124.
        ].
        recoveredBlock5Block31Block60Block67Step = 124 ifTrue: [
            recoveredBlock5Block31Block60Block67Stack5 := recoveredArg1.
            recoveredBlock5Block31Block60Block67PC := 127.
        ].
        recoveredBlock5Block31Block60Block67Step = 127 ifTrue: [
            recoveredBlock5Block31Block60Block67Stack3 := (recoveredBlock5Block31Block60Block67Stack3) commentSource: (recoveredBlock5Block31Block60Block67Stack4) for: (recoveredBlock5Block31Block60Block67Stack5).
            recoveredBlock5Block31Block60Block67PC := 129.
        ].
        recoveredBlock5Block31Block60Block67Step = 129 ifTrue: [
            (recoveredBlock5Block31Block60Block67Stack2) source: (recoveredBlock5Block31Block60Block67Stack3).
            recoveredBlock5Block31Block60Block67Stack2 := recoveredBlock5Block31Block60Block67Stack1.
            recoveredBlock5Block31Block60Block67PC := 132.
        ].
        recoveredBlock5Block31Block60Block67Step = 132 ifTrue: [
            (recoveredBlock5Block31Block60Block67Stack2) assign.
            recoveredBlock5Block31Block60Block67Stack2 := recoveredBlock5Block31Block60Block67Stack1.
            recoveredBlock5Block31Block60Block67PC := 135.
        ].
        recoveredBlock5Block31Block60Block67Step = 135 ifTrue: [
            (recoveredBlock5Block31Block60Block67Stack2) endStmnt.
            recoveredBlock5Block31Block60Block67Stack2 := recoveredBlock5Block31Block60Block67Stack1.
            recoveredBlock5Block31Block60Block67PC := 138.
        ].
        recoveredBlock5Block31Block60Block67Step = 138 ifTrue: [
            (recoveredBlock5Block31Block60Block67Stack2) endBlock.
            recoveredBlock5Block31Block60Block67PC := 140.
        ].
        recoveredBlock5Block31Block60Block67Step = 140 ifTrue: [
            (recoveredBlock5Block31Block60Block67Stack1) default.
            recoveredBlock5Block31Block60Block67PC := 142.
        ].
        recoveredBlock5Block31Block60Block67Step = 142 ifTrue: [
            recoveredBlock5Block31Block60Block67Stack0 := (recoveredBlock5Block31Block60Block67Stack0) mdlBuilder.
            recoveredBlock5Block31Block60Block67PC := 143.
        ].
        recoveredBlock5Block31Block60Block67Step = 143 ifTrue: [
            recoveredBlock5Block31Block60Block67Stack1 := recoveredBlock5Block31Block60Block67Stack0.
            recoveredBlock5Block31Block60Block67PC := 144.
        ].
        recoveredBlock5Block31Block60Block67Step = 144 ifTrue: [
            recoveredBlock5Block31Block60Block67Stack2 := recoveredBlock5Block31Block60Arg1.
            recoveredBlock5Block31Block60Block67PC := 147.
        ].
        recoveredBlock5Block31Block60Block67Step = 147 ifTrue: [
            recoveredBlock5Block31Block60Block67Stack2 := (recoveredBlock5Block31Block60Block67Stack2) mdlLabel.
            recoveredBlock5Block31Block60Block67PC := 149.
        ].
        recoveredBlock5Block31Block60Block67Step = 149 ifTrue: [
            (recoveredBlock5Block31Block60Block67Stack1) id: (recoveredBlock5Block31Block60Block67Stack2).
            recoveredBlock5Block31Block60Block67PC := 151.
        ].
        recoveredBlock5Block31Block60Block67Step = 151 ifTrue: [
            recoveredBlock5Block31Block60Block67Stack0 := (recoveredBlock5Block31Block60Block67Stack0) block.
            recoveredBlock5Block31Block60Block67PC := 153.
        ].
        recoveredBlock5Block31Block60Block67Step = 153 ifTrue: [
            recoveredBlock5Block31Block60Block67Result := recoveredBlock5Block31Block60Block67Stack0.
            recoveredBlock5Block31Block60Block67Done := true.
        ].
    ].
    recoveredBlock5Block31Block60Block67Result
].
    recoveredBlock5Block31Block60Value2 := [
    | recoveredBlock5Block31Block60Block154Stack0 recoveredBlock5Block31Block60Block154Stack1 recoveredBlock5Block31Block60Block154Stack2 recoveredBlock5Block31Block60Block154Stack3 recoveredBlock5Block31Block60Block154Stack4 recoveredBlock5Block31Block60Block154Stack5 recoveredBlock5Block31Block60Block154PC recoveredBlock5Block31Block60Block154Step recoveredBlock5Block31Block60Block154Done recoveredBlock5Block31Block60Block154Result |
    recoveredBlock5Block31Block60Block154Stack0 := self.
    recoveredBlock5Block31Block60Block154PC := 160.
    recoveredBlock5Block31Block60Block154Done := false.
    [recoveredBlock5Block31Block60Block154Done not] whileTrue: [
        recoveredBlock5Block31Block60Block154Step := recoveredBlock5Block31Block60Block154PC.
        recoveredBlock5Block31Block60Block154Step = 160 ifTrue: [
            recoveredBlock5Block31Block60Block154Stack1 := recoveredBlock5Block31Block60Arg1.
            recoveredBlock5Block31Block60Block154PC := 163.
        ].
        recoveredBlock5Block31Block60Block154Step = 163 ifTrue: [
            recoveredBlock5Block31Block60Block154Stack1 := (recoveredBlock5Block31Block60Block154Stack1) isStartState.
            recoveredBlock5Block31Block60Block154PC := 165.
        ].
        recoveredBlock5Block31Block60Block154Step = 165 ifTrue: [
            (recoveredBlock5Block31Block60Block154Stack1) ifTrue: [recoveredBlock5Block31Block60Block154PC := 168] ifFalse: [recoveredBlock5Block31Block60Block154PC := 200].
        ].
        recoveredBlock5Block31Block60Block154Step = 168 ifTrue: [
            recoveredBlock5Block31Block60Block154Stack1 := self.
            recoveredBlock5Block31Block60Block154PC := 169.
        ].
        recoveredBlock5Block31Block60Block154Step = 169 ifTrue: [
            recoveredBlock5Block31Block60Block154Stack1 := (recoveredBlock5Block31Block60Block154Stack1) initializeHistoryWith0.
            recoveredBlock5Block31Block60Block154PC := 171.
        ].
        recoveredBlock5Block31Block60Block154Step = 171 ifTrue: [
            (recoveredBlock5Block31Block60Block154Stack1) ifTrue: [recoveredBlock5Block31Block60Block154PC := 174] ifFalse: [recoveredBlock5Block31Block60Block154PC := 200].
        ].
        recoveredBlock5Block31Block60Block154Step = 174 ifTrue: [
            recoveredBlock5Block31Block60Block154Stack1 := self.
            recoveredBlock5Block31Block60Block154PC := 175.
        ].
        recoveredBlock5Block31Block60Block154Step = 175 ifTrue: [
            recoveredBlock5Block31Block60Block154Stack1 := (recoveredBlock5Block31Block60Block154Stack1) methodStrategy.
            recoveredBlock5Block31Block60Block154PC := 176.
        ].
        recoveredBlock5Block31Block60Block154Step = 176 ifTrue: [
            recoveredBlock5Block31Block60Block154Stack2 := [].
            recoveredBlock5Block31Block60Block154PC := 178.
        ].
        recoveredBlock5Block31Block60Block154Step = 178 ifTrue: [
            recoveredBlock5Block31Block60Block154Stack3 := 'default:'.
            recoveredBlock5Block31Block60Block154PC := 180.
        ].
        recoveredBlock5Block31Block60Block154Step = 180 ifTrue: [
            recoveredBlock5Block31Block60Block154Stack4 := recoveredArg1.
            recoveredBlock5Block31Block60Block154PC := 183.
        ].
        recoveredBlock5Block31Block60Block154Step = 183 ifTrue: [
            recoveredBlock5Block31Block60Block154Stack4 := (recoveredBlock5Block31Block60Block154Stack4) mdlLabel.
            recoveredBlock5Block31Block60Block154PC := 185.
        ].
        recoveredBlock5Block31Block60Block154Step = 185 ifTrue: [
            recoveredBlock5Block31Block60Block154Stack3 := (recoveredBlock5Block31Block60Block154Stack3) , (recoveredBlock5Block31Block60Block154Stack4).
            recoveredBlock5Block31Block60Block154PC := 187.
        ].
        recoveredBlock5Block31Block60Block154Step = 187 ifTrue: [
            recoveredBlock5Block31Block60Block154Stack4 := '='.
            recoveredBlock5Block31Block60Block154PC := 189.
        ].
        recoveredBlock5Block31Block60Block154Step = 189 ifTrue: [
            recoveredBlock5Block31Block60Block154Stack3 := (recoveredBlock5Block31Block60Block154Stack3) , (recoveredBlock5Block31Block60Block154Stack4).
            recoveredBlock5Block31Block60Block154PC := 191.
        ].
        recoveredBlock5Block31Block60Block154Step = 191 ifTrue: [
            recoveredBlock5Block31Block60Block154Stack4 := recoveredBlock5Block31Block60Arg1.
            recoveredBlock5Block31Block60Block154PC := 194.
        ].
        recoveredBlock5Block31Block60Block154Step = 194 ifTrue: [
            recoveredBlock5Block31Block60Block154Stack4 := (recoveredBlock5Block31Block60Block154Stack4) mdlLabel.
            recoveredBlock5Block31Block60Block154PC := 196.
        ].
        recoveredBlock5Block31Block60Block154Step = 196 ifTrue: [
            recoveredBlock5Block31Block60Block154Stack3 := (recoveredBlock5Block31Block60Block154Stack3) , (recoveredBlock5Block31Block60Block154Stack4).
            recoveredBlock5Block31Block60Block154PC := 198.
        ].
        recoveredBlock5Block31Block60Block154Step = 198 ifTrue: [
            (recoveredBlock5Block31Block60Block154Stack1) atomicCode: (recoveredBlock5Block31Block60Block154Stack2) tag: (recoveredBlock5Block31Block60Block154Stack3).
            recoveredBlock5Block31Block60Block154PC := 200.
        ].
        recoveredBlock5Block31Block60Block154Step = 200 ifTrue: [
            recoveredBlock5Block31Block60Block154Stack1 := recoveredBlock5Block31Block60Arg1.
            recoveredBlock5Block31Block60Block154PC := 203.
        ].
        recoveredBlock5Block31Block60Block154Step = 203 ifTrue: [
            recoveredBlock5Block31Block60Block154Stack2 := self.
            recoveredBlock5Block31Block60Block154PC := 204.
        ].
        recoveredBlock5Block31Block60Block154Step = 204 ifTrue: [
            recoveredBlock5Block31Block60Block154Stack1 := (recoveredBlock5Block31Block60Block154Stack1) acceptBdlVisitor: (recoveredBlock5Block31Block60Block154Stack2).
            recoveredBlock5Block31Block60Block154PC := 206.
        ].
        recoveredBlock5Block31Block60Block154Step = 206 ifTrue: [
            recoveredBlock5Block31Block60Block154Result := recoveredBlock5Block31Block60Block154Stack1.
            recoveredBlock5Block31Block60Block154Done := true.
        ].
    ].
    recoveredBlock5Block31Block60Block154Result
].
    recoveredBlock5Block31Block60Value3 := [
    | recoveredBlock5Block31Block60Block207Value0 recoveredBlock5Block31Block60Block207Value1 recoveredBlock5Block31Block60Block207Value2 recoveredBlock5Block31Block60Block207Value3 |
    recoveredBlock5Block31Block60Block207Value0 := (self) mdlBuilder.
    recoveredBlock5Block31Block60Block207Value1 := recoveredBlock5Block31Block60Block207Value0.
    (recoveredBlock5Block31Block60Block207Value1) break.
    recoveredBlock5Block31Block60Block207Value2 := recoveredBlock5Block31Block60Block207Value0.
    (recoveredBlock5Block31Block60Block207Value2) endBlock.
    recoveredBlock5Block31Block60Block207Value3 := (recoveredBlock5Block31Block60Block207Value0) case.
    recoveredBlock5Block31Block60Block207Value3
].
    recoveredBlock5Block31Block60Value4 := [
    | recoveredBlock5Block31Block60Block224Value0 recoveredBlock5Block31Block60Block224Value1 recoveredBlock5Block31Block60Block224Value2 |
    recoveredBlock5Block31Block60Block224Value0 := (self) mdlBuilder.
    recoveredBlock5Block31Block60Block224Value1 := recoveredBlock5Block31Block60Block224Value0.
    (recoveredBlock5Block31Block60Block224Value1) endBlock.
    recoveredBlock5Block31Block60Block224Value2 := (recoveredBlock5Block31Block60Block224Value0) case.
    recoveredBlock5Block31Block60Block224Value2
].
    recoveredBlock5Block31Block60Value5 := recoveredBlock5Block31Block60Arg1.
    recoveredBlock5Block31Block60Value6 := (recoveredBlock5Block31Block60Value5) source.
    recoveredBlock5Block31Block60Value7 := recoveredBlock5Block31Block60Arg1.
    recoveredBlock5Block31Block60Value8 := (recoveredBlock5Block31Block60Value7) mdlLabel.
    recoveredBlock5Block31Block60Value9 := (recoveredBlock5Block31Block60Value0) codeBefore: (recoveredBlock5Block31Block60Value1) sequence: (recoveredBlock5Block31Block60Value2) after: (recoveredBlock5Block31Block60Value3) afterOptimized: (recoveredBlock5Block31Block60Value4) source: (recoveredBlock5Block31Block60Value6) label: (recoveredBlock5Block31Block60Value8).
    recoveredBlock5Block31Block60Value9
].
            recoveredBlock5Block31PC := 251.
        ].
        recoveredBlock5Block31Step = 251 ifTrue: [
            recoveredBlock5Block31Stack1 := (recoveredBlock5Block31Stack1) do: (recoveredBlock5Block31Stack2).
            recoveredBlock5Block31PC := 253.
        ].
        recoveredBlock5Block31Step = 253 ifTrue: [
            recoveredBlock5Block31Result := recoveredBlock5Block31Stack1.
            recoveredBlock5Block31Done := true.
        ].
    ].
    recoveredBlock5Block31Result
].
    recoveredBlock5Value3 := [
    | recoveredBlock5Block254Stack0 recoveredBlock5Block254Stack1 recoveredBlock5Block254Stack2 recoveredBlock5Block254PC recoveredBlock5Block254Step recoveredBlock5Block254Done recoveredBlock5Block254Result |
    recoveredBlock5Block254Stack0 := self.
    recoveredBlock5Block254PC := 260.
    recoveredBlock5Block254Done := false.
    [recoveredBlock5Block254Done not] whileTrue: [
        recoveredBlock5Block254Step := recoveredBlock5Block254PC.
        recoveredBlock5Block254Step = 260 ifTrue: [
            recoveredBlock5Block254Stack0 := (recoveredBlock5Block254Stack0) initializeHistoryWith0.
            recoveredBlock5Block254PC := 262.
        ].
        recoveredBlock5Block254Step = 262 ifTrue: [
            (recoveredBlock5Block254Stack0) ifTrue: [recoveredBlock5Block254PC := 273] ifFalse: [recoveredBlock5Block254PC := 266].
        ].
        recoveredBlock5Block254Step = 266 ifTrue: [
            recoveredBlock5Block254Stack0 := self.
            recoveredBlock5Block254PC := 267.
        ].
        recoveredBlock5Block254Step = 267 ifTrue: [
            recoveredBlock5Block254Stack0 := (recoveredBlock5Block254Stack0) mdlBuilder.
            recoveredBlock5Block254PC := 268.
        ].
        recoveredBlock5Block254Step = 268 ifTrue: [
            recoveredBlock5Block254Stack1 := recoveredBlock5Block254Stack0.
            recoveredBlock5Block254PC := 269.
        ].
        recoveredBlock5Block254Step = 269 ifTrue: [
            (recoveredBlock5Block254Stack1) emptyStmnt.
            recoveredBlock5Block254PC := 271.
        ].
        recoveredBlock5Block254Step = 271 ifTrue: [
            (recoveredBlock5Block254Stack0) default.
            recoveredBlock5Block254PC := 273.
        ].
        recoveredBlock5Block254Step = 273 ifTrue: [
            recoveredBlock5Block254Stack0 := self.
            recoveredBlock5Block254PC := 274.
        ].
        recoveredBlock5Block254Step = 274 ifTrue: [
            recoveredBlock5Block254Stack0 := (recoveredBlock5Block254Stack0) mdlBuilder.
            recoveredBlock5Block254PC := 275.
        ].
        recoveredBlock5Block254Step = 275 ifTrue: [
            recoveredBlock5Block254Stack1 := recoveredBlock5Block254Stack0.
            recoveredBlock5Block254PC := 276.
        ].
        recoveredBlock5Block254Step = 276 ifTrue: [
            (recoveredBlock5Block254Stack1) endBlock.
            recoveredBlock5Block254PC := 278.
        ].
        recoveredBlock5Block254Step = 278 ifTrue: [
            recoveredBlock5Block254Stack0 := (recoveredBlock5Block254Stack0) switch.
            recoveredBlock5Block254PC := 280.
        ].
        recoveredBlock5Block254Step = 280 ifTrue: [
            recoveredBlock5Block254Result := recoveredBlock5Block254Stack0.
            recoveredBlock5Block254Done := true.
        ].
    ].
    recoveredBlock5Block254Result
].
    recoveredBlock5Value4 := recoveredArg1.
    recoveredBlock5Value5 := (recoveredBlock5Value4) source.
    recoveredBlock5Value6 := recoveredArg1.
    recoveredBlock5Value7 := (recoveredBlock5Value6) historyName.
    recoveredBlock5Value8 := [:recoveredBlock5Block290Arg1 :recoveredBlock5Block290Arg2 | 
    | recoveredBlock5Block290Value0 recoveredBlock5Block290Value1 recoveredBlock5Block290Value2 |
    recoveredBlock5Block290Value0 := recoveredBlock5Block290Arg1.
    recoveredBlock5Block290Value1 := recoveredBlock5Block290Arg2.
    recoveredBlock5Block290Value2 := (self) optimizeSwitch: (recoveredBlock5Block290Value0) onChange: (recoveredBlock5Block290Value1).
    recoveredBlock5Block290Value2
].
    recoveredBlock5Value9 := (recoveredBlock5Value0) codeBefore: (recoveredBlock5Value1) sequence: (recoveredBlock5Value2) after: (recoveredBlock5Value3) source: (recoveredBlock5Value5) label: (recoveredBlock5Value7) optimize: (recoveredBlock5Value8).
    recoveredBlock5Value9
].
    (recoveredValue0) codeSequence: (recoveredValue1) source: (nil).
    ^self
! !

