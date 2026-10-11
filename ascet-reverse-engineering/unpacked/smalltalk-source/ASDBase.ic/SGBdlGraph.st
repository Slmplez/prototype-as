"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20009a7c; bytecode file offset 0x908be4"
!SGBdlGraph methodsFor: 'recovered'!
sortedElements
    | recoveredValue0 |
    recoveredValue0 := (self) nodes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20013d7c; bytecode file offset 0x912098"
!SGBdlGraph methodsFor: 'recovered'!
nodeClass
    | recoveredValue0 |
    recoveredValue0 := SGBdlNode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20065cd4; bytecode file offset 0x963428"
!SGBdlGraph methodsFor: 'recovered'!
nodes
    | recoveredValue0 |
    recoveredValue0 := nodes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067a8c; bytecode file offset 0x9646f8"
!SGBdlGraph methodsFor: 'recovered'!
allElements
    | recoveredValue0 |
    recoveredValue0 := allElements.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068854; bytecode file offset 0x965b90"
!SGBdlGraph methodsFor: 'recovered'!
subGraph
    | recoveredValue0 |
    recoveredValue0 := subGraph.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069b30; bytecode file offset 0x966bdc"
!SGBdlGraph methodsFor: 'recovered'!
unit
    | recoveredValue0 |
    recoveredValue0 := unit.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20097cc4; bytecode file offset 0x995850"
!SGBdlGraph methodsFor: 'recovered'!
beginSubGraph: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) subGraph.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200be07c; bytecode file offset 0x9bb178"
!SGBdlGraph methodsFor: 'recovered'!
nodes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    nodes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bee10; bytecode file offset 0x9bc0b4"
!SGBdlGraph methodsFor: 'recovered'!
allElements: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    allElements := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0f50; bytecode file offset 0x9bdf14"
!SGBdlGraph methodsFor: 'recovered'!
unit: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    unit := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200da3d8; bytecode file offset 0x9d6c9c"
!SGBdlGraph methodsFor: 'recovered'!
addNodeFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) nodes.
    recoveredValue1 := (self) nodeClass.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) createFor: (recoveredValue2) in: (self).
    recoveredValue4 := (recoveredValue0) add: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2011a260; bytecode file offset 0xa16b44"
!SGBdlGraph methodsFor: 'recovered'!
collectInputs
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) nodes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c8880Arg1 | 
    | block280c8880Value0 block280c8880Value1 block280c8880Value2 |
    block280c8880Value0 := block280c8880Arg1.
    block280c8880Value1 := (block280c8880Value0) graphicElement.
    block280c8880Value2 := (block280c8880Value1) isSGCtReturnPort.
    block280c8880Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20131ac0; bytecode file offset 0xa2e3f8"
!SGBdlGraph methodsFor: 'recovered'!
sorted: recoveredArg1
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
            recoveredStack2 := [:block280caee4Arg1 :block280caee4Arg2 | 
    | block280caee4Value0 block280caee4Value1 block280caee4Value2 block280caee4Value3 block280caee4Value4 |
    block280caee4Value0 := block280caee4Arg1.
    block280caee4Value1 := (block280caee4Value0) errLabel.
    block280caee4Value2 := block280caee4Arg2.
    block280caee4Value3 := (block280caee4Value2) errLabel.
    block280caee4Value4 := (block280caee4Value1) < (block280caee4Value3).
    block280caee4Value4
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013262c; bytecode file offset 0xa2ef68"
!SGBdlGraph methodsFor: 'recovered'!
addEntryElements: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (self) nodeFor: (recoveredBlock5Value0).
    recoveredBlock5Value1
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201326f4; bytecode file offset 0xa2efc8"
!SGBdlGraph methodsFor: 'recovered'!
checkSelectedElements: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := (self) allElements.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) includes: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    recoveredValue2 := (recoveredValue0) select: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20155d44; bytecode file offset 0xa52608"
!SGBdlGraph methodsFor: 'recovered'!
endSubGraph: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) subGraph.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := (self) fatalExpect: ('node in graph').
    recoveredBlock6Value0
].
    (recoveredValue0) remove: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201a3080; bytecode file offset 0xa9f948"
!SGBdlGraph methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    nodes := recoveredValue1.
    recoveredValue2 := Set.
    recoveredValue3 := (recoveredValue2) new.
    allElements := recoveredValue3.
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) new.
    subGraph := recoveredValue5.
    ^self
! !

"ASDBase.ic method 0x201e57e4; bytecode file offset 0xae20b4"
!SGBdlGraph methodsFor: 'recovered'!
buildForCT: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) addEntryElements: (recoveredValue0).
    (self) build.
    (self) checkForLmErrors.
    (self) setDirectInputs.
    (self) addDummyNodes.
    (self) checkForLmErrors.
    (self) topologicalSortForCT.
    recoveredValue1 := (self) removeDummyNodes.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20201b58; bytecode file offset 0xafe428"
!SGBdlGraph methodsFor: 'recovered'!
buildForAnalyze: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) addEntryElements: (recoveredValue0).
    recoveredValue1 := (self) nodes.
    recoveredValue2 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := (self) unit.
    recoveredBlock9Value2 := (recoveredBlock9Value0) expandRecursiveForAnalyzeUnit: (recoveredBlock9Value1).
    recoveredBlock9Value2
].
    (recoveredValue1) do: (recoveredValue2).
    (self) checkForLmErrors.
    (self) topologicalSort.
    ^self
! !

"ASDBase.ic method 0x2022560c; bytecode file offset 0xb21ed8"
!SGBdlGraph methodsFor: 'recovered'!
build
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) nodes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (self) unit.
    recoveredBlock5Value2 := (recoveredBlock5Value0) expandRecursiveForSequencingUnit: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
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
            recoveredStack0 := (recoveredStack0) nodes.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [:block280dc2a8Arg1 | 
    | block280dc2a8Value0 block280dc2a8Value1 |
    block280dc2a8Value0 := block280dc2a8Arg1.
    block280dc2a8Value1 := (block280dc2a8Value0) markAsInvalid.
    block280dc2a8Value1
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"ASDBase.ic method 0x202297ec; bytecode file offset 0xb260b0"
!SGBdlGraph methodsFor: 'recovered'!
nodeFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) nodes.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredArg1.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := (recoveredBlock5Value1) graphicElement.
    recoveredBlock5Value3 := (recoveredBlock5Value0) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := [
    | recoveredBlock19Value0 recoveredBlock19Value1 |
    recoveredBlock19Value0 := recoveredArg1.
    recoveredBlock19Value1 := (self) addNodeFor: (recoveredBlock19Value0).
    ^recoveredBlock19Value1
].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2025c180; bytecode file offset 0xb58a44"
!SGBdlGraph methodsFor: 'recovered'!
collectFamilies: recoveredArg1 on: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) graphicElement.
    recoveredBlock7Value2 := (recoveredBlock7Value1) block.
    recoveredBlock7Value3 := recoveredBlock7Arg1.
    recoveredBlock7Value4 := (recoveredBlock7Value3) graphicElement.
    recoveredBlock7Value5 := (recoveredBlock7Value4) block.
    recoveredBlock7Value6 := (recoveredBlock7Value2) == (recoveredBlock7Value5).
    recoveredBlock7Value6
].
    recoveredValue2 := (recoveredValue0) select: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredLocal1.
    (self) makeCtPrerequisitesFor: (recoveredValue3) on: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20288f04; bytecode file offset 0xb857cc"
!SGBdlGraph methodsFor: 'recovered'!
autoSequence: recoveredArg1 methodName: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredLocal1 := 0.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 recoveredBlock12Value6 recoveredBlock12Value7 recoveredBlock12Value8 recoveredBlock12Value9 recoveredBlock12Value10 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := (recoveredBlock12Value0) graphicElement.
    recoveredBlock12Value2 := (recoveredBlock12Value1) sequence.
    recoveredBlock12Value3 := recoveredArg2.
    (recoveredBlock12Value2) unitAliasName: (recoveredBlock12Value3).
    recoveredBlock12Value4 := recoveredBlock12Arg1.
    recoveredBlock12Value5 := (recoveredBlock12Value4) graphicElement.
    recoveredBlock12Value6 := (recoveredBlock12Value5) sequence.
    recoveredBlock12Value7 := recoveredLocal1.
    recoveredBlock12Value8 := (recoveredBlock12Value7) + (1).
    recoveredBlock12Value9 := recoveredBlock12Value8.
    recoveredLocal1 := recoveredBlock12Value9.
    recoveredBlock12Value10 := (recoveredBlock12Value6) number: (recoveredBlock12Value8).
    recoveredBlock12Value10
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202a5c28; bytecode file offset 0xba24f0"
!SGBdlGraph methodsFor: 'recovered'!
checkForCycle: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) subGraph.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) = (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    recoveredValue2 := [
    ^self
].
    recoveredValue3 := (recoveredValue0) findLast: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) subGraph.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) subGraph.
    recoveredValue7 := (recoveredValue6) size.
    recoveredValue8 := (recoveredValue4) copyFrom: (recoveredValue5) to: (recoveredValue7).
    (self) resolveCycles: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x2034e814; bytecode file offset 0xc4b0e8"
!SGBdlGraph methodsFor: 'recovered'!
addPreForDummyInit: recoveredArg1 nodesInitMethod: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := recoveredBlock7Arg1.
    recoveredBlock7Value2 := (recoveredBlock7Value0) addHardPrerequisite: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := (self) nodes.
    recoveredValue3 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 recoveredBlock23Value4 |
    recoveredBlock23Value0 := recoveredBlock23Arg1.
    recoveredBlock23Value1 := (recoveredBlock23Value0) graphicElement.
    recoveredBlock23Value2 := (self) sgClass.
    recoveredBlock23Value3 := (recoveredBlock23Value2) terminateMethodName.
    recoveredBlock23Value4 := (recoveredBlock23Value1) methodNameIs: (recoveredBlock23Value3).
    recoveredBlock23Value4
].
    recoveredValue4 := (recoveredValue2) select: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := [:recoveredBlock48Arg1 | 
    | recoveredBlock48Value0 recoveredBlock48Value1 recoveredBlock48Value2 |
    recoveredBlock48Value0 := recoveredBlock48Arg1.
    recoveredBlock48Value1 := recoveredArg1.
    recoveredBlock48Value2 := (recoveredBlock48Value0) addHardPrerequisite: (recoveredBlock48Value1).
    recoveredBlock48Value2
].
    (recoveredValue5) do: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x203ed2c0; bytecode file offset 0xce9bb4"
!SGBdlGraph methodsFor: 'recovered'!
buildForSequencing: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) addEntryElements: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) build.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) checkForLmErrors.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) topologicalSort.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) nodes.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:block280f8f34Arg1 | 
    | block280f8f34Stack0 block280f8f34Stack1 block280f8f34Stack2 block280f8f34Stack3 block280f8f34PC block280f8f34Step block280f8f34Done block280f8f34Result |
    block280f8f34Stack0 := self.
    block280f8f34PC := 4.
    block280f8f34Done := false.
    [block280f8f34Done not] whileTrue: [
        block280f8f34Step := block280f8f34PC.
        block280f8f34Step = 4 ifTrue: [
            block280f8f34Stack1 := true.
            block280f8f34PC := 5.
        ].
        block280f8f34Step = 5 ifTrue: [
            block280f8f34Stack2 := block280f8f34Arg1.
            block280f8f34PC := 6.
        ].
        block280f8f34Step = 6 ifTrue: [
            block280f8f34Stack2 := (block280f8f34Stack2) graphicElement.
            block280f8f34PC := 8.
        ].
        block280f8f34Step = 8 ifTrue: [
            block280f8f34Stack2 := (block280f8f34Stack2) block.
            block280f8f34PC := 10.
        ].
        block280f8f34Step = 10 ifTrue: [
            block280f8f34Stack2 := (block280f8f34Stack2) isBdlReturnBlock.
            block280f8f34PC := 12.
        ].
        block280f8f34Step = 12 ifTrue: [
            (block280f8f34Stack2) ifTrue: [block280f8f34PC := 24] ifFalse: [block280f8f34PC := 16].
        ].
        block280f8f34Step = 16 ifTrue: [
            block280f8f34PC := 17.
        ].
        block280f8f34Step = 17 ifTrue: [
            block280f8f34Stack1 := block280f8f34Arg1.
            block280f8f34PC := 18.
        ].
        block280f8f34Step = 18 ifTrue: [
            block280f8f34Stack1 := (block280f8f34Stack1) graphicElement.
            block280f8f34PC := 20.
        ].
        block280f8f34Step = 20 ifTrue: [
            block280f8f34Stack1 := (block280f8f34Stack1) block.
            block280f8f34PC := 22.
        ].
        block280f8f34Step = 22 ifTrue: [
            block280f8f34Stack1 := (block280f8f34Stack1) isBdlBreakBlock.
            block280f8f34PC := 24.
        ].
        block280f8f34Step = 24 ifTrue: [
            block280f8f34Result := block280f8f34Stack1.
            block280f8f34Done := true.
        ].
    ].
    block280f8f34Result
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) nodes.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := [:block280f8f58Arg1 | 
    | block280f8f58Value0 block280f8f58Value1 block280f8f58Value2 block280f8f58Value3 |
    block280f8f58Value0 := block280f8f58Arg1.
    block280f8f58Value1 := (block280f8f58Value0) graphicElement.
    block280f8f58Value2 := (block280f8f58Value1) block.
    block280f8f58Value3 := (block280f8f58Value2) isBdlMethodLocalBlock.
    block280f8f58Value3
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) nodes.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) removeAll: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) nodes: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204333e0; bytecode file offset 0xd2fccc"
!SGBdlGraph methodsFor: 'recovered'!
setDirectInputs
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectInputs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:block280fd854Arg1 | 
    | block280fd854Stack0 block280fd854Stack1 block280fd854Stack2 block280fd854Stack3 block280fd854Stack4 block280fd854PC block280fd854Step block280fd854Done block280fd854Result |
    block280fd854Stack0 := self.
    block280fd854PC := 4.
    block280fd854Done := false.
    [block280fd854Done not] whileTrue: [
        block280fd854Step := block280fd854PC.
        block280fd854Step = 4 ifTrue: [
            block280fd854Stack1 := block280fd854Arg1.
            block280fd854PC := 5.
        ].
        block280fd854Step = 5 ifTrue: [
            block280fd854Stack1 := (block280fd854Stack1) graphicElement.
            block280fd854PC := 6.
        ].
        block280fd854Step = 6 ifTrue: [
            block280fd854Stack2 := block280fd854Arg1.
            block280fd854PC := 7.
        ].
        block280fd854Step = 7 ifTrue: [
            block280fd854Stack2 := (block280fd854Stack2) hardDependents.
            block280fd854PC := 8.
        ].
        block280fd854Step = 8 ifTrue: [
            block280fd854Stack3 := [:block280fd878Arg1 | 
    | block280fd878Value0 block280fd878Value1 |
    block280fd878Value0 := block280fd878Arg1.
    block280fd878Value1 := (block280fd878Value0) isDirectInput.
    block280fd878Value1
].
            block280fd854PC := 10.
        ].
        block280fd854Step = 10 ifTrue: [
            block280fd854PC := 18.
        ].
        block280fd854Step = 18 ifTrue: [
            block280fd854Stack2 := (block280fd854Stack2) collect: (block280fd854Stack3).
            block280fd854PC := 20.
        ].
        block280fd854Step = 20 ifTrue: [
            block280fd854Stack3 := true.
            block280fd854PC := 21.
        ].
        block280fd854Step = 21 ifTrue: [
            block280fd854Stack2 := (block280fd854Stack2) includes: (block280fd854Stack3).
            block280fd854PC := 23.
        ].
        block280fd854Step = 23 ifTrue: [
            block280fd854Stack1 := (block280fd854Stack1) directInput: (block280fd854Stack2).
            block280fd854PC := 25.
        ].
        block280fd854Step = 25 ifTrue: [
            block280fd854Result := block280fd854Stack1.
            block280fd854Done := true.
        ].
    ].
    block280fd854Result
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := [:recoveredBlock43Arg1 | 
    | recoveredBlock43Stack0 recoveredBlock43Stack1 recoveredBlock43Stack2 recoveredBlock43Stack3 recoveredBlock43PC recoveredBlock43Step recoveredBlock43Done recoveredBlock43Result |
    recoveredBlock43Stack0 := self.
    recoveredBlock43PC := 50.
    recoveredBlock43Done := false.
    [recoveredBlock43Done not] whileTrue: [
        recoveredBlock43Step := recoveredBlock43PC.
        recoveredBlock43Step = 50 ifTrue: [
            recoveredBlock43Stack1 := nil.
            recoveredBlock43PC := 51.
        ].
        recoveredBlock43Step = 51 ifTrue: [
            recoveredBlock43Stack2 := recoveredBlock43Arg1.
            recoveredBlock43PC := 54.
        ].
        recoveredBlock43Step = 54 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) graphicElement.
            recoveredBlock43PC := 55.
        ].
        recoveredBlock43Step = 55 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) directInput.
            recoveredBlock43PC := 57.
        ].
        recoveredBlock43Step = 57 ifTrue: [
            (recoveredBlock43Stack2) ifTrue: [recoveredBlock43PC := 60] ifFalse: [recoveredBlock43PC := 101].
        ].
        recoveredBlock43Step = 60 ifTrue: [
            recoveredBlock43PC := 61.
        ].
        recoveredBlock43Step = 61 ifTrue: [
            recoveredBlock43Stack1 := recoveredLocal1.
            recoveredBlock43PC := 64.
        ].
        recoveredBlock43Step = 64 ifTrue: [
            recoveredBlock43Stack2 := [:recoveredBlock43Block64Arg1 | 
    | recoveredBlock43Block64Stack0 recoveredBlock43Block64Stack1 recoveredBlock43Block64Stack2 recoveredBlock43Block64Stack3 recoveredBlock43Block64Stack4 recoveredBlock43Block64PC recoveredBlock43Block64Step recoveredBlock43Block64Done recoveredBlock43Block64Result |
    recoveredBlock43Block64Stack0 := nil.
    recoveredBlock43Block64PC := 70.
    recoveredBlock43Block64Done := false.
    [recoveredBlock43Block64Done not] whileTrue: [
        recoveredBlock43Block64Step := recoveredBlock43Block64PC.
        recoveredBlock43Block64Step = 70 ifTrue: [
            recoveredBlock43Block64Stack1 := nil.
            recoveredBlock43Block64PC := 71.
        ].
        recoveredBlock43Block64Step = 71 ifTrue: [
            recoveredBlock43Block64Stack2 := recoveredBlock43Arg1.
            recoveredBlock43Block64PC := 74.
        ].
        recoveredBlock43Block64Step = 74 ifTrue: [
            recoveredBlock43Block64Stack2 := (recoveredBlock43Block64Stack2) graphicElement.
            recoveredBlock43Block64PC := 75.
        ].
        recoveredBlock43Block64Step = 75 ifTrue: [
            recoveredBlock43Block64Stack2 := (recoveredBlock43Block64Stack2) block.
            recoveredBlock43Block64PC := 77.
        ].
        recoveredBlock43Block64Step = 77 ifTrue: [
            recoveredBlock43Block64Stack2 := (recoveredBlock43Block64Stack2) dataModelRef.
            recoveredBlock43Block64PC := 79.
        ].
        recoveredBlock43Block64Step = 79 ifTrue: [
            recoveredBlock43Block64Stack2 := (recoveredBlock43Block64Stack2) aliasName.
            recoveredBlock43Block64PC := 81.
        ].
        recoveredBlock43Block64Step = 81 ifTrue: [
            recoveredBlock43Block64Stack3 := recoveredBlock43Block64Arg1.
            recoveredBlock43Block64PC := 82.
        ].
        recoveredBlock43Block64Step = 82 ifTrue: [
            recoveredBlock43Block64Stack3 := (recoveredBlock43Block64Stack3) graphicElement.
            recoveredBlock43Block64PC := 83.
        ].
        recoveredBlock43Block64Step = 83 ifTrue: [
            recoveredBlock43Block64Stack3 := (recoveredBlock43Block64Stack3) block.
            recoveredBlock43Block64PC := 85.
        ].
        recoveredBlock43Block64Step = 85 ifTrue: [
            recoveredBlock43Block64Stack3 := (recoveredBlock43Block64Stack3) dataModelRef.
            recoveredBlock43Block64PC := 87.
        ].
        recoveredBlock43Block64Step = 87 ifTrue: [
            recoveredBlock43Block64Stack3 := (recoveredBlock43Block64Stack3) aliasName.
            recoveredBlock43Block64PC := 89.
        ].
        recoveredBlock43Block64Step = 89 ifTrue: [
            (recoveredBlock43Block64Stack2 ~~ recoveredBlock43Block64Stack3) ifTrue: [recoveredBlock43Block64PC := 98] ifFalse: [recoveredBlock43Block64PC := 92].
        ].
        recoveredBlock43Block64Step = 92 ifTrue: [
            recoveredBlock43Block64PC := 93.
        ].
        recoveredBlock43Block64Step = 93 ifTrue: [
            recoveredBlock43Block64Stack1 := recoveredBlock43Block64Arg1.
            recoveredBlock43Block64PC := 94.
        ].
        recoveredBlock43Block64Step = 94 ifTrue: [
            recoveredBlock43Block64Stack1 := (recoveredBlock43Block64Stack1) graphicElement.
            recoveredBlock43Block64PC := 95.
        ].
        recoveredBlock43Block64Step = 95 ifTrue: [
            recoveredBlock43Block64Stack2 := true.
            recoveredBlock43Block64PC := 96.
        ].
        recoveredBlock43Block64Step = 96 ifTrue: [
            recoveredBlock43Block64Stack1 := (recoveredBlock43Block64Stack1) directInput: (recoveredBlock43Block64Stack2).
            recoveredBlock43Block64PC := 98.
        ].
        recoveredBlock43Block64Step = 98 ifTrue: [
            recoveredBlock43Block64Result := recoveredBlock43Block64Stack1.
            recoveredBlock43Block64Done := true.
        ].
    ].
    recoveredBlock43Block64Result
].
            recoveredBlock43PC := 99.
        ].
        recoveredBlock43Step = 99 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) do: (recoveredBlock43Stack2).
            recoveredBlock43PC := 101.
        ].
        recoveredBlock43Step = 101 ifTrue: [
            recoveredBlock43Result := recoveredBlock43Stack1.
            recoveredBlock43Done := true.
        ].
    ].
    recoveredBlock43Result
].
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204339c0; bytecode file offset 0xd302c0"
!SGBdlGraph methodsFor: 'recovered'!
resolveCycles: recoveredArg1
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
            recoveredStack2 := [:block280fd92cArg1 | 
    | block280fd92cStack0 block280fd92cStack1 block280fd92cStack2 block280fd92cStack3 block280fd92cPC block280fd92cStep block280fd92cDone block280fd92cResult |
    block280fd92cStack0 := self.
    block280fd92cPC := 4.
    block280fd92cDone := false.
    [block280fd92cDone not] whileTrue: [
        block280fd92cStep := block280fd92cPC.
        block280fd92cStep = 4 ifTrue: [
            block280fd92cStack1 := false.
            block280fd92cPC := 5.
        ].
        block280fd92cStep = 5 ifTrue: [
            block280fd92cStack2 := block280fd92cArg1.
            block280fd92cPC := 6.
        ].
        block280fd92cStep = 6 ifTrue: [
            block280fd92cStack2 := (block280fd92cStack2) graphicElement.
            block280fd92cPC := 7.
        ].
        block280fd92cStep = 7 ifTrue: [
            block280fd92cStack2 := (block280fd92cStack2) isBdlReturnPort.
            block280fd92cPC := 8.
        ].
        block280fd92cStep = 8 ifTrue: [
            (block280fd92cStack2) ifTrue: [block280fd92cPC := 12] ifFalse: [block280fd92cPC := 29].
        ].
        block280fd92cStep = 12 ifTrue: [
            block280fd92cPC := 13.
        ].
        block280fd92cStep = 13 ifTrue: [
            block280fd92cStack1 := false.
            block280fd92cPC := 14.
        ].
        block280fd92cStep = 14 ifTrue: [
            block280fd92cStack2 := block280fd92cArg1.
            block280fd92cPC := 15.
        ].
        block280fd92cStep = 15 ifTrue: [
            block280fd92cStack2 := (block280fd92cStack2) graphicElement.
            block280fd92cPC := 16.
        ].
        block280fd92cStep = 16 ifTrue: [
            block280fd92cStack2 := (block280fd92cStack2) block.
            block280fd92cPC := 17.
        ].
        block280fd92cStep = 17 ifTrue: [
            block280fd92cStack2 := (block280fd92cStack2) isBdlVariableBlock.
            block280fd92cPC := 19.
        ].
        block280fd92cStep = 19 ifTrue: [
            (block280fd92cStack2) ifTrue: [block280fd92cPC := 22] ifFalse: [block280fd92cPC := 29].
        ].
        block280fd92cStep = 22 ifTrue: [
            block280fd92cPC := 23.
        ].
        block280fd92cStep = 23 ifTrue: [
            block280fd92cStack1 := block280fd92cArg1.
            block280fd92cPC := 24.
        ].
        block280fd92cStep = 24 ifTrue: [
            block280fd92cStack1 := (block280fd92cStack1) graphicElement.
            block280fd92cPC := 25.
        ].
        block280fd92cStep = 25 ifTrue: [
            block280fd92cStack1 := (block280fd92cStack1) interfaceArguments.
            block280fd92cPC := 27.
        ].
        block280fd92cStep = 27 ifTrue: [
            block280fd92cStack1 := (block280fd92cStack1) isEmpty.
            block280fd92cPC := 29.
        ].
        block280fd92cStep = 29 ifTrue: [
            block280fd92cResult := block280fd92cStack1.
            block280fd92cDone := true.
        ].
    ].
    block280fd92cResult
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock38Stack0 recoveredBlock38Stack1 recoveredBlock38Stack2 recoveredBlock38Stack3 recoveredBlock38Stack4 recoveredBlock38Stack5 recoveredBlock38Stack6 recoveredBlock38PC recoveredBlock38Step recoveredBlock38Done recoveredBlock38Result |
    recoveredBlock38Stack0 := self.
    recoveredBlock38PC := 44.
    recoveredBlock38Done := false.
    [recoveredBlock38Done not] whileTrue: [
        recoveredBlock38Step := recoveredBlock38PC.
        recoveredBlock38Step = 44 ifTrue: [
            recoveredBlock38Stack1 := recoveredArg1.
            recoveredBlock38PC := 47.
        ].
        recoveredBlock38Step = 47 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) first.
            recoveredBlock38PC := 49.
        ].
        recoveredBlock38Step = 49 ifTrue: [
            recoveredBlock38Stack2 := 61.
            recoveredBlock38PC := 51.
        ].
        recoveredBlock38Step = 51 ifTrue: [
            recoveredBlock38Stack3 := recoveredArg1.
            recoveredBlock38PC := 54.
        ].
        recoveredBlock38Step = 54 ifTrue: [
            recoveredBlock38Stack4 := ''.
            recoveredBlock38PC := 56.
        ].
        recoveredBlock38Step = 56 ifTrue: [
            recoveredBlock38Stack5 := [:block280fd950Arg1 :block280fd950Arg2 | 
    | block280fd950Value0 block280fd950Value1 block280fd950Value2 block280fd950Value3 block280fd950Value4 block280fd950Value5 |
    block280fd950Value0 := block280fd950Arg1.
    block280fd950Value1 := (block280fd950Value0) , ('<').
    block280fd950Value2 := block280fd950Arg2.
    block280fd950Value3 := (block280fd950Value2) errLabel.
    block280fd950Value4 := (block280fd950Value1) , (block280fd950Value3).
    block280fd950Value5 := (block280fd950Value4) , ('>').
    block280fd950Value5
].
            recoveredBlock38PC := 58.
        ].
        recoveredBlock38Step = 58 ifTrue: [
            recoveredBlock38PC := 77.
        ].
        recoveredBlock38Step = 77 ifTrue: [
            recoveredBlock38Stack3 := (recoveredBlock38Stack3) inject: (recoveredBlock38Stack4) into: (recoveredBlock38Stack5).
            recoveredBlock38PC := 79.
        ].
        recoveredBlock38Step = 79 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) bdlSyntaxErrNo: (recoveredBlock38Stack2) with: (recoveredBlock38Stack3).
            recoveredBlock38PC := 81.
        ].
        recoveredBlock38Step = 81 ifTrue: [
            ^recoveredBlock38Stack1
        ].
    ].
    recoveredBlock38Result
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := [:recoveredBlock90Arg1 | 
    | recoveredBlock90Value0 recoveredBlock90Value1 recoveredBlock90Value2 |
    recoveredBlock90Value0 := recoveredBlock90Arg1.
    recoveredBlock90Value1 := recoveredLocal1.
    recoveredBlock90Value2 := (recoveredBlock90Value0) removeHardPrerequisites: (recoveredBlock90Value1).
    recoveredBlock90Value2
].
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2047b218; bytecode file offset 0xd77aec"
!SGBdlGraph methodsFor: 'recovered'!
addPreForDummyDirect: recoveredArg1 nodesInitMethod: recoveredArg2 ctInputNodes: recoveredArg3 ctOutputNodes: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) nodes.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isCTDirectOutputMethodNode.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 18] ifFalse: [recoveredBlock5PC := 24].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack1 := recoveredArg1.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) addHardPrerequisite: (recoveredBlock5Stack2).
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := (self) nodes.
    recoveredValue3 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Stack0 recoveredBlock29Stack1 recoveredBlock29Stack2 recoveredBlock29Stack3 recoveredBlock29PC recoveredBlock29Step recoveredBlock29Done recoveredBlock29Result |
    recoveredBlock29Stack0 := self.
    recoveredBlock29PC := 36.
    recoveredBlock29Done := false.
    [recoveredBlock29Done not] whileTrue: [
        recoveredBlock29Step := recoveredBlock29PC.
        recoveredBlock29Step = 36 ifTrue: [
            recoveredBlock29Stack1 := nil.
            recoveredBlock29PC := 37.
        ].
        recoveredBlock29Step = 37 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Arg1.
            recoveredBlock29PC := 38.
        ].
        recoveredBlock29Step = 38 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) graphicElement.
            recoveredBlock29PC := 40.
        ].
        recoveredBlock29Step = 40 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) isSGCtSelectorPort.
            recoveredBlock29PC := 42.
        ].
        recoveredBlock29Step = 42 ifTrue: [
            (recoveredBlock29Stack2) ifTrue: [recoveredBlock29PC := 46] ifFalse: [recoveredBlock29PC := 68].
        ].
        recoveredBlock29Step = 46 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Arg1.
            recoveredBlock29PC := 47.
        ].
        recoveredBlock29Step = 47 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) graphicElement.
            recoveredBlock29PC := 49.
        ].
        recoveredBlock29Step = 49 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) isDefaultMethod.
            recoveredBlock29PC := 51.
        ].
        recoveredBlock29Step = 51 ifTrue: [
            (recoveredBlock29Stack2) ifTrue: [recoveredBlock29PC := 68] ifFalse: [recoveredBlock29PC := 54].
        ].
        recoveredBlock29Step = 54 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Arg1.
            recoveredBlock29PC := 55.
        ].
        recoveredBlock29Step = 55 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) graphicElement.
            recoveredBlock29PC := 57.
        ].
        recoveredBlock29Step = 57 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) isDirectLink.
            recoveredBlock29PC := 59.
        ].
        recoveredBlock29Step = 59 ifTrue: [
            (recoveredBlock29Stack2) ifTrue: [recoveredBlock29PC := 62] ifFalse: [recoveredBlock29PC := 68].
        ].
        recoveredBlock29Step = 62 ifTrue: [
            recoveredBlock29PC := 63.
        ].
        recoveredBlock29Step = 63 ifTrue: [
            recoveredBlock29Stack1 := recoveredArg1.
            recoveredBlock29PC := 66.
        ].
        recoveredBlock29Step = 66 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Arg1.
            recoveredBlock29PC := 67.
        ].
        recoveredBlock29Step = 67 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) addHardPrerequisite: (recoveredBlock29Stack2).
            recoveredBlock29PC := 68.
        ].
        recoveredBlock29Step = 68 ifTrue: [
            recoveredBlock29Result := recoveredBlock29Stack1.
            recoveredBlock29Done := true.
        ].
    ].
    recoveredBlock29Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := [:recoveredBlock74Arg1 | 
    | recoveredBlock74Value0 recoveredBlock74Value1 recoveredBlock74Value2 |
    recoveredBlock74Value0 := recoveredBlock74Arg1.
    recoveredBlock74Value1 := recoveredArg1.
    recoveredBlock74Value2 := (recoveredBlock74Value0) addHardPrerequisite: (recoveredBlock74Value1).
    recoveredBlock74Value2
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := [:recoveredBlock91Arg1 | 
    | recoveredBlock91Value0 recoveredBlock91Value1 recoveredBlock91Value2 |
    recoveredBlock91Value0 := recoveredArg1.
    recoveredBlock91Value1 := recoveredBlock91Arg1.
    recoveredBlock91Value2 := (recoveredBlock91Value0) addHardPrerequisite: (recoveredBlock91Value1).
    recoveredBlock91Value2
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := recoveredArg4.
    recoveredValue9 := [:recoveredBlock109Arg1 | 
    | recoveredBlock109Value0 recoveredBlock109Value1 recoveredBlock109Value2 |
    recoveredBlock109Value0 := recoveredArg1.
    recoveredBlock109Value1 := recoveredBlock109Arg1.
    recoveredBlock109Value2 := (recoveredBlock109Value0) addHardPrerequisite: (recoveredBlock109Value1).
    recoveredBlock109Value2
].
    (recoveredValue8) do: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x2050ebbc; bytecode file offset 0xe0b4ac"
!SGBdlGraph methodsFor: 'recovered'!
addPreForDummyNonDirect: recoveredArg1 dummyNonDirectSeparator: recoveredArg2 ctInputNodes: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            recoveredStack0 := (recoveredStack0) nodes.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) graphicElement.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) isNonDirectOutput.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 26] ifFalse: [recoveredBlock11PC := 36].
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11Stack1 := recoveredArg2.
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) addHardPrerequisite: (recoveredBlock11Stack2).
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11PC := 42.
        ].
        recoveredBlock11Step = 36 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal2.
            recoveredBlock11PC := 39.
        ].
        recoveredBlock11Step = 39 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 40.
        ].
        recoveredBlock11Step = 40 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) add: (recoveredBlock11Stack2).
            recoveredBlock11PC := 42.
        ].
        recoveredBlock11Step = 42 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := [:recoveredBlock48Arg1 | 
    | recoveredBlock48Stack0 recoveredBlock48Stack1 recoveredBlock48Stack2 recoveredBlock48Stack3 recoveredBlock48PC recoveredBlock48Step recoveredBlock48Done recoveredBlock48Result |
    recoveredBlock48Stack0 := self.
    recoveredBlock48PC := 54.
    recoveredBlock48Done := false.
    [recoveredBlock48Done not] whileTrue: [
        recoveredBlock48Step := recoveredBlock48PC.
        recoveredBlock48Step = 54 ifTrue: [
            recoveredBlock48Stack1 := nil.
            recoveredBlock48PC := 55.
        ].
        recoveredBlock48Step = 55 ifTrue: [
            recoveredBlock48Stack2 := recoveredBlock48Arg1.
            recoveredBlock48PC := 56.
        ].
        recoveredBlock48Step = 56 ifTrue: [
            recoveredBlock48Stack2 := (recoveredBlock48Stack2) graphicElement.
            recoveredBlock48PC := 57.
        ].
        recoveredBlock48Step = 57 ifTrue: [
            recoveredBlock48Stack2 := (recoveredBlock48Stack2) isDirectOutput.
            recoveredBlock48PC := 59.
        ].
        recoveredBlock48Step = 59 ifTrue: [
            (recoveredBlock48Stack2) ifTrue: [recoveredBlock48PC := 62] ifFalse: [recoveredBlock48PC := 69].
        ].
        recoveredBlock48Step = 62 ifTrue: [
            recoveredBlock48PC := 63.
        ].
        recoveredBlock48Step = 63 ifTrue: [
            recoveredBlock48Stack1 := recoveredBlock48Arg1.
            recoveredBlock48PC := 64.
        ].
        recoveredBlock48Step = 64 ifTrue: [
            recoveredBlock48Stack2 := recoveredArg1.
            recoveredBlock48PC := 67.
        ].
        recoveredBlock48Step = 67 ifTrue: [
            recoveredBlock48Stack1 := (recoveredBlock48Stack1) addHardPrerequisite: (recoveredBlock48Stack2).
            recoveredBlock48PC := 69.
        ].
        recoveredBlock48Step = 69 ifTrue: [
            recoveredBlock48Result := recoveredBlock48Stack1.
            recoveredBlock48Done := true.
        ].
    ].
    recoveredBlock48Result
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := [:recoveredBlock75Arg1 | 
    | recoveredBlock75Value0 recoveredBlock75Value1 recoveredBlock75Value2 |
    recoveredBlock75Value0 := recoveredBlock75Arg1.
    recoveredBlock75Value1 := recoveredArg1.
    recoveredBlock75Value2 := (recoveredBlock75Value0) addHardPrerequisite: (recoveredBlock75Value1).
    recoveredBlock75Value2
].
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) nodes.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := [:block2810b1ccArg1 | 
    | block2810b1ccStack0 block2810b1ccStack1 block2810b1ccStack2 block2810b1ccStack3 block2810b1ccPC block2810b1ccStep block2810b1ccDone block2810b1ccResult |
    block2810b1ccStack0 := self.
    block2810b1ccPC := 4.
    block2810b1ccDone := false.
    [block2810b1ccDone not] whileTrue: [
        block2810b1ccStep := block2810b1ccPC.
        block2810b1ccStep = 4 ifTrue: [
            block2810b1ccStack1 := false.
            block2810b1ccPC := 5.
        ].
        block2810b1ccStep = 5 ifTrue: [
            block2810b1ccStack2 := block2810b1ccArg1.
            block2810b1ccPC := 6.
        ].
        block2810b1ccStep = 6 ifTrue: [
            block2810b1ccStack2 := (block2810b1ccStack2) graphicElement.
            block2810b1ccPC := 7.
        ].
        block2810b1ccStep = 7 ifTrue: [
            block2810b1ccStack2 := (block2810b1ccStack2) isSGCtSelectorPort.
            block2810b1ccPC := 9.
        ].
        block2810b1ccStep = 9 ifTrue: [
            (block2810b1ccStack2) ifTrue: [block2810b1ccPC := 12] ifFalse: [block2810b1ccPC := 18].
        ].
        block2810b1ccStep = 12 ifTrue: [
            block2810b1ccPC := 13.
        ].
        block2810b1ccStep = 13 ifTrue: [
            block2810b1ccStack1 := block2810b1ccArg1.
            block2810b1ccPC := 14.
        ].
        block2810b1ccStep = 14 ifTrue: [
            block2810b1ccStack1 := (block2810b1ccStack1) graphicElement.
            block2810b1ccPC := 15.
        ].
        block2810b1ccStep = 15 ifTrue: [
            block2810b1ccStack1 := (block2810b1ccStack1) isDefaultMethod.
            block2810b1ccPC := 17.
        ].
        block2810b1ccStep = 17 ifTrue: [
            block2810b1ccStack1 := (block2810b1ccStack1) not.
            block2810b1ccPC := 18.
        ].
        block2810b1ccStep = 18 ifTrue: [
            block2810b1ccResult := block2810b1ccStack1.
            block2810b1ccDone := true.
        ].
    ].
    block2810b1ccResult
].
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := [:recoveredBlock121Arg1 | 
    | recoveredBlock121Stack0 recoveredBlock121Stack1 recoveredBlock121Stack2 recoveredBlock121Stack3 recoveredBlock121PC recoveredBlock121Step recoveredBlock121Done recoveredBlock121Result |
    recoveredBlock121Stack0 := self.
    recoveredBlock121PC := 128.
    recoveredBlock121Done := false.
    [recoveredBlock121Done not] whileTrue: [
        recoveredBlock121Step := recoveredBlock121PC.
        recoveredBlock121Step = 128 ifTrue: [
            recoveredBlock121Stack1 := nil.
            recoveredBlock121PC := 129.
        ].
        recoveredBlock121Step = 129 ifTrue: [
            recoveredBlock121Stack2 := recoveredBlock121Arg1.
            recoveredBlock121PC := 130.
        ].
        recoveredBlock121Step = 130 ifTrue: [
            recoveredBlock121Stack2 := (recoveredBlock121Stack2) graphicElement.
            recoveredBlock121PC := 131.
        ].
        recoveredBlock121Step = 131 ifTrue: [
            recoveredBlock121Stack2 := (recoveredBlock121Stack2) isDirectLink.
            recoveredBlock121PC := 133.
        ].
        recoveredBlock121Step = 133 ifTrue: [
            (recoveredBlock121Stack2) ifTrue: [recoveredBlock121PC := 151] ifFalse: [recoveredBlock121PC := 136].
        ].
        recoveredBlock121Step = 136 ifTrue: [
            recoveredBlock121Stack2 := recoveredBlock121Arg1.
            recoveredBlock121PC := 137.
        ].
        recoveredBlock121Step = 137 ifTrue: [
            recoveredBlock121Stack2 := (recoveredBlock121Stack2) graphicElement.
            recoveredBlock121PC := 138.
        ].
        recoveredBlock121Step = 138 ifTrue: [
            recoveredBlock121Stack2 := (recoveredBlock121Stack2) isCtInput.
            recoveredBlock121PC := 140.
        ].
        recoveredBlock121Step = 140 ifTrue: [
            (recoveredBlock121Stack2) ifTrue: [recoveredBlock121PC := 151] ifFalse: [recoveredBlock121PC := 144].
        ].
        recoveredBlock121Step = 144 ifTrue: [
            recoveredBlock121PC := 145.
        ].
        recoveredBlock121Step = 145 ifTrue: [
            recoveredBlock121Stack1 := recoveredArg1.
            recoveredBlock121PC := 148.
        ].
        recoveredBlock121Step = 148 ifTrue: [
            recoveredBlock121Stack2 := recoveredBlock121Arg1.
            recoveredBlock121PC := 149.
        ].
        recoveredBlock121Step = 149 ifTrue: [
            recoveredBlock121Stack1 := (recoveredBlock121Stack1) addHardPrerequisite: (recoveredBlock121Stack2).
            recoveredBlock121PC := 151.
        ].
        recoveredBlock121Step = 151 ifTrue: [
            recoveredBlock121Result := recoveredBlock121Stack1.
            recoveredBlock121Done := true.
        ].
    ].
    recoveredBlock121Result
].
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := [:recoveredBlock157Arg1 | 
    | recoveredBlock157Stack0 recoveredBlock157Stack1 recoveredBlock157Stack2 recoveredBlock157Stack3 recoveredBlock157PC recoveredBlock157Step recoveredBlock157Done recoveredBlock157Result |
    recoveredBlock157Stack0 := self.
    recoveredBlock157PC := 164.
    recoveredBlock157Done := false.
    [recoveredBlock157Done not] whileTrue: [
        recoveredBlock157Step := recoveredBlock157PC.
        recoveredBlock157Step = 164 ifTrue: [
            recoveredBlock157Stack1 := nil.
            recoveredBlock157PC := 165.
        ].
        recoveredBlock157Step = 165 ifTrue: [
            recoveredBlock157Stack2 := recoveredBlock157Arg1.
            recoveredBlock157PC := 166.
        ].
        recoveredBlock157Step = 166 ifTrue: [
            recoveredBlock157Stack2 := (recoveredBlock157Stack2) graphicElement.
            recoveredBlock157PC := 167.
        ].
        recoveredBlock157Step = 167 ifTrue: [
            recoveredBlock157Stack2 := (recoveredBlock157Stack2) isDirectLink.
            recoveredBlock157PC := 169.
        ].
        recoveredBlock157Step = 169 ifTrue: [
            (recoveredBlock157Stack2) ifTrue: [recoveredBlock157PC := 172] ifFalse: [recoveredBlock157PC := 179].
        ].
        recoveredBlock157Step = 172 ifTrue: [
            recoveredBlock157PC := 173.
        ].
        recoveredBlock157Step = 173 ifTrue: [
            recoveredBlock157Stack1 := recoveredBlock157Arg1.
            recoveredBlock157PC := 174.
        ].
        recoveredBlock157Step = 174 ifTrue: [
            recoveredBlock157Stack2 := recoveredArg1.
            recoveredBlock157PC := 177.
        ].
        recoveredBlock157Step = 177 ifTrue: [
            recoveredBlock157Stack1 := (recoveredBlock157Stack1) addHardPrerequisite: (recoveredBlock157Stack2).
            recoveredBlock157PC := 179.
        ].
        recoveredBlock157Step = 179 ifTrue: [
            recoveredBlock157Result := recoveredBlock157Stack1.
            recoveredBlock157Done := true.
        ].
    ].
    recoveredBlock157Result
].
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20513bcc; bytecode file offset 0xe104b8"
!SGBdlGraph methodsFor: 'recovered'!
makeCtPrerequisitesFor: recoveredArg1 on: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block2810b6dcArg1 | 
    | block2810b6dcValue0 block2810b6dcValue1 |
    block2810b6dcValue0 := block2810b6dcArg1.
    block2810b6dcValue1 := (block2810b6dcValue0) isCTDirectOutputMethodNode.
    block2810b6dcValue1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [:recoveredBlock22Arg1 | 
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
            recoveredBlock22PC := 32.
        ].
        recoveredBlock22Step = 32 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) graphicElement.
            recoveredBlock22PC := 33.
        ].
        recoveredBlock22Step = 33 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) isCtInput.
            recoveredBlock22PC := 35.
        ].
        recoveredBlock22Step = 35 ifTrue: [
            (recoveredBlock22Stack2) ifTrue: [recoveredBlock22PC := 38] ifFalse: [recoveredBlock22PC := 65].
        ].
        recoveredBlock22Step = 38 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 41.
        ].
        recoveredBlock22Step = 41 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) getDirectInput.
            recoveredBlock22PC := 43.
        ].
        recoveredBlock22Step = 43 ifTrue: [
            (recoveredBlock22Stack2) ifTrue: [recoveredBlock22PC := 46] ifFalse: [recoveredBlock22PC := 65].
        ].
        recoveredBlock22Step = 46 ifTrue: [
            recoveredBlock22PC := 47.
        ].
        recoveredBlock22Step = 47 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal2.
            recoveredBlock22PC := 50.
        ].
        recoveredBlock22Step = 50 ifTrue: [
            recoveredBlock22Stack2 := [:recoveredBlock22Block50Arg1 | 
    | recoveredBlock22Block50Value0 recoveredBlock22Block50Value1 recoveredBlock22Block50Value2 |
    recoveredBlock22Block50Value0 := recoveredBlock22Block50Arg1.
    recoveredBlock22Block50Value1 := recoveredBlock22Arg1.
    recoveredBlock22Block50Value2 := (recoveredBlock22Block50Value0) addHardPrerequisite: (recoveredBlock22Block50Value1).
    recoveredBlock22Block50Value2
].
            recoveredBlock22PC := 63.
        ].
        recoveredBlock22Step = 63 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) do: (recoveredBlock22Stack2).
            recoveredBlock22PC := 65.
        ].
        recoveredBlock22Step = 65 ifTrue: [
            recoveredBlock22Result := recoveredBlock22Stack1.
            recoveredBlock22Done := true.
        ].
    ].
    recoveredBlock22Result
].
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := [:recoveredBlock71Arg1 | 
    | recoveredBlock71Stack0 recoveredBlock71Stack1 recoveredBlock71Stack2 recoveredBlock71Stack3 recoveredBlock71PC recoveredBlock71Step recoveredBlock71Done recoveredBlock71Result |
    recoveredBlock71Stack0 := self.
    recoveredBlock71PC := 78.
    recoveredBlock71Done := false.
    [recoveredBlock71Done not] whileTrue: [
        recoveredBlock71Step := recoveredBlock71PC.
        recoveredBlock71Step = 78 ifTrue: [
            recoveredBlock71Stack1 := nil.
            recoveredBlock71PC := 79.
        ].
        recoveredBlock71Step = 79 ifTrue: [
            recoveredBlock71Stack2 := recoveredBlock71Arg1.
            recoveredBlock71PC := 82.
        ].
        recoveredBlock71Step = 82 ifTrue: [
            recoveredBlock71Stack2 := (recoveredBlock71Stack2) graphicElement.
            recoveredBlock71PC := 83.
        ].
        recoveredBlock71Step = 83 ifTrue: [
            recoveredBlock71Stack2 := (recoveredBlock71Stack2) isCtOutput.
            recoveredBlock71PC := 85.
        ].
        recoveredBlock71Step = 85 ifTrue: [
            (recoveredBlock71Stack2) ifTrue: [recoveredBlock71PC := 88] ifFalse: [recoveredBlock71PC := 117].
        ].
        recoveredBlock71Step = 88 ifTrue: [
            recoveredBlock71Stack2 := recoveredBlock71Arg1.
            recoveredBlock71PC := 91.
        ].
        recoveredBlock71Step = 91 ifTrue: [
            recoveredBlock71Stack2 := (recoveredBlock71Stack2) graphicElement.
            recoveredBlock71PC := 92.
        ].
        recoveredBlock71Step = 92 ifTrue: [
            recoveredBlock71Stack2 := (recoveredBlock71Stack2) isDirectLink.
            recoveredBlock71PC := 94.
        ].
        recoveredBlock71Step = 94 ifTrue: [
            (recoveredBlock71Stack2) ifTrue: [recoveredBlock71PC := 98] ifFalse: [recoveredBlock71PC := 117].
        ].
        recoveredBlock71Step = 98 ifTrue: [
            recoveredBlock71PC := 99.
        ].
        recoveredBlock71Step = 99 ifTrue: [
            recoveredBlock71Stack1 := recoveredLocal2.
            recoveredBlock71PC := 102.
        ].
        recoveredBlock71Step = 102 ifTrue: [
            recoveredBlock71Stack2 := [:recoveredBlock71Block102Arg1 | 
    | recoveredBlock71Block102Value0 recoveredBlock71Block102Value1 recoveredBlock71Block102Value2 |
    recoveredBlock71Block102Value0 := recoveredBlock71Arg1.
    recoveredBlock71Block102Value1 := recoveredBlock71Block102Arg1.
    recoveredBlock71Block102Value2 := (recoveredBlock71Block102Value0) addHardPrerequisite: (recoveredBlock71Block102Value1).
    recoveredBlock71Block102Value2
].
            recoveredBlock71PC := 115.
        ].
        recoveredBlock71Step = 115 ifTrue: [
            recoveredBlock71Stack1 := (recoveredBlock71Stack1) do: (recoveredBlock71Stack2).
            recoveredBlock71PC := 117.
        ].
        recoveredBlock71Step = 117 ifTrue: [
            recoveredBlock71Result := recoveredBlock71Stack1.
            recoveredBlock71Done := true.
        ].
    ].
    recoveredBlock71Result
].
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := [:recoveredBlock123Arg1 | 
    | recoveredBlock123Value0 recoveredBlock123Value1 recoveredBlock123Value2 recoveredBlock123Value3 recoveredBlock123Value4 |
    recoveredBlock123Value0 := recoveredBlock123Arg1.
    recoveredBlock123Value1 := (recoveredBlock123Value0) graphicElement.
    recoveredBlock123Value2 := (self) sgClass.
    recoveredBlock123Value3 := (recoveredBlock123Value2) nondirectOutputMethodName.
    recoveredBlock123Value4 := (recoveredBlock123Value1) methodNameIs: (recoveredBlock123Value3).
    recoveredBlock123Value4
].
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := [:recoveredBlock147Arg1 | 
    | recoveredBlock147Stack0 recoveredBlock147Stack1 recoveredBlock147Stack2 recoveredBlock147Stack3 recoveredBlock147PC recoveredBlock147Step recoveredBlock147Done recoveredBlock147Result |
    recoveredBlock147Stack0 := self.
    recoveredBlock147PC := 154.
    recoveredBlock147Done := false.
    [recoveredBlock147Done not] whileTrue: [
        recoveredBlock147Step := recoveredBlock147PC.
        recoveredBlock147Step = 154 ifTrue: [
            recoveredBlock147Stack1 := nil.
            recoveredBlock147PC := 155.
        ].
        recoveredBlock147Step = 155 ifTrue: [
            recoveredBlock147Stack2 := recoveredBlock147Arg1.
            recoveredBlock147PC := 158.
        ].
        recoveredBlock147Step = 158 ifTrue: [
            recoveredBlock147Stack2 := (recoveredBlock147Stack2) graphicElement.
            recoveredBlock147PC := 159.
        ].
        recoveredBlock147Step = 159 ifTrue: [
            recoveredBlock147Stack2 := (recoveredBlock147Stack2) isBdlOutputPort.
            recoveredBlock147PC := 161.
        ].
        recoveredBlock147Step = 161 ifTrue: [
            (recoveredBlock147Stack2) ifTrue: [recoveredBlock147PC := 164] ifFalse: [recoveredBlock147PC := 183].
        ].
        recoveredBlock147Step = 164 ifTrue: [
            recoveredBlock147PC := 165.
        ].
        recoveredBlock147Step = 165 ifTrue: [
            recoveredBlock147Stack1 := recoveredLocal1.
            recoveredBlock147PC := 168.
        ].
        recoveredBlock147Step = 168 ifTrue: [
            recoveredBlock147Stack2 := [:recoveredBlock147Block168Arg1 | 
    | recoveredBlock147Block168Value0 recoveredBlock147Block168Value1 recoveredBlock147Block168Value2 |
    recoveredBlock147Block168Value0 := recoveredBlock147Arg1.
    recoveredBlock147Block168Value1 := recoveredBlock147Block168Arg1.
    recoveredBlock147Block168Value2 := (recoveredBlock147Block168Value0) addHardPrerequisite: (recoveredBlock147Block168Value1).
    recoveredBlock147Block168Value2
].
            recoveredBlock147PC := 181.
        ].
        recoveredBlock147Step = 181 ifTrue: [
            recoveredBlock147Stack1 := (recoveredBlock147Stack1) do: (recoveredBlock147Stack2).
            recoveredBlock147PC := 183.
        ].
        recoveredBlock147Step = 183 ifTrue: [
            recoveredBlock147Result := recoveredBlock147Stack1.
            recoveredBlock147Done := true.
        ].
    ].
    recoveredBlock147Result
].
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2054361c; bytecode file offset 0xe3ff20"
!SGBdlGraph methodsFor: 'recovered'!
removeDummyNodes
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (5).
    recoveredLocal4 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal3 := recoveredValue3.
    recoveredLocal6 := 1.
    recoveredValue4 := recoveredLocal4.
    recoveredValue5 := recoveredLocal6.
    recoveredValue6 := OrderedCollection.
    recoveredValue7 := (recoveredValue6) new.
    recoveredValue8 := recoveredValue7.
    recoveredLocal2 := recoveredValue8.
    (recoveredValue4) at: (recoveredValue5) put: (recoveredValue7).
    recoveredValue9 := (self) nodes.
    recoveredValue10 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Stack0 recoveredBlock40Stack1 recoveredBlock40Stack2 recoveredBlock40Stack3 recoveredBlock40Stack4 recoveredBlock40Stack5 recoveredBlock40PC recoveredBlock40Step recoveredBlock40Done recoveredBlock40Result |
    recoveredBlock40Stack0 := self.
    recoveredBlock40PC := 46.
    recoveredBlock40Done := false.
    [recoveredBlock40Done not] whileTrue: [
        recoveredBlock40Step := recoveredBlock40PC.
        recoveredBlock40Step = 46 ifTrue: [
            recoveredBlock40Stack1 := recoveredBlock40Arg1.
            recoveredBlock40PC := 47.
        ].
        recoveredBlock40Step = 47 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) graphicElement.
            recoveredBlock40PC := 49.
        ].
        recoveredBlock40Step = 49 ifTrue: [
            (recoveredBlock40Stack1 ~~ nil) ifTrue: [recoveredBlock40PC := 78] ifFalse: [recoveredBlock40PC := 52].
        ].
        recoveredBlock40Step = 52 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal6.
            recoveredBlock40PC := 55.
        ].
        recoveredBlock40Step = 55 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) + (1).
            recoveredBlock40PC := 56.
        ].
        recoveredBlock40Step = 56 ifTrue: [
            recoveredLocal6 := recoveredBlock40Stack1.
            recoveredBlock40PC := 59.
        ].
        recoveredBlock40Step = 59 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal4.
            recoveredBlock40PC := 62.
        ].
        recoveredBlock40Step = 62 ifTrue: [
            recoveredBlock40Stack2 := recoveredLocal6.
            recoveredBlock40PC := 65.
        ].
        recoveredBlock40Step = 65 ifTrue: [
            recoveredBlock40Stack3 := OrderedCollection.
            recoveredBlock40PC := 67.
        ].
        recoveredBlock40Step = 67 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) new.
            recoveredBlock40PC := 68.
        ].
        recoveredBlock40Step = 68 ifTrue: [
            recoveredBlock40Stack4 := recoveredBlock40Stack3.
            recoveredBlock40PC := 69.
        ].
        recoveredBlock40Step = 69 ifTrue: [
            recoveredLocal2 := recoveredBlock40Stack4.
            recoveredBlock40PC := 72.
        ].
        recoveredBlock40Step = 72 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) at: (recoveredBlock40Stack2) put: (recoveredBlock40Stack3).
            recoveredBlock40PC := 74.
        ].
        recoveredBlock40Step = 74 ifTrue: [
            recoveredBlock40PC := 109.
        ].
        recoveredBlock40Step = 78 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal3.
            recoveredBlock40PC := 81.
        ].
        recoveredBlock40Step = 81 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 82.
        ].
        recoveredBlock40Step = 82 ifTrue: [
            (recoveredBlock40Stack1) add: (recoveredBlock40Stack2).
            recoveredBlock40PC := 84.
        ].
        recoveredBlock40Step = 84 ifTrue: [
            recoveredBlock40Stack1 := nil.
            recoveredBlock40PC := 85.
        ].
        recoveredBlock40Step = 85 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 86.
        ].
        recoveredBlock40Step = 86 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) graphicElement.
            recoveredBlock40PC := 88.
        ].
        recoveredBlock40Step = 88 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) isSGCtSelectorPort.
            recoveredBlock40PC := 90.
        ].
        recoveredBlock40Step = 90 ifTrue: [
            (recoveredBlock40Stack2) ifTrue: [recoveredBlock40PC := 102] ifFalse: [recoveredBlock40PC := 94].
        ].
        recoveredBlock40Step = 94 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 95.
        ].
        recoveredBlock40Step = 95 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) graphicElement.
            recoveredBlock40PC := 97.
        ].
        recoveredBlock40Step = 97 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) isCtInput.
            recoveredBlock40PC := 99.
        ].
        recoveredBlock40Step = 99 ifTrue: [
            (recoveredBlock40Stack2) ifTrue: [recoveredBlock40PC := 102] ifFalse: [recoveredBlock40PC := 109].
        ].
        recoveredBlock40Step = 102 ifTrue: [
            recoveredBlock40PC := 103.
        ].
        recoveredBlock40Step = 103 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal2.
            recoveredBlock40PC := 106.
        ].
        recoveredBlock40Step = 106 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 107.
        ].
        recoveredBlock40Step = 107 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) add: (recoveredBlock40Stack2).
            recoveredBlock40PC := 109.
        ].
        recoveredBlock40Step = 109 ifTrue: [
            recoveredBlock40Result := recoveredBlock40Stack1.
            recoveredBlock40Done := true.
        ].
    ].
    recoveredBlock40Result
].
    (recoveredValue9) do: (recoveredValue10).
    recoveredValue11 := OrderedCollection.
    recoveredValue12 := (recoveredValue11) new.
    recoveredLocal1 := recoveredValue12.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := recoveredLocal4.
    recoveredValue15 := (recoveredValue14) at: (1).
    recoveredValue16 := (self) sorted: (recoveredValue15).
    (recoveredValue13) addAll: (recoveredValue16).
    recoveredValue17 := recoveredLocal1.
    recoveredValue18 := recoveredLocal4.
    recoveredValue19 := (recoveredValue18) at: (2).
    recoveredValue20 := (self) sorted: (recoveredValue19).
    (recoveredValue17) addAll: (recoveredValue20).
    recoveredValue21 := recoveredLocal1.
    recoveredValue22 := (self) sgClass.
    recoveredValue23 := (recoveredValue22) nondirectOutputMethodName.
    (self) autoSequence: (recoveredValue21) methodName: (recoveredValue23).
    recoveredValue24 := recoveredLocal4.
    recoveredValue25 := (recoveredValue24) at: (3).
    recoveredValue26 := (self) sgClass.
    recoveredValue27 := (recoveredValue26) directOutputMethodName.
    (self) autoSequence: (recoveredValue25) methodName: (recoveredValue27).
    recoveredValue28 := recoveredLocal4.
    recoveredValue29 := (recoveredValue28) at: (4).
    recoveredValue30 := (self) sorted: (recoveredValue29).
    recoveredValue31 := (self) sgClass.
    recoveredValue32 := (recoveredValue31) initMethodName.
    (self) autoSequence: (recoveredValue30) methodName: (recoveredValue32).
    recoveredValue33 := recoveredLocal4.
    recoveredValue34 := (recoveredValue33) at: (5).
    recoveredValue35 := (self) sorted: (recoveredValue34).
    recoveredValue36 := (self) sgClass.
    recoveredValue37 := (recoveredValue36) terminateMethodName.
    (self) autoSequence: (recoveredValue35) methodName: (recoveredValue37).
    recoveredValue38 := recoveredLocal3.
    ^recoveredValue38
! !

"ASDBase.ic method 0x20553a98; bytecode file offset 0xe503b4"
!SGBdlGraph methodsFor: 'recovered'!
topologicalSort
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal5 := recoveredStack1.
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
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) nodes.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:block2810faecArg1 | 
    | block2810faecValue0 block2810faecValue1 block2810faecValue2 block2810faecValue3 block2810faecValue4 block2810faecValue5 |
    block2810faecValue0 := block2810faecArg1.
    block2810faecValue1 := block2810faecArg1.
    block2810faecValue2 := (block2810faecValue1) hardDependents.
    block2810faecValue3 := (block2810faecValue2) size.
    (block2810faecValue0) level: (block2810faecValue3).
    block2810faecValue4 := block2810faecArg1.
    block2810faecValue5 := (block2810faecValue4) label: (0).
    block2810faecValue5
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) nodes.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := [:block2810fb10Arg1 :block2810fb10Arg2 | 
    | block2810fb10Value0 block2810fb10Value1 block2810fb10Value2 block2810fb10Value3 block2810fb10Value4 block2810fb10Value5 block2810fb10Value6 |
    block2810fb10Value0 := block2810fb10Arg1.
    block2810fb10Value1 := (block2810fb10Value0) allDependents.
    block2810fb10Value2 := (block2810fb10Value1) size.
    block2810fb10Value3 := block2810fb10Arg2.
    block2810fb10Value4 := (block2810fb10Value3) allDependents.
    block2810fb10Value5 := (block2810fb10Value4) size.
    block2810fb10Value6 := (block2810fb10Value2) >= (block2810fb10Value5).
    block2810fb10Value6
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 192.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeLast.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) addFirst: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) label: (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) softPrerequisites.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := [:recoveredBlock102Arg1 | 
    | recoveredBlock102Stack0 recoveredBlock102Stack1 recoveredBlock102Stack2 recoveredBlock102Stack3 recoveredBlock102Stack4 recoveredBlock102PC recoveredBlock102Step recoveredBlock102Done recoveredBlock102Result |
    recoveredBlock102Stack0 := self.
    recoveredBlock102PC := 108.
    recoveredBlock102Done := false.
    [recoveredBlock102Done not] whileTrue: [
        recoveredBlock102Step := recoveredBlock102PC.
        recoveredBlock102Step = 108 ifTrue: [
            recoveredBlock102Stack1 := nil.
            recoveredBlock102PC := 109.
        ].
        recoveredBlock102Step = 109 ifTrue: [
            recoveredBlock102Stack2 := recoveredBlock102Arg1.
            recoveredBlock102PC := 110.
        ].
        recoveredBlock102Step = 110 ifTrue: [
            recoveredBlock102Stack2 := (recoveredBlock102Stack2) label.
            recoveredBlock102PC := 112.
        ].
        recoveredBlock102Step = 112 ifTrue: [
            recoveredBlock102Stack3 := 0.
            recoveredBlock102PC := 114.
        ].
        recoveredBlock102Step = 114 ifTrue: [
            recoveredBlock102Stack2 := (recoveredBlock102Stack2) = (recoveredBlock102Stack3).
            recoveredBlock102PC := 115.
        ].
        recoveredBlock102Step = 115 ifTrue: [
            (recoveredBlock102Stack2) ifTrue: [recoveredBlock102PC := 118] ifFalse: [recoveredBlock102PC := 133].
        ].
        recoveredBlock102Step = 118 ifTrue: [
            recoveredBlock102PC := 119.
        ].
        recoveredBlock102Step = 119 ifTrue: [
            recoveredBlock102Stack1 := recoveredLocal1.
            recoveredBlock102PC := 122.
        ].
        recoveredBlock102Step = 122 ifTrue: [
            recoveredBlock102Stack2 := recoveredBlock102Arg1.
            recoveredBlock102PC := 123.
        ].
        recoveredBlock102Step = 123 ifTrue: [
            recoveredBlock102Stack3 := [].
            recoveredBlock102PC := 125.
        ].
        recoveredBlock102Step = 125 ifTrue: [
            (recoveredBlock102Stack1) remove: (recoveredBlock102Stack2) ifAbsent: (recoveredBlock102Stack3).
            recoveredBlock102PC := 127.
        ].
        recoveredBlock102Step = 127 ifTrue: [
            recoveredBlock102Stack1 := recoveredLocal1.
            recoveredBlock102PC := 130.
        ].
        recoveredBlock102Step = 130 ifTrue: [
            recoveredBlock102Stack2 := recoveredBlock102Arg1.
            recoveredBlock102PC := 131.
        ].
        recoveredBlock102Step = 131 ifTrue: [
            recoveredBlock102Stack1 := (recoveredBlock102Stack1) addLast: (recoveredBlock102Stack2).
            recoveredBlock102PC := 133.
        ].
        recoveredBlock102Step = 133 ifTrue: [
            recoveredBlock102Result := recoveredBlock102Stack1.
            recoveredBlock102Done := true.
        ].
    ].
    recoveredBlock102Result
].
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) hardPrerequisites.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := [:recoveredBlock141Arg1 | 
    | recoveredBlock141Stack0 recoveredBlock141Stack1 recoveredBlock141Stack2 recoveredBlock141Stack3 recoveredBlock141Stack4 recoveredBlock141PC recoveredBlock141Step recoveredBlock141Done recoveredBlock141Result |
    recoveredBlock141Stack0 := self.
    recoveredBlock141PC := 148.
    recoveredBlock141Done := false.
    [recoveredBlock141Done not] whileTrue: [
        recoveredBlock141Step := recoveredBlock141PC.
        recoveredBlock141Step = 148 ifTrue: [
            recoveredBlock141Stack1 := nil.
            recoveredBlock141PC := 149.
        ].
        recoveredBlock141Step = 149 ifTrue: [
            recoveredBlock141Stack2 := recoveredBlock141Arg1.
            recoveredBlock141PC := 150.
        ].
        recoveredBlock141Step = 150 ifTrue: [
            recoveredBlock141Stack3 := recoveredBlock141Arg1.
            recoveredBlock141PC := 151.
        ].
        recoveredBlock141Step = 151 ifTrue: [
            recoveredBlock141Stack3 := (recoveredBlock141Stack3) level.
            recoveredBlock141PC := 153.
        ].
        recoveredBlock141Step = 153 ifTrue: [
            recoveredBlock141Stack3 := (recoveredBlock141Stack3) + (-1).
            recoveredBlock141PC := 154.
        ].
        recoveredBlock141Step = 154 ifTrue: [
            recoveredBlock141Stack2 := (recoveredBlock141Stack2) level: (recoveredBlock141Stack3).
            recoveredBlock141PC := 156.
        ].
        recoveredBlock141Step = 156 ifTrue: [
            recoveredBlock141Stack3 := 0.
            recoveredBlock141PC := 158.
        ].
        recoveredBlock141Step = 158 ifTrue: [
            recoveredBlock141Stack2 := (recoveredBlock141Stack2) = (recoveredBlock141Stack3).
            recoveredBlock141PC := 159.
        ].
        recoveredBlock141Step = 159 ifTrue: [
            (recoveredBlock141Stack2) ifTrue: [recoveredBlock141PC := 162] ifFalse: [recoveredBlock141PC := 189].
        ].
        recoveredBlock141Step = 162 ifTrue: [
            recoveredBlock141PC := 163.
        ].
        recoveredBlock141Step = 163 ifTrue: [
            recoveredBlock141Stack1 := nil.
            recoveredBlock141PC := 164.
        ].
        recoveredBlock141Step = 164 ifTrue: [
            recoveredBlock141Stack2 := recoveredBlock141Arg1.
            recoveredBlock141PC := 165.
        ].
        recoveredBlock141Step = 165 ifTrue: [
            recoveredBlock141Stack2 := (recoveredBlock141Stack2) label.
            recoveredBlock141PC := 167.
        ].
        recoveredBlock141Step = 167 ifTrue: [
            recoveredBlock141Stack3 := 0.
            recoveredBlock141PC := 169.
        ].
        recoveredBlock141Step = 169 ifTrue: [
            recoveredBlock141Stack2 := (recoveredBlock141Stack2) = (recoveredBlock141Stack3).
            recoveredBlock141PC := 170.
        ].
        recoveredBlock141Step = 170 ifTrue: [
            (recoveredBlock141Stack2) ifTrue: [recoveredBlock141PC := 174] ifFalse: [recoveredBlock141PC := 189].
        ].
        recoveredBlock141Step = 174 ifTrue: [
            recoveredBlock141PC := 175.
        ].
        recoveredBlock141Step = 175 ifTrue: [
            recoveredBlock141Stack1 := recoveredLocal1.
            recoveredBlock141PC := 178.
        ].
        recoveredBlock141Step = 178 ifTrue: [
            recoveredBlock141Stack2 := recoveredBlock141Arg1.
            recoveredBlock141PC := 179.
        ].
        recoveredBlock141Step = 179 ifTrue: [
            recoveredBlock141Stack3 := [].
            recoveredBlock141PC := 181.
        ].
        recoveredBlock141Step = 181 ifTrue: [
            (recoveredBlock141Stack1) remove: (recoveredBlock141Stack2) ifAbsent: (recoveredBlock141Stack3).
            recoveredBlock141PC := 183.
        ].
        recoveredBlock141Step = 183 ifTrue: [
            recoveredBlock141Stack1 := recoveredLocal1.
            recoveredBlock141PC := 186.
        ].
        recoveredBlock141Step = 186 ifTrue: [
            recoveredBlock141Stack2 := recoveredBlock141Arg1.
            recoveredBlock141PC := 187.
        ].
        recoveredBlock141Step = 187 ifTrue: [
            recoveredBlock141Stack1 := (recoveredBlock141Stack1) addLast: (recoveredBlock141Stack2).
            recoveredBlock141PC := 189.
        ].
        recoveredBlock141Step = 189 ifTrue: [
            recoveredBlock141Result := recoveredBlock141Stack1.
            recoveredBlock141Done := true.
        ].
    ].
    recoveredBlock141Result
].
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 200].
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := (recoveredStack1) nodes.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 212] ifFalse: [recoveredPC := 217].
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := 'directed acyclic graph - but there is a cycle'.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack0) fatalExpect: (recoveredStack1).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack0) nodes: (recoveredStack1).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20574398; bytecode file offset 0xe70ca4"
!SGBdlGraph methodsFor: 'recovered'!
addDummyNodes
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 |
    recoveredValue0 := SGBdlCtDummyNode.
    recoveredValue1 := (recoveredValue0) createFor: ('dummyDirectOutputs') in: (self).
    recoveredLocal4 := recoveredValue1.
    recoveredValue2 := SGBdlCtDummyNode.
    recoveredValue3 := (recoveredValue2) createFor: ('dummyNonDirectOutputs') in: (self).
    recoveredLocal3 := recoveredValue3.
    recoveredValue4 := SGBdlCtDummyNode.
    recoveredValue5 := (recoveredValue4) createFor: ('dummyNonDirectOutputsSeparator') in: (self).
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := SGBdlCtDummyNode.
    recoveredValue7 := (recoveredValue6) createFor: ('dummyInit') in: (self).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredLocal4.
    (recoveredValue8) addHardPrerequisite: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := recoveredLocal3.
    (recoveredValue10) addHardPrerequisite: (recoveredValue11).
    recoveredValue12 := recoveredLocal4.
    recoveredValue13 := recoveredLocal3.
    (recoveredValue12) addHardPrerequisite: (recoveredValue13).
    recoveredValue14 := recoveredLocal3.
    recoveredValue15 := recoveredLocal2.
    (recoveredValue14) addHardPrerequisite: (recoveredValue15).
    recoveredValue16 := OrderedCollection.
    recoveredValue17 := (recoveredValue16) new.
    recoveredLocal5 := recoveredValue17.
    recoveredValue18 := OrderedCollection.
    recoveredValue19 := (recoveredValue18) new.
    recoveredLocal6 := recoveredValue19.
    recoveredValue20 := OrderedCollection.
    recoveredValue21 := (recoveredValue20) new.
    recoveredLocal7 := recoveredValue21.
    recoveredValue22 := (self) nodes.
    recoveredValue23 := [:recoveredBlock99Arg1 | 
    | recoveredBlock99Stack0 recoveredBlock99Stack1 recoveredBlock99Stack2 recoveredBlock99Stack3 recoveredBlock99Stack4 recoveredBlock99PC recoveredBlock99Step recoveredBlock99Done recoveredBlock99Result |
    recoveredBlock99Stack0 := self.
    recoveredBlock99PC := 106.
    recoveredBlock99Done := false.
    [recoveredBlock99Done not] whileTrue: [
        recoveredBlock99Step := recoveredBlock99PC.
        recoveredBlock99Step = 106 ifTrue: [
            recoveredBlock99Stack1 := recoveredBlock99Arg1.
            recoveredBlock99PC := 107.
        ].
        recoveredBlock99Step = 107 ifTrue: [
            recoveredBlock99Stack1 := (recoveredBlock99Stack1) graphicElement.
            recoveredBlock99PC := 109.
        ].
        recoveredBlock99Step = 109 ifTrue: [
            recoveredBlock99Stack1 := (recoveredBlock99Stack1) isCtInput.
            recoveredBlock99PC := 111.
        ].
        recoveredBlock99Step = 111 ifTrue: [
            (recoveredBlock99Stack1) ifTrue: [recoveredBlock99PC := 114] ifFalse: [recoveredBlock99PC := 120].
        ].
        recoveredBlock99Step = 114 ifTrue: [
            recoveredBlock99Stack1 := recoveredLocal6.
            recoveredBlock99PC := 117.
        ].
        recoveredBlock99Step = 117 ifTrue: [
            recoveredBlock99Stack2 := recoveredBlock99Arg1.
            recoveredBlock99PC := 118.
        ].
        recoveredBlock99Step = 118 ifTrue: [
            (recoveredBlock99Stack1) add: (recoveredBlock99Stack2).
            recoveredBlock99PC := 120.
        ].
        recoveredBlock99Step = 120 ifTrue: [
            recoveredBlock99Stack1 := recoveredBlock99Arg1.
            recoveredBlock99PC := 121.
        ].
        recoveredBlock99Step = 121 ifTrue: [
            recoveredBlock99Stack1 := (recoveredBlock99Stack1) graphicElement.
            recoveredBlock99PC := 123.
        ].
        recoveredBlock99Step = 123 ifTrue: [
            recoveredBlock99Stack1 := (recoveredBlock99Stack1) isCtOutput.
            recoveredBlock99PC := 125.
        ].
        recoveredBlock99Step = 125 ifTrue: [
            (recoveredBlock99Stack1) ifTrue: [recoveredBlock99PC := 128] ifFalse: [recoveredBlock99PC := 134].
        ].
        recoveredBlock99Step = 128 ifTrue: [
            recoveredBlock99Stack1 := recoveredLocal5.
            recoveredBlock99PC := 131.
        ].
        recoveredBlock99Step = 131 ifTrue: [
            recoveredBlock99Stack2 := recoveredBlock99Arg1.
            recoveredBlock99PC := 132.
        ].
        recoveredBlock99Step = 132 ifTrue: [
            (recoveredBlock99Stack1) add: (recoveredBlock99Stack2).
            recoveredBlock99PC := 134.
        ].
        recoveredBlock99Step = 134 ifTrue: [
            recoveredBlock99Stack1 := nil.
            recoveredBlock99PC := 135.
        ].
        recoveredBlock99Step = 135 ifTrue: [
            recoveredBlock99Stack2 := recoveredBlock99Arg1.
            recoveredBlock99PC := 136.
        ].
        recoveredBlock99Step = 136 ifTrue: [
            recoveredBlock99Stack2 := (recoveredBlock99Stack2) graphicElement.
            recoveredBlock99PC := 138.
        ].
        recoveredBlock99Step = 138 ifTrue: [
            recoveredBlock99Stack3 := self.
            recoveredBlock99PC := 139.
        ].
        recoveredBlock99Step = 139 ifTrue: [
            recoveredBlock99Stack3 := (recoveredBlock99Stack3) sgClass.
            recoveredBlock99PC := 141.
        ].
        recoveredBlock99Step = 141 ifTrue: [
            recoveredBlock99Stack3 := (recoveredBlock99Stack3) initMethodName.
            recoveredBlock99PC := 143.
        ].
        recoveredBlock99Step = 143 ifTrue: [
            recoveredBlock99Stack2 := (recoveredBlock99Stack2) methodNameIs: (recoveredBlock99Stack3).
            recoveredBlock99PC := 145.
        ].
        recoveredBlock99Step = 145 ifTrue: [
            (recoveredBlock99Stack2) ifTrue: [recoveredBlock99PC := 148] ifFalse: [recoveredBlock99PC := 155].
        ].
        recoveredBlock99Step = 148 ifTrue: [
            recoveredBlock99PC := 149.
        ].
        recoveredBlock99Step = 149 ifTrue: [
            recoveredBlock99Stack1 := recoveredLocal7.
            recoveredBlock99PC := 152.
        ].
        recoveredBlock99Step = 152 ifTrue: [
            recoveredBlock99Stack2 := recoveredBlock99Arg1.
            recoveredBlock99PC := 153.
        ].
        recoveredBlock99Step = 153 ifTrue: [
            recoveredBlock99Stack1 := (recoveredBlock99Stack1) add: (recoveredBlock99Stack2).
            recoveredBlock99PC := 155.
        ].
        recoveredBlock99Step = 155 ifTrue: [
            recoveredBlock99Result := recoveredBlock99Stack1.
            recoveredBlock99Done := true.
        ].
    ].
    recoveredBlock99Result
].
    (recoveredValue22) do: (recoveredValue23).
    recoveredValue24 := recoveredLocal7.
    recoveredValue25 := [:recoveredBlock161Arg1 | 
    | recoveredBlock161Value0 recoveredBlock161Value1 recoveredBlock161Value2 |
    recoveredBlock161Value0 := recoveredBlock161Arg1.
    recoveredBlock161Value1 := (self) nodes.
    recoveredBlock161Value2 := (self) collectFamilies: (recoveredBlock161Value0) on: (recoveredBlock161Value1).
    recoveredBlock161Value2
].
    (recoveredValue24) do: (recoveredValue25).
    recoveredValue26 := recoveredLocal3.
    recoveredValue27 := recoveredLocal2.
    recoveredValue28 := recoveredLocal6.
    (self) addPreForDummyNonDirect: (recoveredValue26) dummyNonDirectSeparator: (recoveredValue27) ctInputNodes: (recoveredValue28).
    recoveredValue29 := recoveredLocal4.
    recoveredValue30 := recoveredLocal7.
    recoveredValue31 := recoveredLocal6.
    recoveredValue32 := recoveredLocal5.
    (self) addPreForDummyDirect: (recoveredValue29) nodesInitMethod: (recoveredValue30) ctInputNodes: (recoveredValue31) ctOutputNodes: (recoveredValue32).
    recoveredValue33 := recoveredLocal1.
    recoveredValue34 := recoveredLocal7.
    (self) addPreForDummyInit: (recoveredValue33) nodesInitMethod: (recoveredValue34).
    recoveredValue35 := (self) nodes.
    recoveredValue36 := recoveredLocal1.
    (recoveredValue35) add: (recoveredValue36).
    recoveredValue37 := (self) nodes.
    recoveredValue38 := recoveredLocal3.
    (recoveredValue37) add: (recoveredValue38).
    recoveredValue39 := (self) nodes.
    recoveredValue40 := recoveredLocal2.
    (recoveredValue39) add: (recoveredValue40).
    recoveredValue41 := (self) nodes.
    recoveredValue42 := recoveredLocal4.
    (recoveredValue41) add: (recoveredValue42).
    ^self
! !

"ASDBase.ic method 0x205920cc; bytecode file offset 0xe8ea14"
!SGBdlGraph methodsFor: 'recovered'!
topologicalSortForCT
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal5 := recoveredStack1.
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
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) nodes.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16Stack4 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 23.
        ].
        recoveredBlock16Step = 23 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 24.
        ].
        recoveredBlock16Step = 24 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) hardDependents.
            recoveredBlock16PC := 25.
        ].
        recoveredBlock16Step = 25 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) size.
            recoveredBlock16PC := 27.
        ].
        recoveredBlock16Step = 27 ifTrue: [
            (recoveredBlock16Stack1) level: (recoveredBlock16Stack2).
            recoveredBlock16PC := 29.
        ].
        recoveredBlock16Step = 29 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 30.
        ].
        recoveredBlock16Step = 30 ifTrue: [
            recoveredBlock16Stack2 := 0.
            recoveredBlock16PC := 32.
        ].
        recoveredBlock16Step = 32 ifTrue: [
            (recoveredBlock16Stack1) label: (recoveredBlock16Stack2).
            recoveredBlock16PC := 34.
        ].
        recoveredBlock16Step = 34 ifTrue: [
            recoveredBlock16Stack1 := nil.
            recoveredBlock16PC := 35.
        ].
        recoveredBlock16Step = 35 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 36.
        ].
        recoveredBlock16Step = 36 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) isCTDirectOutputMethodNode.
            recoveredBlock16PC := 38.
        ].
        recoveredBlock16Step = 38 ifTrue: [
            (recoveredBlock16Stack2) ifTrue: [recoveredBlock16PC := 42] ifFalse: [recoveredBlock16PC := 52].
        ].
        recoveredBlock16Step = 42 ifTrue: [
            recoveredBlock16PC := 43.
        ].
        recoveredBlock16Step = 43 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 44.
        ].
        recoveredBlock16Step = 44 ifTrue: [
            recoveredBlock16Stack2 := self.
            recoveredBlock16PC := 45.
        ].
        recoveredBlock16Step = 45 ifTrue: [
            recoveredBlock16Stack3 := recoveredBlock16Arg1.
            recoveredBlock16PC := 46.
        ].
        recoveredBlock16Step = 46 ifTrue: [
            recoveredBlock16Stack3 := (recoveredBlock16Stack3) hardPrerequisites.
            recoveredBlock16PC := 48.
        ].
        recoveredBlock16Step = 48 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) sorted: (recoveredBlock16Stack3).
            recoveredBlock16PC := 50.
        ].
        recoveredBlock16Step = 50 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) hardPrerequisites: (recoveredBlock16Stack2).
            recoveredBlock16PC := 52.
        ].
        recoveredBlock16Step = 52 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) nodes.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := [:block281149acArg1 :block281149acArg2 | 
    | block281149acValue0 block281149acValue1 block281149acValue2 block281149acValue3 block281149acValue4 block281149acValue5 block281149acValue6 |
    block281149acValue0 := block281149acArg1.
    block281149acValue1 := (block281149acValue0) allDependents.
    block281149acValue2 := (block281149acValue1) size.
    block281149acValue3 := block281149acArg2.
    block281149acValue4 := (block281149acValue3) allDependents.
    block281149acValue5 := (block281149acValue4) size.
    block281149acValue6 := (block281149acValue2) >= (block281149acValue5).
    block281149acValue6
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredPC := 246.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeLast.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) addFirst: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) label: (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) softPrerequisites.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := [:recoveredBlock118Arg1 | 
    | recoveredBlock118Stack0 recoveredBlock118Stack1 recoveredBlock118Stack2 recoveredBlock118Stack3 recoveredBlock118Stack4 recoveredBlock118PC recoveredBlock118Step recoveredBlock118Done recoveredBlock118Result |
    recoveredBlock118Stack0 := self.
    recoveredBlock118PC := 124.
    recoveredBlock118Done := false.
    [recoveredBlock118Done not] whileTrue: [
        recoveredBlock118Step := recoveredBlock118PC.
        recoveredBlock118Step = 124 ifTrue: [
            recoveredBlock118Stack1 := nil.
            recoveredBlock118PC := 125.
        ].
        recoveredBlock118Step = 125 ifTrue: [
            recoveredBlock118Stack2 := recoveredBlock118Arg1.
            recoveredBlock118PC := 126.
        ].
        recoveredBlock118Step = 126 ifTrue: [
            recoveredBlock118Stack2 := (recoveredBlock118Stack2) label.
            recoveredBlock118PC := 128.
        ].
        recoveredBlock118Step = 128 ifTrue: [
            recoveredBlock118Stack3 := 0.
            recoveredBlock118PC := 130.
        ].
        recoveredBlock118Step = 130 ifTrue: [
            recoveredBlock118Stack2 := (recoveredBlock118Stack2) = (recoveredBlock118Stack3).
            recoveredBlock118PC := 131.
        ].
        recoveredBlock118Step = 131 ifTrue: [
            (recoveredBlock118Stack2) ifTrue: [recoveredBlock118PC := 134] ifFalse: [recoveredBlock118PC := 149].
        ].
        recoveredBlock118Step = 134 ifTrue: [
            recoveredBlock118PC := 135.
        ].
        recoveredBlock118Step = 135 ifTrue: [
            recoveredBlock118Stack1 := recoveredLocal1.
            recoveredBlock118PC := 138.
        ].
        recoveredBlock118Step = 138 ifTrue: [
            recoveredBlock118Stack2 := recoveredBlock118Arg1.
            recoveredBlock118PC := 139.
        ].
        recoveredBlock118Step = 139 ifTrue: [
            recoveredBlock118Stack3 := [].
            recoveredBlock118PC := 141.
        ].
        recoveredBlock118Step = 141 ifTrue: [
            (recoveredBlock118Stack1) remove: (recoveredBlock118Stack2) ifAbsent: (recoveredBlock118Stack3).
            recoveredBlock118PC := 143.
        ].
        recoveredBlock118Step = 143 ifTrue: [
            recoveredBlock118Stack1 := recoveredLocal1.
            recoveredBlock118PC := 146.
        ].
        recoveredBlock118Step = 146 ifTrue: [
            recoveredBlock118Stack2 := recoveredBlock118Arg1.
            recoveredBlock118PC := 147.
        ].
        recoveredBlock118Step = 147 ifTrue: [
            recoveredBlock118Stack1 := (recoveredBlock118Stack1) addLast: (recoveredBlock118Stack2).
            recoveredBlock118PC := 149.
        ].
        recoveredBlock118Step = 149 ifTrue: [
            recoveredBlock118Result := recoveredBlock118Stack1.
            recoveredBlock118Done := true.
        ].
    ].
    recoveredBlock118Result
].
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) hardPrerequisites.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := [:recoveredBlock157Arg1 | 
    | recoveredBlock157Stack0 recoveredBlock157Stack1 recoveredBlock157Stack2 recoveredBlock157Stack3 recoveredBlock157Stack4 recoveredBlock157Stack5 recoveredBlock157Stack6 recoveredBlock157PC recoveredBlock157Step recoveredBlock157Done recoveredBlock157Result |
    recoveredBlock157Stack0 := self.
    recoveredBlock157PC := 164.
    recoveredBlock157Done := false.
    [recoveredBlock157Done not] whileTrue: [
        recoveredBlock157Step := recoveredBlock157PC.
        recoveredBlock157Step = 164 ifTrue: [
            recoveredBlock157Stack1 := nil.
            recoveredBlock157PC := 165.
        ].
        recoveredBlock157Step = 165 ifTrue: [
            recoveredBlock157Stack2 := recoveredBlock157Arg1.
            recoveredBlock157PC := 166.
        ].
        recoveredBlock157Step = 166 ifTrue: [
            recoveredBlock157Stack3 := recoveredBlock157Arg1.
            recoveredBlock157PC := 167.
        ].
        recoveredBlock157Step = 167 ifTrue: [
            recoveredBlock157Stack3 := (recoveredBlock157Stack3) level.
            recoveredBlock157PC := 169.
        ].
        recoveredBlock157Step = 169 ifTrue: [
            recoveredBlock157Stack3 := (recoveredBlock157Stack3) + (-1).
            recoveredBlock157PC := 170.
        ].
        recoveredBlock157Step = 170 ifTrue: [
            recoveredBlock157Stack2 := (recoveredBlock157Stack2) level: (recoveredBlock157Stack3).
            recoveredBlock157PC := 172.
        ].
        recoveredBlock157Step = 172 ifTrue: [
            recoveredBlock157Stack3 := 0.
            recoveredBlock157PC := 174.
        ].
        recoveredBlock157Step = 174 ifTrue: [
            recoveredBlock157Stack2 := (recoveredBlock157Stack2) = (recoveredBlock157Stack3).
            recoveredBlock157PC := 175.
        ].
        recoveredBlock157Step = 175 ifTrue: [
            (recoveredBlock157Stack2) ifTrue: [recoveredBlock157PC := 178] ifFalse: [recoveredBlock157PC := 243].
        ].
        recoveredBlock157Step = 178 ifTrue: [
            recoveredBlock157PC := 179.
        ].
        recoveredBlock157Step = 179 ifTrue: [
            recoveredBlock157Stack1 := recoveredBlock157Arg1.
            recoveredBlock157PC := 180.
        ].
        recoveredBlock157Step = 180 ifTrue: [
            recoveredBlock157Stack1 := (recoveredBlock157Stack1) label.
            recoveredBlock157PC := 182.
        ].
        recoveredBlock157Step = 182 ifTrue: [
            recoveredBlock157Stack2 := 0.
            recoveredBlock157PC := 184.
        ].
        recoveredBlock157Step = 184 ifTrue: [
            recoveredBlock157Stack1 := (recoveredBlock157Stack1) = (recoveredBlock157Stack2).
            recoveredBlock157PC := 185.
        ].
        recoveredBlock157Step = 185 ifTrue: [
            (recoveredBlock157Stack1) ifTrue: [recoveredBlock157PC := 188] ifFalse: [recoveredBlock157PC := 206].
        ].
        recoveredBlock157Step = 188 ifTrue: [
            recoveredBlock157Stack1 := recoveredLocal1.
            recoveredBlock157PC := 191.
        ].
        recoveredBlock157Step = 191 ifTrue: [
            recoveredBlock157Stack2 := recoveredBlock157Arg1.
            recoveredBlock157PC := 192.
        ].
        recoveredBlock157Step = 192 ifTrue: [
            recoveredBlock157Stack3 := [].
            recoveredBlock157PC := 194.
        ].
        recoveredBlock157Step = 194 ifTrue: [
            (recoveredBlock157Stack1) remove: (recoveredBlock157Stack2) ifAbsent: (recoveredBlock157Stack3).
            recoveredBlock157PC := 196.
        ].
        recoveredBlock157Step = 196 ifTrue: [
            recoveredBlock157Stack1 := recoveredLocal1.
            recoveredBlock157PC := 199.
        ].
        recoveredBlock157Step = 199 ifTrue: [
            recoveredBlock157Stack2 := recoveredBlock157Arg1.
            recoveredBlock157PC := 200.
        ].
        recoveredBlock157Step = 200 ifTrue: [
            recoveredBlock157Stack1 := (recoveredBlock157Stack1) addLast: (recoveredBlock157Stack2).
            recoveredBlock157PC := 202.
        ].
        recoveredBlock157Step = 202 ifTrue: [
            recoveredBlock157PC := 243.
        ].
        recoveredBlock157Step = 206 ifTrue: [
            recoveredBlock157Stack1 := recoveredLocal4.
            recoveredBlock157PC := 209.
        ].
        recoveredBlock157Step = 209 ifTrue: [
            recoveredBlock157Stack2 := 61.
            recoveredBlock157PC := 211.
        ].
        recoveredBlock157Step = 211 ifTrue: [
            recoveredBlock157Stack3 := recoveredLocal4.
            recoveredBlock157PC := 214.
        ].
        recoveredBlock157Step = 214 ifTrue: [
            recoveredBlock157Stack3 := (recoveredBlock157Stack3) findCycle.
            recoveredBlock157PC := 216.
        ].
        recoveredBlock157Step = 216 ifTrue: [
            recoveredBlock157Stack4 := ''.
            recoveredBlock157PC := 218.
        ].
        recoveredBlock157Step = 218 ifTrue: [
            recoveredBlock157Stack5 := [:block281149d0Arg1 :block281149d0Arg2 | 
    | block281149d0Value0 block281149d0Value1 block281149d0Value2 block281149d0Value3 block281149d0Value4 block281149d0Value5 |
    block281149d0Value0 := block281149d0Arg1.
    block281149d0Value1 := (block281149d0Value0) , ('<').
    block281149d0Value2 := block281149d0Arg2.
    block281149d0Value3 := (block281149d0Value2) errLabel.
    block281149d0Value4 := (block281149d0Value1) , (block281149d0Value3).
    block281149d0Value5 := (block281149d0Value4) , ('>').
    block281149d0Value5
].
            recoveredBlock157PC := 220.
        ].
        recoveredBlock157Step = 220 ifTrue: [
            recoveredBlock157PC := 239.
        ].
        recoveredBlock157Step = 239 ifTrue: [
            recoveredBlock157Stack3 := (recoveredBlock157Stack3) inject: (recoveredBlock157Stack4) into: (recoveredBlock157Stack5).
            recoveredBlock157PC := 241.
        ].
        recoveredBlock157Step = 241 ifTrue: [
            recoveredBlock157Stack1 := (recoveredBlock157Stack1) bdlSyntaxErrNo: (recoveredBlock157Stack2) with: (recoveredBlock157Stack3).
            recoveredBlock157PC := 243.
        ].
        recoveredBlock157Step = 243 ifTrue: [
            recoveredBlock157Result := recoveredBlock157Stack1.
            recoveredBlock157Done := true.
        ].
    ].
    recoveredBlock157Result
].
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 254].
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := (recoveredStack1) nodes.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 266] ifFalse: [recoveredPC := 271].
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack1 := 'directed acyclic graph - but there is a cycle'.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            (recoveredStack0) fatalExpect: (recoveredStack1).
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            (recoveredStack0) nodes: (recoveredStack1).
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

