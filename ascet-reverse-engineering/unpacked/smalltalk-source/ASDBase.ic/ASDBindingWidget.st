"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200064ac; bytecode file offset 0x902de8"
!ASDBindingWidget methodsFor: 'recovered'!
bindingsMultipleSelectionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x2000b210; bytecode file offset 0x908be4"
!ASDBindingWidget methodsFor: 'recovered'!
tableList
    | recoveredValue0 |
    recoveredValue0 := (self) tableWidgetBinding.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004636c; bytecode file offset 0x9451f8"
!ASDBindingWidget methodsFor: 'recovered'!
bindings
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('bindings').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004856c; bytecode file offset 0x9451f8"
!ASDBindingWidget methodsFor: 'recovered'!
tableWidgetBinding
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('bindings').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20104974; bytecode file offset 0xa01584"
!ASDBindingWidget methodsFor: 'recovered'!
bindingColumns
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) bindingVarColumn.
    recoveredValue2 := (self) bindingImportColumn.
    recoveredValue3 := (self) bindingExportColumn.
    recoveredValue4 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20258bb4; bytecode file offset 0xb55700"
!ASDBindingWidget methodsFor: 'recovered'!
bindingImportColumn
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) heading: ('Imported by').
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

"ASDBase.ic method 0x20258d34; bytecode file offset 0xb55700"
!ASDBindingWidget methodsFor: 'recovered'!
bindingVarColumn
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

"ASDBase.ic method 0x20258dc4; bytecode file offset 0xb55700"
!ASDBindingWidget methodsFor: 'recovered'!
bindingExportColumn
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) heading: ('Exported by').
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

"ASDBase.ic method 0x204a2908; bytecode file offset 0xd9f214"
!ASDBindingWidget methodsFor: 'recovered'!
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
            recoveredStack0 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := [:block28104710Arg1 | 
    | block28104710Value0 block28104710Value1 |
    block28104710Value0 := block28104710Arg1.
    block28104710Value1 := (block28104710Value0) isImported.
    block28104710Value1
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := [:block28104734Arg1 | 
    | block28104734Value0 block28104734Value1 |
    block28104734Value0 := block28104734Arg1.
    block28104734Value1 := (block28104734Value0) isExported.
    block28104734Value1
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Stack0 recoveredBlock44Stack1 recoveredBlock44Stack2 recoveredBlock44Stack3 recoveredBlock44Stack4 recoveredBlock44Stack5 recoveredBlock44PC recoveredBlock44Step recoveredBlock44Done recoveredBlock44Result |
    recoveredBlock44Stack0 := self.
    recoveredBlock44PC := 50.
    recoveredBlock44Done := false.
    [recoveredBlock44Done not] whileTrue: [
        recoveredBlock44Step := recoveredBlock44PC.
        recoveredBlock44Step = 50 ifTrue: [
            recoveredBlock44Stack0 := (recoveredBlock44Stack0) project.
            recoveredBlock44PC := 51.
        ].
        recoveredBlock44Step = 51 ifTrue: [
            recoveredBlock44Stack1 := recoveredLocal1.
            recoveredBlock44PC := 54.
        ].
        recoveredBlock44Step = 54 ifTrue: [
            recoveredBlock44Stack2 := Array.
            recoveredBlock44PC := 56.
        ].
        recoveredBlock44Step = 56 ifTrue: [
            recoveredBlock44Stack3 := recoveredLocal3.
            recoveredBlock44PC := 59.
        ].
        recoveredBlock44Step = 59 ifTrue: [
            recoveredBlock44Stack4 := recoveredLocal2.
            recoveredBlock44PC := 62.
        ].
        recoveredBlock44Step = 62 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) with: (recoveredBlock44Stack3) with: (recoveredBlock44Stack4).
            recoveredBlock44PC := 64.
        ].
        recoveredBlock44Step = 64 ifTrue: [
            recoveredBlock44Stack3 := recoveredBlock44Arg1.
            recoveredBlock44PC := 65.
        ].
        recoveredBlock44Step = 65 ifTrue: [
            (recoveredBlock44Stack0) collectVariablesTo: (recoveredBlock44Stack1) expressions: (recoveredBlock44Stack2) progessDialog: (recoveredBlock44Stack3).
            recoveredBlock44PC := 68.
        ].
        recoveredBlock44Step = 68 ifTrue: [
            recoveredBlock44Stack0 := self.
            recoveredBlock44PC := 69.
        ].
        recoveredBlock44Step = 69 ifTrue: [
            recoveredBlock44Stack1 := self.
            recoveredBlock44PC := 70.
        ].
        recoveredBlock44Step = 70 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) bindings.
            recoveredBlock44PC := 72.
        ].
        recoveredBlock44Step = 72 ifTrue: [
            recoveredBlock44Stack0 := (recoveredBlock44Stack0) getTableListFlagsFor: (recoveredBlock44Stack1).
            recoveredBlock44PC := 74.
        ].
        recoveredBlock44Step = 74 ifTrue: [
            (recoveredBlock44Stack0) ifTrue: [recoveredBlock44PC := 78] ifFalse: [recoveredBlock44PC := 116].
        ].
        recoveredBlock44Step = 78 ifTrue: [
            recoveredBlock44Stack0 := recoveredLocal1.
            recoveredBlock44PC := 81.
        ].
        recoveredBlock44Step = 81 ifTrue: [
            recoveredBlock44Stack1 := [:block28104758Arg1 | 
    | block28104758Value0 block28104758Value1 block28104758Value2 block28104758Value3 block28104758Value4 block28104758Value5 block28104758Value6 block28104758Value7 block28104758Value8 |
    block28104758Value0 := block28104758Arg1.
    block28104758Value1 := (block28104758Value0) at: (2).
    block28104758Value2 := (block28104758Value1) at: (1).
    block28104758Value3 := (block28104758Value2) isEmpty.
    block28104758Value4 := block28104758Arg1.
    block28104758Value5 := (block28104758Value4) at: (2).
    block28104758Value6 := (block28104758Value5) at: (2).
    block28104758Value7 := (block28104758Value6) isEmpty.
    block28104758Value8 := (block28104758Value3) | (block28104758Value7).
    block28104758Value8
].
            recoveredBlock44PC := 83.
        ].
        recoveredBlock44Step = 83 ifTrue: [
            recoveredBlock44PC := 111.
        ].
        recoveredBlock44Step = 111 ifTrue: [
            recoveredBlock44Stack0 := (recoveredBlock44Stack0) select: (recoveredBlock44Stack1).
            recoveredBlock44PC := 113.
        ].
        recoveredBlock44Step = 113 ifTrue: [
            recoveredLocal1 := recoveredBlock44Stack0.
            recoveredBlock44PC := 116.
        ].
        recoveredBlock44Step = 116 ifTrue: [
            recoveredBlock44Stack0 := recoveredArg2.
            recoveredBlock44PC := 119.
        ].
        recoveredBlock44Step = 119 ifTrue: [
            recoveredBlock44Stack1 := recoveredLocal1.
            recoveredBlock44PC := 122.
        ].
        recoveredBlock44Step = 122 ifTrue: [
            recoveredBlock44Stack2 := recoveredArg1.
            recoveredBlock44PC := 125.
        ].
        recoveredBlock44Step = 125 ifTrue: [
            recoveredBlock44Stack0 := (recoveredBlock44Stack0) value: (recoveredBlock44Stack1) value: (recoveredBlock44Stack2).
            recoveredBlock44PC := 127.
        ].
        recoveredBlock44Step = 127 ifTrue: [
            recoveredBlock44Result := recoveredBlock44Stack0.
            recoveredBlock44Done := true.
        ].
    ].
    recoveredBlock44Result
].
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := 'Collect list info...'.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack4 := 'Update list'.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) execWithProgressDialog: (recoveredStack1) message: (recoveredStack2) showProgress: (recoveredStack3) title: (recoveredStack4).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205cbd90; bytecode file offset 0xec8738"
!ASDBindingWidget methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'bindings'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 recoveredBlock19Value4 recoveredBlock19Value5 recoveredBlock19Value6 recoveredBlock19Value7 recoveredBlock19Value8 recoveredBlock19Value9 recoveredBlock19Value10 recoveredBlock19Value11 |
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
    recoveredBlock19Value7 := (self) iconHierarchyPolicy.
    (recoveredBlock19Value6) hierarchyPolicy: (recoveredBlock19Value7).
    recoveredBlock19Value8 := recoveredBlock19Value0.
    recoveredBlock19Value9 := (self) bindingColumns.
    (recoveredBlock19Value8) columns: (recoveredBlock19Value9).
    recoveredBlock19Value10 := XmCELLSINGLESELECT.
    recoveredBlock19Value11 := (recoveredBlock19Value0) selectionPolicy: (recoveredBlock19Value10).
    recoveredBlock19Value11
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScrolledTableTree: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := 'bindings'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := 'withoutBinded'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := [:recoveredBlock91Arg1 | 
    | recoveredBlock91Value0 recoveredBlock91Value1 recoveredBlock91Value2 recoveredBlock91Value3 recoveredBlock91Value4 recoveredBlock91Value5 |
    recoveredBlock91Value0 := recoveredBlock91Arg1.
    recoveredBlock91Value1 := recoveredBlock91Value0.
    recoveredBlock91Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock91Value1) alignment: (recoveredBlock91Value2).
    recoveredBlock91Value3 := recoveredBlock91Value0.
    (recoveredBlock91Value3) labelString: ('Unbound only').
    recoveredBlock91Value4 := recoveredBlock91Value0.
    recoveredBlock91Value5 := (self) defaultLabelBlue.
    (recoveredBlock91Value4) foregroundColor: (recoveredBlock91Value5).
    recoveredBlock91Value0
].
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := 'withoutBinded'.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := [:recoveredBlock136Arg1 | 
    | recoveredBlock136Value0 recoveredBlock136Value1 recoveredBlock136Value2 recoveredBlock136Value3 recoveredBlock136Value4 recoveredBlock136Value5 recoveredBlock136Value6 recoveredBlock136Value7 recoveredBlock136Value8 recoveredBlock136Value9 recoveredBlock136Value10 recoveredBlock136Value11 recoveredBlock136Value12 recoveredBlock136Value13 recoveredBlock136Value14 |
    recoveredBlock136Value0 := recoveredBlock136Arg1.
    recoveredBlock136Value1 := recoveredBlock136Value0.
    recoveredBlock136Value2 := XmATTACHWIDGET.
    (recoveredBlock136Value1) bottomAttachment: (recoveredBlock136Value2).
    recoveredBlock136Value3 := recoveredBlock136Value0.
    (recoveredBlock136Value3) bottomOffset: (5).
    recoveredBlock136Value4 := recoveredBlock136Value0.
    recoveredBlock136Value5 := recoveredLocal1.
    (recoveredBlock136Value4) bottomWidget: (recoveredBlock136Value5).
    recoveredBlock136Value6 := recoveredBlock136Value0.
    recoveredBlock136Value7 := XmATTACHFORM.
    (recoveredBlock136Value6) topAttachment: (recoveredBlock136Value7).
    recoveredBlock136Value8 := recoveredBlock136Value0.
    (recoveredBlock136Value8) topOffset: (1).
    recoveredBlock136Value9 := recoveredBlock136Value0.
    recoveredBlock136Value10 := XmATTACHFORM.
    (recoveredBlock136Value9) leftAttachment: (recoveredBlock136Value10).
    recoveredBlock136Value11 := recoveredBlock136Value0.
    (recoveredBlock136Value11) leftOffset: (1).
    recoveredBlock136Value12 := recoveredBlock136Value0.
    recoveredBlock136Value13 := XmATTACHFORM.
    (recoveredBlock136Value12) rightAttachment: (recoveredBlock136Value13).
    recoveredBlock136Value14 := (recoveredBlock136Value0) rightOffset: (1).
    recoveredBlock136Value14
].
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := [:block28118f6cArg1 | 
    | block28118f6cValue0 block28118f6cValue1 block28118f6cValue2 block28118f6cValue3 block28118f6cValue4 block28118f6cValue5 block28118f6cValue6 block28118f6cValue7 block28118f6cValue8 block28118f6cValue9 |
    block28118f6cValue0 := block28118f6cArg1.
    block28118f6cValue1 := block28118f6cValue0.
    block28118f6cValue2 := XmATTACHFORM.
    (block28118f6cValue1) bottomAttachment: (block28118f6cValue2).
    block28118f6cValue3 := block28118f6cValue0.
    (block28118f6cValue3) bottomOffset: (1).
    block28118f6cValue4 := block28118f6cValue0.
    block28118f6cValue5 := XmATTACHFORM.
    (block28118f6cValue4) leftAttachment: (block28118f6cValue5).
    block28118f6cValue6 := block28118f6cValue0.
    (block28118f6cValue6) leftOffset: (1).
    block28118f6cValue7 := block28118f6cValue0.
    block28118f6cValue8 := XmATTACHPOSITION.
    (block28118f6cValue7) rightAttachment: (block28118f6cValue8).
    block28118f6cValue9 := (block28118f6cValue0) rightPosition: (50).
    block28118f6cValue9
].
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := XmNextendedSelectionCallback.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack3 := 'bindingsMultipleSelectionCallback:clientData:callData:'.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := XmNdefaultActionCallback.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack3 := 'bindingsCommunicationsCellSelection:clientData:callData:'.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := XmNchildrenCallback.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack3 := 'bindingsCommunicationsChildrenCallback:clientData:callData:'.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := XmNvisualInfoCallback.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack3 := 'bindingsCommunicationsVisualCallback:clientData:callData:'.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := XmNcolumnHeadingSelectionCallback.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack3 := 'bindingsCommunicationsColumnHeadingCallback:clientData:callData:'.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack3 := 'withoutMappedValue:clientData:callData:'.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack0 := SGUserInterfaceSettings.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            (recoveredStack0) updateFont: (recoveredStack1).
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack0 := SGUserInterfaceSettings.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            (recoveredStack0) updateListFontAndItemHeightTable: (recoveredStack1).
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

