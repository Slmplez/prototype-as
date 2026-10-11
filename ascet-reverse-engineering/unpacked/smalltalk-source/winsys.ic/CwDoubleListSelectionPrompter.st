"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20000c7c; bytecode file offset 0x7ce40"
!CwDoubleListSelectionPrompter methodsFor: 'recovered'!
leftRightPositions
    ^#(2 27 58 66 68 98 29 56)
! !

"winsys.ic method 0x20004160; bytecode file offset 0x80348"
!CwDoubleListSelectionPrompter methodsFor: 'recovered'!
dependentLabelString
    | recoveredValue0 |
    recoveredValue0 := dependentLabelString.
    ^recoveredValue0
! !

"winsys.ic method 0x200041bc; bytecode file offset 0x80384"
!CwDoubleListSelectionPrompter methodsFor: 'recovered'!
dependentPrintBlock
    | recoveredValue0 |
    recoveredValue0 := dependentPrintBlock.
    ^recoveredValue0
! !

"winsys.ic method 0x200041e0; bytecode file offset 0x803b0"
!CwDoubleListSelectionPrompter methodsFor: 'recovered'!
dependentSelectionPolicy
    | recoveredValue0 |
    recoveredValue0 := dependentSelectionPolicy.
    ^recoveredValue0
! !

"winsys.ic method 0x20004278; bytecode file offset 0x80468"
!CwDoubleListSelectionPrompter methodsFor: 'recovered'!
dependentListWidget
    | recoveredValue0 |
    recoveredValue0 := dependentListWidget.
    ^recoveredValue0
! !

"winsys.ic method 0x200042bc; bytecode file offset 0x804ac"
!CwDoubleListSelectionPrompter methodsFor: 'recovered'!
cache
    | recoveredValue0 |
    recoveredValue0 := cache.
    ^recoveredValue0
! !

"winsys.ic method 0x20008590; bytecode file offset 0x84760"
!CwDoubleListSelectionPrompter methodsFor: 'recovered'!
dependentLabelString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dependentLabelString := recoveredValue0.
    ^self
! !

"winsys.ic method 0x200085b4; bytecode file offset 0x8478c"
!CwDoubleListSelectionPrompter methodsFor: 'recovered'!
dependentPrintBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dependentPrintBlock := recoveredValue0.
    ^self
! !

"winsys.ic method 0x200085e0; bytecode file offset 0x847a8"
!CwDoubleListSelectionPrompter methodsFor: 'recovered'!
dependentSelectionPolicy: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dependentSelectionPolicy := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20008604; bytecode file offset 0x847c4"
!CwDoubleListSelectionPrompter methodsFor: 'recovered'!
dependentListSelectionBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dependentListSelectionBlock := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20008618; bytecode file offset 0x847e0"
!CwDoubleListSelectionPrompter methodsFor: 'recovered'!
dependentListBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dependentListBlock := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20008650; bytecode file offset 0x84818"
!CwDoubleListSelectionPrompter methodsFor: 'recovered'!
dependentListWidget: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dependentListWidget := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20008684; bytecode file offset 0x84844"
!CwDoubleListSelectionPrompter methodsFor: 'recovered'!
cache: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cache := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000a5f4; bytecode file offset 0x867c0"
!CwDoubleListSelectionPrompter methodsFor: 'recovered'!
setInitialListExtent: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) screen.
    recoveredValue3 := (recoveredValue2) width.
    recoveredValue4 := (recoveredValue3) // (6).
    (recoveredValue0) width: (recoveredValue4).
    ^self
! !

"winsys.ic method 0x2000d1b4; bytecode file offset 0x89380"
!CwDoubleListSelectionPrompter methodsFor: 'recovered'!
returnSingleItem
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := (recoveredStack3) selectionPolicy.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) isSingleSelectPolicy: (recoveredStack3).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) dependentSelectionPolicy.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSingleSelectPolicy: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x2000ed3c; bytecode file offset 0x8af08"
!CwDoubleListSelectionPrompter methodsFor: 'recovered'!
returnIndex: recoveredArg1
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
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := NlsCatESTa.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexedMsg: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            returnIndex := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2001240c; bytecode file offset 0x8e5dc"
!CwDoubleListSelectionPrompter methodsFor: 'recovered'!
getDependentItems: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) cache.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 |
    recoveredBlock8Value0 := (self) dependentListBlock.
    recoveredBlock8Value1 := recoveredArg1.
    recoveredBlock8Value2 := (recoveredBlock8Value0) value: (recoveredBlock8Value1).
    recoveredBlock8Value2
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsentPut: (recoveredValue2).
    ^recoveredValue3
! !

"winsys.ic method 0x20012c78; bytecode file offset 0x8ee48"
!CwDoubleListSelectionPrompter methodsFor: 'recovered'!
setDependentListItems: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) dependentListWidget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := items.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) setItems: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) result: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) done: (recoveredStack1).
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

"winsys.ic method 0x200142c0; bytecode file offset 0x90490"
!CwDoubleListSelectionPrompter methodsFor: 'recovered'!
dependentListSelectionBlock
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := dependentListSelectionBlock.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := [:block28008c50Arg1 :block28008c50Arg2 :block28008c50Arg3 | 
    | block28008c50Value0 block28008c50Value1 block28008c50Value2 |
    block28008c50Value0 := block28008c50Arg2.
    block28008c50Value1 := (block28008c50Value0) selectButtonWidget.
    block28008c50Value2 := (block28008c50Value1) setSensitive: (true).
    block28008c50Value2
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) dependentListSelectionBlock: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := dependentListSelectionBlock.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x200142f4; bytecode file offset 0x904c4"
!CwDoubleListSelectionPrompter methodsFor: 'recovered'!
dependentListBlock
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := dependentListBlock.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := [:block28008c74Arg1 | 
    | block28008c74Value0 block28008c74Value1 block28008c74Value2 |
    block28008c74Value0 := OrderedCollection.
    block28008c74Value1 := block28008c74Arg1.
    block28008c74Value2 := (block28008c74Value0) with: (block28008c74Value1).
    block28008c74Value2
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) dependentListBlock: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := dependentListBlock.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x200145ac; bytecode file offset 0x90790"
!CwDoubleListSelectionPrompter methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    (self) cache: (recoveredValue1).
    (self) dependentLabelString: ('').
    recoveredValue2 := XmBROWSESELECT.
    (self) dependentSelectionPolicy: (recoveredValue2).
    ^self
! !

"winsys.ic method 0x20015f24; bytecode file offset 0x92100"
!CwDoubleListSelectionPrompter methodsFor: 'recovered'!
ok: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block28008ce0Arg1 | 
    | block28008ce0Value0 block28008ce0Value1 |
    block28008ce0Value0 := block28008ce0Arg1.
    block28008ce0Value1 := (block28008ce0Value0) value.
    block28008ce0Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) selectedItems: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            super ok: (recoveredStack1) clientData: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2002277c; bytecode file offset 0x9e958"
!CwDoubleListSelectionPrompter methodsFor: 'recovered'!
privateSelectedPrintBlock
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Local1 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) selectedPrintBlock.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            (recoveredBlock4Stack0 ~~ nil) ifTrue: [recoveredBlock4PC := 45] ifFalse: [recoveredBlock4PC := 16].
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) dependentPrintBlock.
            recoveredBlock4PC := 18.
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            (recoveredBlock4Stack0 ~~ nil) ifTrue: [recoveredBlock4PC := 45] ifFalse: [recoveredBlock4PC := 24].
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack0 := [:block280090d0Arg1 | 
    | block280090d0Stack0 block280090d0Stack1 block280090d0Stack2 block280090d0PC block280090d0Step block280090d0Done block280090d0Result |
    block280090d0Stack0 := self.
    block280090d0PC := 4.
    block280090d0Done := false.
    [block280090d0Done not] whileTrue: [
        block280090d0Step := block280090d0PC.
        block280090d0Step = 4 ifTrue: [
            block280090d0Stack1 := block280090d0Arg1.
            block280090d0PC := 5.
        ].
        block280090d0Step = 5 ifTrue: [
            block280090d0Stack1 := (block280090d0Stack1) isString.
            block280090d0PC := 6.
        ].
        block280090d0Step = 6 ifTrue: [
            (block280090d0Stack1) ifTrue: [block280090d0PC := 10] ifFalse: [block280090d0PC := 14].
        ].
        block280090d0Step = 10 ifTrue: [
            block280090d0Stack1 := block280090d0Arg1.
            block280090d0PC := 11.
        ].
        block280090d0Step = 11 ifTrue: [
            block280090d0PC := 17.
        ].
        block280090d0Step = 14 ifTrue: [
            block280090d0Stack1 := block280090d0Arg1.
            block280090d0PC := 15.
        ].
        block280090d0Step = 15 ifTrue: [
            block280090d0Stack1 := (block280090d0Stack1) printString.
            block280090d0PC := 17.
        ].
        block280090d0Step = 17 ifTrue: [
            block280090d0Result := block280090d0Stack1.
            block280090d0Done := true.
        ].
    ].
    block280090d0Result
].
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4PC := 44.
        ].
        recoveredBlock4Step = 44 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 45.
        ].
        recoveredBlock4Step = 45 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local1.
            recoveredBlock4PC := 46.
        ].
        recoveredBlock4Step = 46 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Arg1.
            recoveredBlock4PC := 47.
        ].
        recoveredBlock4Step = 47 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) value.
            recoveredBlock4PC := 49.
        ].
        recoveredBlock4Step = 49 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) value: (recoveredBlock4Stack1).
            recoveredBlock4PC := 51.
        ].
        recoveredBlock4Step = 51 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    ^recoveredValue0
! !

"winsys.ic method 0x200301d0; bytecode file offset 0xac3d8"
!CwDoubleListSelectionPrompter methodsFor: 'recovered'!
listSelectionBlock
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := listSelectionBlock.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := [:block2800925cArg1 :block2800925cArg2 :block2800925cArg3 | 
    | block2800925cLocal1 block2800925cLocal2 block2800925cLocal3 block2800925cStack0 block2800925cStack1 block2800925cStack2 block2800925cStack3 block2800925cStack4 block2800925cPC block2800925cStep block2800925cDone block2800925cResult |
    block2800925cStack0 := self.
    block2800925cPC := 4.
    block2800925cDone := false.
    [block2800925cDone not] whileTrue: [
        block2800925cStep := block2800925cPC.
        block2800925cStep = 4 ifTrue: [
            block2800925cStack1 := block2800925cArg1.
            block2800925cPC := 7.
        ].
        block2800925cStep = 7 ifTrue: [
            block2800925cStack1 := (block2800925cStack1) selectedItems.
            block2800925cPC := 8.
        ].
        block2800925cStep = 8 ifTrue: [
            block2800925cStack1 := (block2800925cStack1) first.
            block2800925cPC := 9.
        ].
        block2800925cStep = 9 ifTrue: [
            block2800925cLocal3 := block2800925cStack1.
            block2800925cPC := 12.
        ].
        block2800925cStep = 12 ifTrue: [
            block2800925cStack1 := block2800925cArg2.
            block2800925cPC := 15.
        ].
        block2800925cStep = 15 ifTrue: [
            block2800925cStack1 := (block2800925cStack1) selectedItems.
            block2800925cPC := 16.
        ].
        block2800925cStep = 16 ifTrue: [
            block2800925cStack2 := [:block2800925cBlock16Arg1 | 
    | block2800925cBlock16Value0 block2800925cBlock16Value1 block2800925cBlock16Value2 block2800925cBlock16Value3 |
    block2800925cBlock16Value0 := block2800925cBlock16Arg1.
    block2800925cBlock16Value1 := (block2800925cBlock16Value0) key.
    block2800925cBlock16Value2 := block2800925cLocal3.
    block2800925cBlock16Value3 := (block2800925cBlock16Value1) = (block2800925cBlock16Value2).
    block2800925cBlock16Value3
].
            block2800925cPC := 29.
        ].
        block2800925cStep = 29 ifTrue: [
            block2800925cStack1 := (block2800925cStack1) select: (block2800925cStack2).
            block2800925cPC := 31.
        ].
        block2800925cStep = 31 ifTrue: [
            block2800925cStack2 := [:block28009280Arg1 | 
    | block28009280Value0 block28009280Value1 |
    block28009280Value0 := block28009280Arg1.
    block28009280Value1 := (block28009280Value0) value.
    block28009280Value1
].
            block2800925cPC := 33.
        ].
        block2800925cStep = 33 ifTrue: [
            block2800925cPC := 40.
        ].
        block2800925cStep = 40 ifTrue: [
            block2800925cStack1 := (block2800925cStack1) collect: (block2800925cStack2).
            block2800925cPC := 42.
        ].
        block2800925cStep = 42 ifTrue: [
            block2800925cLocal2 := block2800925cStack1.
            block2800925cPC := 45.
        ].
        block2800925cStep = 45 ifTrue: [
            block2800925cStack1 := block2800925cArg2.
            block2800925cPC := 48.
        ].
        block2800925cStep = 48 ifTrue: [
            block2800925cStack2 := block2800925cLocal3.
            block2800925cPC := 51.
        ].
        block2800925cStep = 51 ifTrue: [
            block2800925cStack1 := (block2800925cStack1) getDependentItems: (block2800925cStack2).
            block2800925cPC := 53.
        ].
        block2800925cStep = 53 ifTrue: [
            block2800925cStack2 := [:block2800925cBlock53Arg1 | 
    | block2800925cBlock53Value0 block2800925cBlock53Value1 block2800925cBlock53Value2 |
    block2800925cBlock53Value0 := block2800925cLocal2.
    block2800925cBlock53Value1 := block2800925cBlock53Arg1.
    block2800925cBlock53Value2 := (block2800925cBlock53Value0) includes: (block2800925cBlock53Value1).
    block2800925cBlock53Value2
].
            block2800925cPC := 67.
        ].
        block2800925cStep = 67 ifTrue: [
            block2800925cStack1 := (block2800925cStack1) reject: (block2800925cStack2).
            block2800925cPC := 69.
        ].
        block2800925cStep = 69 ifTrue: [
            block2800925cLocal1 := block2800925cStack1.
            block2800925cPC := 72.
        ].
        block2800925cStep = 72 ifTrue: [
            block2800925cStack1 := block2800925cArg2.
            block2800925cPC := 75.
        ].
        block2800925cStep = 75 ifTrue: [
            block2800925cStack1 := (block2800925cStack1) dependentListWidget.
            block2800925cPC := 77.
        ].
        block2800925cStep = 77 ifTrue: [
            block2800925cStack2 := block2800925cStack1.
            block2800925cPC := 78.
        ].
        block2800925cStep = 78 ifTrue: [
            block2800925cStack3 := block2800925cLocal1.
            block2800925cPC := 81.
        ].
        block2800925cStep = 81 ifTrue: [
            (block2800925cStack2) items: (block2800925cStack3).
            block2800925cPC := 83.
        ].
        block2800925cStep = 83 ifTrue: [
            block2800925cStack2 := #().
            block2800925cPC := 85.
        ].
        block2800925cStep = 85 ifTrue: [
            (block2800925cStack1) selectedItems: (block2800925cStack2).
            block2800925cPC := 87.
        ].
        block2800925cStep = 87 ifTrue: [
            block2800925cStack1 := block2800925cArg2.
            block2800925cPC := 90.
        ].
        block2800925cStep = 90 ifTrue: [
            block2800925cStack1 := (block2800925cStack1) selectButtonWidget.
            block2800925cPC := 92.
        ].
        block2800925cStep = 92 ifTrue: [
            block2800925cStack2 := false.
            block2800925cPC := 93.
        ].
        block2800925cStep = 93 ifTrue: [
            block2800925cStack1 := (block2800925cStack1) setSensitive: (block2800925cStack2).
            block2800925cPC := 95.
        ].
        block2800925cStep = 95 ifTrue: [
            block2800925cResult := block2800925cStack1.
            block2800925cDone := true.
        ].
    ].
    block2800925cResult
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) listSelectionBlock: (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := listSelectionBlock.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x20039c78; bytecode file offset 0xb5ec0"
!CwDoubleListSelectionPrompter methodsFor: 'recovered'!
createChildren
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dependentLabelString.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) labelString.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := ' '.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) selectedItems: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectionPolicy.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := XmBROWSESELECT.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) selectionPolicy: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := super createChildren.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) selectionPolicy: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) bulletinBoardWidget.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftRightPositions.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := 7.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := 8.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) listLabelWidget.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) createListLabel: (recoveredStack1) parent: (recoveredStack2) leftPosition: (recoveredStack3) rightPosition: (recoveredStack4).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := 2.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 123] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) messageLabelWidget.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := 10.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := 'dependentList'.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack4 := #().
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack5 := (recoveredStack5) dependentSelectionPolicy.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack6 := (recoveredStack6) dependentPrintBlock.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack7 := recoveredLocal4.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack8 := recoveredLocal3.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack9 := recoveredLocal7.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack10 := recoveredLocal6.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack11 := self.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack11 := (recoveredStack11) dependentListSelectionBlock.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) createList: (recoveredStack2) parent: (recoveredStack3) items: (recoveredStack4) selectionPolicy: (recoveredStack5) printBlock: (recoveredStack6) leftPosition: (recoveredStack7) rightPosition: (recoveredStack8) topWidget: (recoveredStack9) topOffset: (recoveredStack10) selectionBlock: (recoveredStack11).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack0) dependentListWidget: (recoveredStack1).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedListWidget.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := (recoveredStack2) privateSelectedPrintBlock.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack1) printBlock: (recoveredStack2).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedListWidget.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := (recoveredStack1) items.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 181] ifFalse: [recoveredPC := 172].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) listWidget.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack0) selectItem: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2003ccbc; bytecode file offset 0xb8ee8"
!CwDoubleListSelectionPrompter methodsFor: 'recovered'!
deselectButtonActivateBlock
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := deselectButtonActivateBlock.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 222] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := [:recoveredBlock11Arg1 :recoveredBlock11Arg2 :recoveredBlock11Arg3 | 
    | recoveredBlock11Local1 recoveredBlock11Local2 recoveredBlock11Local3 recoveredBlock11Local4 recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg2.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) selectedListWidget.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) selectedItems.
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            recoveredBlock11Local4 := recoveredBlock11Stack1.
            recoveredBlock11PC := 26.
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg2.
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) selectedItems.
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Local4.
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            (recoveredBlock11Stack1) removeAll: (recoveredBlock11Stack2).
            recoveredBlock11PC := 35.
        ].
        recoveredBlock11Step = 35 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg2.
            recoveredBlock11PC := 38.
        ].
        recoveredBlock11Step = 38 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) listWidget.
            recoveredBlock11PC := 39.
        ].
        recoveredBlock11Step = 39 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) items.
            recoveredBlock11PC := 41.
        ].
        recoveredBlock11Step = 41 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) asSet.
            recoveredBlock11PC := 43.
        ].
        recoveredBlock11Step = 43 ifTrue: [
            recoveredBlock11Local3 := recoveredBlock11Stack1.
            recoveredBlock11PC := 46.
        ].
        recoveredBlock11Step = 46 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local3.
            recoveredBlock11PC := 49.
        ].
        recoveredBlock11Step = 49 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) copy.
            recoveredBlock11PC := 51.
        ].
        recoveredBlock11Step = 51 ifTrue: [
            recoveredBlock11Local2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 54.
        ].
        recoveredBlock11Step = 54 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local4.
            recoveredBlock11PC := 57.
        ].
        recoveredBlock11Step = 57 ifTrue: [
            recoveredBlock11Stack2 := [:recoveredBlock11Block57Arg1 | 
    | recoveredBlock11Block57Value0 recoveredBlock11Block57Value1 recoveredBlock11Block57Value2 recoveredBlock11Block57Value3 |
    recoveredBlock11Block57Value0 := recoveredBlock11Local2.
    recoveredBlock11Block57Value1 := recoveredBlock11Block57Arg1.
    recoveredBlock11Block57Value2 := (recoveredBlock11Block57Value1) key.
    recoveredBlock11Block57Value3 := (recoveredBlock11Block57Value0) add: (recoveredBlock11Block57Value2).
    recoveredBlock11Block57Value3
].
            recoveredBlock11PC := 73.
        ].
        recoveredBlock11Step = 73 ifTrue: [
            (recoveredBlock11Stack1) do: (recoveredBlock11Stack2).
            recoveredBlock11PC := 75.
        ].
        recoveredBlock11Step = 75 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg2.
            recoveredBlock11PC := 78.
        ].
        recoveredBlock11Step = 78 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) items.
            recoveredBlock11PC := 80.
        ].
        recoveredBlock11Step = 80 ifTrue: [
            recoveredBlock11Stack2 := [:recoveredBlock11Block80Arg1 | 
    | recoveredBlock11Block80Value0 recoveredBlock11Block80Value1 recoveredBlock11Block80Value2 |
    recoveredBlock11Block80Value0 := recoveredBlock11Local2.
    recoveredBlock11Block80Value1 := recoveredBlock11Block80Arg1.
    recoveredBlock11Block80Value2 := (recoveredBlock11Block80Value0) includes: (recoveredBlock11Block80Value1).
    recoveredBlock11Block80Value2
].
            recoveredBlock11PC := 93.
        ].
        recoveredBlock11Step = 93 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) select: (recoveredBlock11Stack2).
            recoveredBlock11PC := 95.
        ].
        recoveredBlock11Step = 95 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack1.
            recoveredBlock11PC := 98.
        ].
        recoveredBlock11Step = 98 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local1.
            recoveredBlock11PC := 101.
        ].
        recoveredBlock11Step = 101 ifTrue: [
            recoveredBlock11Stack2 := [:recoveredBlock11Block101Arg1 :recoveredBlock11Block101Arg2 | 
    | recoveredBlock11Block101Stack0 recoveredBlock11Block101Stack1 recoveredBlock11Block101Stack2 recoveredBlock11Block101Stack3 recoveredBlock11Block101Stack4 recoveredBlock11Block101PC recoveredBlock11Block101Step recoveredBlock11Block101Done recoveredBlock11Block101Result |
    recoveredBlock11Block101Stack0 := nil.
    recoveredBlock11Block101PC := 108.
    recoveredBlock11Block101Done := false.
    [recoveredBlock11Block101Done not] whileTrue: [
        recoveredBlock11Block101Step := recoveredBlock11Block101PC.
        recoveredBlock11Block101Step = 108 ifTrue: [
            recoveredBlock11Block101Stack1 := nil.
            recoveredBlock11Block101PC := 109.
        ].
        recoveredBlock11Block101Step = 109 ifTrue: [
            recoveredBlock11Block101Stack2 := recoveredBlock11Local3.
            recoveredBlock11Block101PC := 112.
        ].
        recoveredBlock11Block101Step = 112 ifTrue: [
            recoveredBlock11Block101Stack3 := recoveredBlock11Block101Arg1.
            recoveredBlock11Block101PC := 113.
        ].
        recoveredBlock11Block101Step = 113 ifTrue: [
            recoveredBlock11Block101Stack2 := (recoveredBlock11Block101Stack2) includes: (recoveredBlock11Block101Stack3).
            recoveredBlock11Block101PC := 115.
        ].
        recoveredBlock11Block101Step = 115 ifTrue: [
            (recoveredBlock11Block101Stack2) ifTrue: [recoveredBlock11Block101PC := 127] ifFalse: [recoveredBlock11Block101PC := 118].
        ].
        recoveredBlock11Block101Step = 118 ifTrue: [
            recoveredBlock11Block101PC := 119.
        ].
        recoveredBlock11Block101Step = 119 ifTrue: [
            recoveredBlock11Block101Stack1 := recoveredBlock11Arg2.
            recoveredBlock11Block101PC := 122.
        ].
        recoveredBlock11Block101Step = 122 ifTrue: [
            recoveredBlock11Block101Stack1 := (recoveredBlock11Block101Stack1) listWidget.
            recoveredBlock11Block101PC := 123.
        ].
        recoveredBlock11Block101Step = 123 ifTrue: [
            recoveredBlock11Block101Stack2 := recoveredBlock11Block101Arg1.
            recoveredBlock11Block101PC := 124.
        ].
        recoveredBlock11Block101Step = 124 ifTrue: [
            recoveredBlock11Block101Stack3 := recoveredBlock11Block101Arg2.
            recoveredBlock11Block101PC := 125.
        ].
        recoveredBlock11Block101Step = 125 ifTrue: [
            recoveredBlock11Block101Stack1 := (recoveredBlock11Block101Stack1) addItemUnselected: (recoveredBlock11Block101Stack2) position: (recoveredBlock11Block101Stack3).
            recoveredBlock11Block101PC := 127.
        ].
        recoveredBlock11Block101Step = 127 ifTrue: [
            recoveredBlock11Block101Result := recoveredBlock11Block101Stack1.
            recoveredBlock11Block101Done := true.
        ].
    ].
    recoveredBlock11Block101Result
].
            recoveredBlock11PC := 128.
        ].
        recoveredBlock11Step = 128 ifTrue: [
            (recoveredBlock11Stack1) doWithIndex: (recoveredBlock11Stack2).
            recoveredBlock11PC := 130.
        ].
        recoveredBlock11Step = 130 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg2.
            recoveredBlock11PC := 133.
        ].
        recoveredBlock11Step = 133 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) listWidget.
            recoveredBlock11PC := 134.
        ].
        recoveredBlock11Step = 134 ifTrue: [
            (recoveredBlock11Stack1) deselectAllItems.
            recoveredBlock11PC := 136.
        ].
        recoveredBlock11Step = 136 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg2.
            recoveredBlock11PC := 139.
        ].
        recoveredBlock11Step = 139 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) selectedListWidget.
            recoveredBlock11PC := 140.
        ].
        recoveredBlock11Step = 140 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 141.
        ].
        recoveredBlock11Step = 141 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Local4.
            recoveredBlock11PC := 144.
        ].
        recoveredBlock11Step = 144 ifTrue: [
            (recoveredBlock11Stack2) deleteItems: (recoveredBlock11Stack3).
            recoveredBlock11PC := 146.
        ].
        recoveredBlock11Step = 146 ifTrue: [
            (recoveredBlock11Stack1) deselectAllItems.
            recoveredBlock11PC := 148.
        ].
        recoveredBlock11Step = 148 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg2.
            recoveredBlock11PC := 151.
        ].
        recoveredBlock11Step = 151 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) dependentListWidget.
            recoveredBlock11PC := 153.
        ].
        recoveredBlock11Step = 153 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 154.
        ].
        recoveredBlock11Step = 154 ifTrue: [
            recoveredBlock11Stack3 := #().
            recoveredBlock11PC := 156.
        ].
        recoveredBlock11Step = 156 ifTrue: [
            (recoveredBlock11Stack2) items: (recoveredBlock11Stack3).
            recoveredBlock11PC := 158.
        ].
        recoveredBlock11Step = 158 ifTrue: [
            (recoveredBlock11Stack1) deselectAllItems.
            recoveredBlock11PC := 160.
        ].
        recoveredBlock11Step = 160 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 161.
        ].
        recoveredBlock11Step = 161 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) selectionPolicy.
            recoveredBlock11PC := 163.
        ].
        recoveredBlock11Step = 163 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) isSingleSelectPolicy: (recoveredBlock11Stack1).
            recoveredBlock11PC := 165.
        ].
        recoveredBlock11Step = 165 ifTrue: [
            (recoveredBlock11Stack0) ifTrue: [recoveredBlock11PC := 168] ifFalse: [recoveredBlock11PC := 205].
        ].
        recoveredBlock11Step = 168 ifTrue: [
            recoveredBlock11Stack0 := recoveredBlock11Arg2.
            recoveredBlock11PC := 171.
        ].
        recoveredBlock11Step = 171 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) dependentListWidget.
            recoveredBlock11PC := 173.
        ].
        recoveredBlock11Step = 173 ifTrue: [
            recoveredBlock11Stack1 := true.
            recoveredBlock11PC := 174.
        ].
        recoveredBlock11Step = 174 ifTrue: [
            (recoveredBlock11Stack0) setSensitive: (recoveredBlock11Stack1).
            recoveredBlock11PC := 176.
        ].
        recoveredBlock11Step = 176 ifTrue: [
            recoveredBlock11Stack0 := self.
            recoveredBlock11PC := 177.
        ].
        recoveredBlock11Step = 177 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) selectedItems.
            recoveredBlock11PC := 178.
        ].
        recoveredBlock11Step = 178 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) isEmpty.
            recoveredBlock11PC := 180.
        ].
        recoveredBlock11Step = 180 ifTrue: [
            (recoveredBlock11Stack0) ifTrue: [recoveredBlock11PC := 184] ifFalse: [recoveredBlock11PC := 191].
        ].
        recoveredBlock11Step = 184 ifTrue: [
            recoveredBlock11Stack0 := recoveredBlock11Arg2.
            recoveredBlock11PC := 187.
        ].
        recoveredBlock11Step = 187 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) listWidget.
            recoveredBlock11PC := 188.
        ].
        recoveredBlock11Step = 188 ifTrue: [
            recoveredBlock11Stack1 := true.
            recoveredBlock11PC := 189.
        ].
        recoveredBlock11Step = 189 ifTrue: [
            (recoveredBlock11Stack0) setSensitive: (recoveredBlock11Stack1).
            recoveredBlock11PC := 191.
        ].
        recoveredBlock11Step = 191 ifTrue: [
            recoveredBlock11Stack0 := recoveredBlock11Arg2.
            recoveredBlock11PC := 194.
        ].
        recoveredBlock11Step = 194 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) listWidget.
            recoveredBlock11PC := 195.
        ].
        recoveredBlock11Step = 195 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local4.
            recoveredBlock11PC := 198.
        ].
        recoveredBlock11Step = 198 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) first.
            recoveredBlock11PC := 200.
        ].
        recoveredBlock11Step = 200 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) key.
            recoveredBlock11PC := 202.
        ].
        recoveredBlock11Step = 202 ifTrue: [
            recoveredBlock11Stack2 := true.
            recoveredBlock11PC := 203.
        ].
        recoveredBlock11Step = 203 ifTrue: [
            (recoveredBlock11Stack0) selectItem: (recoveredBlock11Stack1) notify: (recoveredBlock11Stack2).
            recoveredBlock11PC := 205.
        ].
        recoveredBlock11Step = 205 ifTrue: [
            recoveredBlock11Stack0 := recoveredBlock11Arg2.
            recoveredBlock11PC := 208.
        ].
        recoveredBlock11Step = 208 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) selectButtonWidget.
            recoveredBlock11PC := 210.
        ].
        recoveredBlock11Step = 210 ifTrue: [
            recoveredBlock11Stack1 := false.
            recoveredBlock11PC := 211.
        ].
        recoveredBlock11Step = 211 ifTrue: [
            (recoveredBlock11Stack0) setSensitive: (recoveredBlock11Stack1).
            recoveredBlock11PC := 213.
        ].
        recoveredBlock11Step = 213 ifTrue: [
            recoveredBlock11Stack0 := recoveredBlock11Arg1.
            recoveredBlock11PC := 216.
        ].
        recoveredBlock11Step = 216 ifTrue: [
            recoveredBlock11Stack1 := false.
            recoveredBlock11PC := 217.
        ].
        recoveredBlock11Step = 217 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) setSensitive: (recoveredBlock11Stack1).
            recoveredBlock11PC := 219.
        ].
        recoveredBlock11Step = 219 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack0.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            (recoveredStack1) deselectButtonActivateBlock: (recoveredStack2).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := deselectButtonActivateBlock.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x2003dedc; bytecode file offset 0xba10c"
!CwDoubleListSelectionPrompter methodsFor: 'recovered'!
selectButtonActivateBlock
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := selectButtonActivateBlock.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 235] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := [:recoveredBlock11Arg1 :recoveredBlock11Arg2 :recoveredBlock11Arg3 | 
    | recoveredBlock11Local1 recoveredBlock11Local2 recoveredBlock11Local3 recoveredBlock11Local4 recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg2.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) listWidget.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) selectedItems.
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) first.
            recoveredBlock11PC := 24.
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11Local4 := recoveredBlock11Stack1.
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg2.
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) dependentListWidget.
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) selectedItems.
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11Stack2 := [:recoveredBlock11Block32Arg1 | 
    | recoveredBlock11Block32Value0 recoveredBlock11Block32Value1 recoveredBlock11Block32Value2 recoveredBlock11Block32Value3 |
    recoveredBlock11Block32Value0 := Association.
    recoveredBlock11Block32Value1 := recoveredBlock11Local4.
    recoveredBlock11Block32Value2 := recoveredBlock11Block32Arg1.
    recoveredBlock11Block32Value3 := (recoveredBlock11Block32Value0) key: (recoveredBlock11Block32Value1) value: (recoveredBlock11Block32Value2).
    recoveredBlock11Block32Value3
].
            recoveredBlock11PC := 47.
        ].
        recoveredBlock11Step = 47 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) collect: (recoveredBlock11Stack2).
            recoveredBlock11PC := 49.
        ].
        recoveredBlock11Step = 49 ifTrue: [
            recoveredBlock11Local3 := recoveredBlock11Stack1.
            recoveredBlock11PC := 52.
        ].
        recoveredBlock11Step = 52 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg2.
            recoveredBlock11PC := 55.
        ].
        recoveredBlock11Step = 55 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) selectedItems.
            recoveredBlock11PC := 56.
        ].
        recoveredBlock11Step = 56 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Local3.
            recoveredBlock11PC := 59.
        ].
        recoveredBlock11Step = 59 ifTrue: [
            (recoveredBlock11Stack1) addAll: (recoveredBlock11Stack2).
            recoveredBlock11PC := 61.
        ].
        recoveredBlock11Step = 61 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg2.
            recoveredBlock11PC := 64.
        ].
        recoveredBlock11Step = 64 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) selectedItems.
            recoveredBlock11PC := 65.
        ].
        recoveredBlock11Step = 65 ifTrue: [
            recoveredBlock11Stack2 := [:recoveredBlock11Block65Arg1 | 
    | recoveredBlock11Block65Value0 recoveredBlock11Block65Value1 recoveredBlock11Block65Value2 recoveredBlock11Block65Value3 |
    recoveredBlock11Block65Value0 := recoveredBlock11Block65Arg1.
    recoveredBlock11Block65Value1 := (recoveredBlock11Block65Value0) key.
    recoveredBlock11Block65Value2 := recoveredBlock11Local4.
    recoveredBlock11Block65Value3 := (recoveredBlock11Block65Value1) = (recoveredBlock11Block65Value2).
    recoveredBlock11Block65Value3
].
            recoveredBlock11PC := 80.
        ].
        recoveredBlock11Step = 80 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) select: (recoveredBlock11Stack2).
            recoveredBlock11PC := 82.
        ].
        recoveredBlock11Step = 82 ifTrue: [
            recoveredBlock11Stack2 := [:block2800949cArg1 | 
    | block2800949cValue0 block2800949cValue1 |
    block2800949cValue0 := block2800949cArg1.
    block2800949cValue1 := (block2800949cValue0) value.
    block2800949cValue1
].
            recoveredBlock11PC := 84.
        ].
        recoveredBlock11Step = 84 ifTrue: [
            recoveredBlock11PC := 92.
        ].
        recoveredBlock11Step = 92 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) collect: (recoveredBlock11Stack2).
            recoveredBlock11PC := 94.
        ].
        recoveredBlock11Step = 94 ifTrue: [
            recoveredBlock11Local2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 97.
        ].
        recoveredBlock11Step = 97 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg2.
            recoveredBlock11PC := 100.
        ].
        recoveredBlock11Step = 100 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Local4.
            recoveredBlock11PC := 103.
        ].
        recoveredBlock11Step = 103 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) getDependentItems: (recoveredBlock11Stack2).
            recoveredBlock11PC := 105.
        ].
        recoveredBlock11Step = 105 ifTrue: [
            recoveredBlock11Stack2 := [:recoveredBlock11Block105Arg1 | 
    | recoveredBlock11Block105Value0 recoveredBlock11Block105Value1 recoveredBlock11Block105Value2 |
    recoveredBlock11Block105Value0 := recoveredBlock11Local2.
    recoveredBlock11Block105Value1 := recoveredBlock11Block105Arg1.
    recoveredBlock11Block105Value2 := (recoveredBlock11Block105Value0) includes: (recoveredBlock11Block105Value1).
    recoveredBlock11Block105Value2
].
            recoveredBlock11PC := 119.
        ].
        recoveredBlock11Step = 119 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) reject: (recoveredBlock11Stack2).
            recoveredBlock11PC := 121.
        ].
        recoveredBlock11Step = 121 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack1.
            recoveredBlock11PC := 124.
        ].
        recoveredBlock11Step = 124 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 125.
        ].
        recoveredBlock11Step = 125 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) selectionPolicy.
            recoveredBlock11PC := 127.
        ].
        recoveredBlock11Step = 127 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) isSingleSelectPolicy: (recoveredBlock11Stack1).
            recoveredBlock11PC := 129.
        ].
        recoveredBlock11Step = 129 ifTrue: [
            (recoveredBlock11Stack0) ifTrue: [recoveredBlock11PC := 132] ifFalse: [recoveredBlock11PC := 155].
        ].
        recoveredBlock11Step = 132 ifTrue: [
            recoveredBlock11Stack0 := recoveredBlock11Arg2.
            recoveredBlock11PC := 135.
        ].
        recoveredBlock11Step = 135 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) listWidget.
            recoveredBlock11PC := 136.
        ].
        recoveredBlock11Step = 136 ifTrue: [
            recoveredBlock11Stack1 := false.
            recoveredBlock11PC := 137.
        ].
        recoveredBlock11Step = 137 ifTrue: [
            (recoveredBlock11Stack0) setSensitive: (recoveredBlock11Stack1).
            recoveredBlock11PC := 139.
        ].
        recoveredBlock11Step = 139 ifTrue: [
            recoveredBlock11Stack0 := self.
            recoveredBlock11PC := 140.
        ].
        recoveredBlock11Step = 140 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 141.
        ].
        recoveredBlock11Step = 141 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) dependentSelectionPolicy.
            recoveredBlock11PC := 143.
        ].
        recoveredBlock11Step = 143 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) isSingleSelectPolicy: (recoveredBlock11Stack1).
            recoveredBlock11PC := 145.
        ].
        recoveredBlock11Step = 145 ifTrue: [
            (recoveredBlock11Stack0) ifTrue: [recoveredBlock11PC := 148] ifFalse: [recoveredBlock11PC := 155].
        ].
        recoveredBlock11Step = 148 ifTrue: [
            recoveredBlock11Stack0 := recoveredBlock11Arg2.
            recoveredBlock11PC := 151.
        ].
        recoveredBlock11Step = 151 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) dependentListWidget.
            recoveredBlock11PC := 152.
        ].
        recoveredBlock11Step = 152 ifTrue: [
            recoveredBlock11Stack1 := false.
            recoveredBlock11PC := 153.
        ].
        recoveredBlock11Step = 153 ifTrue: [
            (recoveredBlock11Stack0) setSensitive: (recoveredBlock11Stack1).
            recoveredBlock11PC := 155.
        ].
        recoveredBlock11Step = 155 ifTrue: [
            recoveredBlock11Stack0 := recoveredBlock11Local1.
            recoveredBlock11PC := 158.
        ].
        recoveredBlock11Step = 158 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) isEmpty.
            recoveredBlock11PC := 160.
        ].
        recoveredBlock11Step = 160 ifTrue: [
            (recoveredBlock11Stack0) ifTrue: [recoveredBlock11PC := 174] ifFalse: [recoveredBlock11PC := 164].
        ].
        recoveredBlock11Step = 164 ifTrue: [
            recoveredBlock11Stack0 := self.
            recoveredBlock11PC := 165.
        ].
        recoveredBlock11Step = 165 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 166.
        ].
        recoveredBlock11Step = 166 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) dependentSelectionPolicy.
            recoveredBlock11PC := 168.
        ].
        recoveredBlock11Step = 168 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) isSingleSelectPolicy: (recoveredBlock11Stack1).
            recoveredBlock11PC := 170.
        ].
        recoveredBlock11Step = 170 ifTrue: [
            (recoveredBlock11Stack0) ifTrue: [recoveredBlock11PC := 174] ifFalse: [recoveredBlock11PC := 191].
        ].
        recoveredBlock11Step = 174 ifTrue: [
            recoveredBlock11Stack0 := recoveredBlock11Arg2.
            recoveredBlock11PC := 177.
        ].
        recoveredBlock11Step = 177 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) listWidget.
            recoveredBlock11PC := 178.
        ].
        recoveredBlock11Step = 178 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Stack0.
            recoveredBlock11PC := 179.
        ].
        recoveredBlock11Step = 179 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Local4.
            recoveredBlock11PC := 182.
        ].
        recoveredBlock11Step = 182 ifTrue: [
            (recoveredBlock11Stack1) deleteItem: (recoveredBlock11Stack2).
            recoveredBlock11PC := 184.
        ].
        recoveredBlock11Step = 184 ifTrue: [
            (recoveredBlock11Stack0) deselectAllItems.
            recoveredBlock11PC := 186.
        ].
        recoveredBlock11Step = 186 ifTrue: [
            recoveredBlock11Stack0 := #().
            recoveredBlock11PC := 188.
        ].
        recoveredBlock11Step = 188 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack0.
            recoveredBlock11PC := 191.
        ].
        recoveredBlock11Step = 191 ifTrue: [
            recoveredBlock11Stack0 := recoveredBlock11Arg2.
            recoveredBlock11PC := 194.
        ].
        recoveredBlock11Step = 194 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) dependentListWidget.
            recoveredBlock11PC := 195.
        ].
        recoveredBlock11Step = 195 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Stack0.
            recoveredBlock11PC := 196.
        ].
        recoveredBlock11Step = 196 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Local1.
            recoveredBlock11PC := 199.
        ].
        recoveredBlock11Step = 199 ifTrue: [
            (recoveredBlock11Stack1) items: (recoveredBlock11Stack2).
            recoveredBlock11PC := 201.
        ].
        recoveredBlock11Step = 201 ifTrue: [
            (recoveredBlock11Stack0) deselectAllItems.
            recoveredBlock11PC := 203.
        ].
        recoveredBlock11Step = 203 ifTrue: [
            recoveredBlock11Stack0 := recoveredBlock11Arg2.
            recoveredBlock11PC := 206.
        ].
        recoveredBlock11Step = 206 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) selectedListWidget.
            recoveredBlock11PC := 208.
        ].
        recoveredBlock11Step = 208 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Stack0.
            recoveredBlock11PC := 209.
        ].
        recoveredBlock11Step = 209 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Local3.
            recoveredBlock11PC := 212.
        ].
        recoveredBlock11Step = 212 ifTrue: [
            recoveredBlock11Stack3 := 0.
            recoveredBlock11PC := 214.
        ].
        recoveredBlock11Step = 214 ifTrue: [
            (recoveredBlock11Stack1) addItems: (recoveredBlock11Stack2) position: (recoveredBlock11Stack3).
            recoveredBlock11PC := 216.
        ].
        recoveredBlock11Step = 216 ifTrue: [
            (recoveredBlock11Stack0) deselectAllItems.
            recoveredBlock11PC := 218.
        ].
        recoveredBlock11Step = 218 ifTrue: [
            recoveredBlock11Stack0 := recoveredBlock11Arg1.
            recoveredBlock11PC := 221.
        ].
        recoveredBlock11Step = 221 ifTrue: [
            recoveredBlock11Stack1 := false.
            recoveredBlock11PC := 222.
        ].
        recoveredBlock11Step = 222 ifTrue: [
            (recoveredBlock11Stack0) setSensitive: (recoveredBlock11Stack1).
            recoveredBlock11PC := 224.
        ].
        recoveredBlock11Step = 224 ifTrue: [
            recoveredBlock11Stack0 := recoveredBlock11Arg2.
            recoveredBlock11PC := 227.
        ].
        recoveredBlock11Step = 227 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) deselectButtonWidget.
            recoveredBlock11PC := 229.
        ].
        recoveredBlock11Step = 229 ifTrue: [
            recoveredBlock11Stack1 := false.
            recoveredBlock11PC := 230.
        ].
        recoveredBlock11Step = 230 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) setSensitive: (recoveredBlock11Stack1).
            recoveredBlock11PC := 232.
        ].
        recoveredBlock11Step = 232 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack0.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack1) selectButtonActivateBlock: (recoveredStack2).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := selectButtonActivateBlock.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

