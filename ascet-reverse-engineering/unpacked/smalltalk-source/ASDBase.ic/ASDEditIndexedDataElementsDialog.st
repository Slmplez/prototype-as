"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20021af4; bytecode file offset 0x92209c"
!ASDEditIndexedDataElementsDialog methodsFor: 'recovered'!
editorName
    ^'Edit indexed data elements'
! !

"ASDBase.ic method 0x200451bc; bytecode file offset 0x9451f8"
!ASDEditIndexedDataElementsDialog methodsFor: 'recovered'!
widgetTableList
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetTableList').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004852c; bytecode file offset 0x9451f8"
!ASDEditIndexedDataElementsDialog methodsFor: 'recovered'!
widgetDescription
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetDescription').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005abf0; bytecode file offset 0x957a6c"
!ASDEditIndexedDataElementsDialog methodsFor: 'recovered'!
widgetButtonOkActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) ok.
    ^self
! !

"ASDBase.ic method 0x2005b178; bytecode file offset 0x957a6c"
!ASDEditIndexedDataElementsDialog methodsFor: 'recovered'!
widgetButtonCancelActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) cancel.
    ^self
! !

"ASDBase.ic method 0x2006ffb0; bytecode file offset 0x96cb7c"
!ASDEditIndexedDataElementsDialog methodsFor: 'recovered'!
inputTable
    | recoveredValue0 |
    recoveredValue0 := inputTable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009aabc; bytecode file offset 0x997378"
!ASDEditIndexedDataElementsDialog methodsFor: 'recovered'!
topShellResize: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) widgetTableList.
    (self) updateColumnWidth: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a1680; bytecode file offset 0x99dfb8"
!ASDEditIndexedDataElementsDialog methodsFor: 'recovered'!
updateWindowLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) shell.
    recoveredValue1 := (self) editorName.
    (recoveredValue0) title: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b2614; bytecode file offset 0x9aeed0"
!ASDEditIndexedDataElementsDialog methodsFor: 'recovered'!
cancel
    (self) result: (nil).
    (self) close.
    ^self
! !

"ASDBase.ic method 0x200c66d8; bytecode file offset 0x9c3164"
!ASDEditIndexedDataElementsDialog methodsFor: 'recovered'!
inputTable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    inputTable := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c9d0c; bytecode file offset 0x9c65cc"
!ASDEditIndexedDataElementsDialog methodsFor: 'recovered'!
elementIndexValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) item.
    recoveredValue3 := (self) getValueForDataElement: (recoveredValue2).
    (recoveredValue0) value: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200c9e10; bytecode file offset 0x9c66d0"
!ASDEditIndexedDataElementsDialog methodsFor: 'recovered'!
endEditElementIndex: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) item.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (recoveredValue2) newValue.
    (self) setValueForDataElement: (recoveredValue1) value: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200dda74; bytecode file offset 0x9da338"
!ASDEditIndexedDataElementsDialog methodsFor: 'recovered'!
elementMaxIndicesValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) item.
    recoveredValue3 := (recoveredValue2) size.
    recoveredValue4 := (recoveredValue3) + (-1).
    recoveredValue5 := (recoveredValue4) printString.
    (recoveredValue0) value: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20110880; bytecode file offset 0xa0d13c"
!ASDEditIndexedDataElementsDialog methodsFor: 'recovered'!
setValueForDataElement: recoveredArg1 value: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
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
            recoveredStack0 := (recoveredStack0) inputTable.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2019e23c; bytecode file offset 0xa9ab88"
!ASDEditIndexedDataElementsDialog methodsFor: 'recovered'!
columns
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) elementNameColumn.
    (recoveredValue2) add: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) elementMaxIndicesColumn.
    (recoveredValue4) add: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) elementIndexColumn.
    (recoveredValue6) add: (recoveredValue7).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201a9110; bytecode file offset 0xaa59e8"
!ASDEditIndexedDataElementsDialog methodsFor: 'recovered'!
elementNameValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := RBRenderableBitmapString.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (recoveredValue2) item.
    recoveredValue4 := (recoveredValue3) name.
    recoveredValue5 := RBUserInterface.
    recoveredValue6 := (recoveredValue5) resourceManager.
    recoveredValue7 := recoveredArg3.
    recoveredValue8 := (recoveredValue7) item.
    recoveredValue9 := (recoveredValue8) iconString.
    recoveredValue10 := (recoveredValue6) returnIcon16WithName: (recoveredValue9).
    recoveredValue11 := (recoveredValue1) createOnString: (recoveredValue4) image: (recoveredValue10).
    (recoveredValue0) value: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x201e5df4; bytecode file offset 0xae26c4"
!ASDEditIndexedDataElementsDialog methodsFor: 'recovered'!
updateForDataElements: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    (self) inputTable: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 |
    recoveredBlock10Value0 := (self) inputTable.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    recoveredBlock10Value2 := recoveredBlock10Arg1.
    recoveredBlock10Value3 := (self) getValueForDataElement: (recoveredBlock10Value2).
    recoveredBlock10Value4 := (recoveredBlock10Value0) at: (recoveredBlock10Value1) put: (recoveredBlock10Value3).
    recoveredBlock10Value4
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201eb404; bytecode file offset 0xae7d00"
!ASDEditIndexedDataElementsDialog methodsFor: 'recovered'!
elementNameColumn
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) heading: ('Name').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) editable: (false).
    recoveredLocal1 := recoveredValue1.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := XmNcellValueCallback.
    (recoveredValue4) addCallback: (recoveredValue5) receiver: (self) selector: ('elementNameValue:clientData:callData:') clientData: (nil).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x201eb42c; bytecode file offset 0xae7d00"
!ASDEditIndexedDataElementsDialog methodsFor: 'recovered'!
elementMaxIndicesColumn
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) heading: ('Maximum indices').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) editable: (false).
    recoveredLocal1 := recoveredValue1.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := XmNcellValueCallback.
    (recoveredValue4) addCallback: (recoveredValue5) receiver: (self) selector: ('elementMaxIndicesValue:clientData:callData:') clientData: (nil).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2020a180; bytecode file offset 0xb06a84"
!ASDEditIndexedDataElementsDialog methodsFor: 'recovered'!
waitForClosingDialog
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := GlobalInfoController.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isOutputMediumUserWindow.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := Delay.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) forSeconds: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) wait.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ok.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            super waitForClosingDialog.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202484a8; bytecode file offset 0xb44d8c"
!ASDEditIndexedDataElementsDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) installActionKeys.
    (self) updateWindowLabel.
    (self) updateFonts.
    (self) iconSmall: ('EditorLayout') large: ('EditorLayout32').
    recoveredValue0 := (self) widgetDescription.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := XmALIGNMENTBEGINNING.
    (recoveredValue1) alignment: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := ('Please Enter Indices (Notice that indices start with 0) \      Example for one dimensional elements: 0, 1, 2-5\      Example for two dimensional elements: 0@1, 3-7@2, 4-9@2-11') withCrs.
    (recoveredValue3) labelString: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2025df94; bytecode file offset 0xb5a870"
!ASDEditIndexedDataElementsDialog methodsFor: 'recovered'!
beginEditElementIndex: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) item.
    recoveredValue2 := (self) getValueForDataElement: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := EwTextEditPolicy.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) on: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := (recoveredValue8) size.
    recoveredValue10 := (0) @ (recoveredValue9).
    (recoveredValue7) selection: (recoveredValue10).
    recoveredValue11 := recoveredLocal2.
    (recoveredValue6) value: (recoveredValue11).
    recoveredValue12 := recoveredArg3.
    recoveredValue13 := recoveredValue12.
    recoveredValue14 := recoveredLocal1.
    (recoveredValue13) editPolicy: (recoveredValue14).
    (recoveredValue12) doit: (true).
    ^self
! !

"ASDBase.ic method 0x2026dddc; bytecode file offset 0xb6a6ac"
!ASDEditIndexedDataElementsDialog methodsFor: 'recovered'!
getValueForDataElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) inputTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isRBDataMatrix.
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 22] ifFalse: [recoveredBlock8PC := 28].
        ].
        recoveredBlock8Step = 22 ifTrue: [
            recoveredBlock8Stack1 := '0@0'.
            recoveredBlock8PC := 24.
        ].
        recoveredBlock8Step = 24 ifTrue: [
            recoveredBlock8PC := 36.
        ].
        recoveredBlock8Step = 28 ifTrue: [
            recoveredBlock8Stack1 := 'Muzaffar'.
            recoveredBlock8PC := 30.
        ].
        recoveredBlock8Step = 30 ifTrue: [
            recoveredBlock8Stack2 := 'EHI_49509'.
            recoveredBlock8PC := 32.
        ].
        recoveredBlock8Step = 32 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) == (recoveredBlock8Stack2).
            recoveredBlock8PC := 33.
        ].
        recoveredBlock8Step = 33 ifTrue: [
            recoveredBlock8PC := 34.
        ].
        recoveredBlock8Step = 34 ifTrue: [
            recoveredBlock8Stack1 := '0'.
            recoveredBlock8PC := 36.
        ].
        recoveredBlock8Step = 36 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x202d17ec; bytecode file offset 0xbce0d0"
!ASDEditIndexedDataElementsDialog methodsFor: 'recovered'!
elementIndexColumn
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) heading: ('Edit indices').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) editable: (true).
    recoveredLocal1 := recoveredValue1.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := XmNcellValueCallback.
    (recoveredValue4) addCallback: (recoveredValue5) receiver: (self) selector: ('elementIndexValue:clientData:callData:') clientData: (nil).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := XmNbeginEditCallback.
    (recoveredValue7) addCallback: (recoveredValue8) receiver: (self) selector: ('beginEditElementIndex:clientData:callData:') clientData: (nil).
    recoveredValue9 := XmNendEditCallback.
    (recoveredValue6) addCallback: (recoveredValue9) receiver: (self) selector: ('endEditElementIndex:clientData:callData:') clientData: (nil).
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

"ASDBase.ic method 0x20318208; bytecode file offset 0xc14ae0"
!ASDEditIndexedDataElementsDialog methodsFor: 'recovered'!
processIndicesForAnArray: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ('Muzaffar') == ('EHI_49509').
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (recoveredValue1) new.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) zapBlanks.
    recoveredValue5 := (recoveredValue4) allSubStrings: ($,).
    recoveredValue6 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Local1 recoveredBlock26Stack0 recoveredBlock26Stack1 recoveredBlock26Stack2 recoveredBlock26PC recoveredBlock26Step recoveredBlock26Done recoveredBlock26Result |
    recoveredBlock26Stack0 := self.
    recoveredBlock26PC := 32.
    recoveredBlock26Done := false.
    [recoveredBlock26Done not] whileTrue: [
        recoveredBlock26Step := recoveredBlock26PC.
        recoveredBlock26Step = 32 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Arg1.
            recoveredBlock26PC := 33.
        ].
        recoveredBlock26Step = 33 ifTrue: [
            recoveredBlock26Stack0 := (recoveredBlock26Stack0) getIndicesForString: (recoveredBlock26Stack1).
            recoveredBlock26PC := 35.
        ].
        recoveredBlock26Step = 35 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Stack0.
            recoveredBlock26PC := 36.
        ].
        recoveredBlock26Step = 36 ifTrue: [
            recoveredBlock26Local1 := recoveredBlock26Stack1.
            recoveredBlock26PC := 37.
        ].
        recoveredBlock26Step = 37 ifTrue: [
            (recoveredBlock26Stack0 ~~ nil) ifTrue: [recoveredBlock26PC := 44] ifFalse: [recoveredBlock26PC := 40].
        ].
        recoveredBlock26Step = 40 ifTrue: [
            recoveredBlock26Stack0 := nil.
            recoveredBlock26PC := 41.
        ].
        recoveredBlock26Step = 41 ifTrue: [
            recoveredBlock26PC := 50.
        ].
        recoveredBlock26Step = 44 ifTrue: [
            recoveredBlock26Stack0 := recoveredLocal1.
            recoveredBlock26PC := 47.
        ].
        recoveredBlock26Step = 47 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Local1.
            recoveredBlock26PC := 48.
        ].
        recoveredBlock26Step = 48 ifTrue: [
            recoveredBlock26Stack0 := (recoveredBlock26Stack0) addAll: (recoveredBlock26Stack1).
            recoveredBlock26PC := 50.
        ].
        recoveredBlock26Step = 50 ifTrue: [
            recoveredBlock26Result := recoveredBlock26Stack0.
            recoveredBlock26Done := true.
        ].
    ].
    recoveredBlock26Result
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x2035a01c; bytecode file offset 0xc56914"
!ASDEditIndexedDataElementsDialog methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super initializeAfterOpen.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTableList.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) inputTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) keys.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:block280effa0Arg1 :block280effa0Arg2 | 
    | block280effa0Value0 block280effa0Value1 block280effa0Value2 block280effa0Value3 block280effa0Value4 |
    block280effa0Value0 := block280effa0Arg1.
    block280effa0Value1 := (block280effa0Value0) name.
    block280effa0Value2 := block280effa0Arg2.
    block280effa0Value3 := (block280effa0Value2) name.
    block280effa0Value4 := (block280effa0Value1) < (block280effa0Value3).
    block280effa0Value4
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock33Value0 recoveredBlock33Value1 |
    recoveredBlock33Value0 := (self) widgetTableList.
    recoveredBlock33Value1 := (self) updateColumnWidth: (recoveredBlock33Value0).
    recoveredBlock33Value1
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := 'Updating '.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) shell.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := (recoveredStack3) title.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := '...'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack4 := SCEtas.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) execWithProgressDialog: (recoveredStack1) message: (recoveredStack2) showProgress: (recoveredStack3) title: (recoveredStack4).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203cd3f8; bytecode file offset 0xcc9cfc"
!ASDEditIndexedDataElementsDialog methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := Dictionary.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := XKCancel.
    (recoveredValue5) at: (recoveredValue6) put: ('cancel').
    recoveredValue7 := recoveredValue4.
    recoveredValue8 := Character.
    recoveredValue9 := (recoveredValue8) value: (13).
    (recoveredValue7) at: (recoveredValue9) put: ('ok').
    recoveredValue10 := recoveredValue4.
    (recoveredValue10) at: ('Alt-o') put: ('ok').
    recoveredValue11 := recoveredValue4.
    (recoveredValue11) at: ('Alt-c') put: ('cancel').
    recoveredValue12 := recoveredValue4.
    (recoveredValue12) at: ('Alt-a') put: ('selectAll').
    recoveredValue13 := recoveredValue4.
    (recoveredValue13) at: ('Alt-d') put: ('deselectAll').
    recoveredValue14 := recoveredValue4.
    (recoveredValue14) at: ('Alt-r') put: ('revert').
    (recoveredValue4) at: ('Alt-f') put: ('default').
    recoveredValue15 := recoveredLocal2.
    recoveredValue16 := (self) shell.
    recoveredValue17 := recoveredLocal1.
    (recoveredValue15) at: (recoveredValue16) put: (recoveredValue17).
    recoveredValue18 := recoveredLocal2.
    (self) widgetKeyActions: (recoveredValue18).
    ^self
! !

"ASDBase.ic method 0x204054f0; bytecode file offset 0xd01df4"
!ASDEditIndexedDataElementsDialog methodsFor: 'recovered'!
updateColumnWidth: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredLocal1 := 0.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) columns.
    recoveredValue2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 recoveredBlock13Value5 recoveredBlock13Value6 recoveredBlock13Value7 recoveredBlock13Value8 recoveredBlock13Value9 |
    recoveredBlock13Value0 := recoveredLocal1.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := (recoveredBlock13Value1) verticalSeparatorThickness.
    recoveredBlock13Value3 := (recoveredBlock13Value0) + (recoveredBlock13Value2).
    recoveredBlock13Value4 := recoveredBlock13Arg1.
    recoveredBlock13Value5 := (recoveredBlock13Value4) widget.
    recoveredBlock13Value6 := (recoveredBlock13Value5) totalEmphasis.
    recoveredBlock13Value7 := (recoveredBlock13Value3) + (recoveredBlock13Value6).
    recoveredBlock13Value8 := (recoveredBlock13Value7) + (1).
    recoveredBlock13Value9 := recoveredBlock13Value8.
    recoveredLocal1 := recoveredBlock13Value9.
    recoveredBlock13Value8
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) width.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue4) - (recoveredValue5).
    recoveredLocal3 := recoveredValue6.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) columns.
    recoveredValue9 := (recoveredValue8) size.
    recoveredLocal2 := recoveredValue9.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := [
    | recoveredBlock62Value0 recoveredBlock62Value1 recoveredBlock62Value2 recoveredBlock62Value3 |
    recoveredBlock62Value0 := recoveredArg1.
    recoveredBlock62Value1 := (recoveredBlock62Value0) columns.
    recoveredBlock62Value2 := [:recoveredBlock62Block72Arg1 | 
    | recoveredBlock62Block72Value0 recoveredBlock62Block72Value1 recoveredBlock62Block72Value2 recoveredBlock62Block72Value3 recoveredBlock62Block72Value4 |
    recoveredBlock62Block72Value0 := recoveredBlock62Block72Arg1.
    recoveredBlock62Block72Value1 := recoveredLocal3.
    recoveredBlock62Block72Value2 := recoveredLocal2.
    recoveredBlock62Block72Value3 := (recoveredBlock62Block72Value1) // (recoveredBlock62Block72Value2).
    recoveredBlock62Block72Value4 := (recoveredBlock62Block72Value0) width: (recoveredBlock62Block72Value3).
    recoveredBlock62Block72Value4
].
    recoveredBlock62Value3 := (recoveredBlock62Value1) do: (recoveredBlock62Value2).
    recoveredBlock62Value3
].
    (recoveredValue10) deferRedraw: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x2050a65c; bytecode file offset 0xe06f48"
!ASDEditIndexedDataElementsDialog methodsFor: 'recovered'!
getIndicesForString: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := $-.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := $-.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubStrings: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNumericString.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNumericString.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtAsInteger.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := (recoveredStack2) abtAsInteger.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) min: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtAsInteger.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := (recoveredStack2) abtAsInteger.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := [:recoveredBlock108Arg1 | 
    | recoveredBlock108Value0 recoveredBlock108Value1 recoveredBlock108Value2 |
    recoveredBlock108Value0 := recoveredLocal4.
    recoveredBlock108Value1 := recoveredBlock108Arg1.
    recoveredBlock108Value2 := (recoveredBlock108Value0) add: (recoveredBlock108Value1).
    recoveredBlock108Value2
].
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredPC := 136.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredPC := 178.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNumericString.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := (recoveredStack2) abtAsInteger.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredPC := 178.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20562ef8; bytecode file offset 0xe5f7f4"
!ASDEditIndexedDataElementsDialog methodsFor: 'recovered'!
processIndicesForMatrix: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ('Muzaffar') == ('EHI_49509').
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (recoveredValue1) new.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) zapBlanks.
    recoveredValue5 := (recoveredValue4) allSubStrings: ($,).
    recoveredValue6 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Local1 recoveredBlock26Local2 recoveredBlock26Local3 recoveredBlock26Stack0 recoveredBlock26Stack1 recoveredBlock26Stack2 recoveredBlock26Stack3 recoveredBlock26Stack4 recoveredBlock26PC recoveredBlock26Step recoveredBlock26Done recoveredBlock26Result |
    recoveredBlock26Stack0 := self.
    recoveredBlock26PC := 32.
    recoveredBlock26Done := false.
    [recoveredBlock26Done not] whileTrue: [
        recoveredBlock26Step := recoveredBlock26PC.
        recoveredBlock26Step = 32 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Arg1.
            recoveredBlock26PC := 35.
        ].
        recoveredBlock26Step = 35 ifTrue: [
            recoveredBlock26Stack2 := $@.
            recoveredBlock26PC := 38.
        ].
        recoveredBlock26Step = 38 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) includes: (recoveredBlock26Stack2).
            recoveredBlock26PC := 40.
        ].
        recoveredBlock26Step = 40 ifTrue: [
            (recoveredBlock26Stack1) ifTrue: [recoveredBlock26PC := 44] ifFalse: [recoveredBlock26PC := 218].
        ].
        recoveredBlock26Step = 44 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Arg1.
            recoveredBlock26PC := 47.
        ].
        recoveredBlock26Step = 47 ifTrue: [
            recoveredBlock26Stack2 := $@.
            recoveredBlock26PC := 50.
        ].
        recoveredBlock26Step = 50 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) subStrings: (recoveredBlock26Stack2).
            recoveredBlock26PC := 52.
        ].
        recoveredBlock26Step = 52 ifTrue: [
            recoveredBlock26Local3 := recoveredBlock26Stack1.
            recoveredBlock26PC := 55.
        ].
        recoveredBlock26Step = 55 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Local3.
            recoveredBlock26PC := 58.
        ].
        recoveredBlock26Step = 58 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) size.
            recoveredBlock26PC := 60.
        ].
        recoveredBlock26Step = 60 ifTrue: [
            recoveredBlock26Stack2 := 2.
            recoveredBlock26PC := 62.
        ].
        recoveredBlock26Step = 62 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) = (recoveredBlock26Stack2).
            recoveredBlock26PC := 63.
        ].
        recoveredBlock26Step = 63 ifTrue: [
            (recoveredBlock26Stack1) ifTrue: [recoveredBlock26PC := 77] ifFalse: [recoveredBlock26PC := 66].
        ].
        recoveredBlock26Step = 66 ifTrue: [
            recoveredBlock26Stack1 := recoveredLocal1.
            recoveredBlock26PC := 69.
        ].
        recoveredBlock26Step = 69 ifTrue: [
            recoveredBlock26Stack2 := 'q'.
            recoveredBlock26PC := 71.
        ].
        recoveredBlock26Step = 71 ifTrue: [
            (recoveredBlock26Stack1) add: (recoveredBlock26Stack2).
            recoveredBlock26PC := 73.
        ].
        recoveredBlock26Step = 73 ifTrue: [
            recoveredBlock26Stack1 := recoveredLocal1.
            recoveredBlock26PC := 76.
        ].
        recoveredBlock26Step = 76 ifTrue: [
            ^recoveredBlock26Stack1
        ].
        recoveredBlock26Step = 77 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Local3.
            recoveredBlock26PC := 80.
        ].
        recoveredBlock26Step = 80 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) first.
            recoveredBlock26PC := 82.
        ].
        recoveredBlock26Step = 82 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) isNumericString.
            recoveredBlock26PC := 84.
        ].
        recoveredBlock26Step = 84 ifTrue: [
            (recoveredBlock26Stack1) ifTrue: [recoveredBlock26PC := 88] ifFalse: [recoveredBlock26PC := 122].
        ].
        recoveredBlock26Step = 88 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Local3.
            recoveredBlock26PC := 91.
        ].
        recoveredBlock26Step = 91 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) last.
            recoveredBlock26PC := 93.
        ].
        recoveredBlock26Step = 93 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) isNumericString.
            recoveredBlock26PC := 95.
        ].
        recoveredBlock26Step = 95 ifTrue: [
            (recoveredBlock26Stack1) ifTrue: [recoveredBlock26PC := 98] ifFalse: [recoveredBlock26PC := 122].
        ].
        recoveredBlock26Step = 98 ifTrue: [
            recoveredBlock26Stack1 := recoveredLocal1.
            recoveredBlock26PC := 101.
        ].
        recoveredBlock26Step = 101 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Local3.
            recoveredBlock26PC := 104.
        ].
        recoveredBlock26Step = 104 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) first.
            recoveredBlock26PC := 106.
        ].
        recoveredBlock26Step = 106 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) abtAsInteger.
            recoveredBlock26PC := 108.
        ].
        recoveredBlock26Step = 108 ifTrue: [
            recoveredBlock26Stack3 := recoveredBlock26Local3.
            recoveredBlock26PC := 111.
        ].
        recoveredBlock26Step = 111 ifTrue: [
            recoveredBlock26Stack3 := (recoveredBlock26Stack3) last.
            recoveredBlock26PC := 113.
        ].
        recoveredBlock26Step = 113 ifTrue: [
            recoveredBlock26Stack3 := (recoveredBlock26Stack3) abtAsInteger.
            recoveredBlock26PC := 115.
        ].
        recoveredBlock26Step = 115 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) @ (recoveredBlock26Stack3).
            recoveredBlock26PC := 117.
        ].
        recoveredBlock26Step = 117 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) add: (recoveredBlock26Stack2).
            recoveredBlock26PC := 119.
        ].
        recoveredBlock26Step = 119 ifTrue: [
            recoveredBlock26PC := 211.
        ].
        recoveredBlock26Step = 122 ifTrue: [
            recoveredBlock26Stack1 := self.
            recoveredBlock26PC := 123.
        ].
        recoveredBlock26Step = 123 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Local3.
            recoveredBlock26PC := 126.
        ].
        recoveredBlock26Step = 126 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) first.
            recoveredBlock26PC := 128.
        ].
        recoveredBlock26Step = 128 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) getIndicesForString: (recoveredBlock26Stack2).
            recoveredBlock26PC := 130.
        ].
        recoveredBlock26Step = 130 ifTrue: [
            recoveredBlock26Local1 := recoveredBlock26Stack1.
            recoveredBlock26PC := 133.
        ].
        recoveredBlock26Step = 133 ifTrue: [
            recoveredBlock26Stack1 := self.
            recoveredBlock26PC := 134.
        ].
        recoveredBlock26Step = 134 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Local3.
            recoveredBlock26PC := 137.
        ].
        recoveredBlock26Step = 137 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) last.
            recoveredBlock26PC := 139.
        ].
        recoveredBlock26Step = 139 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) getIndicesForString: (recoveredBlock26Stack2).
            recoveredBlock26PC := 141.
        ].
        recoveredBlock26Step = 141 ifTrue: [
            recoveredBlock26Local2 := recoveredBlock26Stack1.
            recoveredBlock26PC := 144.
        ].
        recoveredBlock26Step = 144 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Local1.
            recoveredBlock26PC := 147.
        ].
        recoveredBlock26Step = 147 ifTrue: [
            (recoveredBlock26Stack1 == nil) ifTrue: [recoveredBlock26PC := 156] ifFalse: [recoveredBlock26PC := 150].
        ].
        recoveredBlock26Step = 150 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Local2.
            recoveredBlock26PC := 153.
        ].
        recoveredBlock26Step = 153 ifTrue: [
            (recoveredBlock26Stack1 ~~ nil) ifTrue: [recoveredBlock26PC := 167] ifFalse: [recoveredBlock26PC := 156].
        ].
        recoveredBlock26Step = 156 ifTrue: [
            recoveredBlock26Stack1 := recoveredLocal1.
            recoveredBlock26PC := 159.
        ].
        recoveredBlock26Step = 159 ifTrue: [
            recoveredBlock26Stack2 := 'q'.
            recoveredBlock26PC := 161.
        ].
        recoveredBlock26Step = 161 ifTrue: [
            (recoveredBlock26Stack1) add: (recoveredBlock26Stack2).
            recoveredBlock26PC := 163.
        ].
        recoveredBlock26Step = 163 ifTrue: [
            recoveredBlock26Stack1 := recoveredLocal1.
            recoveredBlock26PC := 166.
        ].
        recoveredBlock26Step = 166 ifTrue: [
            ^recoveredBlock26Stack1
        ].
        recoveredBlock26Step = 167 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Local1.
            recoveredBlock26PC := 170.
        ].
        recoveredBlock26Step = 170 ifTrue: [
            recoveredBlock26Stack2 := [:recoveredBlock26Block170Arg1 | 
    | recoveredBlock26Block170Value0 recoveredBlock26Block170Value1 recoveredBlock26Block170Value2 |
    recoveredBlock26Block170Value0 := recoveredBlock26Local2.
    recoveredBlock26Block170Value1 := [:recoveredBlock26Block170Block179Arg1 | 
    | recoveredBlock26Block170Block179Value0 recoveredBlock26Block170Block179Value1 recoveredBlock26Block170Block179Value2 recoveredBlock26Block170Block179Value3 recoveredBlock26Block170Block179Value4 |
    recoveredBlock26Block170Block179Value0 := recoveredLocal1.
    recoveredBlock26Block170Block179Value1 := recoveredBlock26Block170Arg1.
    recoveredBlock26Block170Block179Value2 := recoveredBlock26Block170Block179Arg1.
    recoveredBlock26Block170Block179Value3 := (recoveredBlock26Block170Block179Value1) @ (recoveredBlock26Block170Block179Value2).
    recoveredBlock26Block170Block179Value4 := (recoveredBlock26Block170Block179Value0) add: (recoveredBlock26Block170Block179Value3).
    recoveredBlock26Block170Block179Value4
].
    recoveredBlock26Block170Value2 := (recoveredBlock26Block170Value0) do: (recoveredBlock26Block170Value1).
    recoveredBlock26Block170Value2
].
            recoveredBlock26PC := 201.
        ].
        recoveredBlock26Step = 201 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) do: (recoveredBlock26Stack2).
            recoveredBlock26PC := 203.
        ].
        recoveredBlock26Step = 203 ifTrue: [
            recoveredBlock26Stack2 := nil.
            recoveredBlock26PC := 204.
        ].
        recoveredBlock26Step = 204 ifTrue: [
            recoveredBlock26Stack3 := recoveredBlock26Stack2.
            recoveredBlock26PC := 205.
        ].
        recoveredBlock26Step = 205 ifTrue: [
            recoveredBlock26Local2 := recoveredBlock26Stack3.
            recoveredBlock26PC := 208.
        ].
        recoveredBlock26Step = 208 ifTrue: [
            recoveredBlock26Local1 := recoveredBlock26Stack2.
            recoveredBlock26PC := 211.
        ].
        recoveredBlock26Step = 211 ifTrue: [
            recoveredBlock26Stack2 := nil.
            recoveredBlock26PC := 212.
        ].
        recoveredBlock26Step = 212 ifTrue: [
            recoveredBlock26Local3 := recoveredBlock26Stack2.
            recoveredBlock26PC := 215.
        ].
        recoveredBlock26Step = 215 ifTrue: [
            recoveredBlock26PC := 229.
        ].
        recoveredBlock26Step = 218 ifTrue: [
            recoveredBlock26Stack1 := recoveredLocal1.
            recoveredBlock26PC := 221.
        ].
        recoveredBlock26Step = 221 ifTrue: [
            recoveredBlock26Stack2 := 'q'.
            recoveredBlock26PC := 223.
        ].
        recoveredBlock26Step = 223 ifTrue: [
            (recoveredBlock26Stack1) add: (recoveredBlock26Stack2).
            recoveredBlock26PC := 225.
        ].
        recoveredBlock26Step = 225 ifTrue: [
            recoveredBlock26Stack1 := recoveredLocal1.
            recoveredBlock26PC := 228.
        ].
        recoveredBlock26Step = 228 ifTrue: [
            ^recoveredBlock26Stack1
        ].
        recoveredBlock26Step = 229 ifTrue: [
            recoveredBlock26Result := recoveredBlock26Stack1.
            recoveredBlock26Done := true.
        ].
    ].
    recoveredBlock26Result
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x20574f84; bytecode file offset 0xe718dc"
!ASDEditIndexedDataElementsDialog methodsFor: 'recovered'!
ok
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) inputTable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) cancel.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) inputTable.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Local1 recoveredBlock27Local2 recoveredBlock27Local3 recoveredBlock27Stack0 recoveredBlock27Stack1 recoveredBlock27Stack2 recoveredBlock27Stack3 recoveredBlock27Stack4 recoveredBlock27Stack5 recoveredBlock27PC recoveredBlock27Step recoveredBlock27Done recoveredBlock27Result |
    recoveredBlock27Stack0 := self.
    recoveredBlock27PC := 34.
    recoveredBlock27Done := false.
    [recoveredBlock27Done not] whileTrue: [
        recoveredBlock27Step := recoveredBlock27PC.
        recoveredBlock27Step = 34 ifTrue: [
            recoveredBlock27Stack1 := nil.
            recoveredBlock27PC := 35.
        ].
        recoveredBlock27Step = 35 ifTrue: [
            recoveredBlock27Stack2 := self.
            recoveredBlock27PC := 36.
        ].
        recoveredBlock27Step = 36 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) inputTable.
            recoveredBlock27PC := 37.
        ].
        recoveredBlock27Step = 37 ifTrue: [
            recoveredBlock27Stack3 := recoveredBlock27Arg1.
            recoveredBlock27PC := 38.
        ].
        recoveredBlock27Step = 38 ifTrue: [
            recoveredBlock27Stack4 := [
    ''
].
            recoveredBlock27PC := 40.
        ].
        recoveredBlock27Step = 40 ifTrue: [
            recoveredBlock27PC := 47.
        ].
        recoveredBlock27Step = 47 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) at: (recoveredBlock27Stack3) ifAbsent: (recoveredBlock27Stack4).
            recoveredBlock27PC := 49.
        ].
        recoveredBlock27Step = 49 ifTrue: [
            recoveredBlock27Stack3 := recoveredBlock27Stack2.
            recoveredBlock27PC := 50.
        ].
        recoveredBlock27Step = 50 ifTrue: [
            recoveredBlock27Local3 := recoveredBlock27Stack3.
            recoveredBlock27PC := 51.
        ].
        recoveredBlock27Step = 51 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) isString.
            recoveredBlock27PC := 53.
        ].
        recoveredBlock27Step = 53 ifTrue: [
            (recoveredBlock27Stack2) ifTrue: [recoveredBlock27PC := 56] ifFalse: [recoveredBlock27PC := 164].
        ].
        recoveredBlock27Step = 56 ifTrue: [
            recoveredBlock27PC := 57.
        ].
        recoveredBlock27Step = 57 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Arg1.
            recoveredBlock27PC := 58.
        ].
        recoveredBlock27Step = 58 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) isRBDataMatrix.
            recoveredBlock27PC := 60.
        ].
        recoveredBlock27Step = 60 ifTrue: [
            (recoveredBlock27Stack1) ifTrue: [recoveredBlock27PC := 64] ifFalse: [recoveredBlock27PC := 112].
        ].
        recoveredBlock27Step = 64 ifTrue: [
            recoveredBlock27Stack1 := 'Muzaffar'.
            recoveredBlock27PC := 66.
        ].
        recoveredBlock27Step = 66 ifTrue: [
            recoveredBlock27Stack2 := 'EHI_49509'.
            recoveredBlock27PC := 68.
        ].
        recoveredBlock27Step = 68 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) == (recoveredBlock27Stack2).
            recoveredBlock27PC := 69.
        ].
        recoveredBlock27Step = 69 ifTrue: [
            recoveredBlock27PC := 70.
        ].
        recoveredBlock27Step = 70 ifTrue: [
            recoveredBlock27Stack1 := self.
            recoveredBlock27PC := 71.
        ].
        recoveredBlock27Step = 71 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Local3.
            recoveredBlock27PC := 72.
        ].
        recoveredBlock27Step = 72 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) processIndicesForMatrix: (recoveredBlock27Stack2).
            recoveredBlock27PC := 74.
        ].
        recoveredBlock27Step = 74 ifTrue: [
            recoveredBlock27Local1 := recoveredBlock27Stack1.
            recoveredBlock27PC := 75.
        ].
        recoveredBlock27Step = 75 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Local1.
            recoveredBlock27PC := 76.
        ].
        recoveredBlock27Step = 76 ifTrue: [
            recoveredBlock27Stack2 := [:block28112294Arg1 | 
    | block28112294Stack0 block28112294Stack1 block28112294Stack2 block28112294Stack3 block28112294PC block28112294Step block28112294Done block28112294Result |
    block28112294Stack0 := self.
    block28112294PC := 4.
    block28112294Done := false.
    [block28112294Done not] whileTrue: [
        block28112294Step := block28112294PC.
        block28112294Step = 4 ifTrue: [
            block28112294Stack1 := false.
            block28112294PC := 5.
        ].
        block28112294Step = 5 ifTrue: [
            block28112294Stack2 := block28112294Arg1.
            block28112294PC := 6.
        ].
        block28112294Step = 6 ifTrue: [
            block28112294Stack2 := (block28112294Stack2) isPoint.
            block28112294PC := 8.
        ].
        block28112294Step = 8 ifTrue: [
            (block28112294Stack2) ifTrue: [block28112294PC := 12] ifFalse: [block28112294PC := 28].
        ].
        block28112294Step = 12 ifTrue: [
            block28112294PC := 13.
        ].
        block28112294Step = 13 ifTrue: [
            block28112294Stack1 := false.
            block28112294PC := 14.
        ].
        block28112294Step = 14 ifTrue: [
            block28112294Stack2 := block28112294Arg1.
            block28112294PC := 15.
        ].
        block28112294Step = 15 ifTrue: [
            block28112294Stack2 := (block28112294Stack2) x.
            block28112294PC := 17.
        ].
        block28112294Step = 17 ifTrue: [
            block28112294Stack2 := (block28112294Stack2) isInteger.
            block28112294PC := 19.
        ].
        block28112294Step = 19 ifTrue: [
            (block28112294Stack2) ifTrue: [block28112294PC := 22] ifFalse: [block28112294PC := 28].
        ].
        block28112294Step = 22 ifTrue: [
            block28112294PC := 23.
        ].
        block28112294Step = 23 ifTrue: [
            block28112294Stack1 := block28112294Arg1.
            block28112294PC := 24.
        ].
        block28112294Step = 24 ifTrue: [
            block28112294Stack1 := (block28112294Stack1) y.
            block28112294PC := 26.
        ].
        block28112294Step = 26 ifTrue: [
            block28112294Stack1 := (block28112294Stack1) isInteger.
            block28112294PC := 28.
        ].
        block28112294Step = 28 ifTrue: [
            block28112294Result := block28112294Stack1.
            block28112294Done := true.
        ].
    ].
    block28112294Result
].
            recoveredBlock27PC := 78.
        ].
        recoveredBlock27Step = 78 ifTrue: [
            recoveredBlock27PC := 107.
        ].
        recoveredBlock27Step = 107 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) allSatisfy: (recoveredBlock27Stack2).
            recoveredBlock27PC := 109.
        ].
        recoveredBlock27Step = 109 ifTrue: [
            recoveredBlock27PC := 136.
        ].
        recoveredBlock27Step = 112 ifTrue: [
            recoveredBlock27Stack1 := 'Muzaffar'.
            recoveredBlock27PC := 114.
        ].
        recoveredBlock27Step = 114 ifTrue: [
            recoveredBlock27Stack2 := 'EHI_49509'.
            recoveredBlock27PC := 116.
        ].
        recoveredBlock27Step = 116 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) == (recoveredBlock27Stack2).
            recoveredBlock27PC := 117.
        ].
        recoveredBlock27Step = 117 ifTrue: [
            recoveredBlock27PC := 118.
        ].
        recoveredBlock27Step = 118 ifTrue: [
            recoveredBlock27Stack1 := self.
            recoveredBlock27PC := 119.
        ].
        recoveredBlock27Step = 119 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Local3.
            recoveredBlock27PC := 120.
        ].
        recoveredBlock27Step = 120 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) processIndicesForAnArray: (recoveredBlock27Stack2).
            recoveredBlock27PC := 122.
        ].
        recoveredBlock27Step = 122 ifTrue: [
            recoveredBlock27Local1 := recoveredBlock27Stack1.
            recoveredBlock27PC := 123.
        ].
        recoveredBlock27Step = 123 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Local1.
            recoveredBlock27PC := 124.
        ].
        recoveredBlock27Step = 124 ifTrue: [
            recoveredBlock27Stack2 := [:block281122b8Arg1 | 
    | block281122b8Value0 block281122b8Value1 |
    block281122b8Value0 := block281122b8Arg1.
    block281122b8Value1 := (block281122b8Value0) isInteger.
    block281122b8Value1
].
            recoveredBlock27PC := 126.
        ].
        recoveredBlock27Step = 126 ifTrue: [
            recoveredBlock27PC := 134.
        ].
        recoveredBlock27Step = 134 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) allSatisfy: (recoveredBlock27Stack2).
            recoveredBlock27PC := 136.
        ].
        recoveredBlock27Step = 136 ifTrue: [
            recoveredBlock27Local2 := recoveredBlock27Stack1.
            recoveredBlock27PC := 137.
        ].
        recoveredBlock27Step = 137 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Local2.
            recoveredBlock27PC := 138.
        ].
        recoveredBlock27Step = 138 ifTrue: [
            (recoveredBlock27Stack1) ifTrue: [recoveredBlock27PC := 142] ifFalse: [recoveredBlock27PC := 152].
        ].
        recoveredBlock27Step = 142 ifTrue: [
            recoveredBlock27Stack1 := recoveredLocal2.
            recoveredBlock27PC := 145.
        ].
        recoveredBlock27Step = 145 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Arg1.
            recoveredBlock27PC := 146.
        ].
        recoveredBlock27Step = 146 ifTrue: [
            recoveredBlock27Stack3 := recoveredBlock27Local1.
            recoveredBlock27PC := 147.
        ].
        recoveredBlock27Step = 147 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) at: (recoveredBlock27Stack2) put: (recoveredBlock27Stack3).
            recoveredBlock27PC := 149.
        ].
        recoveredBlock27Step = 149 ifTrue: [
            recoveredBlock27PC := 160.
        ].
        recoveredBlock27Step = 152 ifTrue: [
            recoveredBlock27Stack1 := recoveredLocal3.
            recoveredBlock27PC := 155.
        ].
        recoveredBlock27Step = 155 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Arg1.
            recoveredBlock27PC := 156.
        ].
        recoveredBlock27Step = 156 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) name.
            recoveredBlock27PC := 158.
        ].
        recoveredBlock27Step = 158 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) add: (recoveredBlock27Stack2).
            recoveredBlock27PC := 160.
        ].
        recoveredBlock27Step = 160 ifTrue: [
            recoveredBlock27Stack2 := nil.
            recoveredBlock27PC := 161.
        ].
        recoveredBlock27Step = 161 ifTrue: [
            recoveredBlock27Stack3 := recoveredBlock27Stack2.
            recoveredBlock27PC := 162.
        ].
        recoveredBlock27Step = 162 ifTrue: [
            recoveredBlock27Local2 := recoveredBlock27Stack3.
            recoveredBlock27PC := 163.
        ].
        recoveredBlock27Step = 163 ifTrue: [
            recoveredBlock27Local1 := recoveredBlock27Stack2.
            recoveredBlock27PC := 164.
        ].
        recoveredBlock27Step = 164 ifTrue: [
            recoveredBlock27Result := recoveredBlock27Stack1.
            recoveredBlock27Done := true.
        ].
    ].
    recoveredBlock27Result
].
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 176] ifFalse: [recoveredPC := 188].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack0) result: (recoveredStack1).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredPC := 248.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := ReadWriteStream.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := (recoveredStack0) on: (recoveredStack1).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := [:recoveredBlock200Arg1 | 
    | recoveredBlock200Value0 recoveredBlock200Value1 recoveredBlock200Value2 recoveredBlock200Value3 |
    recoveredBlock200Value0 := recoveredLocal1.
    recoveredBlock200Value1 := recoveredBlock200Value0.
    (recoveredBlock200Value1) cr.
    recoveredBlock200Value2 := recoveredBlock200Arg1.
    recoveredBlock200Value3 := (recoveredBlock200Value0) nextPutAll: (recoveredBlock200Value2).
    recoveredBlock200Value3
].
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := 'Wrong format for indices of this elements:'.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack2 := '\ Try Again!!'.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206486b0; bytecode file offset 0xf450bc"
!ASDEditIndexedDataElementsDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:block2812250cArg1 | 
    | block2812250cValue0 block2812250cValue1 block2812250cValue2 block2812250cValue3 block2812250cValue4 block2812250cValue5 block2812250cValue6 block2812250cValue7 block2812250cValue8 block2812250cValue9 block2812250cValue10 block2812250cValue11 block2812250cValue12 |
    block2812250cValue0 := block2812250cArg1.
    block2812250cValue1 := block2812250cValue0.
    (block2812250cValue1) allowShellResize: (true).
    block2812250cValue2 := block2812250cValue0.
    block2812250cValue3 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (block2812250cValue2) mwmInputMode: (block2812250cValue3).
    block2812250cValue4 := block2812250cValue0.
    (block2812250cValue4) title: ('Dialog').
    block2812250cValue5 := MWMDECORBORDER.
    block2812250cValue6 := MWMDECORRESIZEH.
    block2812250cValue7 := (block2812250cValue5) | (block2812250cValue6).
    block2812250cValue8 := MWMDECORTITLE.
    block2812250cValue9 := (block2812250cValue7) | (block2812250cValue8).
    block2812250cValue10 := MWMDECORMENU.
    block2812250cValue11 := (block2812250cValue9) | (block2812250cValue10).
    block2812250cValue12 := (block2812250cValue0) mwmDecorations: (block2812250cValue11).
    block2812250cValue12
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := [:block28122530Arg1 | 
    | block28122530Value0 block28122530Value1 block28122530Value2 |
    block28122530Value0 := block28122530Arg1.
    block28122530Value1 := block28122530Value0.
    (block28122530Value1) height: (300).
    block28122530Value2 := (block28122530Value0) width: (500).
    block28122530Value2
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := 'widgetButtonOk'.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack3 := [:block28122554Arg1 | 
    | block28122554Value0 block28122554Value1 block28122554Value2 block28122554Value3 block28122554Value4 |
    block28122554Value0 := block28122554Arg1.
    block28122554Value1 := block28122554Value0.
    (block28122554Value1) labelString: ('OK').
    block28122554Value2 := block28122554Value0.
    (block28122554Value2) mnemonic: ($O).
    block28122554Value3 := block28122554Value0.
    (block28122554Value3) height: (24).
    block28122554Value4 := (block28122554Value0) width: (90).
    block28122554Value4
].
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := 'widgetButtonOk'.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := 'widgetButtonCancel'.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack3 := [:block28122578Arg1 | 
    | block28122578Value0 block28122578Value1 block28122578Value2 block28122578Value3 block28122578Value4 |
    block28122578Value0 := block28122578Arg1.
    block28122578Value1 := block28122578Value0.
    (block28122578Value1) labelString: ('Cancel').
    block28122578Value2 := block28122578Value0.
    (block28122578Value2) mnemonic: ($C).
    block28122578Value3 := block28122578Value0.
    (block28122578Value3) height: (24).
    block28122578Value4 := (block28122578Value0) width: (90).
    block28122578Value4
].
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := 'widgetButtonCancel'.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack2 := 'widgetDescription'.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack3 := [:block2812259cArg1 | 
    | block2812259cValue0 |
    block2812259cValue0 := block2812259cArg1.
    block2812259cValue0
].
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack2 := 'widgetDescription'.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack2 := 'widgetTableList'.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack3 := [:recoveredBlock266Arg1 | 
    | recoveredBlock266Value0 recoveredBlock266Value1 recoveredBlock266Value2 recoveredBlock266Value3 recoveredBlock266Value4 recoveredBlock266Value5 recoveredBlock266Value6 recoveredBlock266Value7 recoveredBlock266Value8 recoveredBlock266Value9 recoveredBlock266Value10 |
    recoveredBlock266Value0 := recoveredBlock266Arg1.
    recoveredBlock266Value1 := recoveredBlock266Value0.
    (recoveredBlock266Value1) applicationDrawnBackground: (true).
    recoveredBlock266Value2 := recoveredBlock266Value0.
    recoveredBlock266Value3 := XmETCHCELLS.
    (recoveredBlock266Value2) headingVisualStyle: (recoveredBlock266Value3).
    recoveredBlock266Value4 := recoveredBlock266Value0.
    (recoveredBlock266Value4) editable: (true).
    recoveredBlock266Value5 := recoveredBlock266Value0.
    recoveredBlock266Value6 := XmCELLSINGLESELECT.
    (recoveredBlock266Value5) selectionPolicy: (recoveredBlock266Value6).
    recoveredBlock266Value7 := recoveredBlock266Value0.
    (recoveredBlock266Value7) editable: (true).
    recoveredBlock266Value8 := recoveredBlock266Value0.
    recoveredBlock266Value9 := (self) columns.
    (recoveredBlock266Value8) columns: (recoveredBlock266Value9).
    recoveredBlock266Value10 := (recoveredBlock266Value0) items: (#()).
    recoveredBlock266Value10
].
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledTableList: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack2 := 'widgetTableList'.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack2 := 'scrolledWidgetTableList'.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack2 := [:recoveredBlock346Arg1 | 
    | recoveredBlock346Value0 recoveredBlock346Value1 recoveredBlock346Value2 |
    recoveredBlock346Value0 := recoveredBlock346Arg1.
    recoveredBlock346Value1 := recoveredLocal5.
    recoveredBlock346Value2 := (recoveredBlock346Value0) workWindow: (recoveredBlock346Value1).
    recoveredBlock346Value2
].
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack2 := [:block281225c0Arg1 | 
    | block281225c0Value0 block281225c0Value1 block281225c0Value2 block281225c0Value3 block281225c0Value4 block281225c0Value5 block281225c0Value6 block281225c0Value7 block281225c0Value8 block281225c0Value9 |
    block281225c0Value0 := block281225c0Arg1.
    block281225c0Value1 := block281225c0Value0.
    block281225c0Value2 := XmATTACHFORM.
    (block281225c0Value1) topAttachment: (block281225c0Value2).
    block281225c0Value3 := block281225c0Value0.
    (block281225c0Value3) topOffset: (2).
    block281225c0Value4 := block281225c0Value0.
    block281225c0Value5 := XmATTACHFORM.
    (block281225c0Value4) rightAttachment: (block281225c0Value5).
    block281225c0Value6 := block281225c0Value0.
    (block281225c0Value6) rightOffset: (2).
    block281225c0Value7 := block281225c0Value0.
    block281225c0Value8 := XmATTACHFORM.
    (block281225c0Value7) leftAttachment: (block281225c0Value8).
    block281225c0Value9 := (block281225c0Value0) leftOffset: (2).
    block281225c0Value9
].
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack2 := [:recoveredBlock432Arg1 | 
    | recoveredBlock432Value0 recoveredBlock432Value1 recoveredBlock432Value2 recoveredBlock432Value3 recoveredBlock432Value4 recoveredBlock432Value5 recoveredBlock432Value6 recoveredBlock432Value7 recoveredBlock432Value8 recoveredBlock432Value9 recoveredBlock432Value10 recoveredBlock432Value11 recoveredBlock432Value12 recoveredBlock432Value13 recoveredBlock432Value14 recoveredBlock432Value15 recoveredBlock432Value16 |
    recoveredBlock432Value0 := recoveredBlock432Arg1.
    recoveredBlock432Value1 := recoveredBlock432Value0.
    recoveredBlock432Value2 := XmATTACHWIDGET.
    (recoveredBlock432Value1) topAttachment: (recoveredBlock432Value2).
    recoveredBlock432Value3 := recoveredBlock432Value0.
    recoveredBlock432Value4 := recoveredLocal9.
    (recoveredBlock432Value3) topWidget: (recoveredBlock432Value4).
    recoveredBlock432Value5 := recoveredBlock432Value0.
    (recoveredBlock432Value5) topOffset: (5).
    recoveredBlock432Value6 := recoveredBlock432Value0.
    recoveredBlock432Value7 := XmATTACHFORM.
    (recoveredBlock432Value6) rightAttachment: (recoveredBlock432Value7).
    recoveredBlock432Value8 := recoveredBlock432Value0.
    (recoveredBlock432Value8) rightOffset: (2).
    recoveredBlock432Value9 := recoveredBlock432Value0.
    recoveredBlock432Value10 := XmATTACHFORM.
    (recoveredBlock432Value9) leftAttachment: (recoveredBlock432Value10).
    recoveredBlock432Value11 := recoveredBlock432Value0.
    (recoveredBlock432Value11) leftOffset: (2).
    recoveredBlock432Value12 := recoveredBlock432Value0.
    recoveredBlock432Value13 := XmATTACHWIDGET.
    (recoveredBlock432Value12) bottomAttachment: (recoveredBlock432Value13).
    recoveredBlock432Value14 := recoveredBlock432Value0.
    recoveredBlock432Value15 := recoveredLocal4.
    (recoveredBlock432Value14) bottomWidget: (recoveredBlock432Value15).
    recoveredBlock432Value16 := (recoveredBlock432Value0) bottomOffset: (2).
    recoveredBlock432Value16
].
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack2 := [:block281225e4Arg1 | 
    | block281225e4Value0 block281225e4Value1 block281225e4Value2 block281225e4Value3 block281225e4Value4 block281225e4Value5 block281225e4Value6 block281225e4Value7 block281225e4Value8 block281225e4Value9 block281225e4Value10 |
    block281225e4Value0 := block281225e4Arg1.
    block281225e4Value1 := block281225e4Value0.
    block281225e4Value2 := XmATTACHNONE.
    (block281225e4Value1) leftAttachment: (block281225e4Value2).
    block281225e4Value3 := block281225e4Value0.
    block281225e4Value4 := XmATTACHNONE.
    (block281225e4Value3) topAttachment: (block281225e4Value4).
    block281225e4Value5 := block281225e4Value0.
    block281225e4Value6 := XmATTACHFORM.
    (block281225e4Value5) rightAttachment: (block281225e4Value6).
    block281225e4Value7 := block281225e4Value0.
    (block281225e4Value7) rightOffset: (2).
    block281225e4Value8 := block281225e4Value0.
    block281225e4Value9 := XmATTACHFORM.
    (block281225e4Value8) bottomAttachment: (block281225e4Value9).
    block281225e4Value10 := (block281225e4Value0) bottomOffset: (2).
    block281225e4Value10
].
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            recoveredStack2 := [:recoveredBlock586Arg1 | 
    | recoveredBlock586Value0 recoveredBlock586Value1 recoveredBlock586Value2 recoveredBlock586Value3 recoveredBlock586Value4 recoveredBlock586Value5 recoveredBlock586Value6 recoveredBlock586Value7 recoveredBlock586Value8 recoveredBlock586Value9 recoveredBlock586Value10 recoveredBlock586Value11 recoveredBlock586Value12 recoveredBlock586Value13 |
    recoveredBlock586Value0 := recoveredBlock586Arg1.
    recoveredBlock586Value1 := recoveredBlock586Value0.
    recoveredBlock586Value2 := XmATTACHNONE.
    (recoveredBlock586Value1) leftAttachment: (recoveredBlock586Value2).
    recoveredBlock586Value3 := recoveredBlock586Value0.
    recoveredBlock586Value4 := XmATTACHNONE.
    (recoveredBlock586Value3) topAttachment: (recoveredBlock586Value4).
    recoveredBlock586Value5 := recoveredBlock586Value0.
    recoveredBlock586Value6 := XmATTACHWIDGET.
    (recoveredBlock586Value5) rightAttachment: (recoveredBlock586Value6).
    recoveredBlock586Value7 := recoveredBlock586Value0.
    recoveredBlock586Value8 := recoveredLocal3.
    (recoveredBlock586Value7) rightWidget: (recoveredBlock586Value8).
    recoveredBlock586Value9 := recoveredBlock586Value0.
    (recoveredBlock586Value9) rightOffset: (5).
    recoveredBlock586Value10 := recoveredBlock586Value0.
    recoveredBlock586Value11 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock586Value10) bottomAttachment: (recoveredBlock586Value11).
    recoveredBlock586Value12 := recoveredLocal3.
    recoveredBlock586Value13 := (recoveredBlock586Value0) bottomWidget: (recoveredBlock586Value12).
    recoveredBlock586Value13
].
            recoveredPC := 650.
        ].
        recoveredStep = 650 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 655.
        ].
        recoveredStep = 655 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 658.
        ].
        recoveredStep = 658 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 662.
        ].
        recoveredStep = 662 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 663.
        ].
        recoveredStep = 663 ifTrue: [
            recoveredStack4 := 'widgetButtonOkActivate:clientData:callData:'.
            recoveredPC := 666.
        ].
        recoveredStep = 666 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 667.
        ].
        recoveredStep = 667 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 671.
        ].
        recoveredStep = 671 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 674.
        ].
        recoveredStep = 674 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 678.
        ].
        recoveredStep = 678 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 679.
        ].
        recoveredStep = 679 ifTrue: [
            recoveredStack4 := 'widgetButtonCancelActivate:clientData:callData:'.
            recoveredPC := 682.
        ].
        recoveredStep = 682 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 687.
        ].
        recoveredStep = 687 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 690.
        ].
        recoveredStep = 690 ifTrue: [
            recoveredStack2 := XmNresizeCallback.
            recoveredPC := 694.
        ].
        recoveredStep = 694 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 695.
        ].
        recoveredStep = 695 ifTrue: [
            recoveredStack4 := 'topShellResize:clientData:callData:'.
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 699.
        ].
        recoveredStep = 699 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 703.
        ].
        recoveredStep = 703 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 706.
        ].
        recoveredStep = 706 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 711.
        ].
        recoveredStep = 711 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 714.
        ].
        recoveredStep = 714 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 719.
        ].
        recoveredStep = 719 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 722.
        ].
        recoveredStep = 722 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 727.
        ].
        recoveredStep = 727 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 730.
        ].
        recoveredStep = 730 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 733.
        ].
        recoveredStep = 733 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 736.
        ].
        recoveredStep = 736 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 741.
        ].
        recoveredStep = 741 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

