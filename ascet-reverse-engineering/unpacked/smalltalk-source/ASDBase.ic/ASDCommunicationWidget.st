"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003f08; bytecode file offset 0x90206c"
!ASDCommunicationWidget methodsFor: 'recovered'!
addLocalColumnPos3: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004be0; bytecode file offset 0x90206c"
!ASDCommunicationWidget methodsFor: 'recovered'!
addLocalColumnPos4: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005010; bytecode file offset 0x90206c"
!ASDCommunicationWidget methodsFor: 'recovered'!
addLocalColumnPos2: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20009014; bytecode file offset 0x908be4"
!ASDCommunicationWidget methodsFor: 'recovered'!
tableList
    | recoveredValue0 |
    recoveredValue0 := (self) tableWidgetCommunicaton.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004526c; bytecode file offset 0x9451f8"
!ASDCommunicationWidget methodsFor: 'recovered'!
tableWidgetCommunicaton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('communications').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20258b54; bytecode file offset 0xb55700"
!ASDCommunicationWidget methodsFor: 'recovered'!
communicationVarColumn
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) heading: ('Label').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) editable: (false).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) verticalSeparatorThickness: (1).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) resizable: (true).
    recoveredLocal1 := recoveredValue1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := XmNcellValueCallback.
    (recoveredValue6) addCallback: (recoveredValue7) receiver: (self) selector: ('labelVisualInfoCallback:clientData:callData:') clientData: (nil).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x20258cd4; bytecode file offset 0xb55700"
!ASDCommunicationWidget methodsFor: 'recovered'!
communicationReceiveColumn
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) heading: ('Received by').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) editable: (false).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) verticalSeparatorThickness: (1).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) resizable: (true).
    recoveredLocal1 := recoveredValue1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := XmNcellValueCallback.
    (recoveredValue6) addCallback: (recoveredValue7) receiver: (self) selector: ('rightColumnVisualInfoCallback:clientData:callData:') clientData: (nil).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x20258e24; bytecode file offset 0xb55700"
!ASDCommunicationWidget methodsFor: 'recovered'!
communicationSendColumn
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) heading: ('Sent by').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) editable: (false).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) verticalSeparatorThickness: (1).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) resizable: (true).
    recoveredLocal1 := recoveredValue1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := XmNcellValueCallback.
    (recoveredValue6) addCallback: (recoveredValue7) receiver: (self) selector: ('leftColumnVisualInfoCallback:clientData:callData:') clientData: (nil).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x20259220; bytecode file offset 0xb55af8"
!ASDCommunicationWidget methodsFor: 'recovered'!
communicationsColumns
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) communicationVarColumn.
    (recoveredValue2) add: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (self) addLocalColumnPos2: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) communicationSendColumn.
    (recoveredValue5) add: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    (self) addLocalColumnPos3: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (self) communicationReceiveColumn.
    (recoveredValue8) add: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    (self) addLocalColumnPos4: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !

"ASDBase.ic method 0x204e8c48; bytecode file offset 0xde5560"
!ASDCommunicationWidget methodsFor: 'recovered'!
updateListSortBy: recoveredArg1 executionBlock: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'Call37820'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := [:block28108fe8Arg1 | 
    | block28108fe8Stack0 block28108fe8Stack1 block28108fe8Stack2 block28108fe8Stack3 block28108fe8PC block28108fe8Step block28108fe8Done block28108fe8Result |
    block28108fe8Stack0 := self.
    block28108fe8PC := 4.
    block28108fe8Done := false.
    [block28108fe8Done not] whileTrue: [
        block28108fe8Step := block28108fe8PC.
        block28108fe8Step = 4 ifTrue: [
            block28108fe8Stack1 := false.
            block28108fe8PC := 5.
        ].
        block28108fe8Step = 5 ifTrue: [
            block28108fe8Stack2 := block28108fe8Arg1.
            block28108fe8PC := 6.
        ].
        block28108fe8Step = 6 ifTrue: [
            block28108fe8Stack2 := (block28108fe8Stack2) isMessage.
            block28108fe8PC := 8.
        ].
        block28108fe8Step = 8 ifTrue: [
            (block28108fe8Stack2) ifTrue: [block28108fe8PC := 12] ifFalse: [block28108fe8PC := 23].
        ].
        block28108fe8Step = 12 ifTrue: [
            block28108fe8Stack2 := block28108fe8Arg1.
            block28108fe8PC := 13.
        ].
        block28108fe8Step = 13 ifTrue: [
            block28108fe8Stack2 := (block28108fe8Stack2) isSend.
            block28108fe8PC := 15.
        ].
        block28108fe8Step = 15 ifTrue: [
            (block28108fe8Stack2) ifTrue: [block28108fe8PC := 18] ifFalse: [block28108fe8PC := 23].
        ].
        block28108fe8Step = 18 ifTrue: [
            block28108fe8PC := 19.
        ].
        block28108fe8Step = 19 ifTrue: [
            block28108fe8Stack1 := block28108fe8Arg1.
            block28108fe8PC := 20.
        ].
        block28108fe8Step = 20 ifTrue: [
            block28108fe8Stack1 := (block28108fe8Stack1) isLocal.
            block28108fe8PC := 22.
        ].
        block28108fe8Step = 22 ifTrue: [
            block28108fe8Stack1 := (block28108fe8Stack1) not.
            block28108fe8PC := 23.
        ].
        block28108fe8Step = 23 ifTrue: [
            block28108fe8Result := block28108fe8Stack1.
            block28108fe8Done := true.
        ].
    ].
    block28108fe8Result
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := [:block2810900cArg1 | 
    | block2810900cStack0 block2810900cStack1 block2810900cStack2 block2810900cStack3 block2810900cPC block2810900cStep block2810900cDone block2810900cResult |
    block2810900cStack0 := self.
    block2810900cPC := 4.
    block2810900cDone := false.
    [block2810900cDone not] whileTrue: [
        block2810900cStep := block2810900cPC.
        block2810900cStep = 4 ifTrue: [
            block2810900cStack1 := false.
            block2810900cPC := 5.
        ].
        block2810900cStep = 5 ifTrue: [
            block2810900cStack2 := block2810900cArg1.
            block2810900cPC := 6.
        ].
        block2810900cStep = 6 ifTrue: [
            block2810900cStack2 := (block2810900cStack2) isMessage.
            block2810900cPC := 8.
        ].
        block2810900cStep = 8 ifTrue: [
            (block2810900cStack2) ifTrue: [block2810900cPC := 12] ifFalse: [block2810900cPC := 23].
        ].
        block2810900cStep = 12 ifTrue: [
            block2810900cStack2 := block2810900cArg1.
            block2810900cPC := 13.
        ].
        block2810900cStep = 13 ifTrue: [
            block2810900cStack2 := (block2810900cStack2) isReceive.
            block2810900cPC := 15.
        ].
        block2810900cStep = 15 ifTrue: [
            (block2810900cStack2) ifTrue: [block2810900cPC := 18] ifFalse: [block2810900cPC := 23].
        ].
        block2810900cStep = 18 ifTrue: [
            block2810900cPC := 19.
        ].
        block2810900cStep = 19 ifTrue: [
            block2810900cStack1 := block2810900cArg1.
            block2810900cPC := 20.
        ].
        block2810900cStep = 20 ifTrue: [
            block2810900cStack1 := (block2810900cStack1) isLocal.
            block2810900cPC := 22.
        ].
        block2810900cStep = 22 ifTrue: [
            block2810900cStack1 := (block2810900cStack1) not.
            block2810900cPC := 23.
        ].
        block2810900cStep = 23 ifTrue: [
            block2810900cResult := block2810900cStack1.
            block2810900cDone := true.
        ].
    ].
    block2810900cResult
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := [:recoveredBlock82Arg1 | 
    | recoveredBlock82Stack0 recoveredBlock82Stack1 recoveredBlock82Stack2 recoveredBlock82Stack3 recoveredBlock82Stack4 recoveredBlock82Stack5 recoveredBlock82PC recoveredBlock82Step recoveredBlock82Done recoveredBlock82Result |
    recoveredBlock82Stack0 := self.
    recoveredBlock82PC := 88.
    recoveredBlock82Done := false.
    [recoveredBlock82Done not] whileTrue: [
        recoveredBlock82Step := recoveredBlock82PC.
        recoveredBlock82Step = 88 ifTrue: [
            recoveredBlock82Stack0 := (recoveredBlock82Stack0) project.
            recoveredBlock82PC := 89.
        ].
        recoveredBlock82Step = 89 ifTrue: [
            recoveredBlock82Stack1 := recoveredLocal1.
            recoveredBlock82PC := 92.
        ].
        recoveredBlock82Step = 92 ifTrue: [
            recoveredBlock82Stack2 := Array.
            recoveredBlock82PC := 94.
        ].
        recoveredBlock82Step = 94 ifTrue: [
            recoveredBlock82Stack3 := recoveredLocal3.
            recoveredBlock82PC := 97.
        ].
        recoveredBlock82Step = 97 ifTrue: [
            recoveredBlock82Stack4 := recoveredLocal2.
            recoveredBlock82PC := 100.
        ].
        recoveredBlock82Step = 100 ifTrue: [
            recoveredBlock82Stack2 := (recoveredBlock82Stack2) with: (recoveredBlock82Stack3) with: (recoveredBlock82Stack4).
            recoveredBlock82PC := 102.
        ].
        recoveredBlock82Step = 102 ifTrue: [
            recoveredBlock82Stack3 := recoveredBlock82Arg1.
            recoveredBlock82PC := 103.
        ].
        recoveredBlock82Step = 103 ifTrue: [
            (recoveredBlock82Stack0) collectVariablesTo: (recoveredBlock82Stack1) expressions: (recoveredBlock82Stack2) progessDialog: (recoveredBlock82Stack3).
            recoveredBlock82PC := 106.
        ].
        recoveredBlock82Step = 106 ifTrue: [
            recoveredBlock82Stack0 := self.
            recoveredBlock82PC := 107.
        ].
        recoveredBlock82Step = 107 ifTrue: [
            recoveredBlock82Stack1 := self.
            recoveredBlock82PC := 108.
        ].
        recoveredBlock82Step = 108 ifTrue: [
            recoveredBlock82Stack1 := (recoveredBlock82Stack1) tableList.
            recoveredBlock82PC := 110.
        ].
        recoveredBlock82Step = 110 ifTrue: [
            recoveredBlock82Stack0 := (recoveredBlock82Stack0) getTableListFlagsFor: (recoveredBlock82Stack1).
            recoveredBlock82PC := 112.
        ].
        recoveredBlock82Step = 112 ifTrue: [
            (recoveredBlock82Stack0) ifTrue: [recoveredBlock82PC := 116] ifFalse: [recoveredBlock82PC := 143].
        ].
        recoveredBlock82Step = 116 ifTrue: [
            recoveredBlock82Stack0 := recoveredLocal1.
            recoveredBlock82PC := 119.
        ].
        recoveredBlock82Step = 119 ifTrue: [
            recoveredBlock82Stack1 := [:block28109030Arg1 | 
    | block28109030Value0 block28109030Value1 block28109030Value2 block28109030Value3 block28109030Value4 block28109030Value5 block28109030Value6 block28109030Value7 |
    block28109030Value0 := block28109030Arg1.
    block28109030Value1 := (block28109030Value0) first.
    block28109030Value2 := (block28109030Value1) isSend.
    block28109030Value3 := block28109030Arg1.
    block28109030Value4 := (block28109030Value3) first.
    block28109030Value5 := (block28109030Value4) isReceive.
    block28109030Value6 := (block28109030Value2) & (block28109030Value5).
    block28109030Value7 := (block28109030Value6) not.
    block28109030Value7
].
            recoveredBlock82PC := 121.
        ].
        recoveredBlock82Step = 121 ifTrue: [
            recoveredBlock82PC := 138.
        ].
        recoveredBlock82Step = 138 ifTrue: [
            recoveredBlock82Stack0 := (recoveredBlock82Stack0) select: (recoveredBlock82Stack1).
            recoveredBlock82PC := 140.
        ].
        recoveredBlock82Step = 140 ifTrue: [
            recoveredLocal1 := recoveredBlock82Stack0.
            recoveredBlock82PC := 143.
        ].
        recoveredBlock82Step = 143 ifTrue: [
            recoveredBlock82Stack0 := recoveredArg2.
            recoveredBlock82PC := 146.
        ].
        recoveredBlock82Step = 146 ifTrue: [
            recoveredBlock82Stack1 := recoveredLocal1.
            recoveredBlock82PC := 149.
        ].
        recoveredBlock82Step = 149 ifTrue: [
            recoveredBlock82Stack2 := recoveredArg1.
            recoveredBlock82PC := 152.
        ].
        recoveredBlock82Step = 152 ifTrue: [
            recoveredBlock82Stack0 := (recoveredBlock82Stack0) value: (recoveredBlock82Stack1) value: (recoveredBlock82Stack2).
            recoveredBlock82PC := 154.
        ].
        recoveredBlock82Step = 154 ifTrue: [
            recoveredBlock82Result := recoveredBlock82Stack0.
            recoveredBlock82Done := true.
        ].
    ].
    recoveredBlock82Result
].
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := 'Collect list  info...'.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack4 := 'Update list'.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack0) execWithProgressDialog: (recoveredStack1) message: (recoveredStack2) showProgress: (recoveredStack3) title: (recoveredStack4).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205c94f0; bytecode file offset 0xec5e98"
!ASDCommunicationWidget methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'communications'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 recoveredBlock19Value4 recoveredBlock19Value5 recoveredBlock19Value6 recoveredBlock19Value7 recoveredBlock19Value8 recoveredBlock19Value9 recoveredBlock19Value10 recoveredBlock19Value11 recoveredBlock19Value12 |
    recoveredBlock19Value0 := recoveredBlock19Arg1.
    recoveredBlock19Value1 := recoveredBlock19Value0.
    (recoveredBlock19Value1) applicationDrawnBackground: (true).
    recoveredBlock19Value2 := recoveredBlock19Value0.
    recoveredBlock19Value3 := XmETCHCELLS.
    (recoveredBlock19Value2) headingVisualStyle: (recoveredBlock19Value3).
    recoveredBlock19Value4 := recoveredBlock19Value0.
    (recoveredBlock19Value4) editable: (true).
    recoveredBlock19Value5 := recoveredBlock19Value0.
    (recoveredBlock19Value5) selectableColumns: (true).
    recoveredBlock19Value6 := recoveredBlock19Value0.
    (recoveredBlock19Value6) selectableColumns: (true).
    recoveredBlock19Value7 := recoveredBlock19Value0.
    recoveredBlock19Value8 := (self) iconHierarchyPolicy.
    (recoveredBlock19Value7) hierarchyPolicy: (recoveredBlock19Value8).
    recoveredBlock19Value9 := recoveredBlock19Value0.
    recoveredBlock19Value10 := (self) communicationsColumns.
    (recoveredBlock19Value9) columns: (recoveredBlock19Value10).
    recoveredBlock19Value11 := XmCELLSINGLESELECT.
    recoveredBlock19Value12 := (recoveredBlock19Value0) selectionPolicy: (recoveredBlock19Value11).
    recoveredBlock19Value12
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScrolledTableTree: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := 'communications'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := 'withoutSendRec'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := [:recoveredBlock95Arg1 | 
    | recoveredBlock95Value0 recoveredBlock95Value1 recoveredBlock95Value2 recoveredBlock95Value3 recoveredBlock95Value4 recoveredBlock95Value5 |
    recoveredBlock95Value0 := recoveredBlock95Arg1.
    recoveredBlock95Value1 := recoveredBlock95Value0.
    recoveredBlock95Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock95Value1) alignment: (recoveredBlock95Value2).
    recoveredBlock95Value3 := recoveredBlock95Value0.
    (recoveredBlock95Value3) labelString: ('Without Send/Receive Messages').
    recoveredBlock95Value4 := recoveredBlock95Value0.
    recoveredBlock95Value5 := (self) defaultLabelBlue.
    (recoveredBlock95Value4) foregroundColor: (recoveredBlock95Value5).
    recoveredBlock95Value0
].
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := 'withoutSendRec'.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := [:recoveredBlock140Arg1 | 
    | recoveredBlock140Value0 recoveredBlock140Value1 recoveredBlock140Value2 recoveredBlock140Value3 recoveredBlock140Value4 recoveredBlock140Value5 recoveredBlock140Value6 recoveredBlock140Value7 recoveredBlock140Value8 recoveredBlock140Value9 recoveredBlock140Value10 recoveredBlock140Value11 recoveredBlock140Value12 recoveredBlock140Value13 recoveredBlock140Value14 |
    recoveredBlock140Value0 := recoveredBlock140Arg1.
    recoveredBlock140Value1 := recoveredBlock140Value0.
    recoveredBlock140Value2 := XmATTACHWIDGET.
    (recoveredBlock140Value1) bottomAttachment: (recoveredBlock140Value2).
    recoveredBlock140Value3 := recoveredBlock140Value0.
    (recoveredBlock140Value3) bottomOffset: (5).
    recoveredBlock140Value4 := recoveredBlock140Value0.
    recoveredBlock140Value5 := recoveredLocal1.
    (recoveredBlock140Value4) bottomWidget: (recoveredBlock140Value5).
    recoveredBlock140Value6 := recoveredBlock140Value0.
    recoveredBlock140Value7 := XmATTACHFORM.
    (recoveredBlock140Value6) topAttachment: (recoveredBlock140Value7).
    recoveredBlock140Value8 := recoveredBlock140Value0.
    (recoveredBlock140Value8) topOffset: (1).
    recoveredBlock140Value9 := recoveredBlock140Value0.
    recoveredBlock140Value10 := XmATTACHFORM.
    (recoveredBlock140Value9) leftAttachment: (recoveredBlock140Value10).
    recoveredBlock140Value11 := recoveredBlock140Value0.
    (recoveredBlock140Value11) leftOffset: (1).
    recoveredBlock140Value12 := recoveredBlock140Value0.
    recoveredBlock140Value13 := XmATTACHFORM.
    (recoveredBlock140Value12) rightAttachment: (recoveredBlock140Value13).
    recoveredBlock140Value14 := (recoveredBlock140Value0) rightOffset: (1).
    recoveredBlock140Value14
].
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := [:block28118bc4Arg1 | 
    | block28118bc4Value0 block28118bc4Value1 block28118bc4Value2 block28118bc4Value3 block28118bc4Value4 block28118bc4Value5 block28118bc4Value6 block28118bc4Value7 block28118bc4Value8 block28118bc4Value9 |
    block28118bc4Value0 := block28118bc4Arg1.
    block28118bc4Value1 := block28118bc4Value0.
    block28118bc4Value2 := XmATTACHFORM.
    (block28118bc4Value1) bottomAttachment: (block28118bc4Value2).
    block28118bc4Value3 := block28118bc4Value0.
    (block28118bc4Value3) bottomOffset: (1).
    block28118bc4Value4 := block28118bc4Value0.
    block28118bc4Value5 := XmATTACHFORM.
    (block28118bc4Value4) leftAttachment: (block28118bc4Value5).
    block28118bc4Value6 := block28118bc4Value0.
    (block28118bc4Value6) leftOffset: (1).
    block28118bc4Value7 := block28118bc4Value0.
    block28118bc4Value8 := XmATTACHPOSITION.
    (block28118bc4Value7) rightAttachment: (block28118bc4Value8).
    block28118bc4Value9 := (block28118bc4Value0) rightPosition: (50).
    block28118bc4Value9
].
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := XmNextendedSelectionCallback.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack3 := 'communicationsMultipleSelectionCallback:clientData:callData:'.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := XmNdefaultActionCallback.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack3 := 'bindingsCommunicationsCellSelection:clientData:callData:'.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := XmNchildrenCallback.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack3 := 'bindingsCommunicationsChildrenCallback:clientData:callData:'.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := XmNvisualInfoCallback.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack3 := 'bindingsCommunicationsVisualCallback:clientData:callData:'.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack1 := XmNcolumnHeadingSelectionCallback.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack3 := 'bindingsCommunicationsColumnHeadingCallback:clientData:callData:'.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack3 := 'withoutMappedValue:clientData:callData:'.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack0 := SGUserInterfaceSettings.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            (recoveredStack0) updateLabelFont: (recoveredStack1).
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack0 := SGUserInterfaceSettings.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            (recoveredStack0) updateListFontAndItemHeightTable: (recoveredStack1).
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

