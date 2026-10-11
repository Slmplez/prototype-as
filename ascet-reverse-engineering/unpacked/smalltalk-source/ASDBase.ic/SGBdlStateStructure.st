"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20008150; bytecode file offset 0x908be4"
!SGBdlStateStructure methodsFor: 'recovered'!
inputsForSm
    | recoveredValue0 |
    recoveredValue0 := (self) inputs.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009ae8; bytecode file offset 0x908be4"
!SGBdlStateStructure methodsFor: 'recovered'!
outputsForSm
    | recoveredValue0 |
    recoveredValue0 := (self) outputs.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005d3c8; bytecode file offset 0x959d74"
!SGBdlStateStructure methodsFor: 'recovered'!
allStates
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := info.
    recoveredValue1 := (recoveredValue0) keys.
    recoveredValue2 := (recoveredValue1) asOrderedCollection.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006682c; bytecode file offset 0x963428"
!SGBdlStateStructure methodsFor: 'recovered'!
info
    | recoveredValue0 |
    recoveredValue0 := info.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067f94; bytecode file offset 0x965b90"
!SGBdlStateStructure methodsFor: 'recovered'!
inputs
    | recoveredValue0 |
    recoveredValue0 := inputs.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200695a0; bytecode file offset 0x966bdc"
!SGBdlStateStructure methodsFor: 'recovered'!
outputs
    | recoveredValue0 |
    recoveredValue0 := outputs.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20141dfc; bytecode file offset 0xa3e6d8"
!SGBdlStateStructure methodsFor: 'recovered'!
getStateTransitions: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := transitions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := [
    | block280cc078Value0 block280cc078Value1 |
    block280cc078Value0 := Array.
    block280cc078Value1 := (block280cc078Value0) new.
    block280cc078Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2015654c; bytecode file offset 0xa52e0c"
!SGBdlStateStructure methodsFor: 'recovered'!
labelForState: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) info.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) mdlLabel.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2015971c; bytecode file offset 0xa55fe0"
!SGBdlStateStructure methodsFor: 'recovered'!
statesWithNoParent
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) allStates.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (self) parentStateForState: (recoveredBlock7Value0).
    recoveredBlock7Value2 := (recoveredBlock7Value1) isEmpty.
    recoveredBlock7Value2
].
    recoveredValue3 := (recoveredValue1) select: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201775a4; bytecode file offset 0xa73ef0"
!SGBdlStateStructure methodsFor: 'recovered'!
transitionsForState: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := info.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) transitionsForState.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201775b4; bytecode file offset 0xa73ef0"
!SGBdlStateStructure methodsFor: 'recovered'!
asdlEntryForState: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := info.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) asdlEntryForState.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201775c4; bytecode file offset 0xa73ef0"
!SGBdlStateStructure methodsFor: 'recovered'!
asdlStaticForState: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := info.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) asdlStaticForState.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201775d4; bytecode file offset 0xa73ef0"
!SGBdlStateStructure methodsFor: 'recovered'!
bdeStaticForState: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := info.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) bdeStaticForState.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201775e4; bytecode file offset 0xa73ef0"
!SGBdlStateStructure methodsFor: 'recovered'!
exitTypeForState: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := info.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) exitTypeForState.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201775f4; bytecode file offset 0xa73ef0"
!SGBdlStateStructure methodsFor: 'recovered'!
bdeExitForState: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := info.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) bdeExitForState.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20177604; bytecode file offset 0xa73ef0"
!SGBdlStateStructure methodsFor: 'recovered'!
bdeEntryForState: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := info.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) bdeEntryForState.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20177614; bytecode file offset 0xa73ef0"
!SGBdlStateStructure methodsFor: 'recovered'!
entryTypeForState: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := info.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) entryTypeForState.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20177624; bytecode file offset 0xa73ef0"
!SGBdlStateStructure methodsFor: 'recovered'!
asdlExitForState: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := info.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) asdlExitForState.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20177634; bytecode file offset 0xa73ef0"
!SGBdlStateStructure methodsFor: 'recovered'!
parentStateForState: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := info.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) parentStateLabel.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20177694; bytecode file offset 0xa73fc0"
!SGBdlStateStructure methodsFor: 'recovered'!
actionTypeForTrans: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := transitions.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) actionTypeForTrans.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201776a4; bytecode file offset 0xa73fc0"
!SGBdlStateStructure methodsFor: 'recovered'!
asdlForCondition: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := transitions.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) asdlForCondition.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201776b4; bytecode file offset 0xa73fc0"
!SGBdlStateStructure methodsFor: 'recovered'!
bdeForAction: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := transitions.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) bdeForAction.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201776c4; bytecode file offset 0xa73fc0"
!SGBdlStateStructure methodsFor: 'recovered'!
asdlForAction: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := transitions.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) asdlForAction.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201776d4; bytecode file offset 0xa73fc0"
!SGBdlStateStructure methodsFor: 'recovered'!
prioForTrans: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := transitions.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) prioForTrans.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201776e4; bytecode file offset 0xa73fc0"
!SGBdlStateStructure methodsFor: 'recovered'!
bdeForCondition: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := transitions.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) bdeForCondition.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201776f4; bytecode file offset 0xa73fc0"
!SGBdlStateStructure methodsFor: 'recovered'!
triggerForTrans: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := transitions.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) triggerLabel.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20177704; bytecode file offset 0xa73fc0"
!SGBdlStateStructure methodsFor: 'recovered'!
conditionTypeForTrans: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := transitions.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) conditionTypeForTrans.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20186a98; bytecode file offset 0xa83358"
!SGBdlStateStructure methodsFor: 'recovered'!
staticTypeForState: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := info.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) state.
    recoveredValue5 := (recoveredValue4) staticTypeForState.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2019e3f4; bytecode file offset 0xa9acb4"
!SGBdlStateStructure methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    info := recoveredValue1.
    recoveredValue2 := LookupTable.
    recoveredValue3 := (recoveredValue2) new.
    transitions := recoveredValue3.
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) new.
    inputs := recoveredValue5.
    recoveredValue6 := OrderedCollection.
    recoveredValue7 := (recoveredValue6) new.
    outputs := recoveredValue7.
    ^self
! !

"ASDBase.ic method 0x2023d6ec; bytecode file offset 0xb39fcc"
!SGBdlStateStructure methodsFor: 'recovered'!
putTransition: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := transitions.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) id.
    recoveredValue3 := SGBdlTransitionInfo.
    recoveredValue4 := (recoveredValue3) create.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) transition: (recoveredValue6).
    recoveredValue7 := recoveredValue4.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) triggerForTrans.
    (recoveredValue7) triggerLabel: (recoveredValue9).
    recoveredValue10 := recoveredValue4.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) bdeForAction.
    (recoveredValue10) bdeForAction: (recoveredValue12).
    recoveredValue13 := recoveredValue4.
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := (recoveredValue14) bdeForCondition.
    (recoveredValue13) bdeForCondition: (recoveredValue15).
    (recoveredValue0) at: (recoveredValue2) put: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2025047c; bytecode file offset 0xb4cd48"
!SGBdlStateStructure methodsFor: 'recovered'!
childrenForState: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) info.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) states.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [:block280dee1cArg1 | 
    | block280dee1cValue0 block280dee1cValue1 |
    block280dee1cValue0 := block280dee1cArg1.
    block280dee1cValue1 := (block280dee1cValue0) id.
    block280dee1cValue1
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20283bac; bytecode file offset 0xb80494"
!SGBdlStateStructure methodsFor: 'recovered'!
putState: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := info.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) id.
    recoveredValue3 := SGBdlStateInfo.
    recoveredValue4 := (recoveredValue3) create.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) state: (recoveredValue6).
    recoveredValue7 := recoveredValue4.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) bdeEntryForState.
    (recoveredValue7) bdeEntryForState: (recoveredValue9).
    recoveredValue10 := recoveredValue4.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) bdeStaticForState.
    (recoveredValue10) bdeStaticForState: (recoveredValue12).
    recoveredValue13 := recoveredValue4.
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := (recoveredValue14) bdeExitForState.
    (recoveredValue13) bdeExitForState: (recoveredValue15).
    recoveredValue16 := recoveredValue4.
    recoveredValue17 := recoveredArg1.
    recoveredValue18 := (recoveredValue17) parentStateForState.
    (recoveredValue16) parentStateLabel: (recoveredValue18).
    (recoveredValue0) at: (recoveredValue2) put: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x202a4b00; bytecode file offset 0xba1430"
!SGBdlStateStructure methodsFor: 'recovered'!
allStartStates
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) info.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
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
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) state.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isStartState.
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 26] ifFalse: [recoveredBlock11PC := 36].
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) state.
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) id.
            recoveredBlock11PC := 34.
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) add: (recoveredBlock11Stack2).
            recoveredBlock11PC := 36.
        ].
        recoveredBlock11Step = 36 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) asArray.
    ^recoveredValue5
! !

"ASDBase.ic method 0x202a4b2c; bytecode file offset 0xba1430"
!SGBdlStateStructure methodsFor: 'recovered'!
allHistoryStates
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) info.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
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
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) state.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isHistory.
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 26] ifFalse: [recoveredBlock11PC := 36].
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) state.
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) id.
            recoveredBlock11PC := 34.
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) add: (recoveredBlock11Stack2).
            recoveredBlock11PC := 36.
        ].
        recoveredBlock11Step = 36 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) asArray.
    ^recoveredValue5
! !

"ASDBase.ic method 0x202a4b58; bytecode file offset 0xba1430"
!SGBdlStateStructure methodsFor: 'recovered'!
allHierarchyStates
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) info.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
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
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) state.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isHierarchyState.
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 26] ifFalse: [recoveredBlock11PC := 36].
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) state.
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) id.
            recoveredBlock11PC := 34.
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) add: (recoveredBlock11Stack2).
            recoveredBlock11PC := 36.
        ].
        recoveredBlock11Step = 36 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) asArray.
    ^recoveredValue5
! !

