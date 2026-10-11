"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002498; bytecode file offset 0x8ffcfc"
!SGBlockDiagram methodsFor: 'recovered'!
basicGraphObject
    ^self
! !

"ASDBase.ic method 0x20027828; bytecode file offset 0x924260"
!SGBlockDiagram methodsFor: 'recovered'!
supportsEditableLayout
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) controller.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006b490; bytecode file offset 0x96873c"
!SGBlockDiagram methodsFor: 'recovered'!
getHierarchyWrapper
    | recoveredValue0 |
    recoveredValue0 := owner.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007892c; bytecode file offset 0x9757c8"
!SGBlockDiagram methodsFor: 'recovered'!
nameEditable
    ^true
! !

"ASDBase.ic method 0x20079f6c; bytecode file offset 0x97c330"
!SGBlockDiagram methodsFor: 'recovered'!
isJunctionGO
    ^false
! !

"ASDBase.ic method 0x2007bc64; bytecode file offset 0x97c330"
!SGBlockDiagram methodsFor: 'recovered'!
isStorageObject
    ^false
! !

"ASDBase.ic method 0x2007db04; bytecode file offset 0x97c330"
!SGBlockDiagram methodsFor: 'recovered'!
hasEditableLayout
    ^false
! !

"ASDBase.ic method 0x20105eb4; bytecode file offset 0xa02790"
!SGBlockDiagram methodsFor: 'recovered'!
getBDEController
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := owner.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := owner.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBDEController.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2010a710; bytecode file offset 0xa06fd4"
!SGBlockDiagram methodsFor: 'recovered'!
printingSize
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
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
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultPrintingSize.
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
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) printingSize.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201335a8; bytecode file offset 0xa2fe70"
!SGBlockDiagram methodsFor: 'recovered'!
isModelConsistent: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) blockChildren.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280cb04cArg1 | 
    | block280cb04cValue0 block280cb04cValue1 block280cb04cValue2 |
    block280cb04cValue0 := block280cb04cArg1.
    block280cb04cValue1 := (block280cb04cValue0) isConsistent.
    block280cb04cValue2 := (block280cb04cValue1) not.
    block280cb04cValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20135a18; bytecode file offset 0xa322d8"
!SGBlockDiagram methodsFor: 'recovered'!
buildLogic: recoveredArg1 for: recoveredArg2 specification: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSmSpecification.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) prepareForBuildLogic.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildLogic: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20154d70; bytecode file offset 0xa51638"
!SGBlockDiagram methodsFor: 'recovered'!
getGOsIncludedIn: recoveredArg1
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
            recoveredStack0 := super getGOsIncludedIn: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := [:block280cd860Arg1 | 
    | block280cd860Value0 block280cd860Value1 |
    block280cd860Value0 := block280cd860Arg1.
    block280cd860Value1 := (block280cd860Value0) isVisible.
    block280cd860Value1
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015a140; bytecode file offset 0xa569fc"
!SGBlockDiagram methodsFor: 'recovered'!
getPointedConnectionGOsFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) connectionChildren.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkPointedGOsIn: (recoveredStack1) point: (recoveredStack2) ignoreGO: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015f3d0; bytecode file offset 0xa5bc94"
!SGBlockDiagram methodsFor: 'recovered'!
rebuildOrderingNumber
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            lastChildrenNumber := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) sortedChildren.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := [:block280cdd94Arg1 | 
    | block280cdd94Value0 block280cdd94Value1 |
    block280cdd94Value0 := block280cdd94Arg1.
    block280cdd94Value1 := (block280cdd94Value0) updateDrawingOrderBasic.
    block280cdd94Value1
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

"ASDBase.ic method 0x201804b4; bytecode file offset 0xa7cd78"
!SGBlockDiagram methodsFor: 'recovered'!
stateSortBlock
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_80234'.
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
            recoveredStack1 := [:block280d002cArg1 :block280d002cArg2 | 
    | block280d002cValue0 block280d002cValue1 block280d002cValue2 block280d002cValue3 block280d002cValue4 |
    block280d002cValue0 := block280d002cArg1.
    block280d002cValue1 := (block280d002cValue0) surface.
    block280d002cValue2 := block280d002cArg2.
    block280d002cValue3 := (block280d002cValue2) surface.
    block280d002cValue4 := (block280d002cValue1) > (block280d002cValue3).
    block280d002cValue4
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201c81f8; bytecode file offset 0xac4ac0"
!SGBlockDiagram methodsFor: 'recovered'!
sortBlock
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_80234'.
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
            recoveredStack1 := [:block280d4a00Arg1 :block280d4a00Arg2 | 
    | block280d4a00Value0 block280d4a00Value1 block280d4a00Value2 block280d4a00Value3 block280d4a00Value4 block280d4a00Value5 block280d4a00Value6 |
    block280d4a00Value0 := block280d4a00Arg1.
    block280d4a00Value1 := (block280d4a00Value0) basicGraphObject.
    block280d4a00Value2 := (block280d4a00Value1) drawingOrder.
    block280d4a00Value3 := block280d4a00Arg2.
    block280d4a00Value4 := (block280d4a00Value3) basicGraphObject.
    block280d4a00Value5 := (block280d4a00Value4) drawingOrder.
    block280d4a00Value6 := (block280d4a00Value2) < (block280d4a00Value5).
    block280d4a00Value6
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201c8ea0; bytecode file offset 0xac576c"
!SGBlockDiagram methodsFor: 'recovered'!
updateDynamicChildrenInfoForStates
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) blockChildren.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d4c64Arg1 | 
    | block280d4c64Value0 block280d4c64Value1 |
    block280d4c64Value0 := block280d4c64Arg1.
    block280d4c64Value1 := (block280d4c64Value0) isStateBlock.
    block280d4c64Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) prepareForBuildLogic.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d38a4; bytecode file offset 0xad0168"
!SGBlockDiagram methodsFor: 'recovered'!
getPointedBlockGOFor: recoveredArg1 ignoreGO: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) blockChildren.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkPointedGOsIn: (recoveredStack1) point: (recoveredStack2) ignoreGO: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f95c4; bytecode file offset 0xaf5f34"
!SGBlockDiagram methodsFor: 'recovered'!
blockChildren
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) sortedChildren.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := recoveredLocal1.
    recoveredBlock11Value2 := (recoveredBlock11Value0) addBlockChildrenTo: (recoveredBlock11Value1).
    recoveredBlock11Value2
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201f95e0; bytecode file offset 0xaf5f34"
!SGBlockDiagram methodsFor: 'recovered'!
stateChildren
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) sortedChildren.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := recoveredLocal1.
    recoveredBlock11Value2 := (recoveredBlock11Value0) addStateChildrenTo: (recoveredBlock11Value1).
    recoveredBlock11Value2
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201f95fc; bytecode file offset 0xaf5f34"
!SGBlockDiagram methodsFor: 'recovered'!
stateChildrenHierarchical
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) sortedChildren.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := recoveredLocal1.
    recoveredBlock11Value2 := (recoveredBlock11Value0) addStateChildrenHierarchicalTo: (recoveredBlock11Value1).
    recoveredBlock11Value2
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201f9618; bytecode file offset 0xaf5f34"
!SGBlockDiagram methodsFor: 'recovered'!
connectionChildren
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) sortedChildren.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := recoveredLocal1.
    recoveredBlock11Value2 := (recoveredBlock11Value0) addConnectionChildrenTo: (recoveredBlock11Value1).
    recoveredBlock11Value2
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201f9650; bytecode file offset 0xaf5f34"
!SGBlockDiagram methodsFor: 'recovered'!
commentChildren
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) sortedChildren.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := recoveredLocal1.
    recoveredBlock11Value2 := (recoveredBlock11Value0) addCommentChildrenTo: (recoveredBlock11Value1).
    recoveredBlock11Value2
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201f966c; bytecode file offset 0xaf5f34"
!SGBlockDiagram methodsFor: 'recovered'!
otherChildren
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) sortedChildren.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := recoveredLocal1.
    recoveredBlock11Value2 := (recoveredBlock11Value0) addOtherChildrenTo: (recoveredBlock11Value1).
    recoveredBlock11Value2
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x202445c8; bytecode file offset 0xb40e9c"
!SGBlockDiagram methodsFor: 'recovered'!
getPointedGOFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sortedChildren.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
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
            recoveredBlock5Stack3 := recoveredArg1.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) getPointedGOFor: (recoveredBlock5Stack3).
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Stack2.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredLocal1 := recoveredBlock5Stack3.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            (recoveredBlock5Stack2 == nil) ifTrue: [recoveredBlock5PC := 31] ifFalse: [recoveredBlock5PC := 26].
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack1 := recoveredLocal1.
            recoveredBlock5PC := 30.
        ].
        recoveredBlock5Step = 30 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) reverseDo: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x202445dc; bytecode file offset 0xb40e9c"
!SGBlockDiagram methodsFor: 'recovered'!
getMenuGOForPoint: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) children.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
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
            recoveredBlock5Stack3 := recoveredArg1.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) getMenuGOForPoint: (recoveredBlock5Stack3).
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Stack2.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredLocal1 := recoveredBlock5Stack3.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            (recoveredBlock5Stack2 == nil) ifTrue: [recoveredBlock5PC := 31] ifFalse: [recoveredBlock5PC := 26].
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack1 := recoveredLocal1.
            recoveredBlock5PC := 30.
        ].
        recoveredBlock5Step = 30 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) reverseDo: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x2024ec04; bytecode file offset 0xb4b4c8"
!SGBlockDiagram methodsFor: 'recovered'!
controller
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super controller.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) manager.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 30].
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
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) manager.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026a704; bytecode file offset 0xb66fdc"
!SGBlockDiagram methodsFor: 'recovered'!
sortedChildren
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280e01ccArg1 | 
    | block280e01ccValue0 block280e01ccValue1 block280e01ccValue2 |
    block280e01ccValue0 := block280e01ccArg1.
    block280e01ccValue1 := (block280e01ccValue0) basicGraphObject.
    block280e01ccValue2 := (block280e01ccValue1) isStateOrJunction.
    block280e01ccValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortBlock.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) stateSortBlock.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20291f80; bytecode file offset 0xb8e854"
!SGBlockDiagram methodsFor: 'recovered'!
methodCalls
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ('hw') == ('call_79440').
    recoveredValue1 := Array.
    recoveredValue2 := (recoveredValue1) new.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) children.
    recoveredValue4 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 |
    recoveredBlock18Value0 := recoveredLocal1.
    recoveredBlock18Value1 := recoveredBlock18Arg1.
    recoveredBlock18Value2 := (recoveredBlock18Value1) methodCallsCurrentLevel.
    recoveredBlock18Value3 := (recoveredBlock18Value0) , (recoveredBlock18Value2).
    recoveredBlock18Value4 := recoveredBlock18Value3.
    recoveredLocal1 := recoveredBlock18Value4.
    recoveredBlock18Value3
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20310050; bytecode file offset 0xc0c91c"
!SGBlockDiagram methodsFor: 'recovered'!
checkIfAllConnectedToSameResultConn: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_80029'.
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
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) someElement.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) resultGO.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 recoveredBlock27Value3 recoveredBlock27Value4 |
    recoveredBlock27Value0 := recoveredBlock27Arg1.
    recoveredBlock27Value1 := (recoveredBlock27Value0) resultGO.
    recoveredBlock27Value2 := recoveredLocal1.
    recoveredBlock27Value3 := (recoveredBlock27Value1) equals: (recoveredBlock27Value2).
    recoveredBlock27Value4 := (recoveredBlock27Value3) not.
    recoveredBlock27Value4
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := [
    ^true
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20369ac8; bytecode file offset 0xc663a0"
!SGBlockDiagram methodsFor: 'recovered'!
buildLogic: recoveredArg1 for: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_92560'.
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
            (recoveredStack0) updateDynamicChildrenInfoForStates.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) blockChildren.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [:block280f1080Arg1 :block280f1080Arg2 | 
    | block280f1080Value0 block280f1080Value1 block280f1080Value2 |
    block280f1080Value0 := block280f1080Arg1.
    block280f1080Value1 := block280f1080Arg2.
    block280f1080Value2 := (block280f1080Value0) < (block280f1080Value1).
    block280f1080Value2
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 |
    recoveredBlock26Value0 := recoveredBlock26Arg1.
    recoveredBlock26Value1 := recoveredArg1.
    recoveredBlock26Value2 := recoveredArg2.
    recoveredBlock26Value3 := (recoveredBlock26Value0) buildLogic: (recoveredBlock26Value1) for: (recoveredBlock26Value2).
    recoveredBlock26Value3
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) connectionChildren.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := [:recoveredBlock47Arg1 | 
    | recoveredBlock47Value0 recoveredBlock47Value1 recoveredBlock47Value2 recoveredBlock47Value3 |
    recoveredBlock47Value0 := recoveredBlock47Arg1.
    recoveredBlock47Value1 := recoveredArg1.
    recoveredBlock47Value2 := recoveredArg2.
    recoveredBlock47Value3 := (recoveredBlock47Value0) buildLogic: (recoveredBlock47Value1) for: (recoveredBlock47Value2).
    recoveredBlock47Value3
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203abcc4; bytecode file offset 0xca859c"
!SGBlockDiagram methodsFor: 'recovered'!
checkPointedGOsIn: recoveredArg1 point: recoveredArg2 ignoreGO: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Local1 recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Stack3 := recoveredArg2.
            recoveredBlock13PC := 25.
        ].
        recoveredBlock13Step = 25 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) getPointedGOFor: (recoveredBlock13Stack3).
            recoveredBlock13PC := 26.
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Stack2.
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack3.
            recoveredBlock13PC := 28.
        ].
        recoveredBlock13Step = 28 ifTrue: [
            (recoveredBlock13Stack2 == nil) ifTrue: [recoveredBlock13PC := 71] ifFalse: [recoveredBlock13PC := 32].
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13Stack2 := 'hw'.
            recoveredBlock13PC := 34.
        ].
        recoveredBlock13Step = 34 ifTrue: [
            recoveredBlock13Stack3 := 'call_80920'.
            recoveredBlock13PC := 36.
        ].
        recoveredBlock13Step = 36 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) == (recoveredBlock13Stack3).
            recoveredBlock13PC := 37.
        ].
        recoveredBlock13Step = 37 ifTrue: [
            recoveredBlock13PC := 38.
        ].
        recoveredBlock13Step = 38 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 39.
        ].
        recoveredBlock13Step = 39 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) basicGraphObject.
            recoveredBlock13PC := 41.
        ].
        recoveredBlock13Step = 41 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) isVisible.
            recoveredBlock13PC := 43.
        ].
        recoveredBlock13Step = 43 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 46] ifFalse: [recoveredBlock13PC := 71].
        ].
        recoveredBlock13Step = 46 ifTrue: [
            recoveredBlock13Stack2 := recoveredArg3.
            recoveredBlock13PC := 49.
        ].
        recoveredBlock13Step = 49 ifTrue: [
            (recoveredBlock13Stack2 == nil) ifTrue: [recoveredBlock13PC := 64] ifFalse: [recoveredBlock13PC := 52].
        ].
        recoveredBlock13Step = 52 ifTrue: [
            recoveredBlock13Stack2 := recoveredArg3.
            recoveredBlock13PC := 55.
        ].
        recoveredBlock13Step = 55 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) basicGraphObject.
            recoveredBlock13PC := 57.
        ].
        recoveredBlock13Step = 57 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 58.
        ].
        recoveredBlock13Step = 58 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) basicGraphObject.
            recoveredBlock13PC := 60.
        ].
        recoveredBlock13Step = 60 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) ~= (recoveredBlock13Stack3).
            recoveredBlock13PC := 61.
        ].
        recoveredBlock13Step = 61 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 64] ifFalse: [recoveredBlock13PC := 71].
        ].
        recoveredBlock13Step = 64 ifTrue: [
            recoveredBlock13PC := 65.
        ].
        recoveredBlock13Step = 65 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 68.
        ].
        recoveredBlock13Step = 68 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 69.
        ].
        recoveredBlock13Step = 69 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) add: (recoveredBlock13Stack2).
            recoveredBlock13PC := 71.
        ].
        recoveredBlock13Step = 71 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue2) reverseDo: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2041cfe0; bytecode file offset 0xd198dc"
!SGBlockDiagram methodsFor: 'recovered'!
createStorageObjectsFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'wb_sifting'.
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
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) blockChildren.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := [:block280fbfdcArg1 | 
    | block280fbfdcValue0 block280fbfdcValue1 |
    block280fbfdcValue0 := block280fbfdcArg1.
    block280fbfdcValue1 := (block280fbfdcValue0) storageObject.
    block280fbfdcValue1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := [:block280fc000Arg1 | 
    | block280fc000Value0 block280fc000Value1 |
    block280fc000Value0 := block280fc000Arg1.
    block280fc000Value1 := (block280fc000Value0) notNil.
    block280fc000Value1
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) select: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) asArray.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) blocks: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) connectionChildren.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := [:block280fc024Arg1 | 
    | block280fc024Value0 block280fc024Value1 |
    block280fc024Value0 := block280fc024Arg1.
    block280fc024Value1 := (block280fc024Value0) storageObject.
    block280fc024Value1
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := [:block280fc048Arg1 | 
    | block280fc048Value0 block280fc048Value1 |
    block280fc048Value0 := block280fc048Arg1.
    block280fc048Value1 := (block280fc048Value0) notNil.
    block280fc048Value1
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) select: (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) asArray.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) connections: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := (recoveredStack2) otherChildren.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := [:block280fc06cArg1 | 
    | block280fc06cValue0 block280fc06cValue1 |
    block280fc06cValue0 := block280fc06cArg1.
    block280fc06cValue1 := (block280fc06cValue0) storageObject.
    block280fc06cValue1
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := [:block280fc090Arg1 | 
    | block280fc090Value0 block280fc090Value1 |
    block280fc090Value0 := block280fc090Arg1.
    block280fc090Value1 := (block280fc090Value0) notNil.
    block280fc090Value1
].
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := (recoveredStack2) select: (recoveredStack3).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := (recoveredStack2) asArray.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) others: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204a02fc; bytecode file offset 0xd9cbf0"
!SGBlockDiagram methodsFor: 'recovered'!
prepareForBuildLogic
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) blockChildren.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block281045a8Arg1 :block281045a8Arg2 | 
    | block281045a8Local1 block281045a8Local2 block281045a8Stack0 block281045a8Stack1 block281045a8Stack2 block281045a8Stack3 block281045a8PC block281045a8Step block281045a8Done block281045a8Result |
    block281045a8Stack0 := self.
    block281045a8PC := 4.
    block281045a8Done := false.
    [block281045a8Done not] whileTrue: [
        block281045a8Step := block281045a8PC.
        block281045a8Step = 4 ifTrue: [
            block281045a8Stack1 := block281045a8Arg1.
            block281045a8PC := 5.
        ].
        block281045a8Step = 5 ifTrue: [
            block281045a8Stack1 := (block281045a8Stack1) surface.
            block281045a8PC := 6.
        ].
        block281045a8Step = 6 ifTrue: [
            block281045a8Local2 := block281045a8Stack1.
            block281045a8PC := 7.
        ].
        block281045a8Step = 7 ifTrue: [
            block281045a8Stack1 := block281045a8Arg2.
            block281045a8PC := 8.
        ].
        block281045a8Step = 8 ifTrue: [
            block281045a8Stack1 := (block281045a8Stack1) surface.
            block281045a8PC := 9.
        ].
        block281045a8Step = 9 ifTrue: [
            block281045a8Local1 := block281045a8Stack1.
            block281045a8PC := 10.
        ].
        block281045a8Step = 10 ifTrue: [
            block281045a8Stack1 := block281045a8Local2.
            block281045a8PC := 11.
        ].
        block281045a8Step = 11 ifTrue: [
            block281045a8Stack2 := block281045a8Local1.
            block281045a8PC := 12.
        ].
        block281045a8Step = 12 ifTrue: [
            (block281045a8Stack1 ~~ block281045a8Stack2) ifTrue: [block281045a8PC := 24] ifFalse: [block281045a8PC := 16].
        ].
        block281045a8Step = 16 ifTrue: [
            block281045a8Stack1 := block281045a8Arg1.
            block281045a8PC := 17.
        ].
        block281045a8Step = 17 ifTrue: [
            block281045a8Stack1 := (block281045a8Stack1) label.
            block281045a8PC := 18.
        ].
        block281045a8Step = 18 ifTrue: [
            block281045a8Stack2 := block281045a8Arg2.
            block281045a8PC := 19.
        ].
        block281045a8Step = 19 ifTrue: [
            block281045a8Stack2 := (block281045a8Stack2) label.
            block281045a8PC := 20.
        ].
        block281045a8Step = 20 ifTrue: [
            block281045a8Stack1 := (block281045a8Stack1) < (block281045a8Stack2).
            block281045a8PC := 21.
        ].
        block281045a8Step = 21 ifTrue: [
            block281045a8PC := 27.
        ].
        block281045a8Step = 24 ifTrue: [
            block281045a8Stack1 := block281045a8Local2.
            block281045a8PC := 25.
        ].
        block281045a8Step = 25 ifTrue: [
            block281045a8Stack2 := block281045a8Local1.
            block281045a8PC := 26.
        ].
        block281045a8Step = 26 ifTrue: [
            block281045a8Stack1 := (block281045a8Stack1) < (block281045a8Stack2).
            block281045a8PC := 27.
        ].
        block281045a8Step = 27 ifTrue: [
            block281045a8Result := block281045a8Stack1.
            block281045a8Done := true.
        ].
    ].
    block281045a8Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := [:block281045ccArg1 | 
    | block281045ccValue0 block281045ccValue1 block281045ccValue2 |
    block281045ccValue0 := block281045ccArg1.
    block281045ccValue1 := (block281045ccValue0) basicGraphObject.
    block281045ccValue2 := (block281045ccValue1) resetDynamic.
    block281045ccValue2
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 128.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeFirst.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicFrame.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := [:recoveredBlock79Arg1 | 
    | recoveredBlock79Value0 recoveredBlock79Value1 recoveredBlock79Value2 recoveredBlock79Value3 |
    recoveredBlock79Value0 := recoveredBlock79Arg1.
    recoveredBlock79Value1 := (recoveredBlock79Value0) logicFrame.
    recoveredBlock79Value2 := recoveredLocal3.
    recoveredBlock79Value3 := (recoveredBlock79Value1) contains: (recoveredBlock79Value2).
    recoveredBlock79Value3
].
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) addDynamicChildren: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 135].
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204d3aa8; bytecode file offset 0xdd0394"
!SGBlockDiagram methodsFor: 'recovered'!
displayOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RBGraphicObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionGraphicsCompatibilityMode.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block28107554Arg1 | 
    | block28107554Value0 block28107554Value1 block28107554Value2 |
    block28107554Value0 := block28107554Arg1.
    block28107554Value1 := (block28107554Value0) basicGraphObject.
    block28107554Value2 := (block28107554Value1) isStateOrJunction.
    block28107554Value2
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 'call_79840'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Stack0 recoveredBlock38Stack1 recoveredBlock38Stack2 recoveredBlock38Stack3 recoveredBlock38PC recoveredBlock38Step recoveredBlock38Done recoveredBlock38Result |
    recoveredBlock38Stack0 := self.
    recoveredBlock38PC := 44.
    recoveredBlock38Done := false.
    [recoveredBlock38Done not] whileTrue: [
        recoveredBlock38Step := recoveredBlock38PC.
        recoveredBlock38Step = 44 ifTrue: [
            recoveredBlock38Stack1 := nil.
            recoveredBlock38PC := 45.
        ].
        recoveredBlock38Step = 45 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Arg1.
            recoveredBlock38PC := 46.
        ].
        recoveredBlock38Step = 46 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) basicGraphObject.
            recoveredBlock38PC := 48.
        ].
        recoveredBlock38Step = 48 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) isConnectionGO.
            recoveredBlock38PC := 50.
        ].
        recoveredBlock38Step = 50 ifTrue: [
            (recoveredBlock38Stack2) ifTrue: [recoveredBlock38PC := 54] ifFalse: [recoveredBlock38PC := 61].
        ].
        recoveredBlock38Step = 54 ifTrue: [
            recoveredBlock38PC := 55.
        ].
        recoveredBlock38Step = 55 ifTrue: [
            recoveredBlock38Stack1 := recoveredBlock38Arg1.
            recoveredBlock38PC := 56.
        ].
        recoveredBlock38Step = 56 ifTrue: [
            recoveredBlock38Stack2 := recoveredArg1.
            recoveredBlock38PC := 59.
        ].
        recoveredBlock38Step = 59 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) displayOn: (recoveredBlock38Stack2).
            recoveredBlock38PC := 61.
        ].
        recoveredBlock38Step = 61 ifTrue: [
            recoveredBlock38Result := recoveredBlock38Stack1.
            recoveredBlock38Done := true.
        ].
    ].
    recoveredBlock38Result
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := [:recoveredBlock66Arg1 | 
    | recoveredBlock66Stack0 recoveredBlock66Stack1 recoveredBlock66Stack2 recoveredBlock66Stack3 recoveredBlock66PC recoveredBlock66Step recoveredBlock66Done recoveredBlock66Result |
    recoveredBlock66Stack0 := self.
    recoveredBlock66PC := 72.
    recoveredBlock66Done := false.
    [recoveredBlock66Done not] whileTrue: [
        recoveredBlock66Step := recoveredBlock66PC.
        recoveredBlock66Step = 72 ifTrue: [
            recoveredBlock66Stack1 := nil.
            recoveredBlock66PC := 73.
        ].
        recoveredBlock66Step = 73 ifTrue: [
            recoveredBlock66Stack2 := recoveredBlock66Arg1.
            recoveredBlock66PC := 74.
        ].
        recoveredBlock66Step = 74 ifTrue: [
            recoveredBlock66Stack2 := (recoveredBlock66Stack2) basicGraphObject.
            recoveredBlock66PC := 76.
        ].
        recoveredBlock66Step = 76 ifTrue: [
            recoveredBlock66Stack2 := (recoveredBlock66Stack2) isConnectionGO.
            recoveredBlock66PC := 78.
        ].
        recoveredBlock66Step = 78 ifTrue: [
            (recoveredBlock66Stack2) ifTrue: [recoveredBlock66PC := 97] ifFalse: [recoveredBlock66PC := 82].
        ].
        recoveredBlock66Step = 82 ifTrue: [
            recoveredBlock66Stack2 := recoveredBlock66Arg1.
            recoveredBlock66PC := 83.
        ].
        recoveredBlock66Step = 83 ifTrue: [
            recoveredBlock66Stack2 := (recoveredBlock66Stack2) basicGraphObject.
            recoveredBlock66PC := 85.
        ].
        recoveredBlock66Step = 85 ifTrue: [
            recoveredBlock66Stack2 := (recoveredBlock66Stack2) isTextGO.
            recoveredBlock66PC := 87.
        ].
        recoveredBlock66Step = 87 ifTrue: [
            (recoveredBlock66Stack2) ifTrue: [recoveredBlock66PC := 90] ifFalse: [recoveredBlock66PC := 97].
        ].
        recoveredBlock66Step = 90 ifTrue: [
            recoveredBlock66PC := 91.
        ].
        recoveredBlock66Step = 91 ifTrue: [
            recoveredBlock66Stack1 := recoveredBlock66Arg1.
            recoveredBlock66PC := 92.
        ].
        recoveredBlock66Step = 92 ifTrue: [
            recoveredBlock66Stack2 := recoveredArg1.
            recoveredBlock66PC := 95.
        ].
        recoveredBlock66Step = 95 ifTrue: [
            recoveredBlock66Stack1 := (recoveredBlock66Stack1) displayOn: (recoveredBlock66Stack2).
            recoveredBlock66PC := 97.
        ].
        recoveredBlock66Step = 97 ifTrue: [
            recoveredBlock66Result := recoveredBlock66Stack1.
            recoveredBlock66Done := true.
        ].
    ].
    recoveredBlock66Result
].
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := [:recoveredBlock102Arg1 | 
    | recoveredBlock102Stack0 recoveredBlock102Stack1 recoveredBlock102Stack2 recoveredBlock102Stack3 recoveredBlock102PC recoveredBlock102Step recoveredBlock102Done recoveredBlock102Result |
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
            recoveredBlock102Stack2 := (recoveredBlock102Stack2) basicGraphObject.
            recoveredBlock102PC := 112.
        ].
        recoveredBlock102Step = 112 ifTrue: [
            recoveredBlock102Stack2 := (recoveredBlock102Stack2) isConnectionGO.
            recoveredBlock102PC := 114.
        ].
        recoveredBlock102Step = 114 ifTrue: [
            (recoveredBlock102Stack2) ifTrue: [recoveredBlock102PC := 133] ifFalse: [recoveredBlock102PC := 118].
        ].
        recoveredBlock102Step = 118 ifTrue: [
            recoveredBlock102Stack2 := recoveredBlock102Arg1.
            recoveredBlock102PC := 119.
        ].
        recoveredBlock102Step = 119 ifTrue: [
            recoveredBlock102Stack2 := (recoveredBlock102Stack2) basicGraphObject.
            recoveredBlock102PC := 121.
        ].
        recoveredBlock102Step = 121 ifTrue: [
            recoveredBlock102Stack2 := (recoveredBlock102Stack2) isTextGO.
            recoveredBlock102PC := 123.
        ].
        recoveredBlock102Step = 123 ifTrue: [
            (recoveredBlock102Stack2) ifTrue: [recoveredBlock102PC := 133] ifFalse: [recoveredBlock102PC := 126].
        ].
        recoveredBlock102Step = 126 ifTrue: [
            recoveredBlock102PC := 127.
        ].
        recoveredBlock102Step = 127 ifTrue: [
            recoveredBlock102Stack1 := recoveredBlock102Arg1.
            recoveredBlock102PC := 128.
        ].
        recoveredBlock102Step = 128 ifTrue: [
            recoveredBlock102Stack2 := recoveredArg1.
            recoveredBlock102PC := 131.
        ].
        recoveredBlock102Step = 131 ifTrue: [
            recoveredBlock102Stack1 := (recoveredBlock102Stack1) displayOn: (recoveredBlock102Stack2).
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
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) sortedChildren.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := [:recoveredBlock140Arg1 | 
    | recoveredBlock140Value0 recoveredBlock140Value1 recoveredBlock140Value2 |
    recoveredBlock140Value0 := recoveredBlock140Arg1.
    recoveredBlock140Value1 := recoveredArg1.
    recoveredBlock140Value2 := (recoveredBlock140Value0) displayOn: (recoveredBlock140Value1).
    recoveredBlock140Value2
].
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2061ff6c; bytecode file offset 0xf1c8d4"
!SGBlockDiagram methodsFor: 'recovered'!
replaceGO: recoveredArg1 onConnections: recoveredArg2 insertInLine: recoveredArg3 pointedPosition: recoveredArg4 display: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Muzaffar'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_65573'.
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
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkIfAllConnectedToSameResultConn: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicGraphObject.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := 'the block'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) getFreePositionForBlock: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) startGO.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) endGO.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicGraphObject.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) allowedToAddOnConnection: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 522].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicGraphObject.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInsertableInLine.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 522].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := [:recoveredBlock129Arg1 :recoveredBlock129Arg2 | 
    | recoveredBlock129Local1 recoveredBlock129Local2 recoveredBlock129Local3 recoveredBlock129Local4 recoveredBlock129Local5 recoveredBlock129Local6 recoveredBlock129Local7 recoveredBlock129Local8 recoveredBlock129Local9 recoveredBlock129Stack0 recoveredBlock129Stack1 recoveredBlock129Stack2 recoveredBlock129Stack3 recoveredBlock129Stack4 recoveredBlock129Stack5 recoveredBlock129PC recoveredBlock129Step recoveredBlock129Done recoveredBlock129Result |
    recoveredBlock129Stack0 := self.
    recoveredBlock129PC := 136.
    recoveredBlock129Done := false.
    [recoveredBlock129Done not] whileTrue: [
        recoveredBlock129Step := recoveredBlock129PC.
        recoveredBlock129Step = 136 ifTrue: [
            recoveredBlock129Stack1 := nil.
            recoveredBlock129PC := 137.
        ].
        recoveredBlock129Step = 137 ifTrue: [
            recoveredBlock129Stack2 := recoveredArg1.
            recoveredBlock129PC := 140.
        ].
        recoveredBlock129Step = 140 ifTrue: [
            recoveredBlock129Stack2 := (recoveredBlock129Stack2) basicGraphObject.
            recoveredBlock129PC := 142.
        ].
        recoveredBlock129Step = 142 ifTrue: [
            recoveredBlock129Stack2 := (recoveredBlock129Stack2) class.
            recoveredBlock129PC := 144.
        ].
        recoveredBlock129Step = 144 ifTrue: [
            recoveredBlock129Stack3 := recoveredBlock129Arg1.
            recoveredBlock129PC := 146.
        ].
        recoveredBlock129Step = 146 ifTrue: [
            recoveredBlock129Stack3 := (recoveredBlock129Stack3) basicGraphObject.
            recoveredBlock129PC := 148.
        ].
        recoveredBlock129Step = 148 ifTrue: [
            recoveredBlock129Stack2 := (recoveredBlock129Stack2) allowedToAddOnConnection: (recoveredBlock129Stack3).
            recoveredBlock129PC := 150.
        ].
        recoveredBlock129Step = 150 ifTrue: [
            (recoveredBlock129Stack2) ifTrue: [recoveredBlock129PC := 154] ifFalse: [recoveredBlock129PC := 519].
        ].
        recoveredBlock129Step = 154 ifTrue: [
            recoveredBlock129PC := 155.
        ].
        recoveredBlock129Step = 155 ifTrue: [
            recoveredBlock129Stack1 := recoveredBlock129Arg1.
            recoveredBlock129PC := 157.
        ].
        recoveredBlock129Step = 157 ifTrue: [
            recoveredBlock129Stack1 := (recoveredBlock129Stack1) startGO.
            recoveredBlock129PC := 159.
        ].
        recoveredBlock129Step = 159 ifTrue: [
            recoveredBlock129Stack2 := recoveredBlock129Stack1.
            recoveredBlock129PC := 160.
        ].
        recoveredBlock129Step = 160 ifTrue: [
            recoveredBlock129Local7 := recoveredBlock129Stack2.
            recoveredBlock129PC := 162.
        ].
        recoveredBlock129Step = 162 ifTrue: [
            (recoveredBlock129Stack1 ~~ nil) ifTrue: [recoveredBlock129PC := 168] ifFalse: [recoveredBlock129PC := 166].
        ].
        recoveredBlock129Step = 166 ifTrue: [
            recoveredBlock129Stack1 := nil.
            recoveredBlock129PC := 167.
        ].
        recoveredBlock129Step = 167 ifTrue: [
            ^recoveredBlock129Stack1
        ].
        recoveredBlock129Step = 168 ifTrue: [
            recoveredBlock129Stack1 := recoveredBlock129Arg1.
            recoveredBlock129PC := 170.
        ].
        recoveredBlock129Step = 170 ifTrue: [
            recoveredBlock129Stack1 := (recoveredBlock129Stack1) endGO.
            recoveredBlock129PC := 172.
        ].
        recoveredBlock129Step = 172 ifTrue: [
            recoveredBlock129Stack2 := recoveredBlock129Stack1.
            recoveredBlock129PC := 173.
        ].
        recoveredBlock129Step = 173 ifTrue: [
            recoveredBlock129Local6 := recoveredBlock129Stack2.
            recoveredBlock129PC := 175.
        ].
        recoveredBlock129Step = 175 ifTrue: [
            (recoveredBlock129Stack1 ~~ nil) ifTrue: [recoveredBlock129PC := 180] ifFalse: [recoveredBlock129PC := 178].
        ].
        recoveredBlock129Step = 178 ifTrue: [
            recoveredBlock129Stack1 := nil.
            recoveredBlock129PC := 179.
        ].
        recoveredBlock129Step = 179 ifTrue: [
            ^recoveredBlock129Stack1
        ].
        recoveredBlock129Step = 180 ifTrue: [
            recoveredBlock129Stack1 := recoveredBlock129Local7.
            recoveredBlock129PC := 182.
        ].
        recoveredBlock129Step = 182 ifTrue: [
            recoveredBlock129Stack1 := (recoveredBlock129Stack1) getBlock.
            recoveredBlock129PC := 184.
        ].
        recoveredBlock129Step = 184 ifTrue: [
            recoveredBlock129Stack2 := recoveredArg1.
            recoveredBlock129PC := 187.
        ].
        recoveredBlock129Step = 187 ifTrue: [
            (recoveredBlock129Stack1 ~~ recoveredBlock129Stack2) ifTrue: [recoveredBlock129PC := 192] ifFalse: [recoveredBlock129PC := 190].
        ].
        recoveredBlock129Step = 190 ifTrue: [
            recoveredBlock129Stack1 := nil.
            recoveredBlock129PC := 191.
        ].
        recoveredBlock129Step = 191 ifTrue: [
            ^recoveredBlock129Stack1
        ].
        recoveredBlock129Step = 192 ifTrue: [
            recoveredBlock129Stack1 := recoveredBlock129Local6.
            recoveredBlock129PC := 194.
        ].
        recoveredBlock129Step = 194 ifTrue: [
            recoveredBlock129Stack1 := (recoveredBlock129Stack1) getBlock.
            recoveredBlock129PC := 196.
        ].
        recoveredBlock129Step = 196 ifTrue: [
            recoveredBlock129Stack2 := recoveredArg1.
            recoveredBlock129PC := 199.
        ].
        recoveredBlock129Step = 199 ifTrue: [
            (recoveredBlock129Stack1 ~~ recoveredBlock129Stack2) ifTrue: [recoveredBlock129PC := 204] ifFalse: [recoveredBlock129PC := 202].
        ].
        recoveredBlock129Step = 202 ifTrue: [
            recoveredBlock129Stack1 := nil.
            recoveredBlock129PC := 203.
        ].
        recoveredBlock129Step = 203 ifTrue: [
            ^recoveredBlock129Stack1
        ].
        recoveredBlock129Step = 204 ifTrue: [
            recoveredBlock129Stack1 := recoveredBlock129Local7.
            recoveredBlock129PC := 206.
        ].
        recoveredBlock129Step = 206 ifTrue: [
            recoveredBlock129Stack1 := (recoveredBlock129Stack1) isArgumentPin.
            recoveredBlock129PC := 208.
        ].
        recoveredBlock129Step = 208 ifTrue: [
            (recoveredBlock129Stack1) ifTrue: [recoveredBlock129PC := 212] ifFalse: [recoveredBlock129PC := 224].
        ].
        recoveredBlock129Step = 212 ifTrue: [
            recoveredBlock129Stack1 := recoveredBlock129Local7.
            recoveredBlock129PC := 214.
        ].
        recoveredBlock129Step = 214 ifTrue: [
            recoveredBlock129Local5 := recoveredBlock129Stack1.
            recoveredBlock129PC := 216.
        ].
        recoveredBlock129Step = 216 ifTrue: [
            recoveredBlock129Stack1 := recoveredBlock129Local6.
            recoveredBlock129PC := 218.
        ].
        recoveredBlock129Step = 218 ifTrue: [
            recoveredBlock129Local4 := recoveredBlock129Stack1.
            recoveredBlock129PC := 219.
        ].
        recoveredBlock129Step = 219 ifTrue: [
            recoveredBlock129Stack1 := true.
            recoveredBlock129PC := 220.
        ].
        recoveredBlock129Step = 220 ifTrue: [
            recoveredBlock129Local1 := recoveredBlock129Stack1.
            recoveredBlock129PC := 221.
        ].
        recoveredBlock129Step = 221 ifTrue: [
            recoveredBlock129PC := 233.
        ].
        recoveredBlock129Step = 224 ifTrue: [
            recoveredBlock129Stack1 := recoveredBlock129Local6.
            recoveredBlock129PC := 226.
        ].
        recoveredBlock129Step = 226 ifTrue: [
            recoveredBlock129Local5 := recoveredBlock129Stack1.
            recoveredBlock129PC := 228.
        ].
        recoveredBlock129Step = 228 ifTrue: [
            recoveredBlock129Stack1 := recoveredBlock129Local7.
            recoveredBlock129PC := 230.
        ].
        recoveredBlock129Step = 230 ifTrue: [
            recoveredBlock129Local4 := recoveredBlock129Stack1.
            recoveredBlock129PC := 231.
        ].
        recoveredBlock129Step = 231 ifTrue: [
            recoveredBlock129Stack1 := false.
            recoveredBlock129PC := 232.
        ].
        recoveredBlock129Step = 232 ifTrue: [
            recoveredBlock129Local1 := recoveredBlock129Stack1.
            recoveredBlock129PC := 233.
        ].
        recoveredBlock129Step = 233 ifTrue: [
            recoveredBlock129Stack1 := recoveredBlock129Arg1.
            recoveredBlock129PC := 235.
        ].
        recoveredBlock129Step = 235 ifTrue: [
            recoveredBlock129Stack2 := recoveredBlock129Arg1.
            recoveredBlock129PC := 237.
        ].
        recoveredBlock129Step = 237 ifTrue: [
            recoveredBlock129Stack3 := false.
            recoveredBlock129PC := 238.
        ].
        recoveredBlock129Step = 238 ifTrue: [
            (recoveredBlock129Stack1) removeGO: (recoveredBlock129Stack2) display: (recoveredBlock129Stack3).
            recoveredBlock129PC := 240.
        ].
        recoveredBlock129Step = 240 ifTrue: [
            recoveredBlock129Stack1 := recoveredLocal1.
            recoveredBlock129PC := 243.
        ].
        recoveredBlock129Step = 243 ifTrue: [
            recoveredBlock129Stack2 := recoveredBlock129Arg1.
            recoveredBlock129PC := 245.
        ].
        recoveredBlock129Step = 245 ifTrue: [
            recoveredBlock129Stack2 := (recoveredBlock129Stack2) giveRedisplayRects.
            recoveredBlock129PC := 247.
        ].
        recoveredBlock129Step = 247 ifTrue: [
            recoveredBlock129Stack3 := recoveredArg1.
            recoveredBlock129PC := 250.
        ].
        recoveredBlock129Step = 250 ifTrue: [
            recoveredBlock129Stack3 := (recoveredBlock129Stack3) giveRedisplayRects.
            recoveredBlock129PC := 252.
        ].
        recoveredBlock129Step = 252 ifTrue: [
            recoveredBlock129Stack2 := (recoveredBlock129Stack2) , (recoveredBlock129Stack3).
            recoveredBlock129PC := 254.
        ].
        recoveredBlock129Step = 254 ifTrue: [
            (recoveredBlock129Stack1) addAll: (recoveredBlock129Stack2).
            recoveredBlock129PC := 256.
        ].
        recoveredBlock129Step = 256 ifTrue: [
            recoveredBlock129Stack1 := recoveredArg1.
            recoveredBlock129PC := 259.
        ].
        recoveredBlock129Step = 259 ifTrue: [
            recoveredBlock129Stack1 := (recoveredBlock129Stack1) interfaceElementGOs.
            recoveredBlock129PC := 261.
        ].
        recoveredBlock129Step = 261 ifTrue: [
            recoveredBlock129Stack2 := [:block2811ec84Arg1 | 
    | block2811ec84Stack0 block2811ec84Stack1 block2811ec84Stack2 block2811ec84Stack3 block2811ec84PC block2811ec84Step block2811ec84Done block2811ec84Result |
    block2811ec84Stack0 := self.
    block2811ec84PC := 4.
    block2811ec84Done := false.
    [block2811ec84Done not] whileTrue: [
        block2811ec84Step := block2811ec84PC.
        block2811ec84Step = 4 ifTrue: [
            block2811ec84Stack1 := false.
            block2811ec84PC := 5.
        ].
        block2811ec84Step = 5 ifTrue: [
            block2811ec84Stack2 := block2811ec84Arg1.
            block2811ec84PC := 6.
        ].
        block2811ec84Step = 6 ifTrue: [
            block2811ec84Stack2 := (block2811ec84Stack2) externalConnectorGO.
            block2811ec84PC := 8.
        ].
        block2811ec84Step = 8 ifTrue: [
            block2811ec84Stack2 := (block2811ec84Stack2) basicGraphObject.
            block2811ec84PC := 10.
        ].
        block2811ec84Step = 10 ifTrue: [
            block2811ec84Stack2 := (block2811ec84Stack2) isResultPin.
            block2811ec84PC := 12.
        ].
        block2811ec84Step = 12 ifTrue: [
            (block2811ec84Stack2) ifTrue: [block2811ec84PC := 16] ifFalse: [block2811ec84PC := 20].
        ].
        block2811ec84Step = 16 ifTrue: [
            block2811ec84PC := 17.
        ].
        block2811ec84Step = 17 ifTrue: [
            block2811ec84Stack1 := block2811ec84Arg1.
            block2811ec84PC := 18.
        ].
        block2811ec84Step = 18 ifTrue: [
            block2811ec84Stack1 := (block2811ec84Stack1) isVisible.
            block2811ec84PC := 20.
        ].
        block2811ec84Step = 20 ifTrue: [
            block2811ec84Result := block2811ec84Stack1.
            block2811ec84Done := true.
        ].
    ].
    block2811ec84Result
].
            recoveredBlock129PC := 263.
        ].
        recoveredBlock129Step = 263 ifTrue: [
            recoveredBlock129PC := 283.
        ].
        recoveredBlock129Step = 283 ifTrue: [
            recoveredBlock129Stack3 := [].
            recoveredBlock129PC := 285.
        ].
        recoveredBlock129Step = 285 ifTrue: [
            recoveredBlock129Stack1 := (recoveredBlock129Stack1) detect: (recoveredBlock129Stack2) ifNone: (recoveredBlock129Stack3).
            recoveredBlock129PC := 287.
        ].
        recoveredBlock129Step = 287 ifTrue: [
            recoveredBlock129Local3 := recoveredBlock129Stack1.
            recoveredBlock129PC := 288.
        ].
        recoveredBlock129Step = 288 ifTrue: [
            recoveredBlock129Stack1 := recoveredArg1.
            recoveredBlock129PC := 291.
        ].
        recoveredBlock129Step = 291 ifTrue: [
            recoveredBlock129Stack1 := (recoveredBlock129Stack1) interfaceElementGOs.
            recoveredBlock129PC := 293.
        ].
        recoveredBlock129Step = 293 ifTrue: [
            recoveredBlock129Stack2 := [:block2811eca8Arg1 | 
    | block2811eca8Stack0 block2811eca8Stack1 block2811eca8Stack2 block2811eca8Stack3 block2811eca8PC block2811eca8Step block2811eca8Done block2811eca8Result |
    block2811eca8Stack0 := self.
    block2811eca8PC := 4.
    block2811eca8Done := false.
    [block2811eca8Done not] whileTrue: [
        block2811eca8Step := block2811eca8PC.
        block2811eca8Step = 4 ifTrue: [
            block2811eca8Stack1 := false.
            block2811eca8PC := 5.
        ].
        block2811eca8Step = 5 ifTrue: [
            block2811eca8Stack2 := block2811eca8Arg1.
            block2811eca8PC := 6.
        ].
        block2811eca8Step = 6 ifTrue: [
            block2811eca8Stack2 := (block2811eca8Stack2) externalConnectorGO.
            block2811eca8PC := 8.
        ].
        block2811eca8Step = 8 ifTrue: [
            block2811eca8Stack2 := (block2811eca8Stack2) basicGraphObject.
            block2811eca8PC := 10.
        ].
        block2811eca8Step = 10 ifTrue: [
            block2811eca8Stack2 := (block2811eca8Stack2) isArgumentPin.
            block2811eca8PC := 12.
        ].
        block2811eca8Step = 12 ifTrue: [
            (block2811eca8Stack2) ifTrue: [block2811eca8PC := 16] ifFalse: [block2811eca8PC := 20].
        ].
        block2811eca8Step = 16 ifTrue: [
            block2811eca8PC := 17.
        ].
        block2811eca8Step = 17 ifTrue: [
            block2811eca8Stack1 := block2811eca8Arg1.
            block2811eca8PC := 18.
        ].
        block2811eca8Step = 18 ifTrue: [
            block2811eca8Stack1 := (block2811eca8Stack1) isVisible.
            block2811eca8PC := 20.
        ].
        block2811eca8Step = 20 ifTrue: [
            block2811eca8Result := block2811eca8Stack1.
            block2811eca8Done := true.
        ].
    ].
    block2811eca8Result
].
            recoveredBlock129PC := 295.
        ].
        recoveredBlock129Step = 295 ifTrue: [
            recoveredBlock129PC := 315.
        ].
        recoveredBlock129Step = 315 ifTrue: [
            recoveredBlock129Stack3 := [].
            recoveredBlock129PC := 317.
        ].
        recoveredBlock129Step = 317 ifTrue: [
            recoveredBlock129Stack1 := (recoveredBlock129Stack1) detect: (recoveredBlock129Stack2) ifNone: (recoveredBlock129Stack3).
            recoveredBlock129PC := 319.
        ].
        recoveredBlock129Step = 319 ifTrue: [
            recoveredBlock129Local2 := recoveredBlock129Stack1.
            recoveredBlock129PC := 320.
        ].
        recoveredBlock129Step = 320 ifTrue: [
            recoveredBlock129Stack1 := recoveredBlock129Local2.
            recoveredBlock129PC := 321.
        ].
        recoveredBlock129Step = 321 ifTrue: [
            (recoveredBlock129Stack1 == nil) ifTrue: [recoveredBlock129PC := 411] ifFalse: [recoveredBlock129PC := 324].
        ].
        recoveredBlock129Step = 324 ifTrue: [
            recoveredBlock129Stack1 := recoveredBlock129Arg2.
            recoveredBlock129PC := 326.
        ].
        recoveredBlock129Step = 326 ifTrue: [
            recoveredBlock129Stack2 := 1.
            recoveredBlock129PC := 328.
        ].
        recoveredBlock129Step = 328 ifTrue: [
            recoveredBlock129Stack1 := (recoveredBlock129Stack1) equals: (recoveredBlock129Stack2).
            recoveredBlock129PC := 330.
        ].
        recoveredBlock129Step = 330 ifTrue: [
            (recoveredBlock129Stack1) ifTrue: [recoveredBlock129PC := 334] ifFalse: [recoveredBlock129PC := 411].
        ].
        recoveredBlock129Step = 334 ifTrue: [
            recoveredBlock129Stack1 := recoveredBlock129Arg1.
            recoveredBlock129PC := 336.
        ].
        recoveredBlock129Step = 336 ifTrue: [
            recoveredBlock129Stack1 := (recoveredBlock129Stack1) basicGraphObject.
            recoveredBlock129PC := 338.
        ].
        recoveredBlock129Step = 338 ifTrue: [
            recoveredBlock129Stack2 := recoveredArg4.
            recoveredBlock129PC := 341.
        ].
        recoveredBlock129Step = 341 ifTrue: [
            recoveredBlock129Stack3 := recoveredBlock129Local1.
            recoveredBlock129PC := 342.
        ].
        recoveredBlock129Step = 342 ifTrue: [
            recoveredBlock129Stack4 := true.
            recoveredBlock129PC := 343.
        ].
        recoveredBlock129Step = 343 ifTrue: [
            recoveredBlock129Stack1 := (recoveredBlock129Stack1) cornerPointsFor: (recoveredBlock129Stack2) reverse: (recoveredBlock129Stack3) firstPart: (recoveredBlock129Stack4).
            recoveredBlock129PC := 346.
        ].
        recoveredBlock129Step = 346 ifTrue: [
            recoveredBlock129Local9 := recoveredBlock129Stack1.
            recoveredBlock129PC := 348.
        ].
        recoveredBlock129Step = 348 ifTrue: [
            recoveredBlock129Stack1 := SGConnectionWrapperGO.
            recoveredBlock129PC := 350.
        ].
        recoveredBlock129Step = 350 ifTrue: [
            recoveredBlock129Stack2 := SGOrthogonalLineGO.
            recoveredBlock129PC := 352.
        ].
        recoveredBlock129Step = 352 ifTrue: [
            recoveredBlock129Stack3 := recoveredBlock129Arg1.
            recoveredBlock129PC := 354.
        ].
        recoveredBlock129Step = 354 ifTrue: [
            recoveredBlock129Stack3 := (recoveredBlock129Stack3) basicGraphObject.
            recoveredBlock129PC := 356.
        ].
        recoveredBlock129Step = 356 ifTrue: [
            recoveredBlock129Stack3 := (recoveredBlock129Stack3) lineStyle.
            recoveredBlock129PC := 358.
        ].
        recoveredBlock129Step = 358 ifTrue: [
            recoveredBlock129Stack4 := nil.
            recoveredBlock129PC := 359.
        ].
        recoveredBlock129Step = 359 ifTrue: [
            recoveredBlock129Stack2 := (recoveredBlock129Stack2) createWithLineStyle: (recoveredBlock129Stack3) manager: (recoveredBlock129Stack4).
            recoveredBlock129PC := 361.
        ].
        recoveredBlock129Step = 361 ifTrue: [
            recoveredBlock129Stack3 := recoveredBlock129Local4.
            recoveredBlock129PC := 362.
        ].
        recoveredBlock129Step = 362 ifTrue: [
            recoveredBlock129Stack3 := (recoveredBlock129Stack3) connectionPoint.
            recoveredBlock129PC := 364.
        ].
        recoveredBlock129Step = 364 ifTrue: [
            recoveredBlock129Stack4 := recoveredBlock129Local2.
            recoveredBlock129PC := 365.
        ].
        recoveredBlock129Step = 365 ifTrue: [
            recoveredBlock129Stack4 := (recoveredBlock129Stack4) externalConnectorGO.
            recoveredBlock129PC := 367.
        ].
        recoveredBlock129Step = 367 ifTrue: [
            recoveredBlock129Stack4 := (recoveredBlock129Stack4) connectionPoint.
            recoveredBlock129PC := 369.
        ].
        recoveredBlock129Step = 369 ifTrue: [
            recoveredBlock129Stack1 := (recoveredBlock129Stack1) createWith: (recoveredBlock129Stack2) startPoint: (recoveredBlock129Stack3) endPoint: (recoveredBlock129Stack4).
            recoveredBlock129PC := 372.
        ].
        recoveredBlock129Step = 372 ifTrue: [
            recoveredBlock129Local8 := recoveredBlock129Stack1.
            recoveredBlock129PC := 374.
        ].
        recoveredBlock129Step = 374 ifTrue: [
            recoveredBlock129Stack1 := recoveredBlock129Local8.
            recoveredBlock129PC := 376.
        ].
        recoveredBlock129Step = 376 ifTrue: [
            recoveredBlock129Stack1 := (recoveredBlock129Stack1) basicGraphObject.
            recoveredBlock129PC := 378.
        ].
        recoveredBlock129Step = 378 ifTrue: [
            recoveredBlock129Stack2 := recoveredBlock129Local9.
            recoveredBlock129PC := 380.
        ].
        recoveredBlock129Step = 380 ifTrue: [
            (recoveredBlock129Stack1) initializeBuildPointColl: (recoveredBlock129Stack2).
            recoveredBlock129PC := 382.
        ].
        recoveredBlock129Step = 382 ifTrue: [
            recoveredBlock129Stack1 := recoveredBlock129Arg1.
            recoveredBlock129PC := 384.
        ].
        recoveredBlock129Step = 384 ifTrue: [
            recoveredBlock129Stack1 := (recoveredBlock129Stack1) getManager.
            recoveredBlock129PC := 386.
        ].
        recoveredBlock129Step = 386 ifTrue: [
            recoveredBlock129Stack1 := (recoveredBlock129Stack1) owner.
            recoveredBlock129PC := 388.
        ].
        recoveredBlock129Step = 388 ifTrue: [
            recoveredBlock129Stack2 := recoveredBlock129Local8.
            recoveredBlock129PC := 390.
        ].
        recoveredBlock129Step = 390 ifTrue: [
            recoveredBlock129Stack3 := true.
            recoveredBlock129PC := 391.
        ].
        recoveredBlock129Step = 391 ifTrue: [
            recoveredBlock129Stack4 := false.
            recoveredBlock129PC := 392.
        ].
        recoveredBlock129Step = 392 ifTrue: [
            (recoveredBlock129Stack1) addChildGO: (recoveredBlock129Stack2) display: (recoveredBlock129Stack3) createMemento: (recoveredBlock129Stack4).
            recoveredBlock129PC := 395.
        ].
        recoveredBlock129Step = 395 ifTrue: [
            recoveredBlock129Stack1 := recoveredBlock129Local8.
            recoveredBlock129PC := 397.
        ].
        recoveredBlock129Step = 397 ifTrue: [
            (recoveredBlock129Stack1) updateLineStyle.
            recoveredBlock129PC := 399.
        ].
        recoveredBlock129Step = 399 ifTrue: [
            recoveredBlock129Stack1 := recoveredLocal1.
            recoveredBlock129PC := 402.
        ].
        recoveredBlock129Step = 402 ifTrue: [
            recoveredBlock129Stack2 := recoveredBlock129Local8.
            recoveredBlock129PC := 404.
        ].
        recoveredBlock129Step = 404 ifTrue: [
            recoveredBlock129Stack2 := (recoveredBlock129Stack2) giveRedisplayRects.
            recoveredBlock129PC := 406.
        ].
        recoveredBlock129Step = 406 ifTrue: [
            recoveredBlock129Stack1 := (recoveredBlock129Stack1) , (recoveredBlock129Stack2).
            recoveredBlock129PC := 408.
        ].
        recoveredBlock129Step = 408 ifTrue: [
            recoveredLocal1 := recoveredBlock129Stack1.
            recoveredBlock129PC := 411.
        ].
        recoveredBlock129Step = 411 ifTrue: [
            recoveredBlock129Stack1 := nil.
            recoveredBlock129PC := 412.
        ].
        recoveredBlock129Step = 412 ifTrue: [
            recoveredBlock129Stack2 := recoveredBlock129Local3.
            recoveredBlock129PC := 413.
        ].
        recoveredBlock129Step = 413 ifTrue: [
            (recoveredBlock129Stack2 == nil) ifTrue: [recoveredBlock129PC := 496] ifFalse: [recoveredBlock129PC := 416].
        ].
        recoveredBlock129Step = 416 ifTrue: [
            recoveredBlock129PC := 417.
        ].
        recoveredBlock129Step = 417 ifTrue: [
            recoveredBlock129Stack1 := recoveredBlock129Arg1.
            recoveredBlock129PC := 419.
        ].
        recoveredBlock129Step = 419 ifTrue: [
            recoveredBlock129Stack1 := (recoveredBlock129Stack1) basicGraphObject.
            recoveredBlock129PC := 421.
        ].
        recoveredBlock129Step = 421 ifTrue: [
            recoveredBlock129Stack2 := recoveredArg4.
            recoveredBlock129PC := 424.
        ].
        recoveredBlock129Step = 424 ifTrue: [
            recoveredBlock129Stack3 := recoveredBlock129Local1.
            recoveredBlock129PC := 425.
        ].
        recoveredBlock129Step = 425 ifTrue: [
            recoveredBlock129Stack4 := false.
            recoveredBlock129PC := 426.
        ].
        recoveredBlock129Step = 426 ifTrue: [
            recoveredBlock129Stack1 := (recoveredBlock129Stack1) cornerPointsFor: (recoveredBlock129Stack2) reverse: (recoveredBlock129Stack3) firstPart: (recoveredBlock129Stack4).
            recoveredBlock129PC := 429.
        ].
        recoveredBlock129Step = 429 ifTrue: [
            recoveredBlock129Local9 := recoveredBlock129Stack1.
            recoveredBlock129PC := 431.
        ].
        recoveredBlock129Step = 431 ifTrue: [
            recoveredBlock129Stack1 := SGConnectionWrapperGO.
            recoveredBlock129PC := 433.
        ].
        recoveredBlock129Step = 433 ifTrue: [
            recoveredBlock129Stack2 := SGOrthogonalLineGO.
            recoveredBlock129PC := 435.
        ].
        recoveredBlock129Step = 435 ifTrue: [
            recoveredBlock129Stack3 := recoveredBlock129Arg1.
            recoveredBlock129PC := 437.
        ].
        recoveredBlock129Step = 437 ifTrue: [
            recoveredBlock129Stack3 := (recoveredBlock129Stack3) basicGraphObject.
            recoveredBlock129PC := 439.
        ].
        recoveredBlock129Step = 439 ifTrue: [
            recoveredBlock129Stack3 := (recoveredBlock129Stack3) lineStyle.
            recoveredBlock129PC := 441.
        ].
        recoveredBlock129Step = 441 ifTrue: [
            recoveredBlock129Stack4 := nil.
            recoveredBlock129PC := 442.
        ].
        recoveredBlock129Step = 442 ifTrue: [
            recoveredBlock129Stack2 := (recoveredBlock129Stack2) createWithLineStyle: (recoveredBlock129Stack3) manager: (recoveredBlock129Stack4).
            recoveredBlock129PC := 444.
        ].
        recoveredBlock129Step = 444 ifTrue: [
            recoveredBlock129Stack3 := recoveredBlock129Local3.
            recoveredBlock129PC := 445.
        ].
        recoveredBlock129Step = 445 ifTrue: [
            recoveredBlock129Stack3 := (recoveredBlock129Stack3) externalConnectorGO.
            recoveredBlock129PC := 447.
        ].
        recoveredBlock129Step = 447 ifTrue: [
            recoveredBlock129Stack3 := (recoveredBlock129Stack3) connectionPoint.
            recoveredBlock129PC := 449.
        ].
        recoveredBlock129Step = 449 ifTrue: [
            recoveredBlock129Stack4 := recoveredBlock129Local5.
            recoveredBlock129PC := 451.
        ].
        recoveredBlock129Step = 451 ifTrue: [
            recoveredBlock129Stack4 := (recoveredBlock129Stack4) connectionPoint.
            recoveredBlock129PC := 453.
        ].
        recoveredBlock129Step = 453 ifTrue: [
            recoveredBlock129Stack1 := (recoveredBlock129Stack1) createWith: (recoveredBlock129Stack2) startPoint: (recoveredBlock129Stack3) endPoint: (recoveredBlock129Stack4).
            recoveredBlock129PC := 456.
        ].
        recoveredBlock129Step = 456 ifTrue: [
            recoveredBlock129Local8 := recoveredBlock129Stack1.
            recoveredBlock129PC := 458.
        ].
        recoveredBlock129Step = 458 ifTrue: [
            recoveredBlock129Stack1 := recoveredBlock129Local8.
            recoveredBlock129PC := 460.
        ].
        recoveredBlock129Step = 460 ifTrue: [
            recoveredBlock129Stack1 := (recoveredBlock129Stack1) basicGraphObject.
            recoveredBlock129PC := 462.
        ].
        recoveredBlock129Step = 462 ifTrue: [
            recoveredBlock129Stack2 := recoveredBlock129Local9.
            recoveredBlock129PC := 464.
        ].
        recoveredBlock129Step = 464 ifTrue: [
            (recoveredBlock129Stack1) initializeBuildPointColl: (recoveredBlock129Stack2).
            recoveredBlock129PC := 466.
        ].
        recoveredBlock129Step = 466 ifTrue: [
            recoveredBlock129Stack1 := recoveredBlock129Arg1.
            recoveredBlock129PC := 468.
        ].
        recoveredBlock129Step = 468 ifTrue: [
            recoveredBlock129Stack1 := (recoveredBlock129Stack1) getManager.
            recoveredBlock129PC := 470.
        ].
        recoveredBlock129Step = 470 ifTrue: [
            recoveredBlock129Stack1 := (recoveredBlock129Stack1) owner.
            recoveredBlock129PC := 472.
        ].
        recoveredBlock129Step = 472 ifTrue: [
            recoveredBlock129Stack2 := recoveredBlock129Local8.
            recoveredBlock129PC := 474.
        ].
        recoveredBlock129Step = 474 ifTrue: [
            recoveredBlock129Stack3 := true.
            recoveredBlock129PC := 475.
        ].
        recoveredBlock129Step = 475 ifTrue: [
            recoveredBlock129Stack4 := false.
            recoveredBlock129PC := 476.
        ].
        recoveredBlock129Step = 476 ifTrue: [
            (recoveredBlock129Stack1) addChildGO: (recoveredBlock129Stack2) display: (recoveredBlock129Stack3) createMemento: (recoveredBlock129Stack4).
            recoveredBlock129PC := 479.
        ].
        recoveredBlock129Step = 479 ifTrue: [
            recoveredBlock129Stack1 := recoveredBlock129Local8.
            recoveredBlock129PC := 481.
        ].
        recoveredBlock129Step = 481 ifTrue: [
            (recoveredBlock129Stack1) updateLineStyle.
            recoveredBlock129PC := 483.
        ].
        recoveredBlock129Step = 483 ifTrue: [
            recoveredBlock129Stack1 := recoveredLocal1.
            recoveredBlock129PC := 486.
        ].
        recoveredBlock129Step = 486 ifTrue: [
            recoveredBlock129Stack2 := recoveredBlock129Local8.
            recoveredBlock129PC := 488.
        ].
        recoveredBlock129Step = 488 ifTrue: [
            recoveredBlock129Stack2 := (recoveredBlock129Stack2) giveRedisplayRects.
            recoveredBlock129PC := 490.
        ].
        recoveredBlock129Step = 490 ifTrue: [
            recoveredBlock129Stack1 := (recoveredBlock129Stack1) , (recoveredBlock129Stack2).
            recoveredBlock129PC := 492.
        ].
        recoveredBlock129Step = 492 ifTrue: [
            recoveredBlock129Stack2 := recoveredBlock129Stack1.
            recoveredBlock129PC := 493.
        ].
        recoveredBlock129Step = 493 ifTrue: [
            recoveredLocal1 := recoveredBlock129Stack2.
            recoveredBlock129PC := 496.
        ].
        recoveredBlock129Step = 496 ifTrue: [
            recoveredBlock129Stack2 := nil.
            recoveredBlock129PC := 497.
        ].
        recoveredBlock129Step = 497 ifTrue: [
            recoveredBlock129Stack3 := recoveredBlock129Stack2.
            recoveredBlock129PC := 498.
        ].
        recoveredBlock129Step = 498 ifTrue: [
            recoveredBlock129Local9 := recoveredBlock129Stack3.
            recoveredBlock129PC := 500.
        ].
        recoveredBlock129Step = 500 ifTrue: [
            recoveredBlock129Stack3 := recoveredBlock129Stack2.
            recoveredBlock129PC := 501.
        ].
        recoveredBlock129Step = 501 ifTrue: [
            recoveredBlock129Local8 := recoveredBlock129Stack3.
            recoveredBlock129PC := 503.
        ].
        recoveredBlock129Step = 503 ifTrue: [
            recoveredBlock129Stack3 := recoveredBlock129Stack2.
            recoveredBlock129PC := 504.
        ].
        recoveredBlock129Step = 504 ifTrue: [
            recoveredBlock129Local7 := recoveredBlock129Stack3.
            recoveredBlock129PC := 506.
        ].
        recoveredBlock129Step = 506 ifTrue: [
            recoveredBlock129Stack3 := recoveredBlock129Stack2.
            recoveredBlock129PC := 507.
        ].
        recoveredBlock129Step = 507 ifTrue: [
            recoveredBlock129Local6 := recoveredBlock129Stack3.
            recoveredBlock129PC := 509.
        ].
        recoveredBlock129Step = 509 ifTrue: [
            recoveredBlock129Stack3 := recoveredBlock129Stack2.
            recoveredBlock129PC := 510.
        ].
        recoveredBlock129Step = 510 ifTrue: [
            recoveredBlock129Local5 := recoveredBlock129Stack3.
            recoveredBlock129PC := 512.
        ].
        recoveredBlock129Step = 512 ifTrue: [
            recoveredBlock129Stack3 := recoveredBlock129Stack2.
            recoveredBlock129PC := 513.
        ].
        recoveredBlock129Step = 513 ifTrue: [
            recoveredBlock129Local4 := recoveredBlock129Stack3.
            recoveredBlock129PC := 514.
        ].
        recoveredBlock129Step = 514 ifTrue: [
            recoveredBlock129Stack3 := recoveredBlock129Stack2.
            recoveredBlock129PC := 515.
        ].
        recoveredBlock129Step = 515 ifTrue: [
            recoveredBlock129Local3 := recoveredBlock129Stack3.
            recoveredBlock129PC := 516.
        ].
        recoveredBlock129Step = 516 ifTrue: [
            recoveredBlock129Stack3 := recoveredBlock129Stack2.
            recoveredBlock129PC := 517.
        ].
        recoveredBlock129Step = 517 ifTrue: [
            recoveredBlock129Local2 := recoveredBlock129Stack3.
            recoveredBlock129PC := 518.
        ].
        recoveredBlock129Step = 518 ifTrue: [
            recoveredBlock129Local1 := recoveredBlock129Stack2.
            recoveredBlock129PC := 519.
        ].
        recoveredBlock129Step = 519 ifTrue: [
            recoveredBlock129Result := recoveredBlock129Stack1.
            recoveredBlock129Done := true.
        ].
    ].
    recoveredBlock129Result
].
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack0 := recoveredArg5.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 528] ifFalse: [recoveredPC := 536].
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            (recoveredStack0) displayRects: (recoveredStack1).
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20629c5c; bytecode file offset 0xf265cc"
!SGBlockDiagram methodsFor: 'recovered'!
addOrReplaceGO: recoveredArg1 insertInLine: recoveredArg2 display: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Muzaffar'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_65573'.
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
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isConnectionGO.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 507] ifFalse: [recoveredPC := 26].
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
            recoveredStack2 := (recoveredStack2) getPosition.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPointedGOFor: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 507] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBlock.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal8 := recoveredStack2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 207] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInsertableInLine.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 207].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) isConnectionGO.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 207].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := 'call_80029'.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPosition.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) connectionChildren.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := [:recoveredBlock91Arg1 | 
    | recoveredBlock91Value0 recoveredBlock91Value1 recoveredBlock91Value2 recoveredBlock91Value3 |
    recoveredBlock91Value0 := recoveredBlock91Arg1.
    recoveredBlock91Value1 := recoveredLocal2.
    recoveredBlock91Value2 := (recoveredBlock91Value0) getPointedGOFor: (recoveredBlock91Value1).
    recoveredBlock91Value3 := (recoveredBlock91Value2) notNil.
    recoveredBlock91Value3
].
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredPC := 162.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPosition.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := RBControllerMode.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) promptInsertGOOnConnectionHint.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack1) moveTo: (recoveredStack2).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack6 := true.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := (recoveredStack1) replaceGO: (recoveredStack2) onConnections: (recoveredStack3) insertInLine: (recoveredStack4) pointedPosition: (recoveredStack5) display: (recoveredStack6).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 195] ifFalse: [recoveredPC := 182].
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := (recoveredStack1) graphicObjects.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack1) addGO: (recoveredStack2) display: (recoveredStack3).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := 'call_84169'.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 507] ifFalse: [recoveredPC := 220].
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBlock.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredLocal8 := recoveredStack2.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 507] ifFalse: [recoveredPC := 232].
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := (recoveredStack2) basicGraphObject.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReplaceableWith: (recoveredStack2).
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 246] ifFalse: [recoveredPC := 507].
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 252] ifFalse: [recoveredPC := 260].
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredPC := 288.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack2 := 'Call_2001296'.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := RBControllerMode.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack2 := (recoveredStack2) controller.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack2 := (recoveredStack2) owner.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack2 := (recoveredStack2) isCTClass.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack1 := (recoveredStack1) promptReplaceGOHintIsCT: (recoveredStack2).
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 288] ifFalse: [recoveredPC := 286].
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 294] ifFalse: [recoveredPC := 486].
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMemoryBlock.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 304] ifFalse: [recoveredPC := 456].
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMemoryBlock.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 314] ifFalse: [recoveredPC := 456].
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack1 := (recoveredStack1) topHierarchyGO.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack1 := (recoveredStack1) blockChildren.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack2 := [:recoveredBlock321Arg1 | 
    | recoveredBlock321Local1 recoveredBlock321Stack0 recoveredBlock321Stack1 recoveredBlock321Stack2 recoveredBlock321Stack3 recoveredBlock321Stack4 recoveredBlock321PC recoveredBlock321Step recoveredBlock321Done recoveredBlock321Result |
    recoveredBlock321Stack0 := self.
    recoveredBlock321PC := 328.
    recoveredBlock321Done := false.
    [recoveredBlock321Done not] whileTrue: [
        recoveredBlock321Step := recoveredBlock321PC.
        recoveredBlock321Step = 328 ifTrue: [
            recoveredBlock321Stack1 := recoveredBlock321Arg1.
            recoveredBlock321PC := 329.
        ].
        recoveredBlock321Step = 329 ifTrue: [
            recoveredBlock321Stack1 := (recoveredBlock321Stack1) basicGraphObject.
            recoveredBlock321PC := 330.
        ].
        recoveredBlock321Step = 330 ifTrue: [
            recoveredBlock321Local1 := recoveredBlock321Stack1.
            recoveredBlock321PC := 331.
        ].
        recoveredBlock321Step = 331 ifTrue: [
            recoveredBlock321Stack1 := false.
            recoveredBlock321PC := 332.
        ].
        recoveredBlock321Step = 332 ifTrue: [
            recoveredBlock321Stack2 := recoveredBlock321Local1.
            recoveredBlock321PC := 333.
        ].
        recoveredBlock321Step = 333 ifTrue: [
            recoveredBlock321Stack3 := recoveredLocal8.
            recoveredBlock321PC := 336.
        ].
        recoveredBlock321Step = 336 ifTrue: [
            recoveredBlock321Stack3 := (recoveredBlock321Stack3) basicGraphObject.
            recoveredBlock321PC := 337.
        ].
        recoveredBlock321Step = 337 ifTrue: [
            recoveredBlock321Stack2 := (recoveredBlock321Stack2) equals: (recoveredBlock321Stack3).
            recoveredBlock321PC := 339.
        ].
        recoveredBlock321Step = 339 ifTrue: [
            (recoveredBlock321Stack2) ifTrue: [recoveredBlock321PC := 362] ifFalse: [recoveredBlock321PC := 342].
        ].
        recoveredBlock321Step = 342 ifTrue: [
            recoveredBlock321PC := 343.
        ].
        recoveredBlock321Step = 343 ifTrue: [
            recoveredBlock321Stack1 := false.
            recoveredBlock321PC := 344.
        ].
        recoveredBlock321Step = 344 ifTrue: [
            recoveredBlock321Stack2 := recoveredBlock321Local1.
            recoveredBlock321PC := 345.
        ].
        recoveredBlock321Step = 345 ifTrue: [
            recoveredBlock321Stack2 := (recoveredBlock321Stack2) isMemoryBlock.
            recoveredBlock321PC := 347.
        ].
        recoveredBlock321Step = 347 ifTrue: [
            (recoveredBlock321Stack2) ifTrue: [recoveredBlock321PC := 350] ifFalse: [recoveredBlock321PC := 362].
        ].
        recoveredBlock321Step = 350 ifTrue: [
            recoveredBlock321PC := 351.
        ].
        recoveredBlock321Step = 351 ifTrue: [
            recoveredBlock321Stack1 := recoveredBlock321Local1.
            recoveredBlock321PC := 352.
        ].
        recoveredBlock321Step = 352 ifTrue: [
            recoveredBlock321Stack1 := (recoveredBlock321Stack1) aliasName.
            recoveredBlock321PC := 354.
        ].
        recoveredBlock321Step = 354 ifTrue: [
            recoveredBlock321Stack2 := recoveredLocal8.
            recoveredBlock321PC := 357.
        ].
        recoveredBlock321Step = 357 ifTrue: [
            recoveredBlock321Stack2 := (recoveredBlock321Stack2) basicGraphObject.
            recoveredBlock321PC := 358.
        ].
        recoveredBlock321Step = 358 ifTrue: [
            recoveredBlock321Stack2 := (recoveredBlock321Stack2) aliasName.
            recoveredBlock321PC := 360.
        ].
        recoveredBlock321Step = 360 ifTrue: [
            recoveredBlock321Stack1 := (recoveredBlock321Stack1) equals: (recoveredBlock321Stack2).
            recoveredBlock321PC := 362.
        ].
        recoveredBlock321Step = 362 ifTrue: [
            recoveredBlock321Result := recoveredBlock321Stack1.
            recoveredBlock321Done := true.
        ].
    ].
    recoveredBlock321Result
].
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 376] ifFalse: [recoveredPC := 429].
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack1 := RBControllerMode.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack1 := (recoveredStack1) promptReplaceGOAllOccurrencesHint.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 390] ifFalse: [recoveredPC := 388].
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 396] ifFalse: [recoveredPC := 429].
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack2 := [:recoveredBlock399Arg1 | 
    | recoveredBlock399Local1 recoveredBlock399Local2 recoveredBlock399Value0 recoveredBlock399Value1 recoveredBlock399Value2 recoveredBlock399Value3 recoveredBlock399Value4 recoveredBlock399Value5 recoveredBlock399Value6 recoveredBlock399Value7 recoveredBlock399Value8 recoveredBlock399Value9 |
    recoveredBlock399Value0 := recoveredArg1.
    recoveredBlock399Value1 := (recoveredBlock399Value0) createNewGO.
    recoveredBlock399Local2 := recoveredBlock399Value1.
    recoveredBlock399Value2 := recoveredBlock399Local2.
    recoveredBlock399Value3 := recoveredBlock399Arg1.
    recoveredBlock399Value4 := (recoveredBlock399Value3) getPosition.
    (recoveredBlock399Value2) moveTo: (recoveredBlock399Value4).
    recoveredBlock399Value5 := recoveredBlock399Arg1.
    recoveredBlock399Value6 := (recoveredBlock399Value5) basicGraphObject.
    recoveredBlock399Value7 := recoveredBlock399Arg1.
    recoveredBlock399Value8 := recoveredBlock399Local2.
    recoveredBlock399Value9 := (recoveredBlock399Value6) replaceGO: (recoveredBlock399Value7) withGO: (recoveredBlock399Value8) display: (true).
    recoveredBlock399Value9
].
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack1 := (recoveredStack1) replaceGO: (recoveredStack2) withGO: (recoveredStack3) display: (recoveredStack4).
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            (recoveredStack1) graphicsModified: (recoveredStack2).
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack1 := (recoveredStack1) replaceGO: (recoveredStack2) withGO: (recoveredStack3) display: (recoveredStack4).
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            (recoveredStack1) graphicsModified: (recoveredStack2).
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack2 := (recoveredStack2) getPosition.
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack4 := 10.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            (recoveredStack1) moveTo: (recoveredStack2).
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            (recoveredStack0) addGO: (recoveredStack1) display: (recoveredStack2).
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicGraphObject.
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredStack0 := (recoveredStack0) isConnectionGO.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 524] ifFalse: [recoveredPC := 546].
        ].
        recoveredStep = 524 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBDEController.
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredStack0 := (recoveredStack0) datamodelManager.
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 546] ifFalse: [recoveredPC := 538].
        ].
        recoveredStep = 538 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            (recoveredStack0) propagateConnectionTypesDatamodelManager: (recoveredStack1).
            recoveredPC := 546.
        ].
        recoveredStep = 546 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredStack0 := (recoveredStack0) updateIntersectingBlocks.
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 560] ifFalse: [recoveredPC := 580].
        ].
        recoveredStep = 560 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack2 := [:block2811f8c0Arg1 | 
    | block2811f8c0Value0 block2811f8c0Value1 |
    block2811f8c0Value0 := block2811f8c0Arg1.
    block2811f8c0Value1 := (block2811f8c0Value0) frame.
    block2811f8c0Value1
].
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            (recoveredStack0) displayRects: (recoveredStack1).
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            (recoveredStack0) graphicsModified: (recoveredStack1).
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

