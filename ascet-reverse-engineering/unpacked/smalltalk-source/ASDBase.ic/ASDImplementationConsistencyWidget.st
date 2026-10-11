"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200458cc; bytecode file offset 0x9451f8"
!ASDImplementationConsistencyWidget methodsFor: 'recovered'!
widgetConsistencyList
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetConsistencyList').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200ecc40; bytecode file offset 0x9e9508"
!ASDImplementationConsistencyWidget methodsFor: 'recovered'!
defaultActionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) item.
    (recoveredValue1) performCorrection.
    recoveredValue2 := (self) widgetCtrl.
    recoveredValue3 := (recoveredValue2) userInterface.
    (recoveredValue3) update.
    ^self
! !

"ASDBase.ic method 0x2013a32c; bytecode file offset 0xa36c64"
!ASDImplementationConsistencyWidget methodsFor: 'recovered'!
consistencyTableColumns
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) createConsistencyTableColumnSource.
    (recoveredValue2) add: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) createConsistencyTableColumnConflict.
    (recoveredValue4) add: (recoveredValue5).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201cf8d0; bytecode file offset 0xacc1a0"
!ASDImplementationConsistencyWidget methodsFor: 'recovered'!
consistencyTableColumnSourceValueCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemPosition.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetConsistencyList.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) items.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetConsistencyList.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) items.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) itemPosition.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a3510; bytecode file offset 0xb9fe8c"
!ASDImplementationConsistencyWidget methodsFor: 'recovered'!
createConsistencyTableColumnConflict
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) heading: ('Conflict').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) editable: (false).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) verticalSeparatorThickness: (1).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) resizable: (true).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) width: (400).
    recoveredLocal1 := recoveredValue1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := XmNcellValueCallback.
    (recoveredValue7) addCallback: (recoveredValue8) receiver: (self) selector: ('consistencyTableColumnConflictValueCallback:clientData:callData:') clientData: (nil).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x202a36d8; bytecode file offset 0xb9ffb8"
!ASDImplementationConsistencyWidget methodsFor: 'recovered'!
createConsistencyTableColumnSource
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) heading: ('Source').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) editable: (false).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) verticalSeparatorThickness: (1).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) resizable: (true).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) width: (70).
    recoveredLocal1 := recoveredValue1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := XmNcellValueCallback.
    (recoveredValue7) addCallback: (recoveredValue8) receiver: (self) selector: ('consistencyTableColumnSourceValueCallback:clientData:callData:') clientData: (nil).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x202d691c; bytecode file offset 0xbd31fc"
!ASDImplementationConsistencyWidget methodsFor: 'recovered'!
consistencyTableColumnConflictValueCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemPosition.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetConsistencyList.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) items.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetConsistencyList.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) items.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) itemPosition.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) iconName.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnIcon16WithName: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := RBRenderableBitmapString.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) conflict.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOnString: (recoveredStack2) image: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205abc44; bytecode file offset 0xea85c0"
!ASDImplementationConsistencyWidget methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal14 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'widgetConsistencyFrame'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:block28116638Arg1 | 
    | block28116638Value0 block28116638Value1 |
    block28116638Value0 := block28116638Arg1.
    block28116638Value1 := block28116638Value0.
    (block28116638Value1) labelString: ('Consistency').
    block28116638Value0
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFrame: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 'widgetConsistencyFrame'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := 'widgetConsistencyForm'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := [:block2811665cArg1 | 
    | block2811665cValue0 |
    block2811665cValue0 := block2811665cArg1.
    block2811665cValue0
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := 'widgetConsistencyForm'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := 'widgetConsistencyList'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := [:recoveredBlock82Arg1 | 
    | recoveredBlock82Value0 recoveredBlock82Value1 recoveredBlock82Value2 recoveredBlock82Value3 recoveredBlock82Value4 recoveredBlock82Value5 recoveredBlock82Value6 recoveredBlock82Value7 recoveredBlock82Value8 recoveredBlock82Value9 recoveredBlock82Value10 recoveredBlock82Value11 recoveredBlock82Value12 |
    recoveredBlock82Value0 := recoveredBlock82Arg1.
    recoveredBlock82Value1 := recoveredBlock82Value0.
    recoveredBlock82Value2 := (self) consistencyTableColumns.
    (recoveredBlock82Value1) columns: (recoveredBlock82Value2).
    recoveredBlock82Value3 := recoveredBlock82Value0.
    (recoveredBlock82Value3) editable: (false).
    recoveredBlock82Value4 := recoveredBlock82Value0.
    (recoveredBlock82Value4) selectableColumns: (true).
    recoveredBlock82Value5 := recoveredBlock82Value0.
    (recoveredBlock82Value5) lockedColumns: (1).
    recoveredBlock82Value6 := recoveredBlock82Value0.
    (recoveredBlock82Value6) headingSeparatorThickness: (0).
    recoveredBlock82Value7 := recoveredBlock82Value0.
    recoveredBlock82Value8 := XmEXTENDEDSELECT.
    (recoveredBlock82Value7) selectionPolicy: (recoveredBlock82Value8).
    recoveredBlock82Value9 := recoveredBlock82Value0.
    (recoveredBlock82Value9) applicationDrawnBackground: (true).
    recoveredBlock82Value10 := recoveredBlock82Value0.
    recoveredBlock82Value11 := XmETCHCELLS.
    (recoveredBlock82Value10) headingVisualStyle: (recoveredBlock82Value11).
    recoveredBlock82Value12 := recoveredBlock82Value0.
    (recoveredBlock82Value12) x: (5).
    recoveredBlock82Value0
].
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScrolledTableList: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := 'aScrolledwidgetConsistencyList'.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := 'widgetConsistencyList'.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := [:recoveredBlock176Arg1 | 
    | recoveredBlock176Value0 recoveredBlock176Value1 recoveredBlock176Value2 recoveredBlock176Value3 recoveredBlock176Value4 recoveredBlock176Value5 recoveredBlock176Value6 recoveredBlock176Value7 recoveredBlock176Value8 recoveredBlock176Value9 recoveredBlock176Value10 recoveredBlock176Value11 recoveredBlock176Value12 recoveredBlock176Value13 recoveredBlock176Value14 |
    recoveredBlock176Value0 := recoveredBlock176Arg1.
    recoveredBlock176Value1 := recoveredBlock176Value0.
    recoveredBlock176Value2 := XmATTACHWIDGET.
    (recoveredBlock176Value1) topAttachment: (recoveredBlock176Value2).
    recoveredBlock176Value3 := recoveredBlock176Value0.
    recoveredBlock176Value4 := recoveredLocal5.
    (recoveredBlock176Value3) topWidget: (recoveredBlock176Value4).
    recoveredBlock176Value5 := recoveredBlock176Value0.
    (recoveredBlock176Value5) topOffset: (0).
    recoveredBlock176Value6 := recoveredBlock176Value0.
    recoveredBlock176Value7 := XmATTACHFORM.
    (recoveredBlock176Value6) bottomAttachment: (recoveredBlock176Value7).
    recoveredBlock176Value8 := recoveredBlock176Value0.
    (recoveredBlock176Value8) bottomOffset: (0).
    recoveredBlock176Value9 := recoveredBlock176Value0.
    recoveredBlock176Value10 := XmATTACHFORM.
    (recoveredBlock176Value9) leftAttachment: (recoveredBlock176Value10).
    recoveredBlock176Value11 := recoveredBlock176Value0.
    (recoveredBlock176Value11) leftOffset: (5).
    recoveredBlock176Value12 := recoveredBlock176Value0.
    recoveredBlock176Value13 := XmATTACHFORM.
    (recoveredBlock176Value12) rightAttachment: (recoveredBlock176Value13).
    recoveredBlock176Value14 := (recoveredBlock176Value0) rightOffset: (5).
    recoveredBlock176Value14
].
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := [:block28116680Arg1 | 
    | block28116680Value0 block28116680Value1 block28116680Value2 block28116680Value3 block28116680Value4 block28116680Value5 block28116680Value6 block28116680Value7 block28116680Value8 block28116680Value9 block28116680Value10 block28116680Value11 block28116680Value12 |
    block28116680Value0 := block28116680Arg1.
    block28116680Value1 := block28116680Value0.
    block28116680Value2 := XmATTACHFORM.
    (block28116680Value1) bottomAttachment: (block28116680Value2).
    block28116680Value3 := block28116680Value0.
    (block28116680Value3) bottomOffset: (0).
    block28116680Value4 := block28116680Value0.
    block28116680Value5 := XmATTACHFORM.
    (block28116680Value4) topAttachment: (block28116680Value5).
    block28116680Value6 := block28116680Value0.
    (block28116680Value6) topOffset: (0).
    block28116680Value7 := block28116680Value0.
    block28116680Value8 := XmATTACHFORM.
    (block28116680Value7) leftAttachment: (block28116680Value8).
    block28116680Value9 := block28116680Value0.
    (block28116680Value9) leftOffset: (5).
    block28116680Value10 := block28116680Value0.
    block28116680Value11 := XmATTACHFORM.
    (block28116680Value10) rightAttachment: (block28116680Value11).
    block28116680Value12 := (block28116680Value0) rightOffset: (5).
    block28116680Value12
].
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := XmNdefaultActionCallback.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack3 := 'defaultActionCallback:clientData:callData:'.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            (recoveredStack0) updateFonts.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

