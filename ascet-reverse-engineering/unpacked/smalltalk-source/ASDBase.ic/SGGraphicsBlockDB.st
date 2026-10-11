"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006890; bytecode file offset 0x908be4"
!SGGraphicsBlockDB methodsFor: 'recovered'!
highestUsedGraphicalIdentifier
    | recoveredValue0 |
    recoveredValue0 := (self) calculateHighestUsedGraphicalIdentifier.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20019f7c; bytecode file offset 0x92209c"
!SGGraphicsBlockDB methodsFor: 'recovered'!
sourceType
    ^'BlockDiagram'
! !

"ASDBase.ic method 0x2001f3a0; bytecode file offset 0x92209c"
!SGGraphicsBlockDB methodsFor: 'recovered'!
labelForCompare
    ^'BlockDiagram for: '
! !

"ASDBase.ic method 0x20041c00; bytecode file offset 0x93e560"
!SGGraphicsBlockDB methodsFor: 'recovered'!
customerDataInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := graphicBlock.
    recoveredValue1 := (recoveredValue0) customerDataInfo.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041c90; bytecode file offset 0x93e560"
!SGGraphicsBlockDB methodsFor: 'recovered'!
drawingOrder
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := graphicBlock.
    recoveredValue1 := (recoveredValue0) drawingOrder.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200680ac; bytecode file offset 0x965b90"
!SGGraphicsBlockDB methodsFor: 'recovered'!
internalBlocks
    | recoveredValue0 |
    recoveredValue0 := blocks.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068174; bytecode file offset 0x965b90"
!SGGraphicsBlockDB methodsFor: 'recovered'!
blocks
    | recoveredValue0 |
    recoveredValue0 := blocks.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200697d8; bytecode file offset 0x966bdc"
!SGGraphicsBlockDB methodsFor: 'recovered'!
connections
    | recoveredValue0 |
    recoveredValue0 := connections.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a170; bytecode file offset 0x966bdc"
!SGGraphicsBlockDB methodsFor: 'recovered'!
internalConnections
    | recoveredValue0 |
    recoveredValue0 := connections.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a834; bytecode file offset 0x967a18"
!SGGraphicsBlockDB methodsFor: 'recovered'!
internalOthers
    | recoveredValue0 |
    recoveredValue0 := others.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b084; bytecode file offset 0x967a18"
!SGGraphicsBlockDB methodsFor: 'recovered'!
others
    | recoveredValue0 |
    recoveredValue0 := others.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b8a8; bytecode file offset 0x96873c"
!SGGraphicsBlockDB methodsFor: 'recovered'!
graphicBlock
    | recoveredValue0 |
    recoveredValue0 := graphicBlock.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bb60; bytecode file offset 0x96873c"
!SGGraphicsBlockDB methodsFor: 'recovered'!
internalGraphicBlock
    | recoveredValue0 |
    recoveredValue0 := graphicBlock.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20077f34; bytecode file offset 0x9757c8"
!SGGraphicsBlockDB methodsFor: 'recovered'!
isHierarchyDB
    ^true
! !

"ASDBase.ic method 0x20092e00; bytecode file offset 0x98f718"
!SGGraphicsBlockDB methodsFor: 'recovered'!
setCustomerDataInfo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := graphicBlock.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) setCustomerDataInfo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20092e3c; bytecode file offset 0x98f718"
!SGGraphicsBlockDB methodsFor: 'recovered'!
drawingOrder: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := graphicBlock.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) drawingOrder: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bff2c; bytecode file offset 0x9bd228"
!SGGraphicsBlockDB methodsFor: 'recovered'!
blocks: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    blocks := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c09c0; bytecode file offset 0x9bdf14"
!SGGraphicsBlockDB methodsFor: 'recovered'!
connections: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    connections := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1e94; bytecode file offset 0x9beac8"
!SGGraphicsBlockDB methodsFor: 'recovered'!
others: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    others := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2868; bytecode file offset 0x9bf474"
!SGGraphicsBlockDB methodsFor: 'recovered'!
graphicBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    graphicBlock := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200db8d4; bytecode file offset 0x9d818c"
!SGGraphicsBlockDB methodsFor: 'recovered'!
writeXML: recoveredArg1 class: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := graphicBlock.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) writeXML: (recoveredValue1) class: (recoveredValue2) block: (self).
    ^self
! !

"ASDBase.ic method 0x2011810c; bytecode file offset 0xa14a44"
!SGGraphicsBlockDB methodsFor: 'recovered'!
isEmpty
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) blocks.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) others.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20179bb4; bytecode file offset 0xa76478"
!SGGraphicsBlockDB methodsFor: 'recovered'!
graphicObject: recoveredArg1 datamodelManager: recoveredArg2 tableBuilder: recoveredArg3 manager: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredStack3 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack5 := [:block280cf360Arg1 | 
    | block280cf360Value0 block280cf360Value1 |
    block280cf360Value0 := block280cf360Arg1.
    block280cf360Value1 := (block280cf360Value0) controller.
    block280cf360Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := (recoveredStack4) ifNotNil: (recoveredStack5).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicObject: (recoveredStack1) datamodelManager: (recoveredStack2) tableBuilder: (recoveredStack3) controller: (recoveredStack4).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2019bb80; bytecode file offset 0xa98440"
!SGGraphicsBlockDB methodsFor: 'recovered'!
addReferencedOpAliasNamesToSet: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) blocks.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) addReferencedOpAliasNamesToSet: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201db7e0; bytecode file offset 0xad80a4"
!SGGraphicsBlockDB methodsFor: 'recovered'!
prepareForPaste: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) blocks.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) prepareForPaste: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) replaceAliasNames: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201ff9fc; bytecode file offset 0xafc2c0"
!SGGraphicsBlockDB methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    super initialize.
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (0).
    blocks := recoveredValue1.
    recoveredValue2 := Array.
    recoveredValue3 := (recoveredValue2) new: (0).
    connections := recoveredValue3.
    recoveredValue4 := Array.
    recoveredValue5 := (recoveredValue4) new: (0).
    others := recoveredValue5.
    ^self
! !

"ASDBase.ic method 0x2023f8e0; bytecode file offset 0xb3c1a4"
!SGGraphicsBlockDB methodsFor: 'recovered'!
blockDo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    super blockDo: (recoveredValue0).
    recoveredValue1 := graphicBlock.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) blockDo: (recoveredValue2).
    recoveredValue3 := (self) blocks.
    recoveredValue4 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := recoveredArg1.
    recoveredBlock20Value2 := (recoveredBlock20Value0) blockDo: (recoveredBlock20Value1).
    recoveredBlock20Value2
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2023f91c; bytecode file offset 0xb3c1ec"
!SGGraphicsBlockDB methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := graphicBlock.
    recoveredValue2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 |
    recoveredBlock13Value0 := recoveredArg1.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := (recoveredBlock13Value1) name.
    recoveredBlock13Value3 := (' / ') , (recoveredBlock13Value2).
    recoveredBlock13Value4 := (recoveredBlock13Value0) nextPutAll: (recoveredBlock13Value3).
    recoveredBlock13Value4
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2028fb28; bytecode file offset 0xb8c3f4"
!SGGraphicsBlockDB methodsFor: 'recovered'!
removeMethodElementsNotAllowed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) blocks.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) removeMethodElementsNotAllowed: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := (self) blocks.
    recoveredValue3 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 |
    recoveredBlock23Value0 := recoveredBlock23Arg1.
    recoveredBlock23Value1 := recoveredArg1.
    recoveredBlock23Value2 := (recoveredBlock23Value0) isValidElement: (recoveredBlock23Value1).
    recoveredBlock23Value3 := (recoveredBlock23Value2) not.
    recoveredBlock23Value3
].
    recoveredValue4 := (recoveredValue2) reject: (recoveredValue3).
    (self) blocks: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x202c675c; bytecode file offset 0xbc3024"
!SGGraphicsBlockDB methodsFor: 'recovered'!
connectionDo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    super connectionDo: (recoveredValue0).
    recoveredValue1 := (self) connections.
    recoveredValue2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := recoveredArg1.
    recoveredBlock13Value2 := (recoveredBlock13Value0) connectionDo: (recoveredBlock13Value1).
    recoveredBlock13Value2
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := (self) blocks.
    recoveredValue4 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 |
    recoveredBlock31Value0 := recoveredBlock31Arg1.
    recoveredBlock31Value1 := recoveredArg1.
    recoveredBlock31Value2 := (recoveredBlock31Value0) connectionDo: (recoveredBlock31Value1).
    recoveredBlock31Value2
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x203069c8; bytecode file offset 0xc03290"
!SGGraphicsBlockDB methodsFor: 'recovered'!
replaceAliasNames: recoveredArg1 childrenReplacementTable: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) blocks.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := recoveredArg2.
    recoveredBlock5Value3 := (recoveredBlock5Value0) replaceAliasNames: (recoveredBlock5Value1) childrenReplacementTable: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) connections.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 |
    recoveredBlock26Value0 := recoveredBlock26Arg1.
    recoveredBlock26Value1 := recoveredArg1.
    recoveredBlock26Value2 := (recoveredBlock26Value0) replaceAliasNames: (recoveredBlock26Value1).
    recoveredBlock26Value2
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := graphicBlock.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 53] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := graphicBlock.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) replaceAliasNames: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20312504; bytecode file offset 0xc0ede4"
!SGGraphicsBlockDB methodsFor: 'recovered'!
graphicObject: recoveredArg1 datamodelManager: recoveredArg2 tableBuilder: recoveredArg3 controller: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 |
    recoveredValue0 := graphicBlock.
    recoveredValue1 := (recoveredValue0) wrapperClass.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) createForParent: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := graphicBlock.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := recoveredArg3.
    recoveredValue8 := (recoveredValue4) graphicObject: (recoveredValue5) datamodelManager: (recoveredValue6) tableBuilder: (recoveredValue7) manager: (nil).
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := recoveredValue9.
    recoveredValue11 := recoveredLocal1.
    (recoveredValue10) graphObject: (recoveredValue11).
    recoveredValue12 := recoveredLocal2.
    recoveredValue13 := recoveredArg4.
    recoveredValue14 := (recoveredValue12) initContentsWithController: (recoveredValue13).
    (recoveredValue9) contents: (recoveredValue14).
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := recoveredLocal2.
    (recoveredValue15) hierarchyMGO: (recoveredValue16).
    recoveredValue17 := recoveredLocal2.
    recoveredValue18 := recoveredArg2.
    recoveredValue19 := recoveredArg3.
    (self) graphicObjectFor: (recoveredValue17) datamodelManager: (recoveredValue18) tableBuilder: (recoveredValue19).
    recoveredValue20 := recoveredLocal1.
    recoveredValue21 := (self) drawingOrder.
    (recoveredValue20) drawingOrder: (recoveredValue21).
    recoveredValue22 := recoveredLocal1.
    recoveredValue23 := recoveredArg3.
    (recoveredValue22) checkConsistencyTableBuilder: (recoveredValue23).
    recoveredValue24 := recoveredLocal2.
    ^recoveredValue24
! !

"ASDBase.ic method 0x20326960; bytecode file offset 0xc23224"
!SGGraphicsBlockDB methodsFor: 'recovered'!
convertToASDV61
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredLocal1 := false.
    recoveredValue0 := (self) blocks.
    recoveredValue1 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9Stack3 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack1 := nil.
            recoveredBlock9PC := 17.
        ].
        recoveredBlock9Step = 17 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Arg1.
            recoveredBlock9PC := 18.
        ].
        recoveredBlock9Step = 18 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) convertToASDV61.
            recoveredBlock9PC := 19.
        ].
        recoveredBlock9Step = 19 ifTrue: [
            (recoveredBlock9Stack2) ifTrue: [recoveredBlock9PC := 22] ifFalse: [recoveredBlock9PC := 28].
        ].
        recoveredBlock9Step = 22 ifTrue: [
            recoveredBlock9PC := 23.
        ].
        recoveredBlock9Step = 23 ifTrue: [
            recoveredBlock9Stack1 := true.
            recoveredBlock9PC := 24.
        ].
        recoveredBlock9Step = 24 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Stack1.
            recoveredBlock9PC := 25.
        ].
        recoveredBlock9Step = 25 ifTrue: [
            recoveredLocal1 := recoveredBlock9Stack2.
            recoveredBlock9PC := 28.
        ].
        recoveredBlock9Step = 28 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack1.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := (self) connections.
    recoveredValue3 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Stack0 recoveredBlock33Stack1 recoveredBlock33Stack2 recoveredBlock33Stack3 recoveredBlock33PC recoveredBlock33Step recoveredBlock33Done recoveredBlock33Result |
    recoveredBlock33Stack0 := self.
    recoveredBlock33PC := 40.
    recoveredBlock33Done := false.
    [recoveredBlock33Done not] whileTrue: [
        recoveredBlock33Step := recoveredBlock33PC.
        recoveredBlock33Step = 40 ifTrue: [
            recoveredBlock33Stack1 := nil.
            recoveredBlock33PC := 41.
        ].
        recoveredBlock33Step = 41 ifTrue: [
            recoveredBlock33Stack2 := recoveredBlock33Arg1.
            recoveredBlock33PC := 42.
        ].
        recoveredBlock33Step = 42 ifTrue: [
            recoveredBlock33Stack2 := (recoveredBlock33Stack2) convertToASDV61.
            recoveredBlock33PC := 43.
        ].
        recoveredBlock33Step = 43 ifTrue: [
            (recoveredBlock33Stack2) ifTrue: [recoveredBlock33PC := 46] ifFalse: [recoveredBlock33PC := 52].
        ].
        recoveredBlock33Step = 46 ifTrue: [
            recoveredBlock33PC := 47.
        ].
        recoveredBlock33Step = 47 ifTrue: [
            recoveredBlock33Stack1 := true.
            recoveredBlock33PC := 48.
        ].
        recoveredBlock33Step = 48 ifTrue: [
            recoveredBlock33Stack2 := recoveredBlock33Stack1.
            recoveredBlock33PC := 49.
        ].
        recoveredBlock33Step = 49 ifTrue: [
            recoveredLocal1 := recoveredBlock33Stack2.
            recoveredBlock33PC := 52.
        ].
        recoveredBlock33Step = 52 ifTrue: [
            recoveredBlock33Result := recoveredBlock33Stack1.
            recoveredBlock33Done := true.
        ].
    ].
    recoveredBlock33Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2034c1a8; bytecode file offset 0xc48a8c"
!SGGraphicsBlockDB methodsFor: 'recovered'!
internalWriteXML: recoveredArg1 elements: recoveredArg2 class: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg1.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack2 := 'DiagramElement'.
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            (recoveredBlock7Stack1) openComplex: (recoveredBlock7Stack2).
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            recoveredBlock7Stack1 := EtasXmlUtil.
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) isXMLDebug.
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 28] ifFalse: [recoveredBlock7PC := 40].
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg1.
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Stack2 := 'stClass'.
            recoveredBlock7PC := 33.
        ].
        recoveredBlock7Step = 33 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Arg1.
            recoveredBlock7PC := 34.
        ].
        recoveredBlock7Step = 34 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) class.
            recoveredBlock7PC := 36.
        ].
        recoveredBlock7Step = 36 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) name.
            recoveredBlock7PC := 38.
        ].
        recoveredBlock7Step = 38 ifTrue: [
            (recoveredBlock7Stack1) attr: (recoveredBlock7Stack2) string: (recoveredBlock7Stack3).
            recoveredBlock7PC := 40.
        ].
        recoveredBlock7Step = 40 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 41.
        ].
        recoveredBlock7Step = 41 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg1.
            recoveredBlock7PC := 44.
        ].
        recoveredBlock7Step = 44 ifTrue: [
            (recoveredBlock7Stack1) writeXMLCustomerDatas: (recoveredBlock7Stack2).
            recoveredBlock7PC := 46.
        ].
        recoveredBlock7Step = 46 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 47.
        ].
        recoveredBlock7Step = 47 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg1.
            recoveredBlock7PC := 50.
        ].
        recoveredBlock7Step = 50 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg3.
            recoveredBlock7PC := 53.
        ].
        recoveredBlock7Step = 53 ifTrue: [
            (recoveredBlock7Stack1) writeXML: (recoveredBlock7Stack2) class: (recoveredBlock7Stack3).
            recoveredBlock7PC := 55.
        ].
        recoveredBlock7Step = 55 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg1.
            recoveredBlock7PC := 58.
        ].
        recoveredBlock7Step = 58 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) closeComplex.
            recoveredBlock7PC := 60.
        ].
        recoveredBlock7Step = 60 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20354db4; bytecode file offset 0xc5169c"
!SGGraphicsBlockDB methodsFor: 'recovered'!
deepCopy
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super deepCopy.
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
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) blocks.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block280ef94cArg1 | 
    | block280ef94cValue0 block280ef94cValue1 |
    block280ef94cValue0 := block280ef94cArg1.
    block280ef94cValue1 := (block280ef94cValue0) deepCopy.
    block280ef94cValue1
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) blocks: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) connections.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := [:block280ef970Arg1 | 
    | block280ef970Value0 block280ef970Value1 |
    block280ef970Value0 := block280ef970Arg1.
    block280ef970Value1 := (block280ef970Value0) deepCopy.
    block280ef970Value1
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) connections: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) others.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := [:block280ef994Arg1 | 
    | block280ef994Value0 block280ef994Value1 |
    block280ef994Value0 := block280ef994Arg1.
    block280ef994Value1 := (block280ef994Value0) deepCopy.
    block280ef994Value1
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) others: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := graphicBlock.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) deepCopy.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) graphicBlock: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2035746c; bytecode file offset 0xc53d3c"
!SGGraphicsBlockDB methodsFor: 'recovered'!
minToolVersion: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) destVersion.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := super minToolVersion: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := (self) graphicBlock.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue5) minToolVersion: (recoveredValue6).
    recoveredValue8 := (recoveredValue4) max: (recoveredValue7).
    recoveredLocal2 := recoveredValue8.
    recoveredValue9 := (self) blocks.
    recoveredValue10 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Value0 recoveredBlock38Value1 recoveredBlock38Value2 recoveredBlock38Value3 recoveredBlock38Value4 recoveredBlock38Value5 |
    recoveredBlock38Value0 := recoveredLocal2.
    recoveredBlock38Value1 := recoveredBlock38Arg1.
    recoveredBlock38Value2 := recoveredArg1.
    recoveredBlock38Value3 := (recoveredBlock38Value1) minToolVersion: (recoveredBlock38Value2).
    recoveredBlock38Value4 := (recoveredBlock38Value0) max: (recoveredBlock38Value3).
    recoveredBlock38Value5 := recoveredBlock38Value4.
    recoveredLocal2 := recoveredBlock38Value5.
    recoveredBlock38Value4
].
    (recoveredValue9) do: (recoveredValue10).
    recoveredValue11 := recoveredLocal2.
    ^recoveredValue11
! !

"ASDBase.ic method 0x20378e98; bytecode file offset 0xc75780"
!SGGraphicsBlockDB methodsFor: 'recovered'!
removeAliasReferences: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ('hw') == ('call_2008401166').
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (recoveredValue1) new.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) blocks.
    recoveredValue4 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18Stack4 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 25.
        ].
        recoveredBlock18Step = 25 ifTrue: [
            recoveredBlock18Stack2 := recoveredArg1.
            recoveredBlock18PC := 28.
        ].
        recoveredBlock18Step = 28 ifTrue: [
            (recoveredBlock18Stack1) removeAliasReferences: (recoveredBlock18Stack2).
            recoveredBlock18PC := 30.
        ].
        recoveredBlock18Step = 30 ifTrue: [
            recoveredBlock18Stack1 := nil.
            recoveredBlock18PC := 31.
        ].
        recoveredBlock18Step = 31 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 32.
        ].
        recoveredBlock18Step = 32 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) representsElement.
            recoveredBlock18PC := 34.
        ].
        recoveredBlock18Step = 34 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 38] ifFalse: [recoveredBlock18PC := 50].
        ].
        recoveredBlock18Step = 38 ifTrue: [
            recoveredBlock18Stack2 := recoveredArg1.
            recoveredBlock18PC := 41.
        ].
        recoveredBlock18Step = 41 ifTrue: [
            recoveredBlock18Stack3 := recoveredBlock18Arg1.
            recoveredBlock18PC := 42.
        ].
        recoveredBlock18Step = 42 ifTrue: [
            recoveredBlock18Stack3 := (recoveredBlock18Stack3) aliasName.
            recoveredBlock18PC := 44.
        ].
        recoveredBlock18Step = 44 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) includes: (recoveredBlock18Stack3).
            recoveredBlock18PC := 46.
        ].
        recoveredBlock18Step = 46 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 57] ifFalse: [recoveredBlock18PC := 50].
        ].
        recoveredBlock18Step = 50 ifTrue: [
            recoveredBlock18PC := 51.
        ].
        recoveredBlock18Step = 51 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal1.
            recoveredBlock18PC := 54.
        ].
        recoveredBlock18Step = 54 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 55.
        ].
        recoveredBlock18Step = 55 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) add: (recoveredBlock18Stack2).
            recoveredBlock18PC := 57.
        ].
        recoveredBlock18Step = 57 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) asArray.
    (self) blocks: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x2037988c; bytecode file offset 0xc76158"
!SGGraphicsBlockDB methodsFor: 'recovered'!
addReferencedAliasNamesToSet: recoveredArg1 item: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) graphicBlock.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := recoveredArg2.
    recoveredBlock5Value3 := (recoveredBlock5Value0) addReferencedAliasNamesToSet: (recoveredBlock5Value1) item: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := (self) blocks.
    recoveredValue3 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 |
    recoveredBlock26Value0 := recoveredBlock26Arg1.
    recoveredBlock26Value1 := recoveredArg1.
    recoveredBlock26Value2 := recoveredArg2.
    recoveredBlock26Value3 := (recoveredBlock26Value0) addReferencedAliasNamesToSet: (recoveredBlock26Value1) item: (recoveredBlock26Value2).
    recoveredBlock26Value3
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := (self) connections.
    recoveredValue5 := [:recoveredBlock47Arg1 | 
    | recoveredBlock47Value0 recoveredBlock47Value1 recoveredBlock47Value2 recoveredBlock47Value3 |
    recoveredBlock47Value0 := recoveredBlock47Arg1.
    recoveredBlock47Value1 := recoveredArg1.
    recoveredBlock47Value2 := recoveredArg2.
    recoveredBlock47Value3 := (recoveredBlock47Value0) addReferencedAliasNamesToSet: (recoveredBlock47Value1) item: (recoveredBlock47Value2).
    recoveredBlock47Value3
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x203fd3b4; bytecode file offset 0xcf9c90"
!SGGraphicsBlockDB methodsFor: 'recovered'!
equals: recoveredArg1
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
            recoveredStack0 := super equals: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack0 := (recoveredStack0) internalBlocks.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:block280f9ed0Arg1 :block280f9ed0Arg2 | 
    | block280f9ed0Value0 block280f9ed0Value1 block280f9ed0Value2 block280f9ed0Value3 block280f9ed0Value4 |
    block280f9ed0Value0 := block280f9ed0Arg1.
    block280f9ed0Value1 := (block280f9ed0Value0) iD.
    block280f9ed0Value2 := block280f9ed0Arg2.
    block280f9ed0Value3 := (block280f9ed0Value2) iD.
    block280f9ed0Value4 := (block280f9ed0Value1) < (block280f9ed0Value3).
    block280f9ed0Value4
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) internalBlocks.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := [:block280f9ef4Arg1 :block280f9ef4Arg2 | 
    | block280f9ef4Value0 block280f9ef4Value1 block280f9ef4Value2 block280f9ef4Value3 block280f9ef4Value4 |
    block280f9ef4Value0 := block280f9ef4Arg1.
    block280f9ef4Value1 := (block280f9ef4Value0) iD.
    block280f9ef4Value2 := block280f9ef4Arg2.
    block280f9ef4Value3 := (block280f9ef4Value2) iD.
    block280f9ef4Value4 := (block280f9ef4Value1) < (block280f9ef4Value3).
    block280f9ef4Value4
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalConnections.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) internalConnections.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalOthers.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) internalOthers.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalGraphicBlock.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) internalGraphicBlock.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204159c0; bytecode file offset 0xd1229c"
!SGGraphicsBlockDB methodsFor: 'recovered'!
calculateHighestUsedGraphicalIdentifier
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicBlock.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) iD.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [
    -1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) blocks.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 recoveredBlock26Value4 |
    recoveredBlock26Value0 := recoveredLocal1.
    recoveredBlock26Value1 := recoveredBlock26Arg1.
    recoveredBlock26Value2 := (recoveredBlock26Value1) highestUsedGraphicalIdentifier.
    recoveredBlock26Value3 := (recoveredBlock26Value0) max: (recoveredBlock26Value2).
    recoveredBlock26Value4 := recoveredBlock26Value3.
    recoveredLocal1 := recoveredBlock26Value4.
    recoveredBlock26Value3
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) connections.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := [:recoveredBlock50Arg1 | 
    | recoveredBlock50Value0 recoveredBlock50Value1 recoveredBlock50Value2 recoveredBlock50Value3 recoveredBlock50Value4 |
    recoveredBlock50Value0 := recoveredLocal1.
    recoveredBlock50Value1 := recoveredBlock50Arg1.
    recoveredBlock50Value2 := (recoveredBlock50Value1) highestUsedGraphicalIdentifier.
    recoveredBlock50Value3 := (recoveredBlock50Value0) max: (recoveredBlock50Value2).
    recoveredBlock50Value4 := recoveredBlock50Value3.
    recoveredLocal1 := recoveredBlock50Value4.
    recoveredBlock50Value3
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) others.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := [:recoveredBlock74Arg1 | 
    | recoveredBlock74Value0 recoveredBlock74Value1 recoveredBlock74Value2 recoveredBlock74Value3 recoveredBlock74Value4 |
    recoveredBlock74Value0 := recoveredLocal1.
    recoveredBlock74Value1 := recoveredBlock74Arg1.
    recoveredBlock74Value2 := (recoveredBlock74Value1) highestUsedGraphicalIdentifier.
    recoveredBlock74Value3 := (recoveredBlock74Value0) max: (recoveredBlock74Value2).
    recoveredBlock74Value4 := recoveredBlock74Value3.
    recoveredLocal1 := recoveredBlock74Value4.
    recoveredBlock74Value3
].
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2041fe78; bytecode file offset 0xd1c770"
!SGGraphicsBlockDB methodsFor: 'recovered'!
existingItemBelongsTo
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbObject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) readReferences.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) getIsReferencedBy.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [:block280fc510Arg1 | 
    | block280fc510Local1 block280fc510Stack0 block280fc510Stack1 block280fc510Stack2 block280fc510Stack3 block280fc510Stack4 block280fc510PC block280fc510Step block280fc510Done block280fc510Result |
    block280fc510Stack0 := self.
    block280fc510PC := 4.
    block280fc510Done := false.
    [block280fc510Done not] whileTrue: [
        block280fc510Step := block280fc510PC.
        block280fc510Step = 4 ifTrue: [
            block280fc510Stack1 := false.
            block280fc510PC := 5.
        ].
        block280fc510Step = 5 ifTrue: [
            block280fc510Stack2 := block280fc510Arg1.
            block280fc510PC := 6.
        ].
        block280fc510Step = 6 ifTrue: [
            block280fc510Stack3 := [:block280fc534Arg1 | 
    nil
].
            block280fc510PC := 8.
        ].
        block280fc510Step = 8 ifTrue: [
            block280fc510PC := 14.
        ].
        block280fc510Step = 14 ifTrue: [
            block280fc510Stack2 := (block280fc510Stack2) readKeyIfUndefined: (block280fc510Stack3).
            block280fc510PC := 16.
        ].
        block280fc510Step = 16 ifTrue: [
            block280fc510Stack3 := block280fc510Stack2.
            block280fc510PC := 17.
        ].
        block280fc510Step = 17 ifTrue: [
            block280fc510Local1 := block280fc510Stack3.
            block280fc510PC := 18.
        ].
        block280fc510Step = 18 ifTrue: [
            (block280fc510Stack2 == nil) ifTrue: [block280fc510PC := 43] ifFalse: [block280fc510PC := 22].
        ].
        block280fc510Step = 22 ifTrue: [
            block280fc510PC := 23.
        ].
        block280fc510Step = 23 ifTrue: [
            block280fc510Stack1 := SGItemWithSpec.
            block280fc510PC := 25.
        ].
        block280fc510Step = 25 ifTrue: [
            block280fc510Stack1 := (block280fc510Stack1) allSubclasses.
            block280fc510PC := 27.
        ].
        block280fc510Step = 27 ifTrue: [
            block280fc510Stack2 := [:block280fc558Arg1 | 
    | block280fc558Value0 block280fc558Value1 |
    block280fc558Value0 := block280fc558Arg1.
    block280fc558Value1 := (block280fc558Value0) printString.
    block280fc558Value1
].
            block280fc510PC := 29.
        ].
        block280fc510Step = 29 ifTrue: [
            block280fc510PC := 36.
        ].
        block280fc510Step = 36 ifTrue: [
            block280fc510Stack1 := (block280fc510Stack1) collect: (block280fc510Stack2).
            block280fc510PC := 38.
        ].
        block280fc510Step = 38 ifTrue: [
            block280fc510Stack2 := block280fc510Local1.
            block280fc510PC := 39.
        ].
        block280fc510Step = 39 ifTrue: [
            block280fc510Stack2 := (block280fc510Stack2) className.
            block280fc510PC := 41.
        ].
        block280fc510Step = 41 ifTrue: [
            block280fc510Stack1 := (block280fc510Stack1) includes: (block280fc510Stack2).
            block280fc510PC := 43.
        ].
        block280fc510Step = 43 ifTrue: [
            block280fc510Result := block280fc510Stack1.
            block280fc510Done := true.
        ].
    ].
    block280fc510Result
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := [:recoveredBlock83Arg1 | 
    ^nil
].
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObjectIfUndefined: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205b5ea0; bytecode file offset 0xeb27c8"
!SGGraphicsBlockDB methodsFor: 'recovered'!
internalWriteXMLStructure: recoveredArg1 class: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'XMLExport'.
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
            recoveredStack1 := connections.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block28117010Arg1 :block28117010Arg2 | 
    | block28117010Local1 block28117010Local2 block28117010Local3 block28117010Local4 block28117010Stack0 block28117010Stack1 block28117010Stack2 block28117010Stack3 block28117010Stack4 block28117010Stack5 block28117010PC block28117010Step block28117010Done block28117010Result |
    block28117010Stack0 := self.
    block28117010PC := 4.
    block28117010Done := false.
    [block28117010Done not] whileTrue: [
        block28117010Step := block28117010PC.
        block28117010Step = 4 ifTrue: [
            block28117010Stack1 := block28117010Arg1.
            block28117010PC := 6.
        ].
        block28117010Step = 6 ifTrue: [
            block28117010Stack1 := (block28117010Stack1) startConnector.
            block28117010PC := 7.
        ].
        block28117010Step = 7 ifTrue: [
            block28117010Stack2 := [
    -1
].
            block28117010PC := 9.
        ].
        block28117010Step = 9 ifTrue: [
            block28117010PC := 15.
        ].
        block28117010Step = 15 ifTrue: [
            block28117010Stack1 := (block28117010Stack1) ifNil: (block28117010Stack2).
            block28117010PC := 17.
        ].
        block28117010Step = 17 ifTrue: [
            block28117010Local4 := block28117010Stack1.
            block28117010PC := 18.
        ].
        block28117010Step = 18 ifTrue: [
            block28117010Stack1 := block28117010Arg2.
            block28117010PC := 20.
        ].
        block28117010Step = 20 ifTrue: [
            block28117010Stack1 := (block28117010Stack1) startConnector.
            block28117010PC := 21.
        ].
        block28117010Step = 21 ifTrue: [
            block28117010Stack2 := [
    -1
].
            block28117010PC := 23.
        ].
        block28117010Step = 23 ifTrue: [
            block28117010PC := 29.
        ].
        block28117010Step = 29 ifTrue: [
            block28117010Stack1 := (block28117010Stack1) ifNil: (block28117010Stack2).
            block28117010PC := 31.
        ].
        block28117010Step = 31 ifTrue: [
            block28117010Local3 := block28117010Stack1.
            block28117010PC := 32.
        ].
        block28117010Step = 32 ifTrue: [
            block28117010Stack1 := block28117010Local4.
            block28117010PC := 33.
        ].
        block28117010Step = 33 ifTrue: [
            block28117010Stack2 := block28117010Local3.
            block28117010PC := 34.
        ].
        block28117010Step = 34 ifTrue: [
            (block28117010Stack1 ~~ block28117010Stack2) ifTrue: [block28117010PC := 132] ifFalse: [block28117010PC := 38].
        ].
        block28117010Step = 38 ifTrue: [
            block28117010Stack1 := block28117010Arg1.
            block28117010PC := 40.
        ].
        block28117010Step = 40 ifTrue: [
            block28117010Stack1 := (block28117010Stack1) endConnector.
            block28117010PC := 42.
        ].
        block28117010Step = 42 ifTrue: [
            block28117010Stack2 := [
    -1
].
            block28117010PC := 44.
        ].
        block28117010Step = 44 ifTrue: [
            block28117010PC := 51.
        ].
        block28117010Step = 51 ifTrue: [
            block28117010Stack1 := (block28117010Stack1) ifNil: (block28117010Stack2).
            block28117010PC := 53.
        ].
        block28117010Step = 53 ifTrue: [
            block28117010Local2 := block28117010Stack1.
            block28117010PC := 54.
        ].
        block28117010Step = 54 ifTrue: [
            block28117010Stack1 := block28117010Arg2.
            block28117010PC := 56.
        ].
        block28117010Step = 56 ifTrue: [
            block28117010Stack1 := (block28117010Stack1) endConnector.
            block28117010PC := 58.
        ].
        block28117010Step = 58 ifTrue: [
            block28117010Stack2 := [
    -1
].
            block28117010PC := 60.
        ].
        block28117010Step = 60 ifTrue: [
            block28117010PC := 67.
        ].
        block28117010Step = 67 ifTrue: [
            block28117010Stack1 := (block28117010Stack1) ifNil: (block28117010Stack2).
            block28117010PC := 69.
        ].
        block28117010Step = 69 ifTrue: [
            block28117010Local1 := block28117010Stack1.
            block28117010PC := 70.
        ].
        block28117010Step = 70 ifTrue: [
            block28117010Stack1 := block28117010Local2.
            block28117010PC := 71.
        ].
        block28117010Step = 71 ifTrue: [
            block28117010Stack2 := block28117010Local1.
            block28117010PC := 72.
        ].
        block28117010Step = 72 ifTrue: [
            (block28117010Stack1 ~~ block28117010Stack2) ifTrue: [block28117010PC := 122] ifFalse: [block28117010PC := 76].
        ].
        block28117010Step = 76 ifTrue: [
            block28117010Stack1 := block28117010Arg1.
            block28117010PC := 78.
        ].
        block28117010Step = 78 ifTrue: [
            block28117010Stack1 := (block28117010Stack1) cornerPoints.
            block28117010PC := 80.
        ].
        block28117010Step = 80 ifTrue: [
            block28117010Stack2 := 1.
            block28117010PC := 82.
        ].
        block28117010Step = 82 ifTrue: [
            block28117010Stack3 := [
    | block281170c4Value0 |
    block281170c4Value0 := (0) @ (0).
    block281170c4Value0
].
            block28117010PC := 84.
        ].
        block28117010Step = 84 ifTrue: [
            block28117010PC := 95.
        ].
        block28117010Step = 95 ifTrue: [
            block28117010Stack1 := (block28117010Stack1) at: (block28117010Stack2) ifAbsent: (block28117010Stack3).
            block28117010PC := 97.
        ].
        block28117010Step = 97 ifTrue: [
            block28117010Stack2 := block28117010Arg2.
            block28117010PC := 99.
        ].
        block28117010Step = 99 ifTrue: [
            block28117010Stack2 := (block28117010Stack2) cornerPoints.
            block28117010PC := 101.
        ].
        block28117010Step = 101 ifTrue: [
            block28117010Stack3 := 1.
            block28117010PC := 103.
        ].
        block28117010Step = 103 ifTrue: [
            block28117010Stack4 := [
    | block281170e8Value0 |
    block281170e8Value0 := (0) @ (1).
    block281170e8Value0
].
            block28117010PC := 105.
        ].
        block28117010Step = 105 ifTrue: [
            block28117010PC := 115.
        ].
        block28117010Step = 115 ifTrue: [
            block28117010Stack2 := (block28117010Stack2) at: (block28117010Stack3) ifAbsent: (block28117010Stack4).
            block28117010PC := 117.
        ].
        block28117010Step = 117 ifTrue: [
            block28117010Stack1 := (block28117010Stack1) << (block28117010Stack2).
            block28117010PC := 119.
        ].
        block28117010Step = 119 ifTrue: [
            block28117010PC := 125.
        ].
        block28117010Step = 122 ifTrue: [
            block28117010Stack1 := block28117010Local2.
            block28117010PC := 123.
        ].
        block28117010Step = 123 ifTrue: [
            block28117010Stack2 := block28117010Local1.
            block28117010PC := 124.
        ].
        block28117010Step = 124 ifTrue: [
            block28117010Stack1 := (block28117010Stack1) < (block28117010Stack2).
            block28117010PC := 125.
        ].
        block28117010Step = 125 ifTrue: [
            block28117010Stack2 := nil.
            block28117010PC := 126.
        ].
        block28117010Step = 126 ifTrue: [
            block28117010Stack3 := block28117010Stack2.
            block28117010PC := 127.
        ].
        block28117010Step = 127 ifTrue: [
            block28117010Local2 := block28117010Stack3.
            block28117010PC := 128.
        ].
        block28117010Step = 128 ifTrue: [
            block28117010Local1 := block28117010Stack2.
            block28117010PC := 129.
        ].
        block28117010Step = 129 ifTrue: [
            block28117010PC := 135.
        ].
        block28117010Step = 132 ifTrue: [
            block28117010Stack1 := block28117010Local4.
            block28117010PC := 133.
        ].
        block28117010Step = 133 ifTrue: [
            block28117010Stack2 := block28117010Local3.
            block28117010PC := 134.
        ].
        block28117010Step = 134 ifTrue: [
            block28117010Stack1 := (block28117010Stack1) < (block28117010Stack2).
            block28117010PC := 135.
        ].
        block28117010Step = 135 ifTrue: [
            block28117010Result := block28117010Stack1.
            block28117010Done := true.
        ].
    ].
    block28117010Result
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack0) internalWriteXML: (recoveredStack1) elements: (recoveredStack2) class: (recoveredStack3).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := blocks.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := [:block2811710cArg1 :block2811710cArg2 | 
    | block2811710cLocal1 block2811710cLocal2 block2811710cLocal3 block2811710cLocal4 block2811710cStack0 block2811710cStack1 block2811710cStack2 block2811710cStack3 block2811710cStack4 block2811710cPC block2811710cStep block2811710cDone block2811710cResult |
    block2811710cStack0 := self.
    block2811710cPC := 4.
    block2811710cDone := false.
    [block2811710cDone not] whileTrue: [
        block2811710cStep := block2811710cPC.
        block2811710cStep = 4 ifTrue: [
            block2811710cStack1 := block2811710cArg1.
            block2811710cPC := 6.
        ].
        block2811710cStep = 6 ifTrue: [
            block2811710cStack1 := (block2811710cStack1) iD.
            block2811710cPC := 8.
        ].
        block2811710cStep = 8 ifTrue: [
            block2811710cStack2 := [
    -1
].
            block2811710cPC := 10.
        ].
        block2811710cStep = 10 ifTrue: [
            block2811710cPC := 17.
        ].
        block2811710cStep = 17 ifTrue: [
            block2811710cStack1 := (block2811710cStack1) ifNil: (block2811710cStack2).
            block2811710cPC := 19.
        ].
        block2811710cStep = 19 ifTrue: [
            block2811710cLocal4 := block2811710cStack1.
            block2811710cPC := 20.
        ].
        block2811710cStep = 20 ifTrue: [
            block2811710cStack1 := block2811710cArg2.
            block2811710cPC := 22.
        ].
        block2811710cStep = 22 ifTrue: [
            block2811710cStack1 := (block2811710cStack1) iD.
            block2811710cPC := 24.
        ].
        block2811710cStep = 24 ifTrue: [
            block2811710cStack2 := [
    -1
].
            block2811710cPC := 26.
        ].
        block2811710cStep = 26 ifTrue: [
            block2811710cPC := 33.
        ].
        block2811710cStep = 33 ifTrue: [
            block2811710cStack1 := (block2811710cStack1) ifNil: (block2811710cStack2).
            block2811710cPC := 35.
        ].
        block2811710cStep = 35 ifTrue: [
            block2811710cLocal3 := block2811710cStack1.
            block2811710cPC := 36.
        ].
        block2811710cStep = 36 ifTrue: [
            block2811710cStack1 := block2811710cLocal4.
            block2811710cPC := 37.
        ].
        block2811710cStep = 37 ifTrue: [
            block2811710cStack2 := block2811710cLocal3.
            block2811710cPC := 38.
        ].
        block2811710cStep = 38 ifTrue: [
            block2811710cStack1 := (block2811710cStack1) = (block2811710cStack2).
            block2811710cPC := 39.
        ].
        block2811710cStep = 39 ifTrue: [
            (block2811710cStack1) ifTrue: [block2811710cPC := 42] ifFalse: [block2811710cPC := 86].
        ].
        block2811710cStep = 42 ifTrue: [
            block2811710cStack1 := block2811710cArg1.
            block2811710cPC := 44.
        ].
        block2811710cStep = 44 ifTrue: [
            block2811710cStack1 := (block2811710cStack1) position.
            block2811710cPC := 46.
        ].
        block2811710cStep = 46 ifTrue: [
            block2811710cStack2 := [
    | block28117178Value0 |
    block28117178Value0 := (Point) x: (-1) y: (-1).
    block28117178Value0
].
            block2811710cPC := 48.
        ].
        block2811710cStep = 48 ifTrue: [
            block2811710cPC := 55.
        ].
        block2811710cStep = 55 ifTrue: [
            block2811710cStack1 := (block2811710cStack1) ifNil: (block2811710cStack2).
            block2811710cPC := 57.
        ].
        block2811710cStep = 57 ifTrue: [
            block2811710cLocal2 := block2811710cStack1.
            block2811710cPC := 58.
        ].
        block2811710cStep = 58 ifTrue: [
            block2811710cStack1 := block2811710cArg2.
            block2811710cPC := 60.
        ].
        block2811710cStep = 60 ifTrue: [
            block2811710cStack1 := (block2811710cStack1) position.
            block2811710cPC := 62.
        ].
        block2811710cStep = 62 ifTrue: [
            block2811710cStack2 := [
    | block2811719cValue0 |
    block2811719cValue0 := (Point) x: (-1) y: (-1).
    block2811719cValue0
].
            block2811710cPC := 64.
        ].
        block2811710cStep = 64 ifTrue: [
            block2811710cPC := 71.
        ].
        block2811710cStep = 71 ifTrue: [
            block2811710cStack1 := (block2811710cStack1) ifNil: (block2811710cStack2).
            block2811710cPC := 73.
        ].
        block2811710cStep = 73 ifTrue: [
            block2811710cLocal1 := block2811710cStack1.
            block2811710cPC := 74.
        ].
        block2811710cStep = 74 ifTrue: [
            block2811710cStack1 := block2811710cLocal2.
            block2811710cPC := 75.
        ].
        block2811710cStep = 75 ifTrue: [
            block2811710cStack2 := block2811710cLocal1.
            block2811710cPC := 76.
        ].
        block2811710cStep = 76 ifTrue: [
            block2811710cStack1 := (block2811710cStack1) << (block2811710cStack2).
            block2811710cPC := 78.
        ].
        block2811710cStep = 78 ifTrue: [
            block2811710cStack2 := nil.
            block2811710cPC := 79.
        ].
        block2811710cStep = 79 ifTrue: [
            block2811710cStack3 := block2811710cStack2.
            block2811710cPC := 80.
        ].
        block2811710cStep = 80 ifTrue: [
            block2811710cLocal2 := block2811710cStack3.
            block2811710cPC := 81.
        ].
        block2811710cStep = 81 ifTrue: [
            block2811710cLocal1 := block2811710cStack2.
            block2811710cPC := 82.
        ].
        block2811710cStep = 82 ifTrue: [
            block2811710cPC := 89.
        ].
        block2811710cStep = 86 ifTrue: [
            block2811710cStack1 := block2811710cLocal4.
            block2811710cPC := 87.
        ].
        block2811710cStep = 87 ifTrue: [
            block2811710cStack2 := block2811710cLocal3.
            block2811710cPC := 88.
        ].
        block2811710cStep = 88 ifTrue: [
            block2811710cStack1 := (block2811710cStack1) < (block2811710cStack2).
            block2811710cPC := 89.
        ].
        block2811710cStep = 89 ifTrue: [
            block2811710cResult := block2811710cStack1.
            block2811710cDone := true.
        ].
    ].
    block2811710cResult
].
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            (recoveredStack0) internalWriteXML: (recoveredStack1) elements: (recoveredStack2) class: (recoveredStack3).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack0 := others.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := [:block281171c0Arg1 :block281171c0Arg2 | 
    | block281171c0Local1 block281171c0Local2 block281171c0Stack0 block281171c0Stack1 block281171c0Stack2 block281171c0Stack3 block281171c0PC block281171c0Step block281171c0Done block281171c0Result |
    block281171c0Stack0 := self.
    block281171c0PC := 4.
    block281171c0Done := false.
    [block281171c0Done not] whileTrue: [
        block281171c0Step := block281171c0PC.
        block281171c0Step = 4 ifTrue: [
            block281171c0Stack1 := block281171c0Arg1.
            block281171c0PC := 5.
        ].
        block281171c0Step = 5 ifTrue: [
            block281171c0Stack1 := (block281171c0Stack1) position.
            block281171c0PC := 7.
        ].
        block281171c0Step = 7 ifTrue: [
            block281171c0Stack2 := [
    | block281171e4Value0 |
    block281171e4Value0 := (Point) x: (-1) y: (-1).
    block281171e4Value0
].
            block281171c0PC := 9.
        ].
        block281171c0Step = 9 ifTrue: [
            block281171c0PC := 15.
        ].
        block281171c0Step = 15 ifTrue: [
            block281171c0Stack1 := (block281171c0Stack1) ifNil: (block281171c0Stack2).
            block281171c0PC := 17.
        ].
        block281171c0Step = 17 ifTrue: [
            block281171c0Local2 := block281171c0Stack1.
            block281171c0PC := 18.
        ].
        block281171c0Step = 18 ifTrue: [
            block281171c0Stack1 := block281171c0Arg2.
            block281171c0PC := 19.
        ].
        block281171c0Step = 19 ifTrue: [
            block281171c0Stack1 := (block281171c0Stack1) position.
            block281171c0PC := 21.
        ].
        block281171c0Step = 21 ifTrue: [
            block281171c0Stack2 := [
    | block28117208Value0 |
    block28117208Value0 := (Point) x: (-1) y: (-1).
    block28117208Value0
].
            block281171c0PC := 23.
        ].
        block281171c0Step = 23 ifTrue: [
            block281171c0PC := 29.
        ].
        block281171c0Step = 29 ifTrue: [
            block281171c0Stack1 := (block281171c0Stack1) ifNil: (block281171c0Stack2).
            block281171c0PC := 31.
        ].
        block281171c0Step = 31 ifTrue: [
            block281171c0Local1 := block281171c0Stack1.
            block281171c0PC := 32.
        ].
        block281171c0Step = 32 ifTrue: [
            block281171c0Stack1 := block281171c0Local2.
            block281171c0PC := 33.
        ].
        block281171c0Step = 33 ifTrue: [
            block281171c0Stack2 := block281171c0Local1.
            block281171c0PC := 34.
        ].
        block281171c0Step = 34 ifTrue: [
            block281171c0Stack1 := (block281171c0Stack1) << (block281171c0Stack2).
            block281171c0PC := 36.
        ].
        block281171c0Step = 36 ifTrue: [
            block281171c0Result := block281171c0Stack1.
            block281171c0Done := true.
        ].
    ].
    block281171c0Result
].
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            (recoveredStack0) internalWriteXML: (recoveredStack1) elements: (recoveredStack2) class: (recoveredStack3).
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205f2a90; bytecode file offset 0xeef3d0"
!SGGraphicsBlockDB methodsFor: 'recovered'!
graphicObjectFor: recoveredArg1 datamodelManager: recoveredArg2 tableBuilder: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionGraphicsCompatibilityMode.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) blocks.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) reverse.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := [:recoveredBlock49Arg1 | 
    | recoveredBlock49Stack0 recoveredBlock49Stack1 recoveredBlock49Stack2 recoveredBlock49Stack3 recoveredBlock49Stack4 recoveredBlock49Stack5 recoveredBlock49Stack6 recoveredBlock49Stack7 recoveredBlock49PC recoveredBlock49Step recoveredBlock49Done recoveredBlock49Result |
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
            recoveredBlock49Stack3 := recoveredArg1.
            recoveredBlock49PC := 61.
        ].
        recoveredBlock49Step = 61 ifTrue: [
            recoveredBlock49Stack4 := recoveredArg2.
            recoveredBlock49PC := 64.
        ].
        recoveredBlock49Step = 64 ifTrue: [
            recoveredBlock49Stack5 := recoveredArg3.
            recoveredBlock49PC := 67.
        ].
        recoveredBlock49Step = 67 ifTrue: [
            recoveredBlock49Stack6 := recoveredLocal7.
            recoveredBlock49PC := 70.
        ].
        recoveredBlock49Step = 70 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) graphicObject: (recoveredBlock49Stack3) datamodelManager: (recoveredBlock49Stack4) tableBuilder: (recoveredBlock49Stack5) manager: (recoveredBlock49Stack6).
            recoveredBlock49PC := 73.
        ].
        recoveredBlock49Step = 73 ifTrue: [
            recoveredBlock49Stack3 := recoveredBlock49Stack2.
            recoveredBlock49PC := 74.
        ].
        recoveredBlock49Step = 74 ifTrue: [
            recoveredLocal8 := recoveredBlock49Stack3.
            recoveredBlock49PC := 77.
        ].
        recoveredBlock49Step = 77 ifTrue: [
            (recoveredBlock49Stack2 == nil) ifTrue: [recoveredBlock49PC := 98] ifFalse: [recoveredBlock49PC := 80].
        ].
        recoveredBlock49Step = 80 ifTrue: [
            recoveredBlock49PC := 81.
        ].
        recoveredBlock49Step = 81 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal6.
            recoveredBlock49PC := 84.
        ].
        recoveredBlock49Step = 84 ifTrue: [
            recoveredBlock49Stack2 := recoveredLocal8.
            recoveredBlock49PC := 87.
        ].
        recoveredBlock49Step = 87 ifTrue: [
            (recoveredBlock49Stack1) add: (recoveredBlock49Stack2).
            recoveredBlock49PC := 89.
        ].
        recoveredBlock49Step = 89 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal7.
            recoveredBlock49PC := 92.
        ].
        recoveredBlock49Step = 92 ifTrue: [
            recoveredBlock49Stack2 := recoveredLocal8.
            recoveredBlock49PC := 95.
        ].
        recoveredBlock49Step = 95 ifTrue: [
            recoveredBlock49Stack3 := false.
            recoveredBlock49PC := 96.
        ].
        recoveredBlock49Step = 96 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) addGO: (recoveredBlock49Stack2) display: (recoveredBlock49Stack3).
            recoveredBlock49PC := 98.
        ].
        recoveredBlock49Step = 98 ifTrue: [
            recoveredBlock49Result := recoveredBlock49Stack1.
            recoveredBlock49Done := true.
        ].
    ].
    recoveredBlock49Result
].
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) others.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) reverse.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := [:recoveredBlock125Arg1 | 
    | recoveredBlock125Stack0 recoveredBlock125Stack1 recoveredBlock125Stack2 recoveredBlock125Stack3 recoveredBlock125Stack4 recoveredBlock125Stack5 recoveredBlock125Stack6 recoveredBlock125Stack7 recoveredBlock125PC recoveredBlock125Step recoveredBlock125Done recoveredBlock125Result |
    recoveredBlock125Stack0 := self.
    recoveredBlock125PC := 132.
    recoveredBlock125Done := false.
    [recoveredBlock125Done not] whileTrue: [
        recoveredBlock125Step := recoveredBlock125PC.
        recoveredBlock125Step = 132 ifTrue: [
            recoveredBlock125Stack1 := nil.
            recoveredBlock125PC := 133.
        ].
        recoveredBlock125Step = 133 ifTrue: [
            recoveredBlock125Stack2 := recoveredBlock125Arg1.
            recoveredBlock125PC := 134.
        ].
        recoveredBlock125Step = 134 ifTrue: [
            recoveredBlock125Stack3 := recoveredArg1.
            recoveredBlock125PC := 137.
        ].
        recoveredBlock125Step = 137 ifTrue: [
            recoveredBlock125Stack4 := recoveredArg2.
            recoveredBlock125PC := 140.
        ].
        recoveredBlock125Step = 140 ifTrue: [
            recoveredBlock125Stack5 := recoveredArg3.
            recoveredBlock125PC := 143.
        ].
        recoveredBlock125Step = 143 ifTrue: [
            recoveredBlock125Stack6 := recoveredLocal7.
            recoveredBlock125PC := 146.
        ].
        recoveredBlock125Step = 146 ifTrue: [
            recoveredBlock125Stack2 := (recoveredBlock125Stack2) graphicObject: (recoveredBlock125Stack3) datamodelManager: (recoveredBlock125Stack4) tableBuilder: (recoveredBlock125Stack5) manager: (recoveredBlock125Stack6).
            recoveredBlock125PC := 149.
        ].
        recoveredBlock125Step = 149 ifTrue: [
            recoveredBlock125Stack3 := recoveredBlock125Stack2.
            recoveredBlock125PC := 150.
        ].
        recoveredBlock125Step = 150 ifTrue: [
            recoveredLocal8 := recoveredBlock125Stack3.
            recoveredBlock125PC := 153.
        ].
        recoveredBlock125Step = 153 ifTrue: [
            (recoveredBlock125Stack2 == nil) ifTrue: [recoveredBlock125PC := 202] ifFalse: [recoveredBlock125PC := 156].
        ].
        recoveredBlock125Step = 156 ifTrue: [
            recoveredBlock125PC := 157.
        ].
        recoveredBlock125Step = 157 ifTrue: [
            recoveredBlock125Stack1 := recoveredLocal6.
            recoveredBlock125PC := 160.
        ].
        recoveredBlock125Step = 160 ifTrue: [
            recoveredBlock125Stack2 := recoveredLocal8.
            recoveredBlock125PC := 163.
        ].
        recoveredBlock125Step = 163 ifTrue: [
            (recoveredBlock125Stack1) add: (recoveredBlock125Stack2).
            recoveredBlock125PC := 165.
        ].
        recoveredBlock125Step = 165 ifTrue: [
            recoveredBlock125Stack1 := recoveredLocal8.
            recoveredBlock125PC := 168.
        ].
        recoveredBlock125Step = 168 ifTrue: [
            recoveredBlock125Stack1 := (recoveredBlock125Stack1) isTextGO.
            recoveredBlock125PC := 170.
        ].
        recoveredBlock125Step = 170 ifTrue: [
            (recoveredBlock125Stack1) ifTrue: [recoveredBlock125PC := 174] ifFalse: [recoveredBlock125PC := 193].
        ].
        recoveredBlock125Step = 174 ifTrue: [
            recoveredBlock125Stack1 := recoveredLocal8.
            recoveredBlock125PC := 177.
        ].
        recoveredBlock125Step = 177 ifTrue: [
            recoveredBlock125Stack1 := (recoveredBlock125Stack1) drawingOrder.
            recoveredBlock125PC := 179.
        ].
        recoveredBlock125Step = 179 ifTrue: [
            recoveredBlock125Stack2 := 0.
            recoveredBlock125PC := 181.
        ].
        recoveredBlock125Step = 181 ifTrue: [
            recoveredBlock125Stack1 := (recoveredBlock125Stack1) = (recoveredBlock125Stack2).
            recoveredBlock125PC := 182.
        ].
        recoveredBlock125Step = 182 ifTrue: [
            (recoveredBlock125Stack1) ifTrue: [recoveredBlock125PC := 186] ifFalse: [recoveredBlock125PC := 193].
        ].
        recoveredBlock125Step = 186 ifTrue: [
            recoveredBlock125Stack1 := recoveredLocal8.
            recoveredBlock125PC := 189.
        ].
        recoveredBlock125Step = 189 ifTrue: [
            recoveredBlock125Stack2 := 1.
            recoveredBlock125PC := 191.
        ].
        recoveredBlock125Step = 191 ifTrue: [
            (recoveredBlock125Stack1) drawingOrder: (recoveredBlock125Stack2).
            recoveredBlock125PC := 193.
        ].
        recoveredBlock125Step = 193 ifTrue: [
            recoveredBlock125Stack1 := recoveredLocal7.
            recoveredBlock125PC := 196.
        ].
        recoveredBlock125Step = 196 ifTrue: [
            recoveredBlock125Stack2 := recoveredLocal8.
            recoveredBlock125PC := 199.
        ].
        recoveredBlock125Step = 199 ifTrue: [
            recoveredBlock125Stack3 := false.
            recoveredBlock125PC := 200.
        ].
        recoveredBlock125Step = 200 ifTrue: [
            recoveredBlock125Stack1 := (recoveredBlock125Stack1) addGO: (recoveredBlock125Stack2) display: (recoveredBlock125Stack3).
            recoveredBlock125PC := 202.
        ].
        recoveredBlock125Step = 202 ifTrue: [
            recoveredBlock125Result := recoveredBlock125Stack1.
            recoveredBlock125Done := true.
        ].
    ].
    recoveredBlock125Result
].
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := (recoveredStack0) connections.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 218] ifFalse: [recoveredPC := 226].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack0 := (recoveredStack0) reverse.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := [:recoveredBlock229Arg1 | 
    | recoveredBlock229Stack0 recoveredBlock229Stack1 recoveredBlock229Stack2 recoveredBlock229Stack3 recoveredBlock229Stack4 recoveredBlock229Stack5 recoveredBlock229Stack6 recoveredBlock229Stack7 recoveredBlock229PC recoveredBlock229Step recoveredBlock229Done recoveredBlock229Result |
    recoveredBlock229Stack0 := self.
    recoveredBlock229PC := 236.
    recoveredBlock229Done := false.
    [recoveredBlock229Done not] whileTrue: [
        recoveredBlock229Step := recoveredBlock229PC.
        recoveredBlock229Step = 236 ifTrue: [
            recoveredBlock229Stack1 := nil.
            recoveredBlock229PC := 237.
        ].
        recoveredBlock229Step = 237 ifTrue: [
            recoveredBlock229Stack2 := recoveredBlock229Arg1.
            recoveredBlock229PC := 238.
        ].
        recoveredBlock229Step = 238 ifTrue: [
            recoveredBlock229Stack3 := recoveredArg1.
            recoveredBlock229PC := 241.
        ].
        recoveredBlock229Step = 241 ifTrue: [
            recoveredBlock229Stack4 := recoveredArg2.
            recoveredBlock229PC := 244.
        ].
        recoveredBlock229Step = 244 ifTrue: [
            recoveredBlock229Stack5 := recoveredArg3.
            recoveredBlock229PC := 247.
        ].
        recoveredBlock229Step = 247 ifTrue: [
            recoveredBlock229Stack6 := recoveredLocal7.
            recoveredBlock229PC := 250.
        ].
        recoveredBlock229Step = 250 ifTrue: [
            recoveredBlock229Stack2 := (recoveredBlock229Stack2) graphicObject: (recoveredBlock229Stack3) datamodelManager: (recoveredBlock229Stack4) tableBuilder: (recoveredBlock229Stack5) manager: (recoveredBlock229Stack6).
            recoveredBlock229PC := 253.
        ].
        recoveredBlock229Step = 253 ifTrue: [
            recoveredBlock229Stack3 := recoveredBlock229Stack2.
            recoveredBlock229PC := 254.
        ].
        recoveredBlock229Step = 254 ifTrue: [
            recoveredLocal8 := recoveredBlock229Stack3.
            recoveredBlock229PC := 257.
        ].
        recoveredBlock229Step = 257 ifTrue: [
            (recoveredBlock229Stack2 == nil) ifTrue: [recoveredBlock229PC := 288] ifFalse: [recoveredBlock229PC := 260].
        ].
        recoveredBlock229Step = 260 ifTrue: [
            recoveredBlock229PC := 261.
        ].
        recoveredBlock229Step = 261 ifTrue: [
            recoveredBlock229Stack1 := recoveredLocal8.
            recoveredBlock229PC := 264.
        ].
        recoveredBlock229Step = 264 ifTrue: [
            recoveredBlock229Stack1 := (recoveredBlock229Stack1) basicGraphObject.
            recoveredBlock229PC := 266.
        ].
        recoveredBlock229Step = 266 ifTrue: [
            recoveredBlock229Stack2 := recoveredArg2.
            recoveredBlock229PC := 269.
        ].
        recoveredBlock229Step = 269 ifTrue: [
            (recoveredBlock229Stack1) updateLineStyleDatamodelManager: (recoveredBlock229Stack2).
            recoveredBlock229PC := 271.
        ].
        recoveredBlock229Step = 271 ifTrue: [
            recoveredBlock229Stack1 := recoveredLocal6.
            recoveredBlock229PC := 274.
        ].
        recoveredBlock229Step = 274 ifTrue: [
            recoveredBlock229Stack2 := recoveredLocal8.
            recoveredBlock229PC := 277.
        ].
        recoveredBlock229Step = 277 ifTrue: [
            (recoveredBlock229Stack1) add: (recoveredBlock229Stack2).
            recoveredBlock229PC := 279.
        ].
        recoveredBlock229Step = 279 ifTrue: [
            recoveredBlock229Stack1 := recoveredLocal7.
            recoveredBlock229PC := 282.
        ].
        recoveredBlock229Step = 282 ifTrue: [
            recoveredBlock229Stack2 := recoveredLocal8.
            recoveredBlock229PC := 285.
        ].
        recoveredBlock229Step = 285 ifTrue: [
            recoveredBlock229Stack3 := false.
            recoveredBlock229PC := 286.
        ].
        recoveredBlock229Step = 286 ifTrue: [
            recoveredBlock229Stack1 := (recoveredBlock229Stack1) addGO: (recoveredBlock229Stack2) display: (recoveredBlock229Stack3).
            recoveredBlock229PC := 288.
        ].
        recoveredBlock229Step = 288 ifTrue: [
            recoveredBlock229Result := recoveredBlock229Stack1.
            recoveredBlock229Done := true.
        ].
    ].
    recoveredBlock229Result
].
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack0 := ASDBlockDiagramEditorOptions.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionHandleMissingConnections.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 300] ifFalse: [recoveredPC := 341].
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack1 := [:block2811babcArg1 | 
    | block2811babcStack0 block2811babcStack1 block2811babcStack2 block2811babcStack3 block2811babcPC block2811babcStep block2811babcDone block2811babcResult |
    block2811babcStack0 := self.
    block2811babcPC := 4.
    block2811babcDone := false.
    [block2811babcDone not] whileTrue: [
        block2811babcStep := block2811babcPC.
        block2811babcStep = 4 ifTrue: [
            block2811babcStack1 := false.
            block2811babcPC := 5.
        ].
        block2811babcStep = 5 ifTrue: [
            block2811babcStack2 := block2811babcArg1.
            block2811babcPC := 6.
        ].
        block2811babcStep = 6 ifTrue: [
            block2811babcStack2 := (block2811babcStack2) isSGCodeGO.
            block2811babcPC := 8.
        ].
        block2811babcStep = 8 ifTrue: [
            (block2811babcStack2) ifTrue: [block2811babcPC := 12] ifFalse: [block2811babcPC := 16].
        ].
        block2811babcStep = 12 ifTrue: [
            block2811babcPC := 13.
        ].
        block2811babcStep = 13 ifTrue: [
            block2811babcStack1 := block2811babcArg1.
            block2811babcPC := 14.
        ].
        block2811babcStep = 14 ifTrue: [
            block2811babcStack1 := (block2811babcStack1) hasMissingPort.
            block2811babcPC := 16.
        ].
        block2811babcStep = 16 ifTrue: [
            block2811babcResult := block2811babcStack1.
            block2811babcDone := true.
        ].
    ].
    block2811babcResult
].
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack1 := [:recoveredBlock323Arg1 | 
    | recoveredBlock323Value0 recoveredBlock323Value1 recoveredBlock323Value2 recoveredBlock323Value3 |
    recoveredBlock323Value0 := recoveredBlock323Arg1.
    recoveredBlock323Value1 := (recoveredBlock323Value0) missingPort.
    recoveredBlock323Value2 := recoveredArg3.
    recoveredBlock323Value3 := (recoveredBlock323Value1) removeUnconnectedRedPinsTableBuilder: (recoveredBlock323Value2).
    recoveredBlock323Value3
].
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortBlock.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 362] ifFalse: [recoveredPC := 374].
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack1 := (recoveredStack1) drawingOrder.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            (recoveredStack0) lastChildrenNumber: (recoveredStack1).
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 382] ifFalse: [recoveredPC := 410].
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawingOrder.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 396] ifFalse: [recoveredPC := 410].
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack1 := [:block2811bae0Arg1 | 
    | block2811bae0Value0 block2811bae0Value1 |
    block2811bae0Value0 := block2811bae0Arg1.
    block2811bae0Value1 := (block2811bae0Value0) updateDrawingOrderBasic.
    block2811bae0Value1
].
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

