"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000740; bytecode file offset 0x8ffcfc"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
prepareCallsWhileMovedFromWrapper
    ^self
! !

"ASDBase.ic method 0x20003860; bytecode file offset 0x90206c"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
substituteExternalHierarchyArgumentConnectors: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20022958; bytecode file offset 0x92209c"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
resolveHierarchyLabel
    ^'R~esolve Hierarchy'
! !

"ASDBase.ic method 0x200304b4; bytecode file offset 0x934580"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
apiClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) graphObject.
    recoveredValue1 := (recoveredValue0) apiClass.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031e04; bytecode file offset 0x934580"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
methodCalls
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) contents.
    recoveredValue1 := (recoveredValue0) methodCalls.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035704; bytecode file offset 0x934580"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
controller
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) contents.
    recoveredValue1 := (recoveredValue0) controller.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041600; bytecode file offset 0x93e1a0"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
otherChildren
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := contents.
    recoveredValue1 := (recoveredValue0) otherChildren.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004163c; bytecode file offset 0x93e1a0"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
commentChildren
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := contents.
    recoveredValue1 := (recoveredValue0) commentChildren.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200417b0; bytecode file offset 0x93e1a0"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
stateChildrenHierarchical
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := contents.
    recoveredValue1 := (recoveredValue0) stateChildrenHierarchical.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041834; bytecode file offset 0x93e1a0"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
coordinateRect
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := contents.
    recoveredValue1 := (recoveredValue0) coordinateRect.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041840; bytecode file offset 0x93e1a0"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
connectionChildren
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := contents.
    recoveredValue1 := (recoveredValue0) connectionChildren.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041894; bytecode file offset 0x93e1a0"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
blockChildren
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := contents.
    recoveredValue1 := (recoveredValue0) blockChildren.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20056148; bytecode file offset 0x952a9c"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
addBlockChildrenTo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) add: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20057818; bytecode file offset 0x956284"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
isModelConsistent: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) contents.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) isModelConsistent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005cf70; bytecode file offset 0x9599ac"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
storageObject
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGGraphicsBlockDB.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (self) createStorageObjectsFor: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005d994; bytecode file offset 0x95a24c"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
isLoaded
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := contents.
    recoveredValue1 := (recoveredValue0) isStorageObject.
    recoveredValue2 := (recoveredValue1) not.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20063f24; bytecode file offset 0x961970"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
resolveHierarchy
    | recoveredValue0 |
    recoveredValue0 := (self) graphObject.
    (recoveredValue0) resolveHierarchy.
    ^self
! !

"ASDBase.ic method 0x2006b9a0; bytecode file offset 0x96873c"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
pageFormat
    | recoveredValue0 |
    recoveredValue0 := pageFormat.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007838c; bytecode file offset 0x9757c8"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
supportsEditableLayout
    ^true
! !

"ASDBase.ic method 0x20088044; bytecode file offset 0x984bc0"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
nilVariables
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) with: ('parent').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20092c64; bytecode file offset 0x98f534"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
controller: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := contents.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) controller: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200ad954; bytecode file offset 0x9aa218"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
addChildGO: recoveredArg1 display: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) addChildGO: (recoveredValue0) display: (recoveredValue1) createMemento: (true).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c2280; bytecode file offset 0x9bf474"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
pageFormat: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    pageFormat := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d0644; bytecode file offset 0x9cd3a0"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
methodCallsCurrentLevel
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('hw') == ('call_79440').
    recoveredValue1 := (self) basicGraphObject.
    recoveredValue2 := (recoveredValue1) methodCalls.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d37f8; bytecode file offset 0x9d00b4"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
newOutPosition
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (500) @ (20).
    recoveredValue1 := (self) newPositionStartPos: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200dd428; bytecode file offset 0x9d9ce0"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
buildLogic: recoveredArg1 hierarchy: recoveredArg2 specification: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := contents.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    (recoveredValue0) buildLogic: (recoveredValue1) for: (recoveredValue2) specification: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200ee410; bytecode file offset 0x9eacd0"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
hierarchyChildren
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (self) addHierarchyChildrenTo: (recoveredValue2) recursive: (true).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2010e010; bytecode file offset 0xa0a8d8"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
createStorageObjectsFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) basicGraphObject.
    recoveredValue2 := (recoveredValue1) storageObject.
    (recoveredValue0) graphicBlock: (recoveredValue2).
    recoveredValue3 := (self) contents.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) createStorageObjectsFor: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20114c58; bytecode file offset 0xa11518"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
newInPosition
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := PinDistance.
    recoveredValue1 := (recoveredValue0) * (2).
    recoveredValue2 := PinDistance.
    recoveredValue3 := (recoveredValue2) * (3).
    recoveredValue4 := (recoveredValue1) @ (recoveredValue3).
    recoveredValue5 := (self) newPositionStartPos: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2011a27c; bytecode file offset 0xa16b44"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
hierarchyLabelsLocal
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hierarchyChildrenLocal.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c88a4Arg1 | 
    | block280c88a4Value0 block280c88a4Value1 block280c88a4Value2 |
    block280c88a4Value0 := block280c88a4Arg1.
    block280c88a4Value1 := (block280c88a4Value0) basicGraphObject.
    block280c88a4Value2 := (block280c88a4Value1) label.
    block280c88a4Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011de38; bytecode file offset 0xa1a6fc"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
initContentsWithController: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGBlockDiagram.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new: (0).
    recoveredValue4 := (recoveredValue0) newFor: (recoveredValue1) owner: (self) children: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20124940; bytecode file offset 0xa21208"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
buildNewIdentifiers
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGIdentifierTableBuilder.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) initialize.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (recoveredValue3) createIdentifierFor: (self).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) newIndex.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2012cb30; bytecode file offset 0xa29414"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
updateFontCommentText
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
            recoveredStack1 := [:block280c9de0Arg1 | 
    | block280c9de0Value0 block280c9de0Value1 block280c9de0Value2 |
    block280c9de0Value0 := block280c9de0Arg1.
    block280c9de0Value1 := (block280c9de0Value0) basicGraphObject.
    block280c9de0Value2 := (block280c9de0Value1) updateFontCommentText.
    block280c9de0Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"ASDBase.ic method 0x2012d37c; bytecode file offset 0xa29c40"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
stateChildren
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isTopHierarchyGO.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := contents.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) stateChildrenHierarchical.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) stateChildren.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20137e78; bytecode file offset 0xa34740"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
buildNewIdentifiersMaximumGraphicsIdentifier: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGIdentifierTableBuilder.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) initWithIndex: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue4) createIdentifierFor: (self).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) actualIndex.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20171bac; bytecode file offset 0xa6e490"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
updateFontFormalNames
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicGraphObject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) updateFontFormalNames.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := [:block280cef94Arg1 | 
    | block280cef94Value0 block280cef94Value1 block280cef94Value2 |
    block280cef94Value0 := block280cef94Arg1.
    block280cef94Value1 := (block280cef94Value0) basicGraphObject.
    block280cef94Value2 := (block280cef94Value1) updateFontFormalNames.
    block280cef94Value2
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20171bc8; bytecode file offset 0xa6e490"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
updateFontActualNames
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicGraphObject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) updateFontActualNames.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := [:block280cefb8Arg1 | 
    | block280cefb8Value0 block280cefb8Value1 block280cefb8Value2 |
    block280cefb8Value0 := block280cefb8Arg1.
    block280cefb8Value1 := (block280cefb8Value0) basicGraphObject.
    block280cefb8Value2 := (block280cefb8Value1) updateFontActualNames.
    block280cefb8Value2
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20186b30; bytecode file offset 0xa833f0"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
setLineStyle: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := contents.
    recoveredValue1 := (recoveredValue0) children.
    recoveredValue2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg1.
    recoveredBlock7Value2 := (recoveredBlock7Value0) setLineStyle: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2019bf6c; bytecode file offset 0xa9882c"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
buildLogicBasic: recoveredArg1 for: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := graphObject.
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
            recoveredStack1 := (recoveredStack1) buildLogicBasic: (recoveredStack2) for: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
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
            recoveredStack0 := (recoveredStack0) contents.
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
            recoveredStack0 := (recoveredStack0) buildLogic: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a6ae8; bytecode file offset 0xaa33b4"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
printOn: recoveredArg1
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
            super printOn: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphObject.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) graphObject.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) getActualName.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) cr.
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

"ASDBase.ic method 0x201f1fa0; bytecode file offset 0xaee86c"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
pageSize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) pageFormat.
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
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) pageSize.
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
            recoveredStack0 := (recoveredStack0) pageFormat.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'A4Landscape'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := DINA4Size.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := DINA4Size.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) transpose.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20212424; bytecode file offset 0xb0ecec"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
hierarchyChildrenLocal
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) children.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := recoveredLocal1.
    recoveredBlock11Value2 := (recoveredBlock11Value0) addHierarchyChildrenTo: (recoveredBlock11Value1) recursive: (false).
    recoveredBlock11Value2
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2021eaa8; bytecode file offset 0xb1b368"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
sequenceVisibility: recoveredArg1 unused: recoveredArg2 used: recoveredArg3 method: recoveredArg4
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) blockChildren.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := recoveredArg2.
    recoveredBlock5Value3 := recoveredArg3.
    recoveredBlock5Value4 := recoveredArg4.
    recoveredBlock5Value5 := (recoveredBlock5Value0) sequenceVisibility: (recoveredBlock5Value1) unused: (recoveredBlock5Value2) used: (recoveredBlock5Value3) method: (recoveredBlock5Value4).
    recoveredBlock5Value5
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20222528; bytecode file offset 0xb1edec"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
addChildGO: recoveredArg1 display: recoveredArg2 createMemento: recoveredArg3
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := super addChildGO: (recoveredStack1) display: (recoveredStack2).
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
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) graphicsModified: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022fe7c; bytecode file offset 0xb2c750"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
getPath
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBDEController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := ' \ '.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPath.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) basicGraphObject.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) getActualName.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := ' \ '.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2024d7b4; bytecode file offset 0xb4a074"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
prepareCallsWhileMovedFrom: recoveredArg1 toOther: recoveredArg2 prepareCalls: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 recoveredBlock7Value7 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := recoveredBlock7Arg1.
    recoveredBlock7Value2 := (recoveredBlock7Value1) at: (1).
    recoveredBlock7Value3 := recoveredBlock7Arg1.
    recoveredBlock7Value4 := (recoveredBlock7Value3) at: (2).
    recoveredBlock7Value5 := recoveredBlock7Arg1.
    recoveredBlock7Value6 := (recoveredBlock7Value5) at: (3).
    recoveredBlock7Value7 := (recoveredBlock7Value0) addPortFor: (self) conn: (recoveredBlock7Value2) gOInside: (recoveredBlock7Value4) gOOutside: (recoveredBlock7Value6).
    recoveredBlock7Value7
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2026e874; bytecode file offset 0xb6b138"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
addHierarchyChildrenTo: recoveredArg1 recursive: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := recoveredArg1.
    recoveredBlock18Value2 := recoveredArg2.
    recoveredBlock18Value3 := (recoveredBlock18Value0) addHierarchyChildrenTo: (recoveredBlock18Value1) recursive: (recoveredBlock18Value2).
    recoveredBlock18Value3
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2026eee4; bytecode file offset 0xb6b7a4"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
buildLogic: recoveredArg1 for: recoveredArg2 specification: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := graphObject.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) buildLogic: (recoveredValue1) for: (recoveredValue2) specification: (recoveredValue3).
    recoveredValue5 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 |
    recoveredBlock18Value0 := recoveredArg1.
    recoveredBlock18Value1 := recoveredBlock18Arg1.
    recoveredBlock18Value2 := recoveredArg3.
    (self) buildLogic: (recoveredBlock18Value0) hierarchy: (recoveredBlock18Value1) specification: (recoveredBlock18Value2).
    recoveredBlock18Value3 := recoveredBlock18Arg1.
    ^recoveredBlock18Value3
].
    (recoveredValue4) ifNotNil: (recoveredValue5).
    ^nil
! !

"ASDBase.ic method 0x202ab1b4; bytecode file offset 0xba7a7c"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
fitToRaster: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) basicGraphObject.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) fitToRaster: (recoveredValue1).
    recoveredValue2 := (self) blockChildren.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredArg1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) fitToRaster: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := (self) connectionChildren.
    recoveredValue5 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 |
    recoveredBlock29Value0 := recoveredBlock29Arg1.
    recoveredBlock29Value1 := recoveredArg1.
    recoveredBlock29Value2 := (recoveredBlock29Value0) fitToRaster: (recoveredBlock29Value1).
    recoveredBlock29Value2
].
    (recoveredValue4) do: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x202c8ce8; bytecode file offset 0xbc55bc"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
allHierarchiesFlat
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) children.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
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
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) basicGraphObject.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isSGHierarchyGO.
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 26] ifFalse: [recoveredBlock11PC := 41].
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack2 := Array.
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Arg1.
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) with: (recoveredBlock11Stack3).
            recoveredBlock11PC := 35.
        ].
        recoveredBlock11Step = 35 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) , (recoveredBlock11Stack2).
            recoveredBlock11PC := 37.
        ].
        recoveredBlock11Step = 37 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 38.
        ].
        recoveredBlock11Step = 38 ifTrue: [
            recoveredLocal1 := recoveredBlock11Stack2.
            recoveredBlock11PC := 41.
        ].
        recoveredBlock11Step = 41 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x202e192c; bytecode file offset 0xbde210"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
nextLevel
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicGraphObject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) viewHideContents.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) basicGraphObject.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSelectFlag.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) manager.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) deselect.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) raster.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) fitToRaster: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) manager.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) updateWithHierarchyGO: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) createMementoBuildNewIdentifiers: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) checkScrollPosition.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) redraw.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2031738c; bytecode file offset 0xc13c60"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
sequenceCalls
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) blockChildren.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) sequenceCalls.
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) , (recoveredBlock11Stack2).
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            recoveredLocal1 := recoveredBlock11Stack1.
            recoveredBlock11PC := 28.
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isStatementBlockWrapperGO.
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 36] ifFalse: [recoveredBlock11PC := 50].
        ].
        recoveredBlock11Step = 36 ifTrue: [
            recoveredBlock11PC := 37.
        ].
        recoveredBlock11Step = 37 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 40.
        ].
        recoveredBlock11Step = 40 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 41.
        ].
        recoveredBlock11Step = 41 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) graphObject.
            recoveredBlock11PC := 43.
        ].
        recoveredBlock11Step = 43 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) sequenceCalls.
            recoveredBlock11PC := 44.
        ].
        recoveredBlock11Step = 44 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) , (recoveredBlock11Stack2).
            recoveredBlock11PC := 46.
        ].
        recoveredBlock11Step = 46 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 47.
        ].
        recoveredBlock11Step = 47 ifTrue: [
            recoveredLocal1 := recoveredBlock11Stack2.
            recoveredBlock11PC := 50.
        ].
        recoveredBlock11Step = 50 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x203267f0; bytecode file offset 0xc230c8"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
allHierarchies
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) children.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
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
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) basicGraphObject.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isSGHierarchyGO.
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 26] ifFalse: [recoveredBlock11PC := 52].
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack2 := Array.
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Arg1.
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) with: (recoveredBlock11Stack3).
            recoveredBlock11PC := 35.
        ].
        recoveredBlock11Step = 35 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) , (recoveredBlock11Stack2).
            recoveredBlock11PC := 37.
        ].
        recoveredBlock11Step = 37 ifTrue: [
            recoveredLocal1 := recoveredBlock11Stack1.
            recoveredBlock11PC := 40.
        ].
        recoveredBlock11Step = 40 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 43.
        ].
        recoveredBlock11Step = 43 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 44.
        ].
        recoveredBlock11Step = 44 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) allHierarchies.
            recoveredBlock11PC := 46.
        ].
        recoveredBlock11Step = 46 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) , (recoveredBlock11Stack2).
            recoveredBlock11PC := 48.
        ].
        recoveredBlock11Step = 48 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 49.
        ].
        recoveredBlock11Step = 49 ifTrue: [
            recoveredLocal1 := recoveredBlock11Stack2.
            recoveredBlock11PC := 52.
        ].
        recoveredBlock11Step = 52 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2033540c; bytecode file offset 0xc31ce4"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
moveGO: recoveredArg1 toSGHierarchyGO: recoveredArg2 display: recoveredArg3
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
            (recoveredStack0) remove: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicGraphObject.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) setManager: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicGraphObject.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) frame.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) displayOneRect: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) frame.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2037802c; bytecode file offset 0xc74910"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
getMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphObject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getMenu.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicGraphObject.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) resolveIsPossible.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) addSingleLine.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'resolveHierarchy'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) resolveHierarchyLabel.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := [
    true
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) add: (recoveredStack1) label: (recoveredStack2) enable: (recoveredStack3) for: (recoveredStack4).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) addSingleLine.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 'nextLevel'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := 'Next ~Level'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock51Value0 recoveredBlock51Value1 recoveredBlock51Value2 |
    recoveredBlock51Value0 := (self) basicGraphObject.
    recoveredBlock51Value1 := (recoveredBlock51Value0) viewHideContents.
    recoveredBlock51Value2 := (recoveredBlock51Value1) not.
    recoveredBlock51Value2
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) for: (recoveredStack5).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20378340; bytecode file offset 0xc74c24"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
visualChildrenForGraphicBlockSection
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) children.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := [:block280f21ccArg1 | 
    | block280f21ccValue0 block280f21ccValue1 |
    block280f21ccValue0 := block280f21ccArg1.
    block280f21ccValue1 := (block280f21ccValue0) isSGHierarchyWrapperGO.
    block280f21ccValue1
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) select: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Stack0 recoveredBlock32Stack1 recoveredBlock32Stack2 recoveredBlock32Stack3 recoveredBlock32PC recoveredBlock32Step recoveredBlock32Done recoveredBlock32Result |
    recoveredBlock32Stack0 := self.
    recoveredBlock32PC := 38.
    recoveredBlock32Done := false.
    [recoveredBlock32Done not] whileTrue: [
        recoveredBlock32Step := recoveredBlock32PC.
        recoveredBlock32Step = 38 ifTrue: [
            recoveredBlock32Stack1 := nil.
            recoveredBlock32PC := 39.
        ].
        recoveredBlock32Step = 39 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 40.
        ].
        recoveredBlock32Step = 40 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) isGraphicObjectWrapper.
            recoveredBlock32PC := 42.
        ].
        recoveredBlock32Step = 42 ifTrue: [
            (recoveredBlock32Stack2) ifTrue: [recoveredBlock32PC := 46] ifFalse: [recoveredBlock32PC := 63].
        ].
        recoveredBlock32Step = 46 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 47.
        ].
        recoveredBlock32Step = 47 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) graphObject.
            recoveredBlock32PC := 49.
        ].
        recoveredBlock32Step = 49 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) isSGHierarchyWrapperGO.
            recoveredBlock32PC := 51.
        ].
        recoveredBlock32Step = 51 ifTrue: [
            (recoveredBlock32Stack2) ifTrue: [recoveredBlock32PC := 54] ifFalse: [recoveredBlock32PC := 63].
        ].
        recoveredBlock32Step = 54 ifTrue: [
            recoveredBlock32PC := 55.
        ].
        recoveredBlock32Step = 55 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal1.
            recoveredBlock32PC := 58.
        ].
        recoveredBlock32Step = 58 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 59.
        ].
        recoveredBlock32Step = 59 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) graphObject.
            recoveredBlock32PC := 61.
        ].
        recoveredBlock32Step = 61 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) add: (recoveredBlock32Stack2).
            recoveredBlock32PC := 63.
        ].
        recoveredBlock32Step = 63 ifTrue: [
            recoveredBlock32Result := recoveredBlock32Stack1.
            recoveredBlock32Done := true.
        ].
    ].
    recoveredBlock32Result
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203847b0; bytecode file offset 0xc8108c"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
allBlocks
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) children.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
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
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) basicGraphObject.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) isSGHierarchyGO.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 26] ifFalse: [recoveredBlock11PC := 42].
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) allBlocks.
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) , (recoveredBlock11Stack2).
            recoveredBlock11PC := 34.
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 35.
        ].
        recoveredBlock11Step = 35 ifTrue: [
            recoveredLocal1 := recoveredBlock11Stack2.
            recoveredBlock11PC := 38.
        ].
        recoveredBlock11Step = 38 ifTrue: [
            recoveredBlock11PC := 65.
        ].
        recoveredBlock11Step = 42 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 43.
        ].
        recoveredBlock11Step = 43 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 44.
        ].
        recoveredBlock11Step = 44 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) basicGraphObject.
            recoveredBlock11PC := 45.
        ].
        recoveredBlock11Step = 45 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isBlockGO.
            recoveredBlock11PC := 47.
        ].
        recoveredBlock11Step = 47 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 50] ifFalse: [recoveredBlock11PC := 65].
        ].
        recoveredBlock11Step = 50 ifTrue: [
            recoveredBlock11PC := 51.
        ].
        recoveredBlock11Step = 51 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 54.
        ].
        recoveredBlock11Step = 54 ifTrue: [
            recoveredBlock11Stack2 := Array.
            recoveredBlock11PC := 56.
        ].
        recoveredBlock11Step = 56 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Arg1.
            recoveredBlock11PC := 57.
        ].
        recoveredBlock11Step = 57 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) with: (recoveredBlock11Stack3).
            recoveredBlock11PC := 59.
        ].
        recoveredBlock11Step = 59 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) , (recoveredBlock11Stack2).
            recoveredBlock11PC := 61.
        ].
        recoveredBlock11Step = 61 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 62.
        ].
        recoveredBlock11Step = 62 ifTrue: [
            recoveredLocal1 := recoveredBlock11Stack2.
            recoveredBlock11PC := 65.
        ].
        recoveredBlock11Step = 65 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20392594; bytecode file offset 0xc8ee94"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
printingSize
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) pageFormat.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) surroundingRectangle.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) extent.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := CgScreen.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) pageSize.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) widthMM.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) height.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := (recoveredStack3) heightMM.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) / (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) truncated.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) printingSize.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203df658; bytecode file offset 0xcdbf2c"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
newPositionStartPos: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := PinDistance.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
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
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 82.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPointedChildGOFor: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) pageSize.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 85].
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203e30f4; bytecode file offset 0xcdf9c8"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
establishNewConnectionConnArray: recoveredArg1 interfaceElementA: recoveredArg2 interfaceElementB: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) graphObject.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) connectionPoint.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := (recoveredStack4) connectionPoint.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWith: (recoveredStack2) startPoint: (recoveredStack3) endPoint: (recoveredStack4).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) connectionPoint.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) position.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) linkPoint: (recoveredStack2) moveTo: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := (recoveredStack3) connectionPoint.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := (recoveredStack3) position.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) linkPoint: (recoveredStack2) moveTo: (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 82.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) graphObject.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) connectionPoint.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack4 := (recoveredStack4) connectionPoint.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWith: (recoveredStack2) startPoint: (recoveredStack3) endPoint: (recoveredStack4).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := (recoveredStack3) connectionPoint.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := (recoveredStack3) position.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) linkPoint: (recoveredStack2) moveTo: (recoveredStack3).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := (recoveredStack3) connectionPoint.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := (recoveredStack3) position.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) linkPoint: (recoveredStack2) moveTo: (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) takeOverInformationFrom: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203f56f0; bytecode file offset 0xcf1fd4"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
surroundingRectangle
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) corner: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Stack0 recoveredBlock37Stack1 recoveredBlock37Stack2 recoveredBlock37Stack3 recoveredBlock37PC recoveredBlock37Step recoveredBlock37Done recoveredBlock37Result |
    recoveredBlock37Stack0 := self.
    recoveredBlock37PC := 44.
    recoveredBlock37Done := false.
    [recoveredBlock37Done not] whileTrue: [
        recoveredBlock37Step := recoveredBlock37PC.
        recoveredBlock37Step = 44 ifTrue: [
            recoveredBlock37Stack1 := nil.
            recoveredBlock37PC := 45.
        ].
        recoveredBlock37Step = 45 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Arg1.
            recoveredBlock37PC := 46.
        ].
        recoveredBlock37Step = 46 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) isVisible.
            recoveredBlock37PC := 48.
        ].
        recoveredBlock37Step = 48 ifTrue: [
            (recoveredBlock37Stack2) ifTrue: [recoveredBlock37PC := 52] ifFalse: [recoveredBlock37PC := 61].
        ].
        recoveredBlock37Step = 52 ifTrue: [
            recoveredBlock37PC := 53.
        ].
        recoveredBlock37Step = 53 ifTrue: [
            recoveredBlock37Stack1 := recoveredLocal2.
            recoveredBlock37PC := 56.
        ].
        recoveredBlock37Step = 56 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Arg1.
            recoveredBlock37PC := 57.
        ].
        recoveredBlock37Step = 57 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) giveRedisplayRects.
            recoveredBlock37PC := 59.
        ].
        recoveredBlock37Step = 59 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) addAll: (recoveredBlock37Stack2).
            recoveredBlock37PC := 61.
        ].
        recoveredBlock37Step = 61 ifTrue: [
            recoveredBlock37Result := recoveredBlock37Stack1.
            recoveredBlock37Done := true.
        ].
    ].
    recoveredBlock37Result
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 85].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) corner: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) enclosingRectOf: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2042f078; bytecode file offset 0xd2b974"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
buildSGHierarchyGOFor: recoveredArg1 wrapperClass: recoveredArg2 prepareCalls: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) controller.
    recoveredValue1 := [
    | recoveredBlock5Local1 recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5Stack5 recoveredBlock5Stack6 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := recoveredArg1.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack2 := [:block280fd41cArg1 | 
    | block280fd41cStack0 block280fd41cStack1 block280fd41cStack2 block280fd41cStack3 block280fd41cPC block280fd41cStep block280fd41cDone block280fd41cResult |
    block280fd41cStack0 := self.
    block280fd41cPC := 4.
    block280fd41cDone := false.
    [block280fd41cDone not] whileTrue: [
        block280fd41cStep := block280fd41cPC.
        block280fd41cStep = 4 ifTrue: [
            block280fd41cStack1 := false.
            block280fd41cPC := 5.
        ].
        block280fd41cStep = 5 ifTrue: [
            block280fd41cStack2 := block280fd41cArg1.
            block280fd41cPC := 6.
        ].
        block280fd41cStep = 6 ifTrue: [
            block280fd41cStack2 := (block280fd41cStack2) basicGraphObject.
            block280fd41cPC := 7.
        ].
        block280fd41cStep = 7 ifTrue: [
            block280fd41cStack2 := (block280fd41cStack2) isConnectionGO.
            block280fd41cPC := 8.
        ].
        block280fd41cStep = 8 ifTrue: [
            (block280fd41cStack2) ifTrue: [block280fd41cPC := 18] ifFalse: [block280fd41cPC := 12].
        ].
        block280fd41cStep = 12 ifTrue: [
            block280fd41cPC := 13.
        ].
        block280fd41cStep = 13 ifTrue: [
            block280fd41cStack1 := block280fd41cArg1.
            block280fd41cPC := 14.
        ].
        block280fd41cStep = 14 ifTrue: [
            block280fd41cStack1 := (block280fd41cStack1) basicGraphObject.
            block280fd41cPC := 15.
        ].
        block280fd41cStep = 15 ifTrue: [
            block280fd41cStack1 := (block280fd41cStack1) isComposingGO.
            block280fd41cPC := 17.
        ].
        block280fd41cStep = 17 ifTrue: [
            block280fd41cStack1 := (block280fd41cStack1) not.
            block280fd41cPC := 18.
        ].
        block280fd41cStep = 18 ifTrue: [
            block280fd41cResult := block280fd41cStack1.
            block280fd41cDone := true.
        ].
    ].
    block280fd41cResult
].
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5PC := 35.
        ].
        recoveredBlock5Step = 35 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) select: (recoveredBlock5Stack2).
            recoveredBlock5PC := 37.
        ].
        recoveredBlock5Step = 37 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack1.
            recoveredBlock5PC := 38.
        ].
        recoveredBlock5Step = 38 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 39.
        ].
        recoveredBlock5Step = 39 ifTrue: [
            recoveredBlock5Stack2 := self.
            recoveredBlock5PC := 40.
        ].
        recoveredBlock5Step = 40 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Local1.
            recoveredBlock5PC := 41.
        ].
        recoveredBlock5Step = 41 ifTrue: [
            recoveredBlock5Stack4 := recoveredArg2.
            recoveredBlock5PC := 44.
        ].
        recoveredBlock5Step = 44 ifTrue: [
            recoveredBlock5Stack5 := recoveredArg3.
            recoveredBlock5PC := 47.
        ].
        recoveredBlock5Step = 47 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) buildSGHierarchyGOForLocal: (recoveredBlock5Stack3) withClass: (recoveredBlock5Stack4) prepareCalls: (recoveredBlock5Stack5).
            recoveredBlock5PC := 50.
        ].
        recoveredBlock5Step = 50 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Stack2.
            recoveredBlock5PC := 51.
        ].
        recoveredBlock5Step = 51 ifTrue: [
            recoveredLocal1 := recoveredBlock5Stack3.
            recoveredBlock5PC := 54.
        ].
        recoveredBlock5Step = 54 ifTrue: [
            (recoveredBlock5Stack2 ~~ nil) ifTrue: [recoveredBlock5PC := 61] ifFalse: [recoveredBlock5PC := 58].
        ].
        recoveredBlock5Step = 58 ifTrue: [
            recoveredBlock5PC := 59.
        ].
        recoveredBlock5Step = 59 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 60.
        ].
        recoveredBlock5Step = 60 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 61 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) doWithoutMemento: (recoveredValue1).
    recoveredValue2 := ('Shikhar') == ('Call_56341').
    recoveredValue3 := (self) connectionChildren.
    recoveredValue4 := [:recoveredBlock73Arg1 | 
    | recoveredBlock73Value0 recoveredBlock73Value1 recoveredBlock73Value2 recoveredBlock73Value3 recoveredBlock73Value4 recoveredBlock73Value5 recoveredBlock73Value6 |
    recoveredBlock73Value0 := recoveredBlock73Arg1.
    recoveredBlock73Value1 := (recoveredBlock73Value0) graphObject.
    recoveredBlock73Value2 := (self) contents.
    recoveredBlock73Value3 := (recoveredBlock73Value2) controller.
    recoveredBlock73Value4 := (recoveredBlock73Value3) owner.
    recoveredBlock73Value5 := (recoveredBlock73Value4) datamodelManager.
    recoveredBlock73Value6 := (recoveredBlock73Value1) updateLineStyleDatamodelManager: (recoveredBlock73Value5).
    recoveredBlock73Value6
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := (self) controller.
    (recoveredValue5) graphicsModified: (true).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x204e3e64; bytecode file offset 0xde074c"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
propagateConnectionTypesDatamodelManager: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) hierarchyChildren.
    recoveredValue5 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 |
    recoveredBlock17Value0 := recoveredLocal1.
    recoveredBlock17Value1 := recoveredBlock17Arg1.
    recoveredBlock17Value2 := (recoveredBlock17Value1) connectionChildren.
    recoveredBlock17Value3 := (recoveredBlock17Value0) addAll: (recoveredBlock17Value2).
    recoveredBlock17Value3
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Local1 recoveredBlock37Local2 recoveredBlock37Local3 recoveredBlock37Stack0 recoveredBlock37Stack1 recoveredBlock37Stack2 recoveredBlock37Stack3 recoveredBlock37Stack4 recoveredBlock37Stack5 recoveredBlock37PC recoveredBlock37Step recoveredBlock37Done recoveredBlock37Result |
    recoveredBlock37Stack0 := self.
    recoveredBlock37PC := 44.
    recoveredBlock37Done := false.
    [recoveredBlock37Done not] whileTrue: [
        recoveredBlock37Step := recoveredBlock37PC.
        recoveredBlock37Step = 44 ifTrue: [
            recoveredBlock37Stack1 := recoveredBlock37Arg1.
            recoveredBlock37PC := 45.
        ].
        recoveredBlock37Step = 45 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) startGO.
            recoveredBlock37PC := 47.
        ].
        recoveredBlock37Step = 47 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Stack1.
            recoveredBlock37PC := 48.
        ].
        recoveredBlock37Step = 48 ifTrue: [
            recoveredBlock37Local3 := recoveredBlock37Stack2.
            recoveredBlock37PC := 49.
        ].
        recoveredBlock37Step = 49 ifTrue: [
            (recoveredBlock37Stack1 ~~ nil) ifTrue: [recoveredBlock37PC := 54] ifFalse: [recoveredBlock37PC := 52].
        ].
        recoveredBlock37Step = 52 ifTrue: [
            recoveredBlock37Stack1 := nil.
            recoveredBlock37PC := 53.
        ].
        recoveredBlock37Step = 53 ifTrue: [
            ^recoveredBlock37Stack1
        ].
        recoveredBlock37Step = 54 ifTrue: [
            recoveredBlock37Stack1 := recoveredBlock37Arg1.
            recoveredBlock37PC := 55.
        ].
        recoveredBlock37Step = 55 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) endGO.
            recoveredBlock37PC := 57.
        ].
        recoveredBlock37Step = 57 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Stack1.
            recoveredBlock37PC := 58.
        ].
        recoveredBlock37Step = 58 ifTrue: [
            recoveredBlock37Local2 := recoveredBlock37Stack2.
            recoveredBlock37PC := 59.
        ].
        recoveredBlock37Step = 59 ifTrue: [
            (recoveredBlock37Stack1 ~~ nil) ifTrue: [recoveredBlock37PC := 64] ifFalse: [recoveredBlock37PC := 62].
        ].
        recoveredBlock37Step = 62 ifTrue: [
            recoveredBlock37Stack1 := nil.
            recoveredBlock37PC := 63.
        ].
        recoveredBlock37Step = 63 ifTrue: [
            ^recoveredBlock37Stack1
        ].
        recoveredBlock37Step = 64 ifTrue: [
            recoveredBlock37Stack1 := recoveredBlock37Local3.
            recoveredBlock37PC := 65.
        ].
        recoveredBlock37Step = 65 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) typeID.
            recoveredBlock37PC := 67.
        ].
        recoveredBlock37Step = 67 ifTrue: [
            recoveredBlock37Stack2 := 0.
            recoveredBlock37PC := 69.
        ].
        recoveredBlock37Step = 69 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) = (recoveredBlock37Stack2).
            recoveredBlock37PC := 70.
        ].
        recoveredBlock37Step = 70 ifTrue: [
            (recoveredBlock37Stack1) ifTrue: [recoveredBlock37PC := 74] ifFalse: [recoveredBlock37PC := 99].
        ].
        recoveredBlock37Step = 74 ifTrue: [
            recoveredBlock37Stack1 := self.
            recoveredBlock37PC := 75.
        ].
        recoveredBlock37Step = 75 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Local3.
            recoveredBlock37PC := 76.
        ].
        recoveredBlock37Step = 76 ifTrue: [
            recoveredBlock37Stack3 := recoveredLocal2.
            recoveredBlock37PC := 79.
        ].
        recoveredBlock37Step = 79 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) getTypeForNodeGO: (recoveredBlock37Stack2) visitedNodes: (recoveredBlock37Stack3).
            recoveredBlock37PC := 81.
        ].
        recoveredBlock37Step = 81 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Stack1.
            recoveredBlock37PC := 82.
        ].
        recoveredBlock37Step = 82 ifTrue: [
            recoveredBlock37Local1 := recoveredBlock37Stack2.
            recoveredBlock37PC := 83.
        ].
        recoveredBlock37Step = 83 ifTrue: [
            recoveredBlock37Stack2 := 0.
            recoveredBlock37PC := 85.
        ].
        recoveredBlock37Step = 85 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) ~= (recoveredBlock37Stack2).
            recoveredBlock37PC := 86.
        ].
        recoveredBlock37Step = 86 ifTrue: [
            (recoveredBlock37Stack1) ifTrue: [recoveredBlock37PC := 90] ifFalse: [recoveredBlock37PC := 97].
        ].
        recoveredBlock37Step = 90 ifTrue: [
            recoveredBlock37Stack1 := recoveredBlock37Local3.
            recoveredBlock37PC := 91.
        ].
        recoveredBlock37Step = 91 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Local1.
            recoveredBlock37PC := 92.
        ].
        recoveredBlock37Step = 92 ifTrue: [
            recoveredBlock37Stack3 := recoveredArg1.
            recoveredBlock37PC := 95.
        ].
        recoveredBlock37Step = 95 ifTrue: [
            (recoveredBlock37Stack1) dynamicTypeID: (recoveredBlock37Stack2) datamodelManager: (recoveredBlock37Stack3).
            recoveredBlock37PC := 97.
        ].
        recoveredBlock37Step = 97 ifTrue: [
            recoveredBlock37Stack1 := nil.
            recoveredBlock37PC := 98.
        ].
        recoveredBlock37Step = 98 ifTrue: [
            recoveredBlock37Local1 := recoveredBlock37Stack1.
            recoveredBlock37PC := 99.
        ].
        recoveredBlock37Step = 99 ifTrue: [
            recoveredBlock37Stack1 := nil.
            recoveredBlock37PC := 100.
        ].
        recoveredBlock37Step = 100 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Local2.
            recoveredBlock37PC := 101.
        ].
        recoveredBlock37Step = 101 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) typeID.
            recoveredBlock37PC := 103.
        ].
        recoveredBlock37Step = 103 ifTrue: [
            recoveredBlock37Stack3 := 0.
            recoveredBlock37PC := 105.
        ].
        recoveredBlock37Step = 105 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) = (recoveredBlock37Stack3).
            recoveredBlock37PC := 106.
        ].
        recoveredBlock37Step = 106 ifTrue: [
            (recoveredBlock37Stack2) ifTrue: [recoveredBlock37PC := 110] ifFalse: [recoveredBlock37PC := 138].
        ].
        recoveredBlock37Step = 110 ifTrue: [
            recoveredBlock37PC := 111.
        ].
        recoveredBlock37Step = 111 ifTrue: [
            recoveredBlock37Stack1 := nil.
            recoveredBlock37PC := 112.
        ].
        recoveredBlock37Step = 112 ifTrue: [
            recoveredBlock37Stack2 := self.
            recoveredBlock37PC := 113.
        ].
        recoveredBlock37Step = 113 ifTrue: [
            recoveredBlock37Stack3 := recoveredBlock37Local2.
            recoveredBlock37PC := 114.
        ].
        recoveredBlock37Step = 114 ifTrue: [
            recoveredBlock37Stack4 := recoveredLocal2.
            recoveredBlock37PC := 117.
        ].
        recoveredBlock37Step = 117 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) getTypeForNodeGO: (recoveredBlock37Stack3) visitedNodes: (recoveredBlock37Stack4).
            recoveredBlock37PC := 119.
        ].
        recoveredBlock37Step = 119 ifTrue: [
            recoveredBlock37Stack3 := recoveredBlock37Stack2.
            recoveredBlock37PC := 120.
        ].
        recoveredBlock37Step = 120 ifTrue: [
            recoveredBlock37Local1 := recoveredBlock37Stack3.
            recoveredBlock37PC := 121.
        ].
        recoveredBlock37Step = 121 ifTrue: [
            recoveredBlock37Stack3 := 0.
            recoveredBlock37PC := 123.
        ].
        recoveredBlock37Step = 123 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) ~= (recoveredBlock37Stack3).
            recoveredBlock37PC := 124.
        ].
        recoveredBlock37Step = 124 ifTrue: [
            (recoveredBlock37Stack2) ifTrue: [recoveredBlock37PC := 128] ifFalse: [recoveredBlock37PC := 136].
        ].
        recoveredBlock37Step = 128 ifTrue: [
            recoveredBlock37PC := 129.
        ].
        recoveredBlock37Step = 129 ifTrue: [
            recoveredBlock37Stack1 := recoveredBlock37Local2.
            recoveredBlock37PC := 130.
        ].
        recoveredBlock37Step = 130 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Local1.
            recoveredBlock37PC := 131.
        ].
        recoveredBlock37Step = 131 ifTrue: [
            recoveredBlock37Stack3 := recoveredArg1.
            recoveredBlock37PC := 134.
        ].
        recoveredBlock37Step = 134 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) dynamicTypeID: (recoveredBlock37Stack2) datamodelManager: (recoveredBlock37Stack3).
            recoveredBlock37PC := 136.
        ].
        recoveredBlock37Step = 136 ifTrue: [
            recoveredBlock37Stack2 := nil.
            recoveredBlock37PC := 137.
        ].
        recoveredBlock37Step = 137 ifTrue: [
            recoveredBlock37Local1 := recoveredBlock37Stack2.
            recoveredBlock37PC := 138.
        ].
        recoveredBlock37Step = 138 ifTrue: [
            recoveredBlock37Result := recoveredBlock37Stack1.
            recoveredBlock37Done := true.
        ].
    ].
    recoveredBlock37Result
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := [:recoveredBlock144Arg1 | 
    | recoveredBlock144Value0 recoveredBlock144Value1 recoveredBlock144Value2 recoveredBlock144Value3 |
    recoveredBlock144Value0 := recoveredBlock144Arg1.
    recoveredBlock144Value1 := (recoveredBlock144Value0) basicGraphObject.
    recoveredBlock144Value2 := recoveredArg1.
    recoveredBlock144Value3 := (recoveredBlock144Value1) updateLineStyleDatamodelManager: (recoveredBlock144Value2).
    recoveredBlock144Value3
].
    (recoveredValue8) do: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x2057dbd8; bytecode file offset 0xe7a520"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
addPortFor: recoveredArg1 conn: recoveredArg2 gOInside: recoveredArg3 gOOutside: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) getGraphObject.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) getPosition.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := OrderedCollection.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := (recoveredStack4) basicGraphObject.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := (recoveredStack4) isResultPin.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := (recoveredStack4) not.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) portPosAndDir: (recoveredStack2) visitedPoints: (recoveredStack3) isInput: (recoveredStack4).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) isResultPin.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := SGResultConnectorGO.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) getUniqueConnectorOutName.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 69.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := SGArgumentConnectorGO.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) getUniqueConnectorInName.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) lineStyle.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := (recoveredStack3) controller.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWithLineStyle: (recoveredStack2) manager: (recoveredStack3).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack4 := (recoveredStack4) last.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack5 := PinLength.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack2) initAt: (recoveredStack3) direction: (recoveredStack4) length: (recoveredStack5).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (recoveredStack2) getPosition.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) addPortAt: (recoveredStack2) connector: (recoveredStack3) connectorName: (recoveredStack4).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := (recoveredStack2) frame.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack1) changeStarted.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) isArgumentPin.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 154].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) startGO.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) isArgumentPin.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) endGO.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredPC := 151.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) startGO.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredPC := 177.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) startGO.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) isResultPin.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 164] ifFalse: [recoveredPC := 172].
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := (recoveredStack1) endGO.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredPC := 177.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := (recoveredStack1) startGO.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack1) removeGO: (recoveredStack2) display: (recoveredStack3).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := SGConnectionWrapperGO.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := SGOrthogonalLineGO.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack3 := ConnectionLineStyle.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := (recoveredStack2) createWithLineStyle: (recoveredStack3) manager: (recoveredStack4).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack3 := (recoveredStack3) connectionPoint.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack4 := (recoveredStack4) connectionPoint.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWith: (recoveredStack2) startPoint: (recoveredStack3) endPoint: (recoveredStack4).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            (recoveredStack0) addChildGO: (recoveredStack1) display: (recoveredStack2).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := (recoveredStack1) giveRedisplayRects.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := (recoveredStack0) getInternalConnectorGO.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := (recoveredStack0) getConnectorGO.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := (recoveredStack0) getExternalConnectorGO.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := SGConnectionWrapperGO.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := SGOrthogonalLineGO.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack2 := ConnectionLineStyle.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWithLineStyle: (recoveredStack2) manager: (recoveredStack3).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := (recoveredStack2) connectionPoint.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack3 := (recoveredStack3) connectionPoint.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWith: (recoveredStack1) startPoint: (recoveredStack2) endPoint: (recoveredStack3).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            (recoveredStack0) addChildGO: (recoveredStack1) display: (recoveredStack2).
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20598370; bytecode file offset 0xe94ca0"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
printOnPrinter: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) surroundingRectangle.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) printingSize.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal11 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) scaleFactor.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) width.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) / (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) truncated.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) height.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) / (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) truncated.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredPC := 94.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) gc.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) window.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) prepareForDrawable: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) winHdc.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := PlatformConstants.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := 'MmAnisotropic'.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack1) setMapMode: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack1) setWindowOrgEx: (recoveredStack2) nY: (recoveredStack3) lpPoint: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack1) setViewportOrgEx: (recoveredStack2) nY: (recoveredStack3) lpPoint: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := 100.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack3 := 100.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack1) setWindowExtEx: (recoveredStack2) nY: (recoveredStack3) lpSize: (recoveredStack4).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0) setViewportExtEx: (recoveredStack1) nY: (recoveredStack2) lpSize: (recoveredStack3).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 275] ifFalse: [recoveredPC := 170].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) origin.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := (recoveredStack1) extent.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := (recoveredStack0) negated.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := [:recoveredBlock232Arg1 | 
    | recoveredBlock232Value0 recoveredBlock232Value1 recoveredBlock232Value2 |
    recoveredBlock232Value0 := recoveredBlock232Arg1.
    recoveredBlock232Value1 := recoveredLocal3.
    recoveredBlock232Value2 := (recoveredBlock232Value0) moveDelta: (recoveredBlock232Value1).
    recoveredBlock232Value2
].
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := [:block28114ebcArg1 | 
    | block28114ebcValue0 block28114ebcValue1 block28114ebcValue2 |
    block28114ebcValue0 := block28114ebcArg1.
    block28114ebcValue1 := (0) @ (0).
    block28114ebcValue2 := (block28114ebcValue0) moveDelta: (block28114ebcValue1).
    block28114ebcValue2
].
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := (recoveredStack0) displayChildrenOn: (recoveredStack1).
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack0 := (recoveredStack0) displayChildrenOn: (recoveredStack1).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2059f2d8; bytecode file offset 0xe9bc14"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
visualChildrenForSequenceCallSection
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
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
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := nil.
            recoveredBlock18PC := 25.
        ].
        recoveredBlock18Step = 25 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 26.
        ].
        recoveredBlock18Step = 26 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) isSGDataGO.
            recoveredBlock18PC := 28.
        ].
        recoveredBlock18Step = 28 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 38] ifFalse: [recoveredBlock18PC := 32].
        ].
        recoveredBlock18Step = 32 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 33.
        ].
        recoveredBlock18Step = 33 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) isSGCodeGO.
            recoveredBlock18PC := 35.
        ].
        recoveredBlock18Step = 35 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 38] ifFalse: [recoveredBlock18PC := 135].
        ].
        recoveredBlock18Step = 38 ifTrue: [
            recoveredBlock18PC := 39.
        ].
        recoveredBlock18Step = 39 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 40.
        ].
        recoveredBlock18Step = 40 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) interfaceGOs.
            recoveredBlock18PC := 42.
        ].
        recoveredBlock18Step = 42 ifTrue: [
            recoveredBlock18Stack2 := [:block281155a0Arg1 | 
    | block281155a0Stack0 block281155a0Stack1 block281155a0Stack2 block281155a0Stack3 block281155a0PC block281155a0Step block281155a0Done block281155a0Result |
    block281155a0Stack0 := self.
    block281155a0PC := 4.
    block281155a0Done := false.
    [block281155a0Done not] whileTrue: [
        block281155a0Step := block281155a0PC.
        block281155a0Step = 4 ifTrue: [
            block281155a0Stack1 := false.
            block281155a0PC := 5.
        ].
        block281155a0Step = 5 ifTrue: [
            block281155a0Stack2 := block281155a0Arg1.
            block281155a0PC := 6.
        ].
        block281155a0Step = 6 ifTrue: [
            block281155a0Stack2 := (block281155a0Stack2) isSelectorPort.
            block281155a0PC := 8.
        ].
        block281155a0Step = 8 ifTrue: [
            (block281155a0Stack2) ifTrue: [block281155a0PC := 12] ifFalse: [block281155a0PC := 29].
        ].
        block281155a0Step = 12 ifTrue: [
            block281155a0PC := 13.
        ].
        block281155a0Step = 13 ifTrue: [
            block281155a0Stack1 := false.
            block281155a0PC := 14.
        ].
        block281155a0Step = 14 ifTrue: [
            block281155a0Stack2 := block281155a0Arg1.
            block281155a0PC := 15.
        ].
        block281155a0Step = 15 ifTrue: [
            block281155a0Stack2 := (block281155a0Stack2) getSGCallGO.
            block281155a0PC := 17.
        ].
        block281155a0Step = 17 ifTrue: [
            (block281155a0Stack2 == nil) ifTrue: [block281155a0PC := 29] ifFalse: [block281155a0PC := 20].
        ].
        block281155a0Step = 20 ifTrue: [
            block281155a0PC := 21.
        ].
        block281155a0Step = 21 ifTrue: [
            block281155a0Stack1 := block281155a0Arg1.
            block281155a0PC := 22.
        ].
        block281155a0Step = 22 ifTrue: [
            block281155a0Stack1 := (block281155a0Stack1) getSGCallGO.
            block281155a0PC := 24.
        ].
        block281155a0Step = 24 ifTrue: [
            block281155a0Stack1 := (block281155a0Stack1) seqNo.
            block281155a0PC := 26.
        ].
        block281155a0Step = 26 ifTrue: [
            block281155a0Stack2 := 0.
            block281155a0PC := 28.
        ].
        block281155a0Step = 28 ifTrue: [
            block281155a0Stack1 := (block281155a0Stack1) ~= (block281155a0Stack2).
            block281155a0PC := 29.
        ].
        block281155a0Step = 29 ifTrue: [
            block281155a0Result := block281155a0Stack1.
            block281155a0Done := true.
        ].
    ].
    block281155a0Result
].
            recoveredBlock18PC := 44.
        ].
        recoveredBlock18Step = 44 ifTrue: [
            recoveredBlock18PC := 74.
        ].
        recoveredBlock18Step = 74 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) select: (recoveredBlock18Stack2).
            recoveredBlock18PC := 76.
        ].
        recoveredBlock18Step = 76 ifTrue: [
            recoveredLocal1 := recoveredBlock18Stack1.
            recoveredBlock18PC := 79.
        ].
        recoveredBlock18Step = 79 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal1.
            recoveredBlock18PC := 82.
        ].
        recoveredBlock18Step = 82 ifTrue: [
            recoveredBlock18Stack2 := [:block281155c4Arg1 :block281155c4Arg2 | 
    | block281155c4Stack0 block281155c4Stack1 block281155c4Stack2 block281155c4Stack3 block281155c4PC block281155c4Step block281155c4Done block281155c4Result |
    block281155c4Stack0 := self.
    block281155c4PC := 4.
    block281155c4Done := false.
    [block281155c4Done not] whileTrue: [
        block281155c4Step := block281155c4PC.
        block281155c4Step = 4 ifTrue: [
            block281155c4Stack1 := false.
            block281155c4PC := 5.
        ].
        block281155c4Step = 5 ifTrue: [
            block281155c4Stack2 := block281155c4Arg1.
            block281155c4PC := 6.
        ].
        block281155c4Step = 6 ifTrue: [
            block281155c4Stack2 := (block281155c4Stack2) getSGCallGO.
            block281155c4PC := 8.
        ].
        block281155c4Step = 8 ifTrue: [
            (block281155c4Stack2 == nil) ifTrue: [block281155c4PC := 22] ifFalse: [block281155c4PC := 12].
        ].
        block281155c4Step = 12 ifTrue: [
            block281155c4PC := 13.
        ].
        block281155c4Step = 13 ifTrue: [
            block281155c4Stack1 := block281155c4Arg1.
            block281155c4PC := 14.
        ].
        block281155c4Step = 14 ifTrue: [
            block281155c4Stack1 := (block281155c4Stack1) methodName.
            block281155c4PC := 16.
        ].
        block281155c4Step = 16 ifTrue: [
            block281155c4Stack2 := block281155c4Arg1.
            block281155c4PC := 17.
        ].
        block281155c4Step = 17 ifTrue: [
            block281155c4Stack2 := (block281155c4Stack2) methodAliasName.
            block281155c4PC := 19.
        ].
        block281155c4Step = 19 ifTrue: [
            block281155c4Stack1 := (block281155c4Stack1) equals: (block281155c4Stack2).
            block281155c4PC := 21.
        ].
        block281155c4Step = 21 ifTrue: [
            block281155c4Stack1 := (block281155c4Stack1) not.
            block281155c4PC := 22.
        ].
        block281155c4Step = 22 ifTrue: [
            block281155c4Result := block281155c4Stack1.
            block281155c4Done := true.
        ].
    ].
    block281155c4Result
].
            recoveredBlock18PC := 84.
        ].
        recoveredBlock18Step = 84 ifTrue: [
            recoveredBlock18PC := 107.
        ].
        recoveredBlock18Step = 107 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) asSortedCollection: (recoveredBlock18Stack2).
            recoveredBlock18PC := 109.
        ].
        recoveredBlock18Step = 109 ifTrue: [
            recoveredLocal1 := recoveredBlock18Stack1.
            recoveredBlock18PC := 112.
        ].
        recoveredBlock18Step = 112 ifTrue: [
            recoveredBlock18Stack1 := nil.
            recoveredBlock18PC := 113.
        ].
        recoveredBlock18Step = 113 ifTrue: [
            recoveredBlock18Stack2 := recoveredLocal1.
            recoveredBlock18PC := 116.
        ].
        recoveredBlock18Step = 116 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) notEmpty.
            recoveredBlock18PC := 118.
        ].
        recoveredBlock18Step = 118 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 122] ifFalse: [recoveredBlock18PC := 135].
        ].
        recoveredBlock18Step = 122 ifTrue: [
            recoveredBlock18PC := 123.
        ].
        recoveredBlock18Step = 123 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal2.
            recoveredBlock18PC := 126.
        ].
        recoveredBlock18Step = 126 ifTrue: [
            recoveredBlock18Stack2 := recoveredLocal1.
            recoveredBlock18PC := 129.
        ].
        recoveredBlock18Step = 129 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) first.
            recoveredBlock18PC := 131.
        ].
        recoveredBlock18Step = 131 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) getSGCallGO.
            recoveredBlock18PC := 133.
        ].
        recoveredBlock18Step = 133 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) add: (recoveredBlock18Stack2).
            recoveredBlock18PC := 135.
        ].
        recoveredBlock18Step = 135 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := [:block281155e8Arg1 | 
    | block281155e8Value0 block281155e8Value1 |
    block281155e8Value0 := block281155e8Arg1.
    block281155e8Value1 := (block281155e8Value0) isSGControlGO.
    block281155e8Value1
].
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := [:recoveredBlock160Arg1 | 
    | recoveredBlock160Local1 recoveredBlock160Stack0 recoveredBlock160Stack1 recoveredBlock160Stack2 recoveredBlock160Stack3 recoveredBlock160Stack4 recoveredBlock160PC recoveredBlock160Step recoveredBlock160Done recoveredBlock160Result |
    recoveredBlock160Stack0 := self.
    recoveredBlock160PC := 166.
    recoveredBlock160Done := false.
    [recoveredBlock160Done not] whileTrue: [
        recoveredBlock160Step := recoveredBlock160PC.
        recoveredBlock160Step = 166 ifTrue: [
            recoveredBlock160Stack1 := nil.
            recoveredBlock160PC := 167.
        ].
        recoveredBlock160Step = 167 ifTrue: [
            recoveredBlock160Stack2 := recoveredBlock160Arg1.
            recoveredBlock160PC := 168.
        ].
        recoveredBlock160Step = 168 ifTrue: [
            recoveredBlock160Stack2 := (recoveredBlock160Stack2) getSGCallGO.
            recoveredBlock160PC := 170.
        ].
        recoveredBlock160Step = 170 ifTrue: [
            recoveredBlock160Stack3 := recoveredBlock160Stack2.
            recoveredBlock160PC := 171.
        ].
        recoveredBlock160Step = 171 ifTrue: [
            recoveredBlock160Local1 := recoveredBlock160Stack3.
            recoveredBlock160PC := 172.
        ].
        recoveredBlock160Step = 172 ifTrue: [
            (recoveredBlock160Stack2 == nil) ifTrue: [recoveredBlock160PC := 183] ifFalse: [recoveredBlock160PC := 176].
        ].
        recoveredBlock160Step = 176 ifTrue: [
            recoveredBlock160PC := 177.
        ].
        recoveredBlock160Step = 177 ifTrue: [
            recoveredBlock160Stack1 := recoveredLocal3.
            recoveredBlock160PC := 180.
        ].
        recoveredBlock160Step = 180 ifTrue: [
            recoveredBlock160Stack2 := recoveredBlock160Local1.
            recoveredBlock160PC := 181.
        ].
        recoveredBlock160Step = 181 ifTrue: [
            recoveredBlock160Stack1 := (recoveredBlock160Stack1) add: (recoveredBlock160Stack2).
            recoveredBlock160PC := 183.
        ].
        recoveredBlock160Step = 183 ifTrue: [
            recoveredBlock160Result := recoveredBlock160Stack1.
            recoveredBlock160Done := true.
        ].
    ].
    recoveredBlock160Result
].
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := [:block2811560cArg1 | 
    | block2811560cValue0 block2811560cValue1 |
    block2811560cValue0 := block2811560cArg1.
    block2811560cValue1 := (block2811560cValue0) isStatementBlockWrapperGO.
    block2811560cValue1
].
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := [:block28115630Arg1 | 
    | block28115630Value0 block28115630Value1 block28115630Value2 |
    block28115630Value0 := block28115630Arg1.
    block28115630Value1 := (block28115630Value0) graphObject.
    block28115630Value2 := (block28115630Value1) getSGCallGO.
    block28115630Value2
].
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := [:block28115654Arg1 | 
    | block28115654Value0 block28115654Value1 |
    block28115654Value0 := block28115654Arg1.
    block28115654Value1 := (block28115654Value0) isSGControlGO.
    block28115654Value1
].
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := [:recoveredBlock234Arg1 | 
    | recoveredBlock234Value0 recoveredBlock234Value1 recoveredBlock234Value2 recoveredBlock234Value3 |
    recoveredBlock234Value0 := recoveredBlock234Arg1.
    recoveredBlock234Value1 := (recoveredBlock234Value0) connectedToCalls.
    recoveredBlock234Value2 := [:recoveredBlock234Block243Arg1 | 
    | recoveredBlock234Block243Value0 recoveredBlock234Block243Value1 recoveredBlock234Block243Value2 recoveredBlock234Block243Value3 |
    recoveredBlock234Block243Value0 := recoveredLocal3.
    recoveredBlock234Block243Value1 := recoveredBlock234Block243Arg1.
    recoveredBlock234Block243Value2 := [].
    recoveredBlock234Block243Value3 := (recoveredBlock234Block243Value0) remove: (recoveredBlock234Block243Value1) ifAbsent: (recoveredBlock234Block243Value2).
    recoveredBlock234Block243Value3
].
    recoveredBlock234Value3 := (recoveredBlock234Value1) do: (recoveredBlock234Value2).
    recoveredBlock234Value3
].
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 272] ifFalse: [recoveredPC := 287].
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortBlockSeqNo.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2060b800; bytecode file offset 0xf0816c"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
addPortsFor: recoveredArg1 conns: recoveredArg2 rect: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredLocal19 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) getGraphObject.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := SortedCollection.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:block2811d49cArg1 :block2811d49cArg2 | 
    | block2811d49cValue0 block2811d49cValue1 block2811d49cValue2 block2811d49cValue3 block2811d49cValue4 block2811d49cValue5 block2811d49cValue6 block2811d49cValue7 block2811d49cValue8 |
    block2811d49cValue0 := block2811d49cArg1.
    block2811d49cValue1 := (block2811d49cValue0) at: (3).
    block2811d49cValue2 := (block2811d49cValue1) getPosition.
    block2811d49cValue3 := (block2811d49cValue2) y.
    block2811d49cValue4 := block2811d49cArg2.
    block2811d49cValue5 := (block2811d49cValue4) at: (3).
    block2811d49cValue6 := (block2811d49cValue5) getPosition.
    block2811d49cValue7 := (block2811d49cValue6) y.
    block2811d49cValue8 := (block2811d49cValue3) <= (block2811d49cValue7).
    block2811d49cValue8
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortBlock: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := [:recoveredBlock52Arg1 | 
    | recoveredBlock52Stack0 recoveredBlock52Stack1 recoveredBlock52Stack2 recoveredBlock52Stack3 recoveredBlock52Stack4 recoveredBlock52Stack5 recoveredBlock52Stack6 recoveredBlock52PC recoveredBlock52Step recoveredBlock52Done recoveredBlock52Result |
    recoveredBlock52Stack0 := self.
    recoveredBlock52PC := 58.
    recoveredBlock52Done := false.
    [recoveredBlock52Done not] whileTrue: [
        recoveredBlock52Step := recoveredBlock52PC.
        recoveredBlock52Step = 58 ifTrue: [
            recoveredBlock52Stack1 := recoveredBlock52Arg1.
            recoveredBlock52PC := 59.
        ].
        recoveredBlock52Step = 59 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) startGO.
            recoveredBlock52PC := 61.
        ].
        recoveredBlock52Step = 61 ifTrue: [
            recoveredLocal8 := recoveredBlock52Stack1.
            recoveredBlock52PC := 64.
        ].
        recoveredBlock52Step = 64 ifTrue: [
            recoveredBlock52Stack1 := recoveredBlock52Arg1.
            recoveredBlock52PC := 65.
        ].
        recoveredBlock52Step = 65 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) endGO.
            recoveredBlock52PC := 67.
        ].
        recoveredBlock52Step = 67 ifTrue: [
            recoveredLocal7 := recoveredBlock52Stack1.
            recoveredBlock52PC := 70.
        ].
        recoveredBlock52Step = 70 ifTrue: [
            recoveredBlock52Stack1 := recoveredArg3.
            recoveredBlock52PC := 73.
        ].
        recoveredBlock52Step = 73 ifTrue: [
            recoveredBlock52Stack2 := recoveredLocal8.
            recoveredBlock52PC := 76.
        ].
        recoveredBlock52Step = 76 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) getPosition.
            recoveredBlock52PC := 78.
        ].
        recoveredBlock52Step = 78 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) containsPoint: (recoveredBlock52Stack2).
            recoveredBlock52PC := 80.
        ].
        recoveredBlock52Step = 80 ifTrue: [
            (recoveredBlock52Stack1) ifTrue: [recoveredBlock52PC := 96] ifFalse: [recoveredBlock52PC := 84].
        ].
        recoveredBlock52Step = 84 ifTrue: [
            recoveredBlock52Stack1 := recoveredBlock52Arg1.
            recoveredBlock52PC := 85.
        ].
        recoveredBlock52Step = 85 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) endGO.
            recoveredBlock52PC := 87.
        ].
        recoveredBlock52Step = 87 ifTrue: [
            recoveredLocal8 := recoveredBlock52Stack1.
            recoveredBlock52PC := 90.
        ].
        recoveredBlock52Step = 90 ifTrue: [
            recoveredBlock52Stack1 := recoveredBlock52Arg1.
            recoveredBlock52PC := 91.
        ].
        recoveredBlock52Step = 91 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) startGO.
            recoveredBlock52PC := 93.
        ].
        recoveredBlock52Step = 93 ifTrue: [
            recoveredLocal7 := recoveredBlock52Stack1.
            recoveredBlock52PC := 96.
        ].
        recoveredBlock52Step = 96 ifTrue: [
            recoveredBlock52Stack1 := recoveredLocal11.
            recoveredBlock52PC := 99.
        ].
        recoveredBlock52Step = 99 ifTrue: [
            recoveredBlock52Stack2 := Array.
            recoveredBlock52PC := 101.
        ].
        recoveredBlock52Step = 101 ifTrue: [
            recoveredBlock52Stack3 := recoveredBlock52Arg1.
            recoveredBlock52PC := 102.
        ].
        recoveredBlock52Step = 102 ifTrue: [
            recoveredBlock52Stack4 := recoveredLocal8.
            recoveredBlock52PC := 105.
        ].
        recoveredBlock52Step = 105 ifTrue: [
            recoveredBlock52Stack5 := recoveredLocal7.
            recoveredBlock52PC := 108.
        ].
        recoveredBlock52Step = 108 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) with: (recoveredBlock52Stack3) with: (recoveredBlock52Stack4) with: (recoveredBlock52Stack5).
            recoveredBlock52PC := 111.
        ].
        recoveredBlock52Step = 111 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) add: (recoveredBlock52Stack2).
            recoveredBlock52PC := 113.
        ].
        recoveredBlock52Step = 113 ifTrue: [
            recoveredBlock52Result := recoveredBlock52Stack1.
            recoveredBlock52Done := true.
        ].
    ].
    recoveredBlock52Result
].
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := [:recoveredBlock119Arg1 | 
    | recoveredBlock119Stack0 recoveredBlock119Stack1 recoveredBlock119Stack2 recoveredBlock119Stack3 recoveredBlock119Stack4 recoveredBlock119Stack5 recoveredBlock119Stack6 recoveredBlock119PC recoveredBlock119Step recoveredBlock119Done recoveredBlock119Result |
    recoveredBlock119Stack0 := self.
    recoveredBlock119PC := 126.
    recoveredBlock119Done := false.
    [recoveredBlock119Done not] whileTrue: [
        recoveredBlock119Step := recoveredBlock119PC.
        recoveredBlock119Step = 126 ifTrue: [
            recoveredBlock119Stack1 := recoveredBlock119Arg1.
            recoveredBlock119PC := 127.
        ].
        recoveredBlock119Step = 127 ifTrue: [
            recoveredBlock119Stack2 := 1.
            recoveredBlock119PC := 129.
        ].
        recoveredBlock119Step = 129 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) at: (recoveredBlock119Stack2).
            recoveredBlock119PC := 131.
        ].
        recoveredBlock119Step = 131 ifTrue: [
            recoveredLocal19 := recoveredBlock119Stack1.
            recoveredBlock119PC := 134.
        ].
        recoveredBlock119Step = 134 ifTrue: [
            recoveredBlock119Stack1 := recoveredBlock119Arg1.
            recoveredBlock119PC := 135.
        ].
        recoveredBlock119Step = 135 ifTrue: [
            recoveredBlock119Stack2 := 2.
            recoveredBlock119PC := 137.
        ].
        recoveredBlock119Step = 137 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) at: (recoveredBlock119Stack2).
            recoveredBlock119PC := 139.
        ].
        recoveredBlock119Step = 139 ifTrue: [
            recoveredLocal8 := recoveredBlock119Stack1.
            recoveredBlock119PC := 142.
        ].
        recoveredBlock119Step = 142 ifTrue: [
            recoveredBlock119Stack1 := recoveredBlock119Arg1.
            recoveredBlock119PC := 143.
        ].
        recoveredBlock119Step = 143 ifTrue: [
            recoveredBlock119Stack2 := 3.
            recoveredBlock119PC := 145.
        ].
        recoveredBlock119Step = 145 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) at: (recoveredBlock119Stack2).
            recoveredBlock119PC := 147.
        ].
        recoveredBlock119Step = 147 ifTrue: [
            recoveredLocal7 := recoveredBlock119Stack1.
            recoveredBlock119PC := 150.
        ].
        recoveredBlock119Step = 150 ifTrue: [
            recoveredBlock119Stack1 := recoveredLocal13.
            recoveredBlock119PC := 153.
        ].
        recoveredBlock119Step = 153 ifTrue: [
            recoveredBlock119Stack2 := recoveredLocal7.
            recoveredBlock119PC := 156.
        ].
        recoveredBlock119Step = 156 ifTrue: [
            recoveredBlock119Stack2 := (recoveredBlock119Stack2) getPosition.
            recoveredBlock119PC := 158.
        ].
        recoveredBlock119Step = 158 ifTrue: [
            recoveredBlock119Stack3 := OrderedCollection.
            recoveredBlock119PC := 160.
        ].
        recoveredBlock119Step = 160 ifTrue: [
            recoveredBlock119Stack3 := (recoveredBlock119Stack3) new.
            recoveredBlock119PC := 161.
        ].
        recoveredBlock119Step = 161 ifTrue: [
            recoveredBlock119Stack4 := recoveredLocal8.
            recoveredBlock119PC := 164.
        ].
        recoveredBlock119Step = 164 ifTrue: [
            recoveredBlock119Stack4 := (recoveredBlock119Stack4) basicGraphObject.
            recoveredBlock119PC := 166.
        ].
        recoveredBlock119Step = 166 ifTrue: [
            recoveredBlock119Stack4 := (recoveredBlock119Stack4) isResultPin.
            recoveredBlock119PC := 168.
        ].
        recoveredBlock119Step = 168 ifTrue: [
            recoveredBlock119Stack4 := (recoveredBlock119Stack4) not.
            recoveredBlock119PC := 169.
        ].
        recoveredBlock119Step = 169 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) portPosAndDir: (recoveredBlock119Stack2) visitedPoints: (recoveredBlock119Stack3) isInput: (recoveredBlock119Stack4).
            recoveredBlock119PC := 172.
        ].
        recoveredBlock119Step = 172 ifTrue: [
            recoveredLocal1 := recoveredBlock119Stack1.
            recoveredBlock119PC := 175.
        ].
        recoveredBlock119Step = 175 ifTrue: [
            recoveredBlock119Stack1 := recoveredLocal1.
            recoveredBlock119PC := 178.
        ].
        recoveredBlock119Step = 178 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) first.
            recoveredBlock119PC := 180.
        ].
        recoveredBlock119Step = 180 ifTrue: [
            recoveredLocal15 := recoveredBlock119Stack1.
            recoveredBlock119PC := 183.
        ].
        recoveredBlock119Step = 183 ifTrue: [
            recoveredBlock119Stack1 := recoveredLocal1.
            recoveredBlock119PC := 186.
        ].
        recoveredBlock119Step = 186 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) last.
            recoveredBlock119PC := 188.
        ].
        recoveredBlock119Step = 188 ifTrue: [
            recoveredLocal14 := recoveredBlock119Stack1.
            recoveredBlock119PC := 191.
        ].
        recoveredBlock119Step = 191 ifTrue: [
            recoveredBlock119Stack1 := recoveredLocal8.
            recoveredBlock119PC := 194.
        ].
        recoveredBlock119Step = 194 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) basicGraphObject.
            recoveredBlock119PC := 196.
        ].
        recoveredBlock119Step = 196 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) isResultPin.
            recoveredBlock119PC := 198.
        ].
        recoveredBlock119Step = 198 ifTrue: [
            (recoveredBlock119Stack1) ifTrue: [recoveredBlock119PC := 202] ifFalse: [recoveredBlock119PC := 218].
        ].
        recoveredBlock119Step = 202 ifTrue: [
            recoveredBlock119Stack1 := SGResultConnectorGO.
            recoveredBlock119PC := 204.
        ].
        recoveredBlock119Step = 204 ifTrue: [
            recoveredLocal12 := recoveredBlock119Stack1.
            recoveredBlock119PC := 207.
        ].
        recoveredBlock119Step = 207 ifTrue: [
            recoveredBlock119Stack1 := recoveredLocal13.
            recoveredBlock119PC := 210.
        ].
        recoveredBlock119Step = 210 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) getUniqueConnectorOutName.
            recoveredBlock119PC := 212.
        ].
        recoveredBlock119Step = 212 ifTrue: [
            recoveredLocal2 := recoveredBlock119Stack1.
            recoveredBlock119PC := 215.
        ].
        recoveredBlock119Step = 215 ifTrue: [
            recoveredBlock119PC := 231.
        ].
        recoveredBlock119Step = 218 ifTrue: [
            recoveredBlock119Stack1 := SGArgumentConnectorGO.
            recoveredBlock119PC := 220.
        ].
        recoveredBlock119Step = 220 ifTrue: [
            recoveredLocal12 := recoveredBlock119Stack1.
            recoveredBlock119PC := 223.
        ].
        recoveredBlock119Step = 223 ifTrue: [
            recoveredBlock119Stack1 := recoveredLocal13.
            recoveredBlock119PC := 226.
        ].
        recoveredBlock119Step = 226 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) getUniqueConnectorInName.
            recoveredBlock119PC := 228.
        ].
        recoveredBlock119Step = 228 ifTrue: [
            recoveredLocal2 := recoveredBlock119Stack1.
            recoveredBlock119PC := 231.
        ].
        recoveredBlock119Step = 231 ifTrue: [
            recoveredBlock119Stack1 := recoveredLocal12.
            recoveredBlock119PC := 234.
        ].
        recoveredBlock119Step = 234 ifTrue: [
            recoveredBlock119Stack2 := recoveredLocal13.
            recoveredBlock119PC := 237.
        ].
        recoveredBlock119Step = 237 ifTrue: [
            recoveredBlock119Stack2 := (recoveredBlock119Stack2) lineStyle.
            recoveredBlock119PC := 239.
        ].
        recoveredBlock119Step = 239 ifTrue: [
            recoveredBlock119Stack3 := self.
            recoveredBlock119PC := 240.
        ].
        recoveredBlock119Step = 240 ifTrue: [
            recoveredBlock119Stack3 := (recoveredBlock119Stack3) controller.
            recoveredBlock119PC := 242.
        ].
        recoveredBlock119Step = 242 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) createWithLineStyle: (recoveredBlock119Stack2) manager: (recoveredBlock119Stack3).
            recoveredBlock119PC := 244.
        ].
        recoveredBlock119Step = 244 ifTrue: [
            recoveredBlock119Stack2 := recoveredBlock119Stack1.
            recoveredBlock119PC := 245.
        ].
        recoveredBlock119Step = 245 ifTrue: [
            recoveredBlock119Stack3 := recoveredLocal15.
            recoveredBlock119PC := 248.
        ].
        recoveredBlock119Step = 248 ifTrue: [
            recoveredBlock119Stack4 := recoveredLocal14.
            recoveredBlock119PC := 251.
        ].
        recoveredBlock119Step = 251 ifTrue: [
            recoveredBlock119Stack5 := PinLength.
            recoveredBlock119PC := 253.
        ].
        recoveredBlock119Step = 253 ifTrue: [
            (recoveredBlock119Stack2) initAt: (recoveredBlock119Stack3) direction: (recoveredBlock119Stack4) length: (recoveredBlock119Stack5).
            recoveredBlock119PC := 256.
        ].
        recoveredBlock119Step = 256 ifTrue: [
            recoveredLocal17 := recoveredBlock119Stack1.
            recoveredBlock119PC := 259.
        ].
        recoveredBlock119Step = 259 ifTrue: [
            recoveredBlock119Stack1 := recoveredLocal13.
            recoveredBlock119PC := 262.
        ].
        recoveredBlock119Step = 262 ifTrue: [
            recoveredBlock119Stack2 := recoveredLocal7.
            recoveredBlock119PC := 265.
        ].
        recoveredBlock119Step = 265 ifTrue: [
            recoveredBlock119Stack2 := (recoveredBlock119Stack2) getPosition.
            recoveredBlock119PC := 267.
        ].
        recoveredBlock119Step = 267 ifTrue: [
            recoveredBlock119Stack3 := recoveredLocal17.
            recoveredBlock119PC := 270.
        ].
        recoveredBlock119Step = 270 ifTrue: [
            recoveredBlock119Stack4 := recoveredLocal2.
            recoveredBlock119PC := 273.
        ].
        recoveredBlock119Step = 273 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) addPortAt: (recoveredBlock119Stack2) connector: (recoveredBlock119Stack3) connectorName: (recoveredBlock119Stack4).
            recoveredBlock119PC := 276.
        ].
        recoveredBlock119Step = 276 ifTrue: [
            recoveredLocal18 := recoveredBlock119Stack1.
            recoveredBlock119PC := 279.
        ].
        recoveredBlock119Step = 279 ifTrue: [
            recoveredBlock119Stack1 := recoveredLocal6.
            recoveredBlock119PC := 282.
        ].
        recoveredBlock119Step = 282 ifTrue: [
            recoveredBlock119Stack2 := recoveredLocal18.
            recoveredBlock119PC := 285.
        ].
        recoveredBlock119Step = 285 ifTrue: [
            recoveredBlock119Stack2 := (recoveredBlock119Stack2) frame.
            recoveredBlock119PC := 287.
        ].
        recoveredBlock119Step = 287 ifTrue: [
            (recoveredBlock119Stack1) add: (recoveredBlock119Stack2).
            recoveredBlock119PC := 289.
        ].
        recoveredBlock119Step = 289 ifTrue: [
            recoveredBlock119Stack1 := recoveredLocal19.
            recoveredBlock119PC := 292.
        ].
        recoveredBlock119Step = 292 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) basicGraphObject.
            recoveredBlock119PC := 294.
        ].
        recoveredBlock119Step = 294 ifTrue: [
            (recoveredBlock119Stack1) changeStarted.
            recoveredBlock119PC := 296.
        ].
        recoveredBlock119Step = 296 ifTrue: [
            recoveredBlock119Stack1 := recoveredLocal17.
            recoveredBlock119PC := 299.
        ].
        recoveredBlock119Step = 299 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) isArgumentPin.
            recoveredBlock119PC := 301.
        ].
        recoveredBlock119Step = 301 ifTrue: [
            (recoveredBlock119Stack1) ifTrue: [recoveredBlock119PC := 304] ifFalse: [recoveredBlock119PC := 338].
        ].
        recoveredBlock119Step = 304 ifTrue: [
            recoveredBlock119Stack1 := recoveredLocal19.
            recoveredBlock119PC := 307.
        ].
        recoveredBlock119Step = 307 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) startGO.
            recoveredBlock119PC := 309.
        ].
        recoveredBlock119Step = 309 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) isArgumentPin.
            recoveredBlock119PC := 311.
        ].
        recoveredBlock119Step = 311 ifTrue: [
            (recoveredBlock119Stack1) ifTrue: [recoveredBlock119PC := 314] ifFalse: [recoveredBlock119PC := 326].
        ].
        recoveredBlock119Step = 314 ifTrue: [
            recoveredBlock119Stack1 := recoveredLocal19.
            recoveredBlock119PC := 317.
        ].
        recoveredBlock119Step = 317 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) endGO.
            recoveredBlock119PC := 319.
        ].
        recoveredBlock119Step = 319 ifTrue: [
            recoveredLocal3 := recoveredBlock119Stack1.
            recoveredBlock119PC := 322.
        ].
        recoveredBlock119Step = 322 ifTrue: [
            recoveredBlock119PC := 334.
        ].
        recoveredBlock119Step = 326 ifTrue: [
            recoveredBlock119Stack1 := recoveredLocal19.
            recoveredBlock119PC := 329.
        ].
        recoveredBlock119Step = 329 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) startGO.
            recoveredBlock119PC := 331.
        ].
        recoveredBlock119Step = 331 ifTrue: [
            recoveredLocal3 := recoveredBlock119Stack1.
            recoveredBlock119PC := 334.
        ].
        recoveredBlock119Step = 334 ifTrue: [
            recoveredBlock119PC := 368.
        ].
        recoveredBlock119Step = 338 ifTrue: [
            recoveredBlock119Stack1 := recoveredLocal19.
            recoveredBlock119PC := 341.
        ].
        recoveredBlock119Step = 341 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) startGO.
            recoveredBlock119PC := 343.
        ].
        recoveredBlock119Step = 343 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) isResultPin.
            recoveredBlock119PC := 345.
        ].
        recoveredBlock119Step = 345 ifTrue: [
            (recoveredBlock119Stack1) ifTrue: [recoveredBlock119PC := 348] ifFalse: [recoveredBlock119PC := 360].
        ].
        recoveredBlock119Step = 348 ifTrue: [
            recoveredBlock119Stack1 := recoveredLocal19.
            recoveredBlock119PC := 351.
        ].
        recoveredBlock119Step = 351 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) endGO.
            recoveredBlock119PC := 353.
        ].
        recoveredBlock119Step = 353 ifTrue: [
            recoveredLocal3 := recoveredBlock119Stack1.
            recoveredBlock119PC := 356.
        ].
        recoveredBlock119Step = 356 ifTrue: [
            recoveredBlock119PC := 368.
        ].
        recoveredBlock119Step = 360 ifTrue: [
            recoveredBlock119Stack1 := recoveredLocal19.
            recoveredBlock119PC := 363.
        ].
        recoveredBlock119Step = 363 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) startGO.
            recoveredBlock119PC := 365.
        ].
        recoveredBlock119Step = 365 ifTrue: [
            recoveredLocal3 := recoveredBlock119Stack1.
            recoveredBlock119PC := 368.
        ].
        recoveredBlock119Step = 368 ifTrue: [
            recoveredBlock119Stack1 := recoveredLocal19.
            recoveredBlock119PC := 371.
        ].
        recoveredBlock119Step = 371 ifTrue: [
            recoveredBlock119Stack2 := recoveredLocal19.
            recoveredBlock119PC := 374.
        ].
        recoveredBlock119Step = 374 ifTrue: [
            recoveredBlock119Stack3 := false.
            recoveredBlock119PC := 375.
        ].
        recoveredBlock119Step = 375 ifTrue: [
            (recoveredBlock119Stack1) removeGO: (recoveredBlock119Stack2) display: (recoveredBlock119Stack3).
            recoveredBlock119PC := 377.
        ].
        recoveredBlock119Step = 377 ifTrue: [
            recoveredBlock119Stack1 := SGConnectionWrapperGO.
            recoveredBlock119PC := 379.
        ].
        recoveredBlock119Step = 379 ifTrue: [
            recoveredBlock119Stack2 := SGOrthogonalLineGO.
            recoveredBlock119PC := 381.
        ].
        recoveredBlock119Step = 381 ifTrue: [
            recoveredBlock119Stack3 := ConnectionLineStyle.
            recoveredBlock119PC := 383.
        ].
        recoveredBlock119Step = 383 ifTrue: [
            recoveredBlock119Stack4 := nil.
            recoveredBlock119PC := 384.
        ].
        recoveredBlock119Step = 384 ifTrue: [
            recoveredBlock119Stack2 := (recoveredBlock119Stack2) createWithLineStyle: (recoveredBlock119Stack3) manager: (recoveredBlock119Stack4).
            recoveredBlock119PC := 386.
        ].
        recoveredBlock119Step = 386 ifTrue: [
            recoveredBlock119Stack3 := recoveredLocal17.
            recoveredBlock119PC := 389.
        ].
        recoveredBlock119Step = 389 ifTrue: [
            recoveredBlock119Stack3 := (recoveredBlock119Stack3) connectionPoint.
            recoveredBlock119PC := 391.
        ].
        recoveredBlock119Step = 391 ifTrue: [
            recoveredBlock119Stack4 := recoveredLocal3.
            recoveredBlock119PC := 394.
        ].
        recoveredBlock119Step = 394 ifTrue: [
            recoveredBlock119Stack4 := (recoveredBlock119Stack4) connectionPoint.
            recoveredBlock119PC := 396.
        ].
        recoveredBlock119Step = 396 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) createWith: (recoveredBlock119Stack2) startPoint: (recoveredBlock119Stack3) endPoint: (recoveredBlock119Stack4).
            recoveredBlock119PC := 399.
        ].
        recoveredBlock119Step = 399 ifTrue: [
            recoveredLocal10 := recoveredBlock119Stack1.
            recoveredBlock119PC := 402.
        ].
        recoveredBlock119Step = 402 ifTrue: [
            recoveredBlock119Stack1 := recoveredLocal10.
            recoveredBlock119PC := 405.
        ].
        recoveredBlock119Step = 405 ifTrue: [
            recoveredBlock119Stack2 := false.
            recoveredBlock119PC := 406.
        ].
        recoveredBlock119Step = 406 ifTrue: [
            (recoveredBlock119Stack0) addChildGO: (recoveredBlock119Stack1) display: (recoveredBlock119Stack2).
            recoveredBlock119PC := 408.
        ].
        recoveredBlock119Step = 408 ifTrue: [
            recoveredBlock119Stack0 := recoveredLocal6.
            recoveredBlock119PC := 411.
        ].
        recoveredBlock119Step = 411 ifTrue: [
            recoveredBlock119Stack1 := recoveredLocal19.
            recoveredBlock119PC := 414.
        ].
        recoveredBlock119Step = 414 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) basicGraphObject.
            recoveredBlock119PC := 416.
        ].
        recoveredBlock119Step = 416 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) giveRedisplayRects.
            recoveredBlock119PC := 418.
        ].
        recoveredBlock119Step = 418 ifTrue: [
            (recoveredBlock119Stack0) addAll: (recoveredBlock119Stack1).
            recoveredBlock119PC := 420.
        ].
        recoveredBlock119Step = 420 ifTrue: [
            recoveredBlock119Stack0 := recoveredLocal18.
            recoveredBlock119PC := 423.
        ].
        recoveredBlock119Step = 423 ifTrue: [
            recoveredBlock119Stack0 := (recoveredBlock119Stack0) getInternalConnectorGO.
            recoveredBlock119PC := 425.
        ].
        recoveredBlock119Step = 425 ifTrue: [
            recoveredBlock119Stack0 := (recoveredBlock119Stack0) getConnectorGO.
            recoveredBlock119PC := 427.
        ].
        recoveredBlock119Step = 427 ifTrue: [
            recoveredBlock119Stack0 := (recoveredBlock119Stack0) getExternalConnectorGO.
            recoveredBlock119PC := 429.
        ].
        recoveredBlock119Step = 429 ifTrue: [
            recoveredLocal9 := recoveredBlock119Stack0.
            recoveredBlock119PC := 432.
        ].
        recoveredBlock119Step = 432 ifTrue: [
            recoveredBlock119Stack0 := SGConnectionWrapperGO.
            recoveredBlock119PC := 434.
        ].
        recoveredBlock119Step = 434 ifTrue: [
            recoveredBlock119Stack1 := SGOrthogonalLineGO.
            recoveredBlock119PC := 436.
        ].
        recoveredBlock119Step = 436 ifTrue: [
            recoveredBlock119Stack2 := ConnectionLineStyle.
            recoveredBlock119PC := 438.
        ].
        recoveredBlock119Step = 438 ifTrue: [
            recoveredBlock119Stack3 := nil.
            recoveredBlock119PC := 439.
        ].
        recoveredBlock119Step = 439 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) createWithLineStyle: (recoveredBlock119Stack2) manager: (recoveredBlock119Stack3).
            recoveredBlock119PC := 441.
        ].
        recoveredBlock119Step = 441 ifTrue: [
            recoveredBlock119Stack2 := recoveredLocal8.
            recoveredBlock119PC := 444.
        ].
        recoveredBlock119Step = 444 ifTrue: [
            recoveredBlock119Stack2 := (recoveredBlock119Stack2) connectionPoint.
            recoveredBlock119PC := 446.
        ].
        recoveredBlock119Step = 446 ifTrue: [
            recoveredBlock119Stack3 := recoveredLocal9.
            recoveredBlock119PC := 449.
        ].
        recoveredBlock119Step = 449 ifTrue: [
            recoveredBlock119Stack3 := (recoveredBlock119Stack3) connectionPoint.
            recoveredBlock119PC := 451.
        ].
        recoveredBlock119Step = 451 ifTrue: [
            recoveredBlock119Stack0 := (recoveredBlock119Stack0) createWith: (recoveredBlock119Stack1) startPoint: (recoveredBlock119Stack2) endPoint: (recoveredBlock119Stack3).
            recoveredBlock119PC := 454.
        ].
        recoveredBlock119Step = 454 ifTrue: [
            recoveredLocal10 := recoveredBlock119Stack0.
            recoveredBlock119PC := 457.
        ].
        recoveredBlock119Step = 457 ifTrue: [
            recoveredBlock119Stack0 := recoveredArg1.
            recoveredBlock119PC := 460.
        ].
        recoveredBlock119Step = 460 ifTrue: [
            recoveredBlock119Stack1 := recoveredLocal10.
            recoveredBlock119PC := 463.
        ].
        recoveredBlock119Step = 463 ifTrue: [
            recoveredBlock119Stack2 := false.
            recoveredBlock119PC := 464.
        ].
        recoveredBlock119Step = 464 ifTrue: [
            recoveredBlock119Stack0 := (recoveredBlock119Stack0) addChildGO: (recoveredBlock119Stack1) display: (recoveredBlock119Stack2).
            recoveredBlock119PC := 466.
        ].
        recoveredBlock119Step = 466 ifTrue: [
            recoveredBlock119Result := recoveredBlock119Stack0.
            recoveredBlock119Done := true.
        ].
    ].
    recoveredBlock119Result
].
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20611714; bytecode file offset 0xf0e084"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
resolveBlockHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) basicGraphObject.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) hierarchyMGO.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            (recoveredBlock11Stack0) prepareCallsWhileMovedFromWrapper.
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            recoveredBlock11Stack0 := self.
            recoveredBlock11PC := 24.
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) basicGraphObject.
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) interfaceGOs.
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            recoveredBlock11Stack1 := [:block2811da3cArg1 | 
    | block2811da3cValue0 block2811da3cValue1 block2811da3cValue2 |
    block2811da3cValue0 := block2811da3cArg1.
    block2811da3cValue1 := (block2811da3cValue0) isSelectorPort.
    block2811da3cValue2 := (block2811da3cValue1) not.
    block2811da3cValue2
].
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11PC := 37.
        ].
        recoveredBlock11Step = 37 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) select: (recoveredBlock11Stack1).
            recoveredBlock11PC := 39.
        ].
        recoveredBlock11Step = 39 ifTrue: [
            recoveredBlock11Stack1 := [:recoveredBlock11Block39Arg1 | 
    | recoveredBlock11Block39Stack0 recoveredBlock11Block39Stack1 recoveredBlock11Block39Stack2 recoveredBlock11Block39Stack3 recoveredBlock11Block39Stack4 recoveredBlock11Block39PC recoveredBlock11Block39Step recoveredBlock11Block39Done recoveredBlock11Block39Result |
    recoveredBlock11Block39Stack0 := self.
    recoveredBlock11Block39PC := 46.
    recoveredBlock11Block39Done := false.
    [recoveredBlock11Block39Done not] whileTrue: [
        recoveredBlock11Block39Step := recoveredBlock11Block39PC.
        recoveredBlock11Block39Step = 46 ifTrue: [
            recoveredBlock11Block39Stack1 := nil.
            recoveredBlock11Block39PC := 47.
        ].
        recoveredBlock11Block39Step = 47 ifTrue: [
            recoveredLocal5 := recoveredBlock11Block39Stack1.
            recoveredBlock11Block39PC := 50.
        ].
        recoveredBlock11Block39Step = 50 ifTrue: [
            recoveredBlock11Block39Stack1 := nil.
            recoveredBlock11Block39PC := 51.
        ].
        recoveredBlock11Block39Step = 51 ifTrue: [
            recoveredLocal6 := recoveredBlock11Block39Stack1.
            recoveredBlock11Block39PC := 54.
        ].
        recoveredBlock11Block39Step = 54 ifTrue: [
            recoveredBlock11Block39Stack1 := recoveredBlock11Block39Arg1.
            recoveredBlock11Block39PC := 55.
        ].
        recoveredBlock11Block39Step = 55 ifTrue: [
            recoveredBlock11Block39Stack1 := (recoveredBlock11Block39Stack1) getExternalConnectorGO.
            recoveredBlock11Block39PC := 57.
        ].
        recoveredBlock11Block39Step = 57 ifTrue: [
            recoveredLocal8 := recoveredBlock11Block39Stack1.
            recoveredBlock11Block39PC := 60.
        ].
        recoveredBlock11Block39Step = 60 ifTrue: [
            recoveredBlock11Block39Stack1 := nil.
            recoveredBlock11Block39PC := 61.
        ].
        recoveredBlock11Block39Step = 61 ifTrue: [
            recoveredBlock11Block39Stack2 := recoveredBlock11Block39Arg1.
            recoveredBlock11Block39PC := 62.
        ].
        recoveredBlock11Block39Step = 62 ifTrue: [
            recoveredBlock11Block39Stack2 := (recoveredBlock11Block39Stack2) getInternalConnectorGO.
            recoveredBlock11Block39PC := 64.
        ].
        recoveredBlock11Block39Step = 64 ifTrue: [
            (recoveredBlock11Block39Stack2 == nil) ifTrue: [recoveredBlock11Block39PC := 365] ifFalse: [recoveredBlock11Block39PC := 68].
        ].
        recoveredBlock11Block39Step = 68 ifTrue: [
            recoveredBlock11Block39PC := 69.
        ].
        recoveredBlock11Block39Step = 69 ifTrue: [
            recoveredBlock11Block39Stack1 := recoveredBlock11Block39Arg1.
            recoveredBlock11Block39PC := 70.
        ].
        recoveredBlock11Block39Step = 70 ifTrue: [
            recoveredBlock11Block39Stack1 := (recoveredBlock11Block39Stack1) getInternalConnectorGO.
            recoveredBlock11Block39PC := 72.
        ].
        recoveredBlock11Block39Step = 72 ifTrue: [
            recoveredBlock11Block39Stack1 := (recoveredBlock11Block39Stack1) getConnectorGO.
            recoveredBlock11Block39PC := 74.
        ].
        recoveredBlock11Block39Step = 74 ifTrue: [
            recoveredBlock11Block39Stack1 := (recoveredBlock11Block39Stack1) getExternalConnectorGO.
            recoveredBlock11Block39PC := 76.
        ].
        recoveredBlock11Block39Step = 76 ifTrue: [
            recoveredLocal7 := recoveredBlock11Block39Stack1.
            recoveredBlock11Block39PC := 79.
        ].
        recoveredBlock11Block39Step = 79 ifTrue: [
            recoveredBlock11Block39Stack1 := recoveredLocal8.
            recoveredBlock11Block39PC := 82.
        ].
        recoveredBlock11Block39Step = 82 ifTrue: [
            recoveredBlock11Block39Stack1 := (recoveredBlock11Block39Stack1) isConnected.
            recoveredBlock11Block39PC := 84.
        ].
        recoveredBlock11Block39Step = 84 ifTrue: [
            (recoveredBlock11Block39Stack1) ifTrue: [recoveredBlock11Block39PC := 88] ifFalse: [recoveredBlock11Block39PC := 143].
        ].
        recoveredBlock11Block39Step = 88 ifTrue: [
            recoveredBlock11Block39Stack1 := Set.
            recoveredBlock11Block39PC := 90.
        ].
        recoveredBlock11Block39Step = 90 ifTrue: [
            recoveredBlock11Block39Stack2 := 0.
            recoveredBlock11Block39PC := 92.
        ].
        recoveredBlock11Block39Step = 92 ifTrue: [
            recoveredBlock11Block39Stack1 := (recoveredBlock11Block39Stack1) new: (recoveredBlock11Block39Stack2).
            recoveredBlock11Block39PC := 94.
        ].
        recoveredBlock11Block39Step = 94 ifTrue: [
            recoveredLocal6 := recoveredBlock11Block39Stack1.
            recoveredBlock11Block39PC := 97.
        ].
        recoveredBlock11Block39Step = 97 ifTrue: [
            recoveredBlock11Block39Stack1 := recoveredLocal8.
            recoveredBlock11Block39PC := 100.
        ].
        recoveredBlock11Block39Step = 100 ifTrue: [
            recoveredBlock11Block39Stack1 := (recoveredBlock11Block39Stack1) connectedGOs.
            recoveredBlock11Block39PC := 102.
        ].
        recoveredBlock11Block39Step = 102 ifTrue: [
            recoveredBlock11Block39Stack1 := (recoveredBlock11Block39Stack1) asArray.
            recoveredBlock11Block39PC := 104.
        ].
        recoveredBlock11Block39Step = 104 ifTrue: [
            recoveredLocal4 := recoveredBlock11Block39Stack1.
            recoveredBlock11Block39PC := 107.
        ].
        recoveredBlock11Block39Step = 107 ifTrue: [
            recoveredBlock11Block39Stack1 := recoveredLocal4.
            recoveredBlock11Block39PC := 110.
        ].
        recoveredBlock11Block39Step = 110 ifTrue: [
            recoveredBlock11Block39Stack2 := [:recoveredBlock11Block39Block110Arg1 | 
    | recoveredBlock11Block39Block110Value0 recoveredBlock11Block39Block110Value1 recoveredBlock11Block39Block110Value2 recoveredBlock11Block39Block110Value3 recoveredBlock11Block39Block110Value4 recoveredBlock11Block39Block110Value5 recoveredBlock11Block39Block110Value6 recoveredBlock11Block39Block110Value7 recoveredBlock11Block39Block110Value8 recoveredBlock11Block39Block110Value9 |
    recoveredBlock11Block39Block110Value0 := recoveredLocal6.
    recoveredBlock11Block39Block110Value1 := recoveredBlock11Block39Block110Arg1.
    recoveredBlock11Block39Block110Value2 := recoveredLocal8.
    recoveredBlock11Block39Block110Value3 := (recoveredBlock11Block39Block110Value1) opposedNode: (recoveredBlock11Block39Block110Value2).
    (recoveredBlock11Block39Block110Value0) add: (recoveredBlock11Block39Block110Value3).
    recoveredBlock11Block39Block110Value4 := recoveredLocal9.
    recoveredBlock11Block39Block110Value5 := recoveredBlock11Block39Block110Arg1.
    recoveredBlock11Block39Block110Value6 := (recoveredBlock11Block39Block110Value5) frame.
    (recoveredBlock11Block39Block110Value4) add: (recoveredBlock11Block39Block110Value6).
    recoveredBlock11Block39Block110Value7 := recoveredBlock11Block39Block110Arg1.
    recoveredBlock11Block39Block110Value8 := recoveredBlock11Block39Block110Arg1.
    recoveredBlock11Block39Block110Value9 := (recoveredBlock11Block39Block110Value7) removeGO: (recoveredBlock11Block39Block110Value8) display: (false).
    recoveredBlock11Block39Block110Value9
].
            recoveredBlock11Block39PC := 141.
        ].
        recoveredBlock11Block39Step = 141 ifTrue: [
            (recoveredBlock11Block39Stack1) do: (recoveredBlock11Block39Stack2).
            recoveredBlock11Block39PC := 143.
        ].
        recoveredBlock11Block39Step = 143 ifTrue: [
            recoveredBlock11Block39Stack1 := recoveredLocal7.
            recoveredBlock11Block39PC := 146.
        ].
        recoveredBlock11Block39Step = 146 ifTrue: [
            recoveredBlock11Block39Stack1 := (recoveredBlock11Block39Stack1) isConnected.
            recoveredBlock11Block39PC := 148.
        ].
        recoveredBlock11Block39Step = 148 ifTrue: [
            (recoveredBlock11Block39Stack1) ifTrue: [recoveredBlock11Block39PC := 152] ifFalse: [recoveredBlock11Block39PC := 207].
        ].
        recoveredBlock11Block39Step = 152 ifTrue: [
            recoveredBlock11Block39Stack1 := Set.
            recoveredBlock11Block39PC := 154.
        ].
        recoveredBlock11Block39Step = 154 ifTrue: [
            recoveredBlock11Block39Stack2 := 0.
            recoveredBlock11Block39PC := 156.
        ].
        recoveredBlock11Block39Step = 156 ifTrue: [
            recoveredBlock11Block39Stack1 := (recoveredBlock11Block39Stack1) new: (recoveredBlock11Block39Stack2).
            recoveredBlock11Block39PC := 158.
        ].
        recoveredBlock11Block39Step = 158 ifTrue: [
            recoveredLocal5 := recoveredBlock11Block39Stack1.
            recoveredBlock11Block39PC := 161.
        ].
        recoveredBlock11Block39Step = 161 ifTrue: [
            recoveredBlock11Block39Stack1 := recoveredLocal7.
            recoveredBlock11Block39PC := 164.
        ].
        recoveredBlock11Block39Step = 164 ifTrue: [
            recoveredBlock11Block39Stack1 := (recoveredBlock11Block39Stack1) connectedGOs.
            recoveredBlock11Block39PC := 166.
        ].
        recoveredBlock11Block39Step = 166 ifTrue: [
            recoveredBlock11Block39Stack1 := (recoveredBlock11Block39Stack1) asArray.
            recoveredBlock11Block39PC := 168.
        ].
        recoveredBlock11Block39Step = 168 ifTrue: [
            recoveredLocal4 := recoveredBlock11Block39Stack1.
            recoveredBlock11Block39PC := 171.
        ].
        recoveredBlock11Block39Step = 171 ifTrue: [
            recoveredBlock11Block39Stack1 := recoveredLocal4.
            recoveredBlock11Block39PC := 174.
        ].
        recoveredBlock11Block39Step = 174 ifTrue: [
            recoveredBlock11Block39Stack2 := [:recoveredBlock11Block39Block174Arg1 | 
    | recoveredBlock11Block39Block174Value0 recoveredBlock11Block39Block174Value1 recoveredBlock11Block39Block174Value2 recoveredBlock11Block39Block174Value3 recoveredBlock11Block39Block174Value4 recoveredBlock11Block39Block174Value5 recoveredBlock11Block39Block174Value6 recoveredBlock11Block39Block174Value7 recoveredBlock11Block39Block174Value8 recoveredBlock11Block39Block174Value9 |
    recoveredBlock11Block39Block174Value0 := recoveredLocal5.
    recoveredBlock11Block39Block174Value1 := recoveredBlock11Block39Block174Arg1.
    recoveredBlock11Block39Block174Value2 := recoveredLocal7.
    recoveredBlock11Block39Block174Value3 := (recoveredBlock11Block39Block174Value1) opposedNode: (recoveredBlock11Block39Block174Value2).
    (recoveredBlock11Block39Block174Value0) add: (recoveredBlock11Block39Block174Value3).
    recoveredBlock11Block39Block174Value4 := recoveredLocal9.
    recoveredBlock11Block39Block174Value5 := recoveredBlock11Block39Block174Arg1.
    recoveredBlock11Block39Block174Value6 := (recoveredBlock11Block39Block174Value5) frame.
    (recoveredBlock11Block39Block174Value4) add: (recoveredBlock11Block39Block174Value6).
    recoveredBlock11Block39Block174Value7 := recoveredBlock11Block39Block174Arg1.
    recoveredBlock11Block39Block174Value8 := recoveredBlock11Block39Block174Arg1.
    recoveredBlock11Block39Block174Value9 := (recoveredBlock11Block39Block174Value7) removeGO: (recoveredBlock11Block39Block174Value8) display: (false).
    recoveredBlock11Block39Block174Value9
].
            recoveredBlock11Block39PC := 205.
        ].
        recoveredBlock11Block39Step = 205 ifTrue: [
            (recoveredBlock11Block39Stack1) do: (recoveredBlock11Block39Stack2).
            recoveredBlock11Block39PC := 207.
        ].
        recoveredBlock11Block39Step = 207 ifTrue: [
            recoveredBlock11Block39Stack1 := nil.
            recoveredBlock11Block39PC := 208.
        ].
        recoveredBlock11Block39Step = 208 ifTrue: [
            recoveredBlock11Block39Stack2 := recoveredLocal5.
            recoveredBlock11Block39PC := 211.
        ].
        recoveredBlock11Block39Step = 211 ifTrue: [
            (recoveredBlock11Block39Stack2 == nil) ifTrue: [recoveredBlock11Block39PC := 365] ifFalse: [recoveredBlock11Block39PC := 214].
        ].
        recoveredBlock11Block39Step = 214 ifTrue: [
            recoveredBlock11Block39Stack2 := recoveredLocal6.
            recoveredBlock11Block39PC := 217.
        ].
        recoveredBlock11Block39Step = 217 ifTrue: [
            (recoveredBlock11Block39Stack2 == nil) ifTrue: [recoveredBlock11Block39PC := 365] ifFalse: [recoveredBlock11Block39PC := 220].
        ].
        recoveredBlock11Block39Step = 220 ifTrue: [
            recoveredBlock11Block39PC := 221.
        ].
        recoveredBlock11Block39Step = 221 ifTrue: [
            recoveredBlock11Block39Stack1 := recoveredLocal6.
            recoveredBlock11Block39PC := 224.
        ].
        recoveredBlock11Block39Step = 224 ifTrue: [
            recoveredBlock11Block39Stack1 := (recoveredBlock11Block39Stack1) size.
            recoveredBlock11Block39PC := 226.
        ].
        recoveredBlock11Block39Step = 226 ifTrue: [
            recoveredBlock11Block39Stack2 := 1.
            recoveredBlock11Block39PC := 228.
        ].
        recoveredBlock11Block39Step = 228 ifTrue: [
            recoveredBlock11Block39Stack1 := (recoveredBlock11Block39Stack1) = (recoveredBlock11Block39Stack2).
            recoveredBlock11Block39PC := 229.
        ].
        recoveredBlock11Block39Step = 229 ifTrue: [
            (recoveredBlock11Block39Stack1) ifTrue: [recoveredBlock11Block39PC := 232] ifFalse: [recoveredBlock11Block39PC := 294].
        ].
        recoveredBlock11Block39Step = 232 ifTrue: [
            recoveredBlock11Block39Stack1 := recoveredLocal5.
            recoveredBlock11Block39PC := 235.
        ].
        recoveredBlock11Block39Step = 235 ifTrue: [
            recoveredBlock11Block39Stack2 := [:recoveredBlock11Block39Block235Arg1 | 
    | recoveredBlock11Block39Block235Value0 recoveredBlock11Block39Block235Value1 recoveredBlock11Block39Block235Value2 recoveredBlock11Block39Block235Value3 recoveredBlock11Block39Block235Value4 recoveredBlock11Block39Block235Value5 recoveredBlock11Block39Block235Value6 recoveredBlock11Block39Block235Value7 recoveredBlock11Block39Block235Value8 recoveredBlock11Block39Block235Value9 recoveredBlock11Block39Block235Value10 recoveredBlock11Block39Block235Value11 recoveredBlock11Block39Block235Value12 recoveredBlock11Block39Block235Value13 recoveredBlock11Block39Block235Value14 recoveredBlock11Block39Block235Value15 recoveredBlock11Block39Block235Value16 recoveredBlock11Block39Block235Value17 |
    recoveredBlock11Block39Block235Value0 := SGConnectionWrapperGO.
    recoveredBlock11Block39Block235Value1 := SGOrthogonalLineGO.
    recoveredBlock11Block39Block235Value2 := ConnectionLineStyle.
    recoveredBlock11Block39Block235Value3 := (recoveredBlock11Block39Block235Value1) createWithLineStyle: (recoveredBlock11Block39Block235Value2) manager: (nil).
    recoveredBlock11Block39Block235Value4 := recoveredLocal6.
    recoveredBlock11Block39Block235Value5 := (recoveredBlock11Block39Block235Value4) asArray.
    recoveredBlock11Block39Block235Value6 := (recoveredBlock11Block39Block235Value5) first.
    recoveredBlock11Block39Block235Value7 := (recoveredBlock11Block39Block235Value6) connectionPoint.
    recoveredBlock11Block39Block235Value8 := recoveredBlock11Block39Block235Arg1.
    recoveredBlock11Block39Block235Value9 := (recoveredBlock11Block39Block235Value8) connectionPoint.
    recoveredBlock11Block39Block235Value10 := (recoveredBlock11Block39Block235Value0) createWith: (recoveredBlock11Block39Block235Value3) startPoint: (recoveredBlock11Block39Block235Value7) endPoint: (recoveredBlock11Block39Block235Value9).
    recoveredLocal3 := recoveredBlock11Block39Block235Value10.
    recoveredBlock11Block39Block235Value11 := parent.
    recoveredBlock11Block39Block235Value12 := recoveredLocal3.
    (recoveredBlock11Block39Block235Value11) addChildGO: (recoveredBlock11Block39Block235Value12) display: (false).
    recoveredBlock11Block39Block235Value13 := recoveredLocal9.
    recoveredBlock11Block39Block235Value14 := recoveredLocal3.
    recoveredBlock11Block39Block235Value15 := (recoveredBlock11Block39Block235Value14) basicGraphObject.
    recoveredBlock11Block39Block235Value16 := (recoveredBlock11Block39Block235Value15) frame.
    recoveredBlock11Block39Block235Value17 := (recoveredBlock11Block39Block235Value13) add: (recoveredBlock11Block39Block235Value16).
    recoveredBlock11Block39Block235Value17
].
            recoveredBlock11Block39PC := 289.
        ].
        recoveredBlock11Block39Step = 289 ifTrue: [
            recoveredBlock11Block39Stack1 := (recoveredBlock11Block39Stack1) do: (recoveredBlock11Block39Stack2).
            recoveredBlock11Block39PC := 291.
        ].
        recoveredBlock11Block39Step = 291 ifTrue: [
            recoveredBlock11Block39PC := 365.
        ].
        recoveredBlock11Block39Step = 294 ifTrue: [
            recoveredBlock11Block39Stack1 := nil.
            recoveredBlock11Block39PC := 295.
        ].
        recoveredBlock11Block39Step = 295 ifTrue: [
            recoveredBlock11Block39Stack2 := recoveredLocal5.
            recoveredBlock11Block39PC := 298.
        ].
        recoveredBlock11Block39Step = 298 ifTrue: [
            recoveredBlock11Block39Stack2 := (recoveredBlock11Block39Stack2) size.
            recoveredBlock11Block39PC := 300.
        ].
        recoveredBlock11Block39Step = 300 ifTrue: [
            recoveredBlock11Block39Stack3 := 1.
            recoveredBlock11Block39PC := 302.
        ].
        recoveredBlock11Block39Step = 302 ifTrue: [
            recoveredBlock11Block39Stack2 := (recoveredBlock11Block39Stack2) = (recoveredBlock11Block39Stack3).
            recoveredBlock11Block39PC := 303.
        ].
        recoveredBlock11Block39Step = 303 ifTrue: [
            (recoveredBlock11Block39Stack2) ifTrue: [recoveredBlock11Block39PC := 306] ifFalse: [recoveredBlock11Block39PC := 365].
        ].
        recoveredBlock11Block39Step = 306 ifTrue: [
            recoveredBlock11Block39PC := 307.
        ].
        recoveredBlock11Block39Step = 307 ifTrue: [
            recoveredBlock11Block39Stack1 := recoveredLocal6.
            recoveredBlock11Block39PC := 310.
        ].
        recoveredBlock11Block39Step = 310 ifTrue: [
            recoveredBlock11Block39Stack2 := [:recoveredBlock11Block39Block310Arg1 | 
    | recoveredBlock11Block39Block310Value0 recoveredBlock11Block39Block310Value1 recoveredBlock11Block39Block310Value2 recoveredBlock11Block39Block310Value3 recoveredBlock11Block39Block310Value4 recoveredBlock11Block39Block310Value5 recoveredBlock11Block39Block310Value6 recoveredBlock11Block39Block310Value7 recoveredBlock11Block39Block310Value8 recoveredBlock11Block39Block310Value9 recoveredBlock11Block39Block310Value10 recoveredBlock11Block39Block310Value11 recoveredBlock11Block39Block310Value12 recoveredBlock11Block39Block310Value13 recoveredBlock11Block39Block310Value14 recoveredBlock11Block39Block310Value15 recoveredBlock11Block39Block310Value16 recoveredBlock11Block39Block310Value17 |
    recoveredBlock11Block39Block310Value0 := SGConnectionWrapperGO.
    recoveredBlock11Block39Block310Value1 := SGOrthogonalLineGO.
    recoveredBlock11Block39Block310Value2 := ConnectionLineStyle.
    recoveredBlock11Block39Block310Value3 := (recoveredBlock11Block39Block310Value1) createWithLineStyle: (recoveredBlock11Block39Block310Value2) manager: (nil).
    recoveredBlock11Block39Block310Value4 := recoveredLocal5.
    recoveredBlock11Block39Block310Value5 := (recoveredBlock11Block39Block310Value4) asArray.
    recoveredBlock11Block39Block310Value6 := (recoveredBlock11Block39Block310Value5) first.
    recoveredBlock11Block39Block310Value7 := (recoveredBlock11Block39Block310Value6) connectionPoint.
    recoveredBlock11Block39Block310Value8 := recoveredBlock11Block39Block310Arg1.
    recoveredBlock11Block39Block310Value9 := (recoveredBlock11Block39Block310Value8) connectionPoint.
    recoveredBlock11Block39Block310Value10 := (recoveredBlock11Block39Block310Value0) createWith: (recoveredBlock11Block39Block310Value3) startPoint: (recoveredBlock11Block39Block310Value7) endPoint: (recoveredBlock11Block39Block310Value9).
    recoveredLocal3 := recoveredBlock11Block39Block310Value10.
    recoveredBlock11Block39Block310Value11 := parent.
    recoveredBlock11Block39Block310Value12 := recoveredLocal3.
    (recoveredBlock11Block39Block310Value11) addChildGO: (recoveredBlock11Block39Block310Value12) display: (false).
    recoveredBlock11Block39Block310Value13 := recoveredLocal9.
    recoveredBlock11Block39Block310Value14 := recoveredLocal3.
    recoveredBlock11Block39Block310Value15 := (recoveredBlock11Block39Block310Value14) basicGraphObject.
    recoveredBlock11Block39Block310Value16 := (recoveredBlock11Block39Block310Value15) frame.
    recoveredBlock11Block39Block310Value17 := (recoveredBlock11Block39Block310Value13) add: (recoveredBlock11Block39Block310Value16).
    recoveredBlock11Block39Block310Value17
].
            recoveredBlock11Block39PC := 363.
        ].
        recoveredBlock11Block39Step = 363 ifTrue: [
            recoveredBlock11Block39Stack1 := (recoveredBlock11Block39Stack1) do: (recoveredBlock11Block39Stack2).
            recoveredBlock11Block39PC := 365.
        ].
        recoveredBlock11Block39Step = 365 ifTrue: [
            recoveredBlock11Block39Result := recoveredBlock11Block39Stack1.
            recoveredBlock11Block39Done := true.
        ].
    ].
    recoveredBlock11Block39Result
].
            recoveredBlock11PC := 366.
        ].
        recoveredBlock11Step = 366 ifTrue: [
            (recoveredBlock11Stack0) do: (recoveredBlock11Stack1).
            recoveredBlock11PC := 368.
        ].
        recoveredBlock11Step = 368 ifTrue: [
            recoveredBlock11Stack0 := self.
            recoveredBlock11PC := 369.
        ].
        recoveredBlock11Step = 369 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) children.
            recoveredBlock11PC := 371.
        ].
        recoveredBlock11Step = 371 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) asArray.
            recoveredBlock11PC := 373.
        ].
        recoveredBlock11Step = 373 ifTrue: [
            recoveredLocal2 := recoveredBlock11Stack0.
            recoveredBlock11PC := 376.
        ].
        recoveredBlock11Step = 376 ifTrue: [
            recoveredBlock11Stack0 := OrderedCollection.
            recoveredBlock11PC := 378.
        ].
        recoveredBlock11Step = 378 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) new.
            recoveredBlock11PC := 379.
        ].
        recoveredBlock11Step = 379 ifTrue: [
            recoveredLocal1 := recoveredBlock11Stack0.
            recoveredBlock11PC := 382.
        ].
        recoveredBlock11Step = 382 ifTrue: [
            recoveredBlock11Stack0 := recoveredLocal2.
            recoveredBlock11PC := 385.
        ].
        recoveredBlock11Step = 385 ifTrue: [
            recoveredBlock11Stack1 := [:recoveredBlock11Block385Arg1 | 
    | recoveredBlock11Block385Stack0 recoveredBlock11Block385Stack1 recoveredBlock11Block385Stack2 recoveredBlock11Block385Stack3 recoveredBlock11Block385Stack4 recoveredBlock11Block385Stack5 recoveredBlock11Block385Stack6 recoveredBlock11Block385PC recoveredBlock11Block385Step recoveredBlock11Block385Done recoveredBlock11Block385Result |
    recoveredBlock11Block385Stack0 := self.
    recoveredBlock11Block385PC := 392.
    recoveredBlock11Block385Done := false.
    [recoveredBlock11Block385Done not] whileTrue: [
        recoveredBlock11Block385Step := recoveredBlock11Block385PC.
        recoveredBlock11Block385Step = 392 ifTrue: [
            recoveredBlock11Block385Stack1 := recoveredBlock11Block385Arg1.
            recoveredBlock11Block385PC := 393.
        ].
        recoveredBlock11Block385Step = 393 ifTrue: [
            recoveredBlock11Block385Stack1 := (recoveredBlock11Block385Stack1) basicGraphObject.
            recoveredBlock11Block385PC := 394.
        ].
        recoveredBlock11Block385Step = 394 ifTrue: [
            recoveredBlock11Block385Stack1 := (recoveredBlock11Block385Stack1) isSGHierarchyGO.
            recoveredBlock11Block385PC := 396.
        ].
        recoveredBlock11Block385Step = 396 ifTrue: [
            (recoveredBlock11Block385Stack1) ifTrue: [recoveredBlock11Block385PC := 400] ifFalse: [recoveredBlock11Block385PC := 405].
        ].
        recoveredBlock11Block385Step = 400 ifTrue: [
            recoveredBlock11Block385Stack1 := recoveredBlock11Block385Arg1.
            recoveredBlock11Block385PC := 401.
        ].
        recoveredBlock11Block385Step = 401 ifTrue: [
            recoveredBlock11Block385Stack2 := parent.
            recoveredBlock11Block385PC := 403.
        ].
        recoveredBlock11Block385Step = 403 ifTrue: [
            (recoveredBlock11Block385Stack1) parent: (recoveredBlock11Block385Stack2).
            recoveredBlock11Block385PC := 405.
        ].
        recoveredBlock11Block385Step = 405 ifTrue: [
            recoveredBlock11Block385Stack1 := nil.
            recoveredBlock11Block385PC := 406.
        ].
        recoveredBlock11Block385Step = 406 ifTrue: [
            recoveredBlock11Block385Stack2 := recoveredBlock11Block385Arg1.
            recoveredBlock11Block385PC := 407.
        ].
        recoveredBlock11Block385Step = 407 ifTrue: [
            recoveredBlock11Block385Stack2 := (recoveredBlock11Block385Stack2) basicGraphObject.
            recoveredBlock11Block385PC := 408.
        ].
        recoveredBlock11Block385Step = 408 ifTrue: [
            recoveredBlock11Block385Stack2 := (recoveredBlock11Block385Stack2) isInOutPortGO.
            recoveredBlock11Block385PC := 410.
        ].
        recoveredBlock11Block385Step = 410 ifTrue: [
            (recoveredBlock11Block385Stack2) ifTrue: [recoveredBlock11Block385PC := 434] ifFalse: [recoveredBlock11Block385PC := 414].
        ].
        recoveredBlock11Block385Step = 414 ifTrue: [
            recoveredBlock11Block385PC := 415.
        ].
        recoveredBlock11Block385Step = 415 ifTrue: [
            recoveredBlock11Block385Stack1 := recoveredLocal9.
            recoveredBlock11Block385PC := 418.
        ].
        recoveredBlock11Block385Step = 418 ifTrue: [
            recoveredBlock11Block385Stack2 := self.
            recoveredBlock11Block385PC := 419.
        ].
        recoveredBlock11Block385Step = 419 ifTrue: [
            recoveredBlock11Block385Stack3 := recoveredBlock11Block385Arg1.
            recoveredBlock11Block385PC := 420.
        ].
        recoveredBlock11Block385Step = 420 ifTrue: [
            recoveredBlock11Block385Stack4 := parent.
            recoveredBlock11Block385PC := 422.
        ].
        recoveredBlock11Block385Step = 422 ifTrue: [
            recoveredBlock11Block385Stack5 := false.
            recoveredBlock11Block385PC := 423.
        ].
        recoveredBlock11Block385Step = 423 ifTrue: [
            recoveredBlock11Block385Stack2 := (recoveredBlock11Block385Stack2) moveGO: (recoveredBlock11Block385Stack3) toSGHierarchyGO: (recoveredBlock11Block385Stack4) display: (recoveredBlock11Block385Stack5).
            recoveredBlock11Block385PC := 426.
        ].
        recoveredBlock11Block385Step = 426 ifTrue: [
            (recoveredBlock11Block385Stack1) add: (recoveredBlock11Block385Stack2).
            recoveredBlock11Block385PC := 428.
        ].
        recoveredBlock11Block385Step = 428 ifTrue: [
            recoveredBlock11Block385Stack1 := recoveredLocal1.
            recoveredBlock11Block385PC := 431.
        ].
        recoveredBlock11Block385Step = 431 ifTrue: [
            recoveredBlock11Block385Stack2 := recoveredBlock11Block385Arg1.
            recoveredBlock11Block385PC := 432.
        ].
        recoveredBlock11Block385Step = 432 ifTrue: [
            recoveredBlock11Block385Stack1 := (recoveredBlock11Block385Stack1) add: (recoveredBlock11Block385Stack2).
            recoveredBlock11Block385PC := 434.
        ].
        recoveredBlock11Block385Step = 434 ifTrue: [
            recoveredBlock11Block385Result := recoveredBlock11Block385Stack1.
            recoveredBlock11Block385Done := true.
        ].
    ].
    recoveredBlock11Block385Result
].
            recoveredBlock11PC := 435.
        ].
        recoveredBlock11Step = 435 ifTrue: [
            (recoveredBlock11Stack0) do: (recoveredBlock11Stack1).
            recoveredBlock11PC := 437.
        ].
        recoveredBlock11Step = 437 ifTrue: [
            recoveredBlock11Stack0 := recoveredLocal9.
            recoveredBlock11PC := 440.
        ].
        recoveredBlock11Step = 440 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 441.
        ].
        recoveredBlock11Step = 441 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) graphObject.
            recoveredBlock11PC := 443.
        ].
        recoveredBlock11Step = 443 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) bigFrame.
            recoveredBlock11PC := 445.
        ].
        recoveredBlock11Step = 445 ifTrue: [
            (recoveredBlock11Stack0) add: (recoveredBlock11Stack1).
            recoveredBlock11PC := 447.
        ].
        recoveredBlock11Step = 447 ifTrue: [
            recoveredBlock11Stack0 := parent.
            recoveredBlock11PC := 449.
        ].
        recoveredBlock11Step = 449 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 450.
        ].
        recoveredBlock11Step = 450 ifTrue: [
            recoveredBlock11Stack2 := false.
            recoveredBlock11PC := 451.
        ].
        recoveredBlock11Step = 451 ifTrue: [
            (recoveredBlock11Stack0) removeChildGO: (recoveredBlock11Stack1) display: (recoveredBlock11Stack2).
            recoveredBlock11PC := 453.
        ].
        recoveredBlock11Step = 453 ifTrue: [
            recoveredBlock11Stack0 := recoveredLocal9.
            recoveredBlock11PC := 456.
        ].
        recoveredBlock11Step = 456 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 457.
        ].
        recoveredBlock11Step = 457 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) controller.
            recoveredBlock11PC := 458.
        ].
        recoveredBlock11Step = 458 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) updateConnectionLineStyle.
            recoveredBlock11PC := 460.
        ].
        recoveredBlock11Step = 460 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) addAll: (recoveredBlock11Stack1).
            recoveredBlock11PC := 462.
        ].
        recoveredBlock11Step = 462 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack0.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            (recoveredStack0) doWithoutMemento: (recoveredStack1).
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack1 := (recoveredStack1) enclosingRectOf: (recoveredStack2).
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            (recoveredStack0) displayOneRectSetModified: (recoveredStack1).
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 491] ifFalse: [recoveredPC := 484].
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            (recoveredStack0) setSelectStateWithGOs: (recoveredStack1).
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2061d0c0; bytecode file offset 0xf19a1c"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
resolveStateHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock11Local1 recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) basicGraphObject.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) interfaceElementGOs.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack1 := [:recoveredBlock11Block21Arg1 | 
    | recoveredBlock11Block21Stack0 recoveredBlock11Block21Stack1 recoveredBlock11Block21Stack2 recoveredBlock11Block21Stack3 recoveredBlock11Block21Stack4 recoveredBlock11Block21PC recoveredBlock11Block21Step recoveredBlock11Block21Done recoveredBlock11Block21Result |
    recoveredBlock11Block21Stack0 := self.
    recoveredBlock11Block21PC := 28.
    recoveredBlock11Block21Done := false.
    [recoveredBlock11Block21Done not] whileTrue: [
        recoveredBlock11Block21Step := recoveredBlock11Block21PC.
        recoveredBlock11Block21Step = 28 ifTrue: [
            recoveredBlock11Block21Stack1 := OrderedCollection.
            recoveredBlock11Block21PC := 30.
        ].
        recoveredBlock11Block21Step = 30 ifTrue: [
            recoveredBlock11Block21Stack1 := (recoveredBlock11Block21Stack1) new.
            recoveredBlock11Block21PC := 31.
        ].
        recoveredBlock11Block21Step = 31 ifTrue: [
            recoveredLocal1 := recoveredBlock11Block21Stack1.
            recoveredBlock11Block21PC := 34.
        ].
        recoveredBlock11Block21Step = 34 ifTrue: [
            recoveredBlock11Block21Stack1 := nil.
            recoveredBlock11Block21PC := 35.
        ].
        recoveredBlock11Block21Step = 35 ifTrue: [
            recoveredLocal6 := recoveredBlock11Block21Stack1.
            recoveredBlock11Block21PC := 38.
        ].
        recoveredBlock11Block21Step = 38 ifTrue: [
            recoveredBlock11Block21Stack1 := nil.
            recoveredBlock11Block21PC := 39.
        ].
        recoveredBlock11Block21Step = 39 ifTrue: [
            recoveredLocal7 := recoveredBlock11Block21Stack1.
            recoveredBlock11Block21PC := 42.
        ].
        recoveredBlock11Block21Step = 42 ifTrue: [
            recoveredBlock11Block21Stack1 := recoveredBlock11Block21Arg1.
            recoveredBlock11Block21PC := 43.
        ].
        recoveredBlock11Block21Step = 43 ifTrue: [
            recoveredBlock11Block21Stack1 := (recoveredBlock11Block21Stack1) getExternalConnectorGO.
            recoveredBlock11Block21PC := 45.
        ].
        recoveredBlock11Block21Step = 45 ifTrue: [
            recoveredLocal9 := recoveredBlock11Block21Stack1.
            recoveredBlock11Block21PC := 48.
        ].
        recoveredBlock11Block21Step = 48 ifTrue: [
            recoveredBlock11Block21Stack1 := nil.
            recoveredBlock11Block21PC := 49.
        ].
        recoveredBlock11Block21Step = 49 ifTrue: [
            recoveredBlock11Block21Stack2 := recoveredBlock11Block21Arg1.
            recoveredBlock11Block21PC := 50.
        ].
        recoveredBlock11Block21Step = 50 ifTrue: [
            recoveredBlock11Block21Stack2 := (recoveredBlock11Block21Stack2) getInternalConnectorGO.
            recoveredBlock11Block21PC := 52.
        ].
        recoveredBlock11Block21Step = 52 ifTrue: [
            (recoveredBlock11Block21Stack2 == nil) ifTrue: [recoveredBlock11Block21PC := 386] ifFalse: [recoveredBlock11Block21PC := 56].
        ].
        recoveredBlock11Block21Step = 56 ifTrue: [
            recoveredBlock11Block21PC := 57.
        ].
        recoveredBlock11Block21Step = 57 ifTrue: [
            recoveredBlock11Block21Stack1 := recoveredBlock11Block21Arg1.
            recoveredBlock11Block21PC := 58.
        ].
        recoveredBlock11Block21Step = 58 ifTrue: [
            recoveredBlock11Block21Stack1 := (recoveredBlock11Block21Stack1) getInternalConnectorGO.
            recoveredBlock11Block21PC := 60.
        ].
        recoveredBlock11Block21Step = 60 ifTrue: [
            recoveredBlock11Block21Stack1 := (recoveredBlock11Block21Stack1) getConnectorGO.
            recoveredBlock11Block21PC := 62.
        ].
        recoveredBlock11Block21Step = 62 ifTrue: [
            recoveredBlock11Block21Stack1 := (recoveredBlock11Block21Stack1) getExternalConnectorGO.
            recoveredBlock11Block21PC := 64.
        ].
        recoveredBlock11Block21Step = 64 ifTrue: [
            recoveredLocal8 := recoveredBlock11Block21Stack1.
            recoveredBlock11Block21PC := 67.
        ].
        recoveredBlock11Block21Step = 67 ifTrue: [
            recoveredBlock11Block21Stack1 := recoveredLocal9.
            recoveredBlock11Block21PC := 70.
        ].
        recoveredBlock11Block21Step = 70 ifTrue: [
            recoveredBlock11Block21Stack1 := (recoveredBlock11Block21Stack1) isConnected.
            recoveredBlock11Block21PC := 72.
        ].
        recoveredBlock11Block21Step = 72 ifTrue: [
            (recoveredBlock11Block21Stack1) ifTrue: [recoveredBlock11Block21PC := 76] ifFalse: [recoveredBlock11Block21PC := 146].
        ].
        recoveredBlock11Block21Step = 76 ifTrue: [
            recoveredBlock11Block21Stack1 := OrderedCollection.
            recoveredBlock11Block21PC := 78.
        ].
        recoveredBlock11Block21Step = 78 ifTrue: [
            recoveredBlock11Block21Stack1 := (recoveredBlock11Block21Stack1) new.
            recoveredBlock11Block21PC := 79.
        ].
        recoveredBlock11Block21Step = 79 ifTrue: [
            recoveredLocal7 := recoveredBlock11Block21Stack1.
            recoveredBlock11Block21PC := 82.
        ].
        recoveredBlock11Block21Step = 82 ifTrue: [
            recoveredBlock11Block21Stack1 := recoveredLocal9.
            recoveredBlock11Block21PC := 85.
        ].
        recoveredBlock11Block21Step = 85 ifTrue: [
            recoveredBlock11Block21Stack1 := (recoveredBlock11Block21Stack1) connectedGOs.
            recoveredBlock11Block21PC := 87.
        ].
        recoveredBlock11Block21Step = 87 ifTrue: [
            recoveredBlock11Block21Stack1 := (recoveredBlock11Block21Stack1) asArray.
            recoveredBlock11Block21PC := 89.
        ].
        recoveredBlock11Block21Step = 89 ifTrue: [
            recoveredLocal5 := recoveredBlock11Block21Stack1.
            recoveredBlock11Block21PC := 92.
        ].
        recoveredBlock11Block21Step = 92 ifTrue: [
            recoveredBlock11Block21Stack1 := recoveredLocal5.
            recoveredBlock11Block21PC := 95.
        ].
        recoveredBlock11Block21Step = 95 ifTrue: [
            recoveredBlock11Block21Stack2 := [:recoveredBlock11Block21Block95Arg1 | 
    | recoveredBlock11Block21Block95Value0 recoveredBlock11Block21Block95Value1 recoveredBlock11Block21Block95Value2 recoveredBlock11Block21Block95Value3 recoveredBlock11Block21Block95Value4 recoveredBlock11Block21Block95Value5 recoveredBlock11Block21Block95Value6 recoveredBlock11Block21Block95Value7 recoveredBlock11Block21Block95Value8 recoveredBlock11Block21Block95Value9 recoveredBlock11Block21Block95Value10 recoveredBlock11Block21Block95Value11 recoveredBlock11Block21Block95Value12 recoveredBlock11Block21Block95Value13 recoveredBlock11Block21Block95Value14 recoveredBlock11Block21Block95Value15 recoveredBlock11Block21Block95Value16 recoveredBlock11Block21Block95Value17 |
    recoveredBlock11Block21Block95Value0 := recoveredLocal7.
    recoveredBlock11Block21Block95Value1 := recoveredBlock11Block21Block95Arg1.
    recoveredBlock11Block21Block95Value2 := recoveredLocal9.
    recoveredBlock11Block21Block95Value3 := (recoveredBlock11Block21Block95Value1) opposedNode: (recoveredBlock11Block21Block95Value2).
    (recoveredBlock11Block21Block95Value0) add: (recoveredBlock11Block21Block95Value3).
    recoveredBlock11Block21Block95Value4 := recoveredLocal10.
    recoveredBlock11Block21Block95Value5 := recoveredBlock11Block21Block95Arg1.
    recoveredBlock11Block21Block95Value6 := (recoveredBlock11Block21Block95Value5) frame.
    (recoveredBlock11Block21Block95Value4) add: (recoveredBlock11Block21Block95Value6).
    recoveredBlock11Block21Block95Value7 := recoveredLocal1.
    recoveredBlock11Block21Block95Value8 := Array.
    recoveredBlock11Block21Block95Value9 := recoveredBlock11Block21Block95Arg1.
    recoveredBlock11Block21Block95Value10 := recoveredBlock11Block21Block95Arg1.
    recoveredBlock11Block21Block95Value11 := (recoveredBlock11Block21Block95Value10) endGO.
    recoveredBlock11Block21Block95Value12 := recoveredLocal9.
    recoveredBlock11Block21Block95Value13 := (recoveredBlock11Block21Block95Value11) = (recoveredBlock11Block21Block95Value12).
    recoveredBlock11Block21Block95Value14 := (recoveredBlock11Block21Block95Value8) with: (recoveredBlock11Block21Block95Value9) with: (recoveredBlock11Block21Block95Value13).
    (recoveredBlock11Block21Block95Value7) add: (recoveredBlock11Block21Block95Value14).
    recoveredBlock11Block21Block95Value15 := recoveredBlock11Block21Block95Arg1.
    recoveredBlock11Block21Block95Value16 := recoveredBlock11Block21Block95Arg1.
    recoveredBlock11Block21Block95Value17 := (recoveredBlock11Block21Block95Value15) removeGO: (recoveredBlock11Block21Block95Value16) display: (false).
    recoveredBlock11Block21Block95Value17
].
            recoveredBlock11Block21PC := 144.
        ].
        recoveredBlock11Block21Step = 144 ifTrue: [
            (recoveredBlock11Block21Stack1) do: (recoveredBlock11Block21Stack2).
            recoveredBlock11Block21PC := 146.
        ].
        recoveredBlock11Block21Step = 146 ifTrue: [
            recoveredBlock11Block21Stack1 := recoveredLocal8.
            recoveredBlock11Block21PC := 149.
        ].
        recoveredBlock11Block21Step = 149 ifTrue: [
            recoveredBlock11Block21Stack1 := (recoveredBlock11Block21Stack1) isConnected.
            recoveredBlock11Block21PC := 151.
        ].
        recoveredBlock11Block21Step = 151 ifTrue: [
            (recoveredBlock11Block21Stack1) ifTrue: [recoveredBlock11Block21PC := 154] ifFalse: [recoveredBlock11Block21PC := 207].
        ].
        recoveredBlock11Block21Step = 154 ifTrue: [
            recoveredBlock11Block21Stack1 := OrderedCollection.
            recoveredBlock11Block21PC := 156.
        ].
        recoveredBlock11Block21Step = 156 ifTrue: [
            recoveredBlock11Block21Stack1 := (recoveredBlock11Block21Stack1) new.
            recoveredBlock11Block21PC := 157.
        ].
        recoveredBlock11Block21Step = 157 ifTrue: [
            recoveredLocal6 := recoveredBlock11Block21Stack1.
            recoveredBlock11Block21PC := 160.
        ].
        recoveredBlock11Block21Step = 160 ifTrue: [
            recoveredBlock11Block21Stack1 := recoveredLocal8.
            recoveredBlock11Block21PC := 163.
        ].
        recoveredBlock11Block21Step = 163 ifTrue: [
            recoveredBlock11Block21Stack1 := (recoveredBlock11Block21Stack1) connectedGOs.
            recoveredBlock11Block21PC := 165.
        ].
        recoveredBlock11Block21Step = 165 ifTrue: [
            recoveredBlock11Block21Stack1 := (recoveredBlock11Block21Stack1) asArray.
            recoveredBlock11Block21PC := 167.
        ].
        recoveredBlock11Block21Step = 167 ifTrue: [
            recoveredLocal5 := recoveredBlock11Block21Stack1.
            recoveredBlock11Block21PC := 170.
        ].
        recoveredBlock11Block21Step = 170 ifTrue: [
            recoveredBlock11Block21Stack1 := recoveredLocal5.
            recoveredBlock11Block21PC := 173.
        ].
        recoveredBlock11Block21Step = 173 ifTrue: [
            recoveredBlock11Block21Stack2 := [:recoveredBlock11Block21Block173Arg1 | 
    | recoveredBlock11Block21Block173Value0 recoveredBlock11Block21Block173Value1 recoveredBlock11Block21Block173Value2 recoveredBlock11Block21Block173Value3 recoveredBlock11Block21Block173Value4 recoveredBlock11Block21Block173Value5 recoveredBlock11Block21Block173Value6 recoveredBlock11Block21Block173Value7 recoveredBlock11Block21Block173Value8 recoveredBlock11Block21Block173Value9 |
    recoveredBlock11Block21Block173Value0 := recoveredLocal6.
    recoveredBlock11Block21Block173Value1 := recoveredBlock11Block21Block173Arg1.
    recoveredBlock11Block21Block173Value2 := recoveredLocal8.
    recoveredBlock11Block21Block173Value3 := (recoveredBlock11Block21Block173Value1) opposedNode: (recoveredBlock11Block21Block173Value2).
    (recoveredBlock11Block21Block173Value0) add: (recoveredBlock11Block21Block173Value3).
    recoveredBlock11Block21Block173Value4 := recoveredLocal10.
    recoveredBlock11Block21Block173Value5 := recoveredBlock11Block21Block173Arg1.
    recoveredBlock11Block21Block173Value6 := (recoveredBlock11Block21Block173Value5) frame.
    (recoveredBlock11Block21Block173Value4) add: (recoveredBlock11Block21Block173Value6).
    recoveredBlock11Block21Block173Value7 := recoveredBlock11Block21Block173Arg1.
    recoveredBlock11Block21Block173Value8 := recoveredBlock11Block21Block173Arg1.
    recoveredBlock11Block21Block173Value9 := (recoveredBlock11Block21Block173Value7) removeGO: (recoveredBlock11Block21Block173Value8) display: (false).
    recoveredBlock11Block21Block173Value9
].
            recoveredBlock11Block21PC := 205.
        ].
        recoveredBlock11Block21Step = 205 ifTrue: [
            (recoveredBlock11Block21Stack1) do: (recoveredBlock11Block21Stack2).
            recoveredBlock11Block21PC := 207.
        ].
        recoveredBlock11Block21Step = 207 ifTrue: [
            recoveredBlock11Block21Stack1 := nil.
            recoveredBlock11Block21PC := 208.
        ].
        recoveredBlock11Block21Step = 208 ifTrue: [
            recoveredBlock11Block21Stack2 := recoveredLocal6.
            recoveredBlock11Block21PC := 211.
        ].
        recoveredBlock11Block21Step = 211 ifTrue: [
            (recoveredBlock11Block21Stack2 == nil) ifTrue: [recoveredBlock11Block21PC := 386] ifFalse: [recoveredBlock11Block21PC := 214].
        ].
        recoveredBlock11Block21Step = 214 ifTrue: [
            recoveredBlock11Block21Stack2 := recoveredLocal7.
            recoveredBlock11Block21PC := 217.
        ].
        recoveredBlock11Block21Step = 217 ifTrue: [
            (recoveredBlock11Block21Stack2 == nil) ifTrue: [recoveredBlock11Block21PC := 386] ifFalse: [recoveredBlock11Block21PC := 220].
        ].
        recoveredBlock11Block21Step = 220 ifTrue: [
            recoveredBlock11Block21PC := 221.
        ].
        recoveredBlock11Block21Step = 221 ifTrue: [
            recoveredBlock11Block21Stack1 := recoveredLocal7.
            recoveredBlock11Block21PC := 224.
        ].
        recoveredBlock11Block21Step = 224 ifTrue: [
            recoveredBlock11Block21Stack1 := (recoveredBlock11Block21Stack1) size.
            recoveredBlock11Block21PC := 226.
        ].
        recoveredBlock11Block21Step = 226 ifTrue: [
            recoveredBlock11Block21Stack2 := 1.
            recoveredBlock11Block21PC := 228.
        ].
        recoveredBlock11Block21Step = 228 ifTrue: [
            recoveredBlock11Block21Stack1 := (recoveredBlock11Block21Stack1) = (recoveredBlock11Block21Stack2).
            recoveredBlock11Block21PC := 229.
        ].
        recoveredBlock11Block21Step = 229 ifTrue: [
            (recoveredBlock11Block21Stack1) ifTrue: [recoveredBlock11Block21PC := 232] ifFalse: [recoveredBlock11Block21PC := 304].
        ].
        recoveredBlock11Block21Step = 232 ifTrue: [
            recoveredBlock11Block21Stack1 := recoveredLocal6.
            recoveredBlock11Block21PC := 235.
        ].
        recoveredBlock11Block21Step = 235 ifTrue: [
            recoveredBlock11Block21Stack2 := [:recoveredBlock11Block21Block235Arg1 :recoveredBlock11Block21Block235Arg2 | 
    | recoveredBlock11Block21Block235Local1 recoveredBlock11Block21Block235Stack0 recoveredBlock11Block21Block235Stack1 recoveredBlock11Block21Block235Stack2 recoveredBlock11Block21Block235Stack3 recoveredBlock11Block21Block235Stack4 recoveredBlock11Block21Block235Stack5 recoveredBlock11Block21Block235PC recoveredBlock11Block21Block235Step recoveredBlock11Block21Block235Done recoveredBlock11Block21Block235Result |
    recoveredBlock11Block21Block235Stack0 := self.
    recoveredBlock11Block21Block235PC := 242.
    recoveredBlock11Block21Block235Done := false.
    [recoveredBlock11Block21Block235Done not] whileTrue: [
        recoveredBlock11Block21Block235Step := recoveredBlock11Block21Block235PC.
        recoveredBlock11Block21Block235Step = 242 ifTrue: [
            recoveredBlock11Block21Block235Stack1 := nil.
            recoveredBlock11Block21Block235PC := 243.
        ].
        recoveredBlock11Block21Block235Step = 243 ifTrue: [
            recoveredBlock11Block21Block235Stack2 := recoveredLocal1.
            recoveredBlock11Block21Block235PC := 246.
        ].
        recoveredBlock11Block21Block235Step = 246 ifTrue: [
            recoveredBlock11Block21Block235Stack3 := recoveredBlock11Block21Block235Arg2.
            recoveredBlock11Block21Block235PC := 247.
        ].
        recoveredBlock11Block21Block235Step = 247 ifTrue: [
            recoveredBlock11Block21Block235Stack4 := [].
            recoveredBlock11Block21Block235PC := 249.
        ].
        recoveredBlock11Block21Block235Step = 249 ifTrue: [
            recoveredBlock11Block21Block235Stack2 := (recoveredBlock11Block21Block235Stack2) at: (recoveredBlock11Block21Block235Stack3) ifAbsent: (recoveredBlock11Block21Block235Stack4).
            recoveredBlock11Block21Block235PC := 251.
        ].
        recoveredBlock11Block21Block235Step = 251 ifTrue: [
            recoveredBlock11Block21Block235Stack3 := recoveredBlock11Block21Block235Stack2.
            recoveredBlock11Block21Block235PC := 252.
        ].
        recoveredBlock11Block21Block235Step = 252 ifTrue: [
            recoveredBlock11Block21Block235Local1 := recoveredBlock11Block21Block235Stack3.
            recoveredBlock11Block21Block235PC := 253.
        ].
        recoveredBlock11Block21Block235Step = 253 ifTrue: [
            (recoveredBlock11Block21Block235Stack2 == nil) ifTrue: [recoveredBlock11Block21Block235PC := 297] ifFalse: [recoveredBlock11Block21Block235PC := 256].
        ].
        recoveredBlock11Block21Block235Step = 256 ifTrue: [
            recoveredBlock11Block21Block235PC := 257.
        ].
        recoveredBlock11Block21Block235Step = 257 ifTrue: [
            recoveredBlock11Block21Block235Stack1 := self.
            recoveredBlock11Block21Block235PC := 258.
        ].
        recoveredBlock11Block21Block235Step = 258 ifTrue: [
            recoveredBlock11Block21Block235Stack2 := recoveredBlock11Block21Block235Local1.
            recoveredBlock11Block21Block235PC := 259.
        ].
        recoveredBlock11Block21Block235Step = 259 ifTrue: [
            recoveredBlock11Block21Block235Stack3 := recoveredLocal7.
            recoveredBlock11Block21Block235PC := 262.
        ].
        recoveredBlock11Block21Block235Step = 262 ifTrue: [
            recoveredBlock11Block21Block235Stack3 := (recoveredBlock11Block21Block235Stack3) asArray.
            recoveredBlock11Block21Block235PC := 264.
        ].
        recoveredBlock11Block21Block235Step = 264 ifTrue: [
            recoveredBlock11Block21Block235Stack3 := (recoveredBlock11Block21Block235Stack3) first.
            recoveredBlock11Block21Block235PC := 266.
        ].
        recoveredBlock11Block21Block235Step = 266 ifTrue: [
            recoveredBlock11Block21Block235Stack4 := recoveredBlock11Block21Block235Arg1.
            recoveredBlock11Block21Block235PC := 267.
        ].
        recoveredBlock11Block21Block235Step = 267 ifTrue: [
            recoveredBlock11Block21Block235Stack1 := (recoveredBlock11Block21Block235Stack1) establishNewConnectionConnArray: (recoveredBlock11Block21Block235Stack2) interfaceElementA: (recoveredBlock11Block21Block235Stack3) interfaceElementB: (recoveredBlock11Block21Block235Stack4).
            recoveredBlock11Block21Block235PC := 270.
        ].
        recoveredBlock11Block21Block235Step = 270 ifTrue: [
            recoveredLocal4 := recoveredBlock11Block21Block235Stack1.
            recoveredBlock11Block21Block235PC := 273.
        ].
        recoveredBlock11Block21Block235Step = 273 ifTrue: [
            recoveredBlock11Block21Block235Stack1 := parent.
            recoveredBlock11Block21Block235PC := 275.
        ].
        recoveredBlock11Block21Block235Step = 275 ifTrue: [
            recoveredBlock11Block21Block235Stack2 := recoveredLocal4.
            recoveredBlock11Block21Block235PC := 278.
        ].
        recoveredBlock11Block21Block235Step = 278 ifTrue: [
            recoveredBlock11Block21Block235Stack3 := false.
            recoveredBlock11Block21Block235PC := 279.
        ].
        recoveredBlock11Block21Block235Step = 279 ifTrue: [
            (recoveredBlock11Block21Block235Stack1) addChildGO: (recoveredBlock11Block21Block235Stack2) display: (recoveredBlock11Block21Block235Stack3).
            recoveredBlock11Block21Block235PC := 281.
        ].
        recoveredBlock11Block21Block235Step = 281 ifTrue: [
            recoveredBlock11Block21Block235Stack1 := recoveredLocal4.
            recoveredBlock11Block21Block235PC := 284.
        ].
        recoveredBlock11Block21Block235Step = 284 ifTrue: [
            (recoveredBlock11Block21Block235Stack1) updateConnectionPointPositions.
            recoveredBlock11Block21Block235PC := 286.
        ].
        recoveredBlock11Block21Block235Step = 286 ifTrue: [
            recoveredBlock11Block21Block235Stack1 := recoveredLocal10.
            recoveredBlock11Block21Block235PC := 289.
        ].
        recoveredBlock11Block21Block235Step = 289 ifTrue: [
            recoveredBlock11Block21Block235Stack2 := recoveredLocal4.
            recoveredBlock11Block21Block235PC := 292.
        ].
        recoveredBlock11Block21Block235Step = 292 ifTrue: [
            recoveredBlock11Block21Block235Stack2 := (recoveredBlock11Block21Block235Stack2) basicGraphObject.
            recoveredBlock11Block21Block235PC := 293.
        ].
        recoveredBlock11Block21Block235Step = 293 ifTrue: [
            recoveredBlock11Block21Block235Stack2 := (recoveredBlock11Block21Block235Stack2) frame.
            recoveredBlock11Block21Block235PC := 295.
        ].
        recoveredBlock11Block21Block235Step = 295 ifTrue: [
            recoveredBlock11Block21Block235Stack1 := (recoveredBlock11Block21Block235Stack1) add: (recoveredBlock11Block21Block235Stack2).
            recoveredBlock11Block21Block235PC := 297.
        ].
        recoveredBlock11Block21Block235Step = 297 ifTrue: [
            recoveredBlock11Block21Block235Result := recoveredBlock11Block21Block235Stack1.
            recoveredBlock11Block21Block235Done := true.
        ].
    ].
    recoveredBlock11Block21Block235Result
].
            recoveredBlock11Block21PC := 298.
        ].
        recoveredBlock11Block21Step = 298 ifTrue: [
            recoveredBlock11Block21Stack1 := (recoveredBlock11Block21Stack1) doWithIndex: (recoveredBlock11Block21Stack2).
            recoveredBlock11Block21PC := 300.
        ].
        recoveredBlock11Block21Step = 300 ifTrue: [
            recoveredBlock11Block21PC := 386.
        ].
        recoveredBlock11Block21Step = 304 ifTrue: [
            recoveredBlock11Block21Stack1 := nil.
            recoveredBlock11Block21PC := 305.
        ].
        recoveredBlock11Block21Step = 305 ifTrue: [
            recoveredBlock11Block21Stack2 := recoveredLocal6.
            recoveredBlock11Block21PC := 308.
        ].
        recoveredBlock11Block21Step = 308 ifTrue: [
            recoveredBlock11Block21Stack2 := (recoveredBlock11Block21Stack2) size.
            recoveredBlock11Block21PC := 310.
        ].
        recoveredBlock11Block21Step = 310 ifTrue: [
            recoveredBlock11Block21Stack3 := 1.
            recoveredBlock11Block21PC := 312.
        ].
        recoveredBlock11Block21Step = 312 ifTrue: [
            recoveredBlock11Block21Stack2 := (recoveredBlock11Block21Stack2) = (recoveredBlock11Block21Stack3).
            recoveredBlock11Block21PC := 313.
        ].
        recoveredBlock11Block21Step = 313 ifTrue: [
            (recoveredBlock11Block21Stack2) ifTrue: [recoveredBlock11Block21PC := 316] ifFalse: [recoveredBlock11Block21PC := 386].
        ].
        recoveredBlock11Block21Step = 316 ifTrue: [
            recoveredBlock11Block21PC := 317.
        ].
        recoveredBlock11Block21Step = 317 ifTrue: [
            recoveredBlock11Block21Stack1 := recoveredLocal7.
            recoveredBlock11Block21PC := 320.
        ].
        recoveredBlock11Block21Step = 320 ifTrue: [
            recoveredBlock11Block21Stack2 := [:recoveredBlock11Block21Block320Arg1 | 
    | recoveredBlock11Block21Block320Local1 recoveredBlock11Block21Block320Stack0 recoveredBlock11Block21Block320Stack1 recoveredBlock11Block21Block320Stack2 recoveredBlock11Block21Block320Stack3 recoveredBlock11Block21Block320Stack4 recoveredBlock11Block21Block320Stack5 recoveredBlock11Block21Block320PC recoveredBlock11Block21Block320Step recoveredBlock11Block21Block320Done recoveredBlock11Block21Block320Result |
    recoveredBlock11Block21Block320Stack0 := self.
    recoveredBlock11Block21Block320PC := 326.
    recoveredBlock11Block21Block320Done := false.
    [recoveredBlock11Block21Block320Done not] whileTrue: [
        recoveredBlock11Block21Block320Step := recoveredBlock11Block21Block320PC.
        recoveredBlock11Block21Block320Step = 326 ifTrue: [
            recoveredBlock11Block21Block320Stack1 := nil.
            recoveredBlock11Block21Block320PC := 327.
        ].
        recoveredBlock11Block21Block320Step = 327 ifTrue: [
            recoveredBlock11Block21Block320Stack2 := recoveredLocal1.
            recoveredBlock11Block21Block320PC := 330.
        ].
        recoveredBlock11Block21Block320Step = 330 ifTrue: [
            recoveredBlock11Block21Block320Stack3 := 1.
            recoveredBlock11Block21Block320PC := 332.
        ].
        recoveredBlock11Block21Block320Step = 332 ifTrue: [
            recoveredBlock11Block21Block320Stack4 := [].
            recoveredBlock11Block21Block320PC := 334.
        ].
        recoveredBlock11Block21Block320Step = 334 ifTrue: [
            recoveredBlock11Block21Block320Stack2 := (recoveredBlock11Block21Block320Stack2) at: (recoveredBlock11Block21Block320Stack3) ifAbsent: (recoveredBlock11Block21Block320Stack4).
            recoveredBlock11Block21Block320PC := 336.
        ].
        recoveredBlock11Block21Block320Step = 336 ifTrue: [
            recoveredBlock11Block21Block320Stack3 := recoveredBlock11Block21Block320Stack2.
            recoveredBlock11Block21Block320PC := 337.
        ].
        recoveredBlock11Block21Block320Step = 337 ifTrue: [
            recoveredBlock11Block21Block320Local1 := recoveredBlock11Block21Block320Stack3.
            recoveredBlock11Block21Block320PC := 338.
        ].
        recoveredBlock11Block21Block320Step = 338 ifTrue: [
            (recoveredBlock11Block21Block320Stack2 == nil) ifTrue: [recoveredBlock11Block21Block320PC := 383] ifFalse: [recoveredBlock11Block21Block320PC := 342].
        ].
        recoveredBlock11Block21Block320Step = 342 ifTrue: [
            recoveredBlock11Block21Block320PC := 343.
        ].
        recoveredBlock11Block21Block320Step = 343 ifTrue: [
            recoveredBlock11Block21Block320Stack1 := self.
            recoveredBlock11Block21Block320PC := 344.
        ].
        recoveredBlock11Block21Block320Step = 344 ifTrue: [
            recoveredBlock11Block21Block320Stack2 := recoveredBlock11Block21Block320Local1.
            recoveredBlock11Block21Block320PC := 345.
        ].
        recoveredBlock11Block21Block320Step = 345 ifTrue: [
            recoveredBlock11Block21Block320Stack3 := recoveredLocal6.
            recoveredBlock11Block21Block320PC := 348.
        ].
        recoveredBlock11Block21Block320Step = 348 ifTrue: [
            recoveredBlock11Block21Block320Stack3 := (recoveredBlock11Block21Block320Stack3) asArray.
            recoveredBlock11Block21Block320PC := 350.
        ].
        recoveredBlock11Block21Block320Step = 350 ifTrue: [
            recoveredBlock11Block21Block320Stack3 := (recoveredBlock11Block21Block320Stack3) first.
            recoveredBlock11Block21Block320PC := 352.
        ].
        recoveredBlock11Block21Block320Step = 352 ifTrue: [
            recoveredBlock11Block21Block320Stack4 := recoveredBlock11Block21Block320Arg1.
            recoveredBlock11Block21Block320PC := 353.
        ].
        recoveredBlock11Block21Block320Step = 353 ifTrue: [
            recoveredBlock11Block21Block320Stack1 := (recoveredBlock11Block21Block320Stack1) establishNewConnectionConnArray: (recoveredBlock11Block21Block320Stack2) interfaceElementA: (recoveredBlock11Block21Block320Stack3) interfaceElementB: (recoveredBlock11Block21Block320Stack4).
            recoveredBlock11Block21Block320PC := 356.
        ].
        recoveredBlock11Block21Block320Step = 356 ifTrue: [
            recoveredLocal4 := recoveredBlock11Block21Block320Stack1.
            recoveredBlock11Block21Block320PC := 359.
        ].
        recoveredBlock11Block21Block320Step = 359 ifTrue: [
            recoveredBlock11Block21Block320Stack1 := parent.
            recoveredBlock11Block21Block320PC := 361.
        ].
        recoveredBlock11Block21Block320Step = 361 ifTrue: [
            recoveredBlock11Block21Block320Stack2 := recoveredLocal4.
            recoveredBlock11Block21Block320PC := 364.
        ].
        recoveredBlock11Block21Block320Step = 364 ifTrue: [
            recoveredBlock11Block21Block320Stack3 := false.
            recoveredBlock11Block21Block320PC := 365.
        ].
        recoveredBlock11Block21Block320Step = 365 ifTrue: [
            (recoveredBlock11Block21Block320Stack1) addChildGO: (recoveredBlock11Block21Block320Stack2) display: (recoveredBlock11Block21Block320Stack3).
            recoveredBlock11Block21Block320PC := 367.
        ].
        recoveredBlock11Block21Block320Step = 367 ifTrue: [
            recoveredBlock11Block21Block320Stack1 := recoveredLocal4.
            recoveredBlock11Block21Block320PC := 370.
        ].
        recoveredBlock11Block21Block320Step = 370 ifTrue: [
            (recoveredBlock11Block21Block320Stack1) updateConnectionPointPositions.
            recoveredBlock11Block21Block320PC := 372.
        ].
        recoveredBlock11Block21Block320Step = 372 ifTrue: [
            recoveredBlock11Block21Block320Stack1 := recoveredLocal10.
            recoveredBlock11Block21Block320PC := 375.
        ].
        recoveredBlock11Block21Block320Step = 375 ifTrue: [
            recoveredBlock11Block21Block320Stack2 := recoveredLocal4.
            recoveredBlock11Block21Block320PC := 378.
        ].
        recoveredBlock11Block21Block320Step = 378 ifTrue: [
            recoveredBlock11Block21Block320Stack2 := (recoveredBlock11Block21Block320Stack2) basicGraphObject.
            recoveredBlock11Block21Block320PC := 379.
        ].
        recoveredBlock11Block21Block320Step = 379 ifTrue: [
            recoveredBlock11Block21Block320Stack2 := (recoveredBlock11Block21Block320Stack2) frame.
            recoveredBlock11Block21Block320PC := 381.
        ].
        recoveredBlock11Block21Block320Step = 381 ifTrue: [
            recoveredBlock11Block21Block320Stack1 := (recoveredBlock11Block21Block320Stack1) add: (recoveredBlock11Block21Block320Stack2).
            recoveredBlock11Block21Block320PC := 383.
        ].
        recoveredBlock11Block21Block320Step = 383 ifTrue: [
            recoveredBlock11Block21Block320Result := recoveredBlock11Block21Block320Stack1.
            recoveredBlock11Block21Block320Done := true.
        ].
    ].
    recoveredBlock11Block21Block320Result
].
            recoveredBlock11Block21PC := 384.
        ].
        recoveredBlock11Block21Step = 384 ifTrue: [
            recoveredBlock11Block21Stack1 := (recoveredBlock11Block21Stack1) do: (recoveredBlock11Block21Stack2).
            recoveredBlock11Block21PC := 386.
        ].
        recoveredBlock11Block21Step = 386 ifTrue: [
            recoveredBlock11Block21Result := recoveredBlock11Block21Stack1.
            recoveredBlock11Block21Done := true.
        ].
    ].
    recoveredBlock11Block21Result
].
            recoveredBlock11PC := 387.
        ].
        recoveredBlock11Step = 387 ifTrue: [
            (recoveredBlock11Stack0) do: (recoveredBlock11Stack1).
            recoveredBlock11PC := 389.
        ].
        recoveredBlock11Step = 389 ifTrue: [
            recoveredBlock11Stack0 := self.
            recoveredBlock11PC := 390.
        ].
        recoveredBlock11Step = 390 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) children.
            recoveredBlock11PC := 392.
        ].
        recoveredBlock11Step = 392 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) asArray.
            recoveredBlock11PC := 394.
        ].
        recoveredBlock11Step = 394 ifTrue: [
            recoveredLocal3 := recoveredBlock11Stack0.
            recoveredBlock11PC := 397.
        ].
        recoveredBlock11Step = 397 ifTrue: [
            recoveredBlock11Stack0 := OrderedCollection.
            recoveredBlock11PC := 399.
        ].
        recoveredBlock11Step = 399 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) new.
            recoveredBlock11PC := 400.
        ].
        recoveredBlock11Step = 400 ifTrue: [
            recoveredLocal2 := recoveredBlock11Stack0.
            recoveredBlock11PC := 403.
        ].
        recoveredBlock11Step = 403 ifTrue: [
            recoveredBlock11Stack0 := recoveredLocal3.
            recoveredBlock11PC := 406.
        ].
        recoveredBlock11Step = 406 ifTrue: [
            recoveredBlock11Stack1 := [:recoveredBlock11Block406Arg1 | 
    | recoveredBlock11Block406Stack0 recoveredBlock11Block406Stack1 recoveredBlock11Block406Stack2 recoveredBlock11Block406Stack3 recoveredBlock11Block406Stack4 recoveredBlock11Block406Stack5 recoveredBlock11Block406Stack6 recoveredBlock11Block406PC recoveredBlock11Block406Step recoveredBlock11Block406Done recoveredBlock11Block406Result |
    recoveredBlock11Block406Stack0 := self.
    recoveredBlock11Block406PC := 412.
    recoveredBlock11Block406Done := false.
    [recoveredBlock11Block406Done not] whileTrue: [
        recoveredBlock11Block406Step := recoveredBlock11Block406PC.
        recoveredBlock11Block406Step = 412 ifTrue: [
            recoveredBlock11Block406Stack1 := recoveredBlock11Block406Arg1.
            recoveredBlock11Block406PC := 413.
        ].
        recoveredBlock11Block406Step = 413 ifTrue: [
            recoveredBlock11Block406Stack1 := (recoveredBlock11Block406Stack1) basicGraphObject.
            recoveredBlock11Block406PC := 414.
        ].
        recoveredBlock11Block406Step = 414 ifTrue: [
            recoveredBlock11Block406Stack1 := (recoveredBlock11Block406Stack1) isSGHierarchyGO.
            recoveredBlock11Block406PC := 416.
        ].
        recoveredBlock11Block406Step = 416 ifTrue: [
            (recoveredBlock11Block406Stack1) ifTrue: [recoveredBlock11Block406PC := 420] ifFalse: [recoveredBlock11Block406PC := 425].
        ].
        recoveredBlock11Block406Step = 420 ifTrue: [
            recoveredBlock11Block406Stack1 := recoveredBlock11Block406Arg1.
            recoveredBlock11Block406PC := 421.
        ].
        recoveredBlock11Block406Step = 421 ifTrue: [
            recoveredBlock11Block406Stack2 := parent.
            recoveredBlock11Block406PC := 423.
        ].
        recoveredBlock11Block406Step = 423 ifTrue: [
            (recoveredBlock11Block406Stack1) parent: (recoveredBlock11Block406Stack2).
            recoveredBlock11Block406PC := 425.
        ].
        recoveredBlock11Block406Step = 425 ifTrue: [
            recoveredBlock11Block406Stack1 := nil.
            recoveredBlock11Block406PC := 426.
        ].
        recoveredBlock11Block406Step = 426 ifTrue: [
            recoveredBlock11Block406Stack2 := recoveredBlock11Block406Arg1.
            recoveredBlock11Block406PC := 427.
        ].
        recoveredBlock11Block406Step = 427 ifTrue: [
            recoveredBlock11Block406Stack2 := (recoveredBlock11Block406Stack2) basicGraphObject.
            recoveredBlock11Block406PC := 428.
        ].
        recoveredBlock11Block406Step = 428 ifTrue: [
            recoveredBlock11Block406Stack2 := (recoveredBlock11Block406Stack2) isInOutPortGO.
            recoveredBlock11Block406PC := 430.
        ].
        recoveredBlock11Block406Step = 430 ifTrue: [
            (recoveredBlock11Block406Stack2) ifTrue: [recoveredBlock11Block406PC := 454] ifFalse: [recoveredBlock11Block406PC := 434].
        ].
        recoveredBlock11Block406Step = 434 ifTrue: [
            recoveredBlock11Block406PC := 435.
        ].
        recoveredBlock11Block406Step = 435 ifTrue: [
            recoveredBlock11Block406Stack1 := recoveredLocal10.
            recoveredBlock11Block406PC := 438.
        ].
        recoveredBlock11Block406Step = 438 ifTrue: [
            recoveredBlock11Block406Stack2 := self.
            recoveredBlock11Block406PC := 439.
        ].
        recoveredBlock11Block406Step = 439 ifTrue: [
            recoveredBlock11Block406Stack3 := recoveredBlock11Block406Arg1.
            recoveredBlock11Block406PC := 440.
        ].
        recoveredBlock11Block406Step = 440 ifTrue: [
            recoveredBlock11Block406Stack4 := parent.
            recoveredBlock11Block406PC := 442.
        ].
        recoveredBlock11Block406Step = 442 ifTrue: [
            recoveredBlock11Block406Stack5 := false.
            recoveredBlock11Block406PC := 443.
        ].
        recoveredBlock11Block406Step = 443 ifTrue: [
            recoveredBlock11Block406Stack2 := (recoveredBlock11Block406Stack2) moveGO: (recoveredBlock11Block406Stack3) toSGHierarchyGO: (recoveredBlock11Block406Stack4) display: (recoveredBlock11Block406Stack5).
            recoveredBlock11Block406PC := 446.
        ].
        recoveredBlock11Block406Step = 446 ifTrue: [
            (recoveredBlock11Block406Stack1) add: (recoveredBlock11Block406Stack2).
            recoveredBlock11Block406PC := 448.
        ].
        recoveredBlock11Block406Step = 448 ifTrue: [
            recoveredBlock11Block406Stack1 := recoveredLocal2.
            recoveredBlock11Block406PC := 451.
        ].
        recoveredBlock11Block406Step = 451 ifTrue: [
            recoveredBlock11Block406Stack2 := recoveredBlock11Block406Arg1.
            recoveredBlock11Block406PC := 452.
        ].
        recoveredBlock11Block406Step = 452 ifTrue: [
            recoveredBlock11Block406Stack1 := (recoveredBlock11Block406Stack1) add: (recoveredBlock11Block406Stack2).
            recoveredBlock11Block406PC := 454.
        ].
        recoveredBlock11Block406Step = 454 ifTrue: [
            recoveredBlock11Block406Result := recoveredBlock11Block406Stack1.
            recoveredBlock11Block406Done := true.
        ].
    ].
    recoveredBlock11Block406Result
].
            recoveredBlock11PC := 455.
        ].
        recoveredBlock11Step = 455 ifTrue: [
            (recoveredBlock11Stack0) do: (recoveredBlock11Stack1).
            recoveredBlock11PC := 457.
        ].
        recoveredBlock11Step = 457 ifTrue: [
            recoveredBlock11Stack0 := recoveredLocal10.
            recoveredBlock11PC := 460.
        ].
        recoveredBlock11Step = 460 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 461.
        ].
        recoveredBlock11Step = 461 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) graphObject.
            recoveredBlock11PC := 463.
        ].
        recoveredBlock11Step = 463 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) bigFrame.
            recoveredBlock11PC := 465.
        ].
        recoveredBlock11Step = 465 ifTrue: [
            (recoveredBlock11Stack0) add: (recoveredBlock11Stack1).
            recoveredBlock11PC := 467.
        ].
        recoveredBlock11Step = 467 ifTrue: [
            recoveredBlock11Stack0 := self.
            recoveredBlock11PC := 468.
        ].
        recoveredBlock11Step = 468 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) graphObject.
            recoveredBlock11PC := 470.
        ].
        recoveredBlock11Step = 470 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) fromHierarchyState.
            recoveredBlock11PC := 472.
        ].
        recoveredBlock11Step = 472 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Stack0.
            recoveredBlock11PC := 473.
        ].
        recoveredBlock11Step = 473 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack1.
            recoveredBlock11PC := 474.
        ].
        recoveredBlock11Step = 474 ifTrue: [
            (recoveredBlock11Stack0 ~~ nil) ifTrue: [recoveredBlock11PC := 489] ifFalse: [recoveredBlock11PC := 478].
        ].
        recoveredBlock11Step = 478 ifTrue: [
            recoveredBlock11Stack0 := recoveredBlock11Local1.
            recoveredBlock11PC := 479.
        ].
        recoveredBlock11Step = 479 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) controller.
            recoveredBlock11PC := 480.
        ].
        recoveredBlock11Step = 480 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local1.
            recoveredBlock11PC := 481.
        ].
        recoveredBlock11Step = 481 ifTrue: [
            (recoveredBlock11Stack0) updateIntersectingBlocksFor: (recoveredBlock11Stack1).
            recoveredBlock11PC := 483.
        ].
        recoveredBlock11Step = 483 ifTrue: [
            recoveredBlock11Stack0 := parent.
            recoveredBlock11PC := 485.
        ].
        recoveredBlock11Step = 485 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local1.
            recoveredBlock11PC := 486.
        ].
        recoveredBlock11Step = 486 ifTrue: [
            recoveredBlock11Stack2 := false.
            recoveredBlock11PC := 487.
        ].
        recoveredBlock11Step = 487 ifTrue: [
            (recoveredBlock11Stack0) addChildGO: (recoveredBlock11Stack1) display: (recoveredBlock11Stack2).
            recoveredBlock11PC := 489.
        ].
        recoveredBlock11Step = 489 ifTrue: [
            recoveredBlock11Stack0 := parent.
            recoveredBlock11PC := 491.
        ].
        recoveredBlock11Step = 491 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 492.
        ].
        recoveredBlock11Step = 492 ifTrue: [
            recoveredBlock11Stack2 := false.
            recoveredBlock11PC := 493.
        ].
        recoveredBlock11Step = 493 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) removeChildGO: (recoveredBlock11Stack1) display: (recoveredBlock11Stack2).
            recoveredBlock11PC := 495.
        ].
        recoveredBlock11Step = 495 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack0.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            (recoveredStack0) doWithoutMemento: (recoveredStack1).
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            recoveredStack1 := (recoveredStack1) enclosingRectOf: (recoveredStack2).
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            (recoveredStack0) displayOneRectSetModified: (recoveredStack1).
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 523] ifFalse: [recoveredPC := 516].
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            (recoveredStack0) setSelectStateWithGOs: (recoveredStack1).
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 524.
        ].
        recoveredStep = 524 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20650ea8; bytecode file offset 0xf4d870"
!SGHierarchyWrapperGO methodsFor: 'recovered'!
buildSGHierarchyGOForLocal: recoveredArg1 withClass: recoveredArg2 prepareCalls: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Value0 recoveredBlock39Value1 recoveredBlock39Value2 recoveredBlock39Value3 recoveredBlock39Value4 |
    recoveredBlock39Value0 := recoveredBlock39Arg1.
    recoveredBlock39Value1 := (recoveredBlock39Value0) basicGraphObject.
    recoveredBlock39Value2 := (recoveredBlock39Value1) connectedGOs.
    recoveredBlock39Value3 := [:recoveredBlock39Block51Arg1 | 
    | recoveredBlock39Block51Stack0 recoveredBlock39Block51Stack1 recoveredBlock39Block51Stack2 recoveredBlock39Block51Stack3 recoveredBlock39Block51PC recoveredBlock39Block51Step recoveredBlock39Block51Done recoveredBlock39Block51Result |
    recoveredBlock39Block51Stack0 := nil.
    recoveredBlock39Block51PC := 58.
    recoveredBlock39Block51Done := false.
    [recoveredBlock39Block51Done not] whileTrue: [
        recoveredBlock39Block51Step := recoveredBlock39Block51PC.
        recoveredBlock39Block51Step = 58 ifTrue: [
            recoveredBlock39Block51Stack1 := recoveredLocal15.
            recoveredBlock39Block51PC := 61.
        ].
        recoveredBlock39Block51Step = 61 ifTrue: [
            recoveredBlock39Block51Stack2 := recoveredBlock39Block51Arg1.
            recoveredBlock39Block51PC := 62.
        ].
        recoveredBlock39Block51Step = 62 ifTrue: [
            recoveredBlock39Block51Stack1 := (recoveredBlock39Block51Stack1) includes: (recoveredBlock39Block51Stack2).
            recoveredBlock39Block51PC := 64.
        ].
        recoveredBlock39Block51Step = 64 ifTrue: [
            (recoveredBlock39Block51Stack1) ifTrue: [recoveredBlock39Block51PC := 68] ifFalse: [recoveredBlock39Block51PC := 78].
        ].
        recoveredBlock39Block51Step = 68 ifTrue: [
            recoveredBlock39Block51Stack1 := recoveredLocal1.
            recoveredBlock39Block51PC := 71.
        ].
        recoveredBlock39Block51Step = 71 ifTrue: [
            recoveredBlock39Block51Stack2 := recoveredBlock39Block51Arg1.
            recoveredBlock39Block51PC := 72.
        ].
        recoveredBlock39Block51Step = 72 ifTrue: [
            recoveredBlock39Block51Stack1 := (recoveredBlock39Block51Stack1) add: (recoveredBlock39Block51Stack2).
            recoveredBlock39Block51PC := 74.
        ].
        recoveredBlock39Block51Step = 74 ifTrue: [
            recoveredBlock39Block51PC := 84.
        ].
        recoveredBlock39Block51Step = 78 ifTrue: [
            recoveredBlock39Block51Stack1 := recoveredLocal15.
            recoveredBlock39Block51PC := 81.
        ].
        recoveredBlock39Block51Step = 81 ifTrue: [
            recoveredBlock39Block51Stack2 := recoveredBlock39Block51Arg1.
            recoveredBlock39Block51PC := 82.
        ].
        recoveredBlock39Block51Step = 82 ifTrue: [
            recoveredBlock39Block51Stack1 := (recoveredBlock39Block51Stack1) add: (recoveredBlock39Block51Stack2).
            recoveredBlock39Block51PC := 84.
        ].
        recoveredBlock39Block51Step = 84 ifTrue: [
            recoveredBlock39Block51Result := recoveredBlock39Block51Stack1.
            recoveredBlock39Block51Done := true.
        ].
    ].
    recoveredBlock39Block51Result
].
    recoveredBlock39Value4 := (recoveredBlock39Value2) do: (recoveredBlock39Value3).
    recoveredBlock39Value4
].
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := [:recoveredBlock93Arg1 | 
    | recoveredBlock93Value0 recoveredBlock93Value1 recoveredBlock93Value2 recoveredBlock93Value3 recoveredBlock93Value4 recoveredBlock93Value5 |
    recoveredBlock93Value0 := recoveredArg1.
    recoveredBlock93Value1 := recoveredBlock93Arg1.
    (recoveredBlock93Value0) add: (recoveredBlock93Value1).
    recoveredBlock93Value2 := recoveredLocal15.
    recoveredBlock93Value3 := recoveredBlock93Arg1.
    recoveredBlock93Value4 := [].
    recoveredBlock93Value5 := (recoveredBlock93Value2) remove: (recoveredBlock93Value3) ifAbsent: (recoveredBlock93Value4).
    recoveredBlock93Value5
].
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredPC := 138.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSet.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) anyElement.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) connectedGOs.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := 'wb_sifting'.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := [:block28123028Arg1 | 
    | block28123028Stack0 block28123028Stack1 block28123028Stack2 block28123028Stack3 block28123028PC block28123028Step block28123028Done block28123028Result |
    block28123028Stack0 := self.
    block28123028PC := 4.
    block28123028Done := false.
    [block28123028Done not] whileTrue: [
        block28123028Step := block28123028PC.
        block28123028Step = 4 ifTrue: [
            block28123028Stack1 := true.
            block28123028PC := 5.
        ].
        block28123028Step = 5 ifTrue: [
            block28123028Stack2 := block28123028Arg1.
            block28123028PC := 6.
        ].
        block28123028Step = 6 ifTrue: [
            block28123028Stack2 := (block28123028Stack2) connectionPoints.
            block28123028PC := 8.
        ].
        block28123028Step = 8 ifTrue: [
            block28123028Stack2 := (block28123028Stack2) first.
            block28123028PC := 10.
        ].
        block28123028Step = 10 ifTrue: [
            (block28123028Stack2 == nil) ifTrue: [block28123028PC := 21] ifFalse: [block28123028PC := 14].
        ].
        block28123028Step = 14 ifTrue: [
            block28123028PC := 15.
        ].
        block28123028Step = 15 ifTrue: [
            block28123028Stack1 := block28123028Arg1.
            block28123028PC := 16.
        ].
        block28123028Step = 16 ifTrue: [
            block28123028Stack1 := (block28123028Stack1) connectionPoints.
            block28123028PC := 18.
        ].
        block28123028Step = 18 ifTrue: [
            block28123028Stack1 := (block28123028Stack1) last.
            block28123028PC := 20.
        ].
        block28123028Step = 20 ifTrue: [
            block28123028Stack1 := (block28123028Stack1) isNil.
            block28123028PC := 21.
        ].
        block28123028Step = 21 ifTrue: [
            block28123028Result := block28123028Stack1.
            block28123028Done := true.
        ].
    ].
    block28123028Result
].
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 176] ifFalse: [recoveredPC := 178].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := [:block2812304cArg1 | 
    | block2812304cValue0 block2812304cValue1 |
    block2812304cValue0 := block2812304cArg1.
    block2812304cValue1 := (block2812304cValue0) frame.
    block2812304cValue1
].
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := (recoveredStack0) enclosingRectOf: (recoveredStack1).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredLocal13 := recoveredStack0.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := [:recoveredBlock216Arg1 | 
    | recoveredBlock216Stack0 recoveredBlock216Stack1 recoveredBlock216Stack2 recoveredBlock216Stack3 recoveredBlock216Stack4 recoveredBlock216Stack5 recoveredBlock216PC recoveredBlock216Step recoveredBlock216Done recoveredBlock216Result |
    recoveredBlock216Stack0 := self.
    recoveredBlock216PC := 222.
    recoveredBlock216Done := false.
    [recoveredBlock216Done not] whileTrue: [
        recoveredBlock216Step := recoveredBlock216PC.
        recoveredBlock216Step = 222 ifTrue: [
            recoveredBlock216Stack1 := nil.
            recoveredBlock216PC := 223.
        ].
        recoveredBlock216Step = 223 ifTrue: [
            recoveredBlock216Stack2 := recoveredLocal13.
            recoveredBlock216PC := 226.
        ].
        recoveredBlock216Step = 226 ifTrue: [
            recoveredBlock216Stack3 := recoveredBlock216Arg1.
            recoveredBlock216PC := 227.
        ].
        recoveredBlock216Step = 227 ifTrue: [
            recoveredBlock216Stack3 := (recoveredBlock216Stack3) connectionPoints.
            recoveredBlock216PC := 229.
        ].
        recoveredBlock216Step = 229 ifTrue: [
            recoveredBlock216Stack3 := (recoveredBlock216Stack3) first.
            recoveredBlock216PC := 231.
        ].
        recoveredBlock216Step = 231 ifTrue: [
            recoveredBlock216Stack3 := (recoveredBlock216Stack3) position.
            recoveredBlock216PC := 233.
        ].
        recoveredBlock216Step = 233 ifTrue: [
            recoveredBlock216Stack2 := (recoveredBlock216Stack2) containsPoint: (recoveredBlock216Stack3).
            recoveredBlock216PC := 235.
        ].
        recoveredBlock216Step = 235 ifTrue: [
            recoveredBlock216Stack3 := recoveredLocal13.
            recoveredBlock216PC := 238.
        ].
        recoveredBlock216Step = 238 ifTrue: [
            recoveredBlock216Stack4 := recoveredBlock216Arg1.
            recoveredBlock216PC := 239.
        ].
        recoveredBlock216Step = 239 ifTrue: [
            recoveredBlock216Stack4 := (recoveredBlock216Stack4) connectionPoints.
            recoveredBlock216PC := 241.
        ].
        recoveredBlock216Step = 241 ifTrue: [
            recoveredBlock216Stack4 := (recoveredBlock216Stack4) last.
            recoveredBlock216PC := 243.
        ].
        recoveredBlock216Step = 243 ifTrue: [
            recoveredBlock216Stack4 := (recoveredBlock216Stack4) position.
            recoveredBlock216PC := 245.
        ].
        recoveredBlock216Step = 245 ifTrue: [
            recoveredBlock216Stack3 := (recoveredBlock216Stack3) containsPoint: (recoveredBlock216Stack4).
            recoveredBlock216PC := 247.
        ].
        recoveredBlock216Step = 247 ifTrue: [
            recoveredBlock216Stack2 := (recoveredBlock216Stack2) xor: (recoveredBlock216Stack3).
            recoveredBlock216PC := 249.
        ].
        recoveredBlock216Step = 249 ifTrue: [
            (recoveredBlock216Stack2) ifTrue: [recoveredBlock216PC := 252] ifFalse: [recoveredBlock216PC := 346].
        ].
        recoveredBlock216Step = 252 ifTrue: [
            recoveredBlock216PC := 253.
        ].
        recoveredBlock216Step = 253 ifTrue: [
            recoveredBlock216Stack1 := recoveredLocal10.
            recoveredBlock216PC := 256.
        ].
        recoveredBlock216Step = 256 ifTrue: [
            recoveredBlock216Stack2 := recoveredBlock216Arg1.
            recoveredBlock216PC := 257.
        ].
        recoveredBlock216Step = 257 ifTrue: [
            (recoveredBlock216Stack1) add: (recoveredBlock216Stack2).
            recoveredBlock216PC := 259.
        ].
        recoveredBlock216Step = 259 ifTrue: [
            recoveredBlock216Stack1 := recoveredLocal13.
            recoveredBlock216PC := 262.
        ].
        recoveredBlock216Step = 262 ifTrue: [
            recoveredBlock216Stack2 := recoveredBlock216Arg1.
            recoveredBlock216PC := 263.
        ].
        recoveredBlock216Step = 263 ifTrue: [
            recoveredBlock216Stack2 := (recoveredBlock216Stack2) startGO.
            recoveredBlock216PC := 265.
        ].
        recoveredBlock216Step = 265 ifTrue: [
            recoveredBlock216Stack2 := (recoveredBlock216Stack2) getPosition.
            recoveredBlock216PC := 267.
        ].
        recoveredBlock216Step = 267 ifTrue: [
            recoveredBlock216Stack1 := (recoveredBlock216Stack1) containsPoint: (recoveredBlock216Stack2).
            recoveredBlock216PC := 269.
        ].
        recoveredBlock216Step = 269 ifTrue: [
            (recoveredBlock216Stack1) ifTrue: [recoveredBlock216PC := 272] ifFalse: [recoveredBlock216PC := 299].
        ].
        recoveredBlock216Step = 272 ifTrue: [
            recoveredBlock216Stack1 := recoveredBlock216Arg1.
            recoveredBlock216PC := 273.
        ].
        recoveredBlock216Step = 273 ifTrue: [
            recoveredBlock216Stack1 := (recoveredBlock216Stack1) startGO.
            recoveredBlock216PC := 275.
        ].
        recoveredBlock216Step = 275 ifTrue: [
            recoveredBlock216Stack1 := (recoveredBlock216Stack1) basicGraphObject.
            recoveredBlock216PC := 277.
        ].
        recoveredBlock216Step = 277 ifTrue: [
            recoveredBlock216Stack1 := (recoveredBlock216Stack1) isResultPin.
            recoveredBlock216PC := 279.
        ].
        recoveredBlock216Step = 279 ifTrue: [
            (recoveredBlock216Stack1) ifTrue: [recoveredBlock216PC := 282] ifFalse: [recoveredBlock216PC := 292].
        ].
        recoveredBlock216Step = 282 ifTrue: [
            recoveredBlock216Stack1 := recoveredLocal4.
            recoveredBlock216PC := 285.
        ].
        recoveredBlock216Step = 285 ifTrue: [
            recoveredBlock216Stack1 := (recoveredBlock216Stack1) + (1).
            recoveredBlock216PC := 286.
        ].
        recoveredBlock216Step = 286 ifTrue: [
            recoveredLocal4 := recoveredBlock216Stack1.
            recoveredBlock216PC := 289.
        ].
        recoveredBlock216Step = 289 ifTrue: [
            recoveredBlock216PC := 299.
        ].
        recoveredBlock216Step = 292 ifTrue: [
            recoveredBlock216Stack1 := recoveredLocal5.
            recoveredBlock216PC := 295.
        ].
        recoveredBlock216Step = 295 ifTrue: [
            recoveredBlock216Stack1 := (recoveredBlock216Stack1) + (1).
            recoveredBlock216PC := 296.
        ].
        recoveredBlock216Step = 296 ifTrue: [
            recoveredLocal5 := recoveredBlock216Stack1.
            recoveredBlock216PC := 299.
        ].
        recoveredBlock216Step = 299 ifTrue: [
            recoveredBlock216Stack1 := nil.
            recoveredBlock216PC := 300.
        ].
        recoveredBlock216Step = 300 ifTrue: [
            recoveredBlock216Stack2 := recoveredLocal13.
            recoveredBlock216PC := 303.
        ].
        recoveredBlock216Step = 303 ifTrue: [
            recoveredBlock216Stack3 := recoveredBlock216Arg1.
            recoveredBlock216PC := 304.
        ].
        recoveredBlock216Step = 304 ifTrue: [
            recoveredBlock216Stack3 := (recoveredBlock216Stack3) endGO.
            recoveredBlock216PC := 306.
        ].
        recoveredBlock216Step = 306 ifTrue: [
            recoveredBlock216Stack3 := (recoveredBlock216Stack3) getPosition.
            recoveredBlock216PC := 308.
        ].
        recoveredBlock216Step = 308 ifTrue: [
            recoveredBlock216Stack2 := (recoveredBlock216Stack2) containsPoint: (recoveredBlock216Stack3).
            recoveredBlock216PC := 310.
        ].
        recoveredBlock216Step = 310 ifTrue: [
            (recoveredBlock216Stack2) ifTrue: [recoveredBlock216PC := 314] ifFalse: [recoveredBlock216PC := 346].
        ].
        recoveredBlock216Step = 314 ifTrue: [
            recoveredBlock216PC := 315.
        ].
        recoveredBlock216Step = 315 ifTrue: [
            recoveredBlock216Stack1 := recoveredBlock216Arg1.
            recoveredBlock216PC := 316.
        ].
        recoveredBlock216Step = 316 ifTrue: [
            recoveredBlock216Stack1 := (recoveredBlock216Stack1) endGO.
            recoveredBlock216PC := 318.
        ].
        recoveredBlock216Step = 318 ifTrue: [
            recoveredBlock216Stack1 := (recoveredBlock216Stack1) basicGraphObject.
            recoveredBlock216PC := 320.
        ].
        recoveredBlock216Step = 320 ifTrue: [
            recoveredBlock216Stack1 := (recoveredBlock216Stack1) isResultPin.
            recoveredBlock216PC := 322.
        ].
        recoveredBlock216Step = 322 ifTrue: [
            (recoveredBlock216Stack1) ifTrue: [recoveredBlock216PC := 338] ifFalse: [recoveredBlock216PC := 326].
        ].
        recoveredBlock216Step = 326 ifTrue: [
            recoveredBlock216Stack1 := recoveredLocal5.
            recoveredBlock216PC := 329.
        ].
        recoveredBlock216Step = 329 ifTrue: [
            recoveredBlock216Stack1 := (recoveredBlock216Stack1) + (1).
            recoveredBlock216PC := 330.
        ].
        recoveredBlock216Step = 330 ifTrue: [
            recoveredBlock216Stack2 := recoveredBlock216Stack1.
            recoveredBlock216PC := 331.
        ].
        recoveredBlock216Step = 331 ifTrue: [
            recoveredLocal5 := recoveredBlock216Stack2.
            recoveredBlock216PC := 334.
        ].
        recoveredBlock216Step = 334 ifTrue: [
            recoveredBlock216PC := 346.
        ].
        recoveredBlock216Step = 338 ifTrue: [
            recoveredBlock216Stack1 := recoveredLocal4.
            recoveredBlock216PC := 341.
        ].
        recoveredBlock216Step = 341 ifTrue: [
            recoveredBlock216Stack1 := (recoveredBlock216Stack1) + (1).
            recoveredBlock216PC := 342.
        ].
        recoveredBlock216Step = 342 ifTrue: [
            recoveredBlock216Stack2 := recoveredBlock216Stack1.
            recoveredBlock216PC := 343.
        ].
        recoveredBlock216Step = 343 ifTrue: [
            recoveredLocal4 := recoveredBlock216Stack2.
            recoveredBlock216PC := 346.
        ].
        recoveredBlock216Step = 346 ifTrue: [
            recoveredBlock216Result := recoveredBlock216Stack1.
            recoveredBlock216Done := true.
        ].
    ].
    recoveredBlock216Result
].
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            (recoveredStack0) removeAll: (recoveredStack1).
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack0 := SortedCollection.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack1 := [:block28123070Arg1 :block28123070Arg2 | 
    | block28123070Value0 block28123070Value1 block28123070Value2 block28123070Value3 block28123070Value4 block28123070Value5 block28123070Value6 block28123070Value7 block28123070Value8 |
    block28123070Value0 := block28123070Arg1.
    block28123070Value1 := (block28123070Value0) at: (3).
    block28123070Value2 := (block28123070Value1) getPosition.
    block28123070Value3 := (block28123070Value2) y.
    block28123070Value4 := block28123070Arg2.
    block28123070Value5 := (block28123070Value4) at: (3).
    block28123070Value6 := (block28123070Value5) getPosition.
    block28123070Value7 := (block28123070Value6) y.
    block28123070Value8 := (block28123070Value3) <= (block28123070Value7).
    block28123070Value8
].
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack0 := (recoveredStack0) sortBlock: (recoveredStack1).
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredLocal14 := recoveredStack0.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack1 := [:recoveredBlock392Arg1 | 
    | recoveredBlock392Local1 recoveredBlock392Local2 recoveredBlock392Stack0 recoveredBlock392Stack1 recoveredBlock392Stack2 recoveredBlock392Stack3 recoveredBlock392Stack4 recoveredBlock392Stack5 recoveredBlock392Stack6 recoveredBlock392PC recoveredBlock392Step recoveredBlock392Done recoveredBlock392Result |
    recoveredBlock392Stack0 := self.
    recoveredBlock392PC := 398.
    recoveredBlock392Done := false.
    [recoveredBlock392Done not] whileTrue: [
        recoveredBlock392Step := recoveredBlock392PC.
        recoveredBlock392Step = 398 ifTrue: [
            recoveredBlock392Stack1 := recoveredArg1.
            recoveredBlock392PC := 401.
        ].
        recoveredBlock392Step = 401 ifTrue: [
            recoveredBlock392Stack2 := [:block28123094Arg1 | 
    | block28123094Value0 block28123094Value1 |
    block28123094Value0 := block28123094Arg1.
    block28123094Value1 := (block28123094Value0) basicGraphObject.
    block28123094Value1
].
            recoveredBlock392PC := 403.
        ].
        recoveredBlock392Step = 403 ifTrue: [
            recoveredBlock392PC := 410.
        ].
        recoveredBlock392Step = 410 ifTrue: [
            recoveredBlock392Stack1 := (recoveredBlock392Stack1) collect: (recoveredBlock392Stack2).
            recoveredBlock392PC := 412.
        ].
        recoveredBlock392Step = 412 ifTrue: [
            recoveredBlock392Stack2 := recoveredBlock392Arg1.
            recoveredBlock392PC := 413.
        ].
        recoveredBlock392Step = 413 ifTrue: [
            recoveredBlock392Stack2 := (recoveredBlock392Stack2) startGO.
            recoveredBlock392PC := 415.
        ].
        recoveredBlock392Step = 415 ifTrue: [
            recoveredBlock392Stack3 := recoveredBlock392Stack2.
            recoveredBlock392PC := 416.
        ].
        recoveredBlock392Step = 416 ifTrue: [
            recoveredBlock392Local1 := recoveredBlock392Stack3.
            recoveredBlock392PC := 417.
        ].
        recoveredBlock392Step = 417 ifTrue: [
            recoveredBlock392Stack2 := (recoveredBlock392Stack2) basicGraphObject.
            recoveredBlock392PC := 419.
        ].
        recoveredBlock392Step = 419 ifTrue: [
            recoveredBlock392Stack2 := (recoveredBlock392Stack2) getBasicBlock.
            recoveredBlock392PC := 421.
        ].
        recoveredBlock392Step = 421 ifTrue: [
            recoveredBlock392Stack1 := (recoveredBlock392Stack1) includes: (recoveredBlock392Stack2).
            recoveredBlock392PC := 423.
        ].
        recoveredBlock392Step = 423 ifTrue: [
            (recoveredBlock392Stack1) ifTrue: [recoveredBlock392PC := 426] ifFalse: [recoveredBlock392PC := 458].
        ].
        recoveredBlock392Step = 426 ifTrue: [
            recoveredBlock392Stack1 := recoveredBlock392Arg1.
            recoveredBlock392PC := 427.
        ].
        recoveredBlock392Step = 427 ifTrue: [
            recoveredBlock392Stack1 := (recoveredBlock392Stack1) endGO.
            recoveredBlock392PC := 429.
        ].
        recoveredBlock392Step = 429 ifTrue: [
            recoveredBlock392Local2 := recoveredBlock392Stack1.
            recoveredBlock392PC := 430.
        ].
        recoveredBlock392Step = 430 ifTrue: [
            recoveredBlock392Stack1 := recoveredBlock392Local2.
            recoveredBlock392PC := 431.
        ].
        recoveredBlock392Step = 431 ifTrue: [
            recoveredBlock392Stack1 := (recoveredBlock392Stack1) basicGraphObject.
            recoveredBlock392PC := 433.
        ].
        recoveredBlock392Step = 433 ifTrue: [
            recoveredBlock392Stack1 := (recoveredBlock392Stack1) isResultPin.
            recoveredBlock392PC := 435.
        ].
        recoveredBlock392Step = 435 ifTrue: [
            (recoveredBlock392Stack1) ifTrue: [recoveredBlock392PC := 438] ifFalse: [recoveredBlock392PC := 448].
        ].
        recoveredBlock392Step = 438 ifTrue: [
            recoveredBlock392Stack1 := recoveredLocal5.
            recoveredBlock392PC := 441.
        ].
        recoveredBlock392Step = 441 ifTrue: [
            recoveredBlock392Stack1 := (recoveredBlock392Stack1) + (1).
            recoveredBlock392PC := 442.
        ].
        recoveredBlock392Step = 442 ifTrue: [
            recoveredLocal5 := recoveredBlock392Stack1.
            recoveredBlock392PC := 445.
        ].
        recoveredBlock392Step = 445 ifTrue: [
            recoveredBlock392PC := 455.
        ].
        recoveredBlock392Step = 448 ifTrue: [
            recoveredBlock392Stack1 := recoveredLocal4.
            recoveredBlock392PC := 451.
        ].
        recoveredBlock392Step = 451 ifTrue: [
            recoveredBlock392Stack1 := (recoveredBlock392Stack1) + (1).
            recoveredBlock392PC := 452.
        ].
        recoveredBlock392Step = 452 ifTrue: [
            recoveredLocal4 := recoveredBlock392Stack1.
            recoveredBlock392PC := 455.
        ].
        recoveredBlock392Step = 455 ifTrue: [
            recoveredBlock392PC := 524.
        ].
        recoveredBlock392Step = 458 ifTrue: [
            recoveredBlock392Stack1 := recoveredArg1.
            recoveredBlock392PC := 461.
        ].
        recoveredBlock392Step = 461 ifTrue: [
            recoveredBlock392Stack2 := [:block281230b8Arg1 | 
    | block281230b8Value0 block281230b8Value1 |
    block281230b8Value0 := block281230b8Arg1.
    block281230b8Value1 := (block281230b8Value0) basicGraphObject.
    block281230b8Value1
].
            recoveredBlock392PC := 463.
        ].
        recoveredBlock392Step = 463 ifTrue: [
            recoveredBlock392PC := 470.
        ].
        recoveredBlock392Step = 470 ifTrue: [
            recoveredBlock392Stack1 := (recoveredBlock392Stack1) collect: (recoveredBlock392Stack2).
            recoveredBlock392PC := 472.
        ].
        recoveredBlock392Step = 472 ifTrue: [
            recoveredBlock392Stack2 := recoveredBlock392Arg1.
            recoveredBlock392PC := 473.
        ].
        recoveredBlock392Step = 473 ifTrue: [
            recoveredBlock392Stack2 := (recoveredBlock392Stack2) endGO.
            recoveredBlock392PC := 475.
        ].
        recoveredBlock392Step = 475 ifTrue: [
            recoveredBlock392Stack3 := recoveredBlock392Stack2.
            recoveredBlock392PC := 476.
        ].
        recoveredBlock392Step = 476 ifTrue: [
            recoveredBlock392Local1 := recoveredBlock392Stack3.
            recoveredBlock392PC := 477.
        ].
        recoveredBlock392Step = 477 ifTrue: [
            recoveredBlock392Stack2 := (recoveredBlock392Stack2) basicGraphObject.
            recoveredBlock392PC := 479.
        ].
        recoveredBlock392Step = 479 ifTrue: [
            recoveredBlock392Stack2 := (recoveredBlock392Stack2) getBasicBlock.
            recoveredBlock392PC := 481.
        ].
        recoveredBlock392Step = 481 ifTrue: [
            recoveredBlock392Stack1 := (recoveredBlock392Stack1) includes: (recoveredBlock392Stack2).
            recoveredBlock392PC := 483.
        ].
        recoveredBlock392Step = 483 ifTrue: [
            (recoveredBlock392Stack1) ifTrue: [recoveredBlock392PC := 486] ifFalse: [recoveredBlock392PC := 518].
        ].
        recoveredBlock392Step = 486 ifTrue: [
            recoveredBlock392Stack1 := recoveredBlock392Arg1.
            recoveredBlock392PC := 487.
        ].
        recoveredBlock392Step = 487 ifTrue: [
            recoveredBlock392Stack1 := (recoveredBlock392Stack1) startGO.
            recoveredBlock392PC := 489.
        ].
        recoveredBlock392Step = 489 ifTrue: [
            recoveredBlock392Local2 := recoveredBlock392Stack1.
            recoveredBlock392PC := 490.
        ].
        recoveredBlock392Step = 490 ifTrue: [
            recoveredBlock392Stack1 := recoveredBlock392Local2.
            recoveredBlock392PC := 491.
        ].
        recoveredBlock392Step = 491 ifTrue: [
            recoveredBlock392Stack1 := (recoveredBlock392Stack1) basicGraphObject.
            recoveredBlock392PC := 493.
        ].
        recoveredBlock392Step = 493 ifTrue: [
            recoveredBlock392Stack1 := (recoveredBlock392Stack1) isResultPin.
            recoveredBlock392PC := 495.
        ].
        recoveredBlock392Step = 495 ifTrue: [
            (recoveredBlock392Stack1) ifTrue: [recoveredBlock392PC := 498] ifFalse: [recoveredBlock392PC := 508].
        ].
        recoveredBlock392Step = 498 ifTrue: [
            recoveredBlock392Stack1 := recoveredLocal5.
            recoveredBlock392PC := 501.
        ].
        recoveredBlock392Step = 501 ifTrue: [
            recoveredBlock392Stack1 := (recoveredBlock392Stack1) + (1).
            recoveredBlock392PC := 502.
        ].
        recoveredBlock392Step = 502 ifTrue: [
            recoveredLocal5 := recoveredBlock392Stack1.
            recoveredBlock392PC := 505.
        ].
        recoveredBlock392Step = 505 ifTrue: [
            recoveredBlock392PC := 515.
        ].
        recoveredBlock392Step = 508 ifTrue: [
            recoveredBlock392Stack1 := recoveredLocal4.
            recoveredBlock392PC := 511.
        ].
        recoveredBlock392Step = 511 ifTrue: [
            recoveredBlock392Stack1 := (recoveredBlock392Stack1) + (1).
            recoveredBlock392PC := 512.
        ].
        recoveredBlock392Step = 512 ifTrue: [
            recoveredLocal4 := recoveredBlock392Stack1.
            recoveredBlock392PC := 515.
        ].
        recoveredBlock392Step = 515 ifTrue: [
            recoveredBlock392PC := 524.
        ].
        recoveredBlock392Step = 518 ifTrue: [
            recoveredBlock392Stack1 := self.
            recoveredBlock392PC := 519.
        ].
        recoveredBlock392Step = 519 ifTrue: [
            recoveredBlock392Stack2 := 'no conn'.
            recoveredBlock392PC := 521.
        ].
        recoveredBlock392Step = 521 ifTrue: [
            recoveredBlock392Stack1 := (recoveredBlock392Stack1) error: (recoveredBlock392Stack2).
            recoveredBlock392PC := 523.
        ].
        recoveredBlock392Step = 523 ifTrue: [
            ^recoveredBlock392Stack1
        ].
        recoveredBlock392Step = 524 ifTrue: [
            recoveredBlock392Stack1 := recoveredLocal14.
            recoveredBlock392PC := 527.
        ].
        recoveredBlock392Step = 527 ifTrue: [
            recoveredBlock392Stack2 := Array.
            recoveredBlock392PC := 529.
        ].
        recoveredBlock392Step = 529 ifTrue: [
            recoveredBlock392Stack3 := recoveredBlock392Arg1.
            recoveredBlock392PC := 530.
        ].
        recoveredBlock392Step = 530 ifTrue: [
            recoveredBlock392Stack4 := recoveredBlock392Local1.
            recoveredBlock392PC := 531.
        ].
        recoveredBlock392Step = 531 ifTrue: [
            recoveredBlock392Stack5 := recoveredBlock392Local2.
            recoveredBlock392PC := 532.
        ].
        recoveredBlock392Step = 532 ifTrue: [
            recoveredBlock392Stack2 := (recoveredBlock392Stack2) with: (recoveredBlock392Stack3) with: (recoveredBlock392Stack4) with: (recoveredBlock392Stack5).
            recoveredBlock392PC := 535.
        ].
        recoveredBlock392Step = 535 ifTrue: [
            recoveredBlock392Stack1 := (recoveredBlock392Stack1) add: (recoveredBlock392Stack2).
            recoveredBlock392PC := 537.
        ].
        recoveredBlock392Step = 537 ifTrue: [
            recoveredBlock392Result := recoveredBlock392Stack1.
            recoveredBlock392Done := true.
        ].
    ].
    recoveredBlock392Result
].
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 546.
        ].
        recoveredStep = 546 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 548.
        ].
        recoveredStep = 548 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            recoveredStack1 := PinDistance.
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack1 := 8.
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            recoveredStack0 := (recoveredStack0) / (recoveredStack1).
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            recoveredStack1 := PinDistance.
            recoveredPC := 572.
        ].
        recoveredStep = 572 ifTrue: [
            recoveredStack0 := (recoveredStack0) roundTo: (recoveredStack1).
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            recoveredStack1 := BlockMinSize.
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            recoveredStack2 := PinDistance.
            recoveredPC := 588.
        ].
        recoveredStep = 588 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 591.
        ].
        recoveredStep = 591 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack2 := PinDistance.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack1 := (recoveredStack1) roundTo: (recoveredStack2).
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 606.
        ].
        recoveredStep = 606 ifTrue: [
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 608.
        ].
        recoveredStep = 608 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 612.
        ].
        recoveredStep = 612 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFor: (recoveredStack1) parent: (recoveredStack2) size: (recoveredStack3).
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            recoveredLocal11 := recoveredStack0.
            recoveredPC := 618.
        ].
        recoveredStep = 618 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 620.
        ].
        recoveredStep = 620 ifTrue: [
            recoveredStack1 := 'call_2008404126'.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            recoveredPC := 624.
        ].
        recoveredStep = 624 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicGraphObject.
            recoveredPC := 629.
        ].
        recoveredStep = 629 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 632.
        ].
        recoveredStep = 632 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 634.
        ].
        recoveredStep = 634 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 637.
        ].
        recoveredStep = 637 ifTrue: [
            recoveredStack2 := (recoveredStack2) hierarchyLabelsLocal.
            recoveredPC := 639.
        ].
        recoveredStep = 639 ifTrue: [
            recoveredStack1 := (recoveredStack1) uniqueStringFor: (recoveredStack2).
            recoveredPC := 641.
        ].
        recoveredStep = 641 ifTrue: [
            (recoveredStack0) changeActualName: (recoveredStack1).
            recoveredPC := 645.
        ].
        recoveredStep = 645 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 648.
        ].
        recoveredStep = 648 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphObject.
            recoveredPC := 653.
        ].
        recoveredStep = 653 ifTrue: [
            recoveredLocal12 := recoveredStack0.
            recoveredPC := 656.
        ].
        recoveredStep = 656 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 662.
        ].
        recoveredStep = 662 ifTrue: [
            recoveredStack1 := (recoveredStack1) center.
            recoveredPC := 667.
        ].
        recoveredStep = 667 ifTrue: [
            recoveredStack2 := PinDistance.
            recoveredPC := 669.
        ].
        recoveredStep = 669 ifTrue: [
            recoveredStack3 := PinDistance.
            recoveredPC := 671.
        ].
        recoveredStep = 671 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 673.
        ].
        recoveredStep = 673 ifTrue: [
            recoveredStack1 := (recoveredStack1) roundTo: (recoveredStack2).
            recoveredPC := 675.
        ].
        recoveredStep = 675 ifTrue: [
            (recoveredStack0) moveTo: (recoveredStack1).
            recoveredPC := 679.
        ].
        recoveredStep = 679 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 680.
        ].
        recoveredStep = 680 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 684.
        ].
        recoveredStep = 684 ifTrue: [
            (recoveredStack0) addChildGO: (recoveredStack1) display: (recoveredStack2).
            recoveredPC := 689.
        ].
        recoveredStep = 689 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 691.
        ].
        recoveredStep = 691 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 692.
        ].
        recoveredStep = 692 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 695.
        ].
        recoveredStep = 695 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            recoveredStack1 := [:recoveredBlock698Arg1 | 
    | recoveredBlock698Stack0 recoveredBlock698Stack1 recoveredBlock698Stack2 recoveredBlock698Stack3 recoveredBlock698Stack4 recoveredBlock698PC recoveredBlock698Step recoveredBlock698Done recoveredBlock698Result |
    recoveredBlock698Stack0 := self.
    recoveredBlock698PC := 704.
    recoveredBlock698Done := false.
    [recoveredBlock698Done not] whileTrue: [
        recoveredBlock698Step := recoveredBlock698PC.
        recoveredBlock698Step = 704 ifTrue: [
            recoveredBlock698Stack1 := recoveredBlock698Arg1.
            recoveredBlock698PC := 705.
        ].
        recoveredBlock698Step = 705 ifTrue: [
            recoveredBlock698Stack2 := recoveredLocal11.
            recoveredBlock698PC := 708.
        ].
        recoveredBlock698Step = 708 ifTrue: [
            recoveredBlock698Stack3 := false.
            recoveredBlock698PC := 709.
        ].
        recoveredBlock698Step = 709 ifTrue: [
            (recoveredBlock698Stack0) moveGO: (recoveredBlock698Stack1) toSGHierarchyGO: (recoveredBlock698Stack2) display: (recoveredBlock698Stack3).
            recoveredBlock698PC := 713.
        ].
        recoveredBlock698Step = 713 ifTrue: [
            recoveredBlock698Stack0 := recoveredBlock698Arg1.
            recoveredBlock698PC := 714.
        ].
        recoveredBlock698Step = 714 ifTrue: [
            recoveredBlock698Stack0 := (recoveredBlock698Stack0) basicGraphObject.
            recoveredBlock698PC := 716.
        ].
        recoveredBlock698Step = 716 ifTrue: [
            recoveredBlock698Stack0 := (recoveredBlock698Stack0) isSGHierarchyGO.
            recoveredBlock698PC := 721.
        ].
        recoveredBlock698Step = 721 ifTrue: [
            (recoveredBlock698Stack0) ifTrue: [recoveredBlock698PC := 724] ifFalse: [recoveredBlock698PC := 735].
        ].
        recoveredBlock698Step = 724 ifTrue: [
            recoveredBlock698Stack0 := recoveredBlock698Arg1.
            recoveredBlock698PC := 725.
        ].
        recoveredBlock698Step = 725 ifTrue: [
            recoveredBlock698Stack0 := (recoveredBlock698Stack0) basicGraphObject.
            recoveredBlock698PC := 727.
        ].
        recoveredBlock698Step = 727 ifTrue: [
            recoveredBlock698Stack1 := recoveredLocal11.
            recoveredBlock698PC := 730.
        ].
        recoveredBlock698Step = 730 ifTrue: [
            (recoveredBlock698Stack0) parent: (recoveredBlock698Stack1).
            recoveredBlock698PC := 735.
        ].
        recoveredBlock698Step = 735 ifTrue: [
            recoveredBlock698Stack0 := recoveredLocal9.
            recoveredBlock698PC := 738.
        ].
        recoveredBlock698Step = 738 ifTrue: [
            recoveredBlock698Stack1 := recoveredBlock698Arg1.
            recoveredBlock698PC := 739.
        ].
        recoveredBlock698Step = 739 ifTrue: [
            recoveredBlock698Stack1 := (recoveredBlock698Stack1) frame.
            recoveredBlock698PC := 741.
        ].
        recoveredBlock698Step = 741 ifTrue: [
            recoveredBlock698Stack0 := (recoveredBlock698Stack0) add: (recoveredBlock698Stack1).
            recoveredBlock698PC := 743.
        ].
        recoveredBlock698Step = 743 ifTrue: [
            recoveredBlock698Result := recoveredBlock698Stack0.
            recoveredBlock698Done := true.
        ].
    ].
    recoveredBlock698Result
].
            recoveredPC := 744.
        ].
        recoveredStep = 744 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 746.
        ].
        recoveredStep = 746 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 749.
        ].
        recoveredStep = 749 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 750.
        ].
        recoveredStep = 750 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 753.
        ].
        recoveredStep = 753 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 756.
        ].
        recoveredStep = 756 ifTrue: [
            recoveredStack4 := recoveredLocal13.
            recoveredPC := 759.
        ].
        recoveredStep = 759 ifTrue: [
            recoveredStack1 := (recoveredStack1) addPortsFor: (recoveredStack2) conns: (recoveredStack3) rect: (recoveredStack4).
            recoveredPC := 763.
        ].
        recoveredStep = 763 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 767.
        ].
        recoveredStep = 767 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 770.
        ].
        recoveredStep = 770 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 773.
        ].
        recoveredStep = 773 ifTrue: [
            recoveredStack1 := (recoveredStack1) frame.
            recoveredPC := 775.
        ].
        recoveredStep = 775 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 777.
        ].
        recoveredStep = 777 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 780.
        ].
        recoveredStep = 780 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 781.
        ].
        recoveredStep = 781 ifTrue: [
            recoveredStack2 := recoveredLocal14.
            recoveredPC := 784.
        ].
        recoveredStep = 784 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 787.
        ].
        recoveredStep = 787 ifTrue: [
            (recoveredStack0) prepareCallsWhileMovedFrom: (recoveredStack1) toOther: (recoveredStack2) prepareCalls: (recoveredStack3).
            recoveredPC := 791.
        ].
        recoveredStep = 791 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 792.
        ].
        recoveredStep = 792 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 794.
        ].
        recoveredStep = 794 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 797.
        ].
        recoveredStep = 797 ifTrue: [
            (recoveredStack0) displayRectsSetModified: (recoveredStack1).
            recoveredPC := 801.
        ].
        recoveredStep = 801 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 804.
        ].
        recoveredStep = 804 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

