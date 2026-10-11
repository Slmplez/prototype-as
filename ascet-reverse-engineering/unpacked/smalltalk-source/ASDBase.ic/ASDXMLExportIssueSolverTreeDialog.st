"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200158e4; bytecode file offset 0x92209c"
!ASDXMLExportIssueSolverTreeDialog methodsFor: 'recovered'!
dialogTitle
    ^'Export Problems'
! !

"ASDBase.ic method 0x200853a4; bytecode file offset 0x981ca4"
!ASDXMLExportIssueSolverTreeDialog methodsFor: 'recovered'!
exportIssues: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) issuesTree: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2009aae8; bytecode file offset 0x9973a4"
!ASDXMLExportIssueSolverTreeDialog methodsFor: 'recovered'!
messageCellValueCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := recoveredArg3.
    (recoveredValue0) value: ('').
    ^self
! !

"ASDBase.ic method 0x20147710; bytecode file offset 0xa43fd4"
!ASDXMLExportIssueSolverTreeDialog methodsFor: 'recovered'!
initOn: recoveredArg1 issues: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    controller := recoveredValue0.
    recoveredValue1 := controller.
    recoveredValue2 := (recoveredValue1) mainController.
    recoveredValue3 := (recoveredValue2) userInterface.
    (self) parentWindow: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    (self) exportIssues: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201640ec; bytecode file offset 0xa609b4"
!ASDXMLExportIssueSolverTreeDialog methodsFor: 'recovered'!
importIssueColumns: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) createTableColumnFile: (recoveredValue3).
    (recoveredValue2) add: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (self) createTableColumnAutofix: (recoveredValue6).
    (recoveredValue5) add: (recoveredValue7).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2023582c; bytecode file offset 0xb32104"
!ASDXMLExportIssueSolverTreeDialog methodsFor: 'recovered'!
issueListDefaultAction: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) itemPosition.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) expandCollapsePos: (recoveredStack2) notify: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) navigationManager.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) ascetLink.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) openAsdLink: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20320f10; bytecode file offset 0xc1d7f0"
!ASDXMLExportIssueSolverTreeDialog methodsFor: 'recovered'!
adjustToMinSize
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) minSize.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetColumnAutofix.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 100.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) width.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) width: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) height.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20365a38; bytecode file offset 0xc62310"
!ASDXMLExportIssueSolverTreeDialog methodsFor: 'recovered'!
autofixCellValueCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) isAutofixable.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) isBoolean.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) description.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2036937c; bytecode file offset 0xc65c50"
!ASDXMLExportIssueSolverTreeDialog methodsFor: 'recovered'!
isIssueVisible: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetWarningCheckBox.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetInformationCheckBox.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInformation.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetWarningCheckBox.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWarning.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetErrorCheckBox.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203aac78; bytecode file offset 0xca7558"
!ASDXMLExportIssueSolverTreeDialog methodsFor: 'recovered'!
resizeColumns
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) widgetScrolledIssueList.
    recoveredValue1 := (recoveredValue0) horizontalScrollBar.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) isManaged.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            (recoveredBlock6Stack1) ifTrue: [recoveredBlock6PC := 18] ifFalse: [recoveredBlock6PC := 30].
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) height.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6Stack2 := 8.
            recoveredBlock6PC := 22.
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) + (recoveredBlock6Stack2).
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Stack1.
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredLocal1 := recoveredBlock6Stack2.
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6PC := 36.
        ].
        recoveredBlock6Step = 30 ifTrue: [
            recoveredBlock6Stack1 := 0.
            recoveredBlock6PC := 32.
        ].
        recoveredBlock6Step = 32 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Stack1.
            recoveredBlock6PC := 33.
        ].
        recoveredBlock6Step = 33 ifTrue: [
            recoveredLocal1 := recoveredBlock6Stack2.
            recoveredBlock6PC := 36.
        ].
        recoveredBlock6Step = 36 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    recoveredValue3 := (self) widgetScrolledIssueList.
    recoveredValue4 := [
    | recoveredBlock41Value0 recoveredBlock41Value1 recoveredBlock41Value2 recoveredBlock41Value3 recoveredBlock41Value4 recoveredBlock41Value5 recoveredBlock41Value6 recoveredBlock41Value7 recoveredBlock41Value8 recoveredBlock41Value9 recoveredBlock41Value10 |
    recoveredBlock41Value0 := (self) widgetColumnFileName.
    recoveredBlock41Value1 := (self) widgetScrolledIssueList.
    recoveredBlock41Value2 := (recoveredBlock41Value1) width.
    recoveredBlock41Value3 := (self) widgetColumnAutofix.
    recoveredBlock41Value4 := (recoveredBlock41Value3) width.
    recoveredBlock41Value5 := (recoveredBlock41Value2) - (recoveredBlock41Value4).
    recoveredBlock41Value6 := (recoveredBlock41Value5) - (20).
    recoveredBlock41Value7 := recoveredLocal1.
    recoveredBlock41Value8 := (recoveredBlock41Value6) - (recoveredBlock41Value7).
    recoveredBlock41Value9 := (recoveredBlock41Value8) max: (10).
    recoveredBlock41Value10 := (recoveredBlock41Value0) width: (recoveredBlock41Value9).
    recoveredBlock41Value10
].
    (recoveredValue3) deferRedraw: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x204a8510; bytecode file offset 0xda4e14"
!ASDXMLExportIssueSolverTreeDialog methodsFor: 'recovered'!
initializeFilterButtons
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) issues.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block28104f80Arg1 | 
    | block28104f80Value0 block28104f80Value1 |
    block28104f80Value0 := block28104f80Arg1.
    block28104f80Value1 := (block28104f80Value0) isError.
    block28104f80Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) issues.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := [:block28104fa4Arg1 | 
    | block28104fa4Value0 block28104fa4Value1 |
    block28104fa4Value0 := block28104fa4Arg1.
    block28104fa4Value1 := (block28104fa4Value0) isWarning.
    block28104fa4Value1
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) issues.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := [:block28104fc8Arg1 | 
    | block28104fc8Value0 block28104fc8Value1 |
    block28104fc8Value0 := block28104fc8Arg1.
    block28104fc8Value1 := (block28104fc8Value0) isInformation.
    block28104fc8Value1
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetErrorCheckBox.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := 'Errors (%1)'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetWarningCheckBox.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := 'Warnings (%1)'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetInformationCheckBox.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := 'Information (%1)'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetErrorCheckBox.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetWarningCheckBox.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetInformationCheckBox.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2050fb84; bytecode file offset 0xe0c47c"
!ASDXMLExportIssueSolverTreeDialog methodsFor: 'recovered'!
issuesTree: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := issuesTree.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            issuesTree := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Local1 recoveredBlock24Local2 recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24Stack4 recoveredBlock24Stack5 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
    recoveredBlock24Stack0 := self.
    recoveredBlock24PC := 30.
    recoveredBlock24Done := false.
    [recoveredBlock24Done not] whileTrue: [
        recoveredBlock24Step := recoveredBlock24PC.
        recoveredBlock24Step = 30 ifTrue: [
            recoveredBlock24Stack1 := Array.
            recoveredBlock24PC := 32.
        ].
        recoveredBlock24Step = 32 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 35.
        ].
        recoveredBlock24Step = 35 ifTrue: [
            recoveredBlock24Stack3 := true.
            recoveredBlock24PC := 36.
        ].
        recoveredBlock24Step = 36 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) with: (recoveredBlock24Stack2) with: (recoveredBlock24Stack3).
            recoveredBlock24PC := 38.
        ].
        recoveredBlock24Step = 38 ifTrue: [
            recoveredBlock24Local1 := recoveredBlock24Stack1.
            recoveredBlock24PC := 41.
        ].
        recoveredBlock24Step = 41 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 44.
        ].
        recoveredBlock24Step = 44 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) isAutofixable.
            recoveredBlock24PC := 46.
        ].
        recoveredBlock24Step = 46 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 61] ifFalse: [recoveredBlock24PC := 50].
        ].
        recoveredBlock24Step = 50 ifTrue: [
            recoveredBlock24Stack1 := Array.
            recoveredBlock24PC := 52.
        ].
        recoveredBlock24Step = 52 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 55.
        ].
        recoveredBlock24Step = 55 ifTrue: [
            recoveredBlock24Stack3 := nil.
            recoveredBlock24PC := 56.
        ].
        recoveredBlock24Step = 56 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) with: (recoveredBlock24Stack2) with: (recoveredBlock24Stack3).
            recoveredBlock24PC := 58.
        ].
        recoveredBlock24Step = 58 ifTrue: [
            recoveredBlock24Local1 := recoveredBlock24Stack1.
            recoveredBlock24PC := 61.
        ].
        recoveredBlock24Step = 61 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 64.
        ].
        recoveredBlock24Step = 64 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) item.
            recoveredBlock24PC := 66.
        ].
        recoveredBlock24Step = 66 ifTrue: [
            (recoveredBlock24Stack1 ~~ nil) ifTrue: [recoveredBlock24PC := 78] ifFalse: [recoveredBlock24PC := 70].
        ].
        recoveredBlock24Step = 70 ifTrue: [
            recoveredBlock24Stack1 := 'unknown component'.
            recoveredBlock24PC := 72.
        ].
        recoveredBlock24Step = 72 ifTrue: [
            recoveredBlock24Local2 := recoveredBlock24Stack1.
            recoveredBlock24PC := 75.
        ].
        recoveredBlock24Step = 75 ifTrue: [
            recoveredBlock24PC := 88.
        ].
        recoveredBlock24Step = 78 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 81.
        ].
        recoveredBlock24Step = 81 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) item.
            recoveredBlock24PC := 83.
        ].
        recoveredBlock24Step = 83 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) pathName.
            recoveredBlock24PC := 85.
        ].
        recoveredBlock24Step = 85 ifTrue: [
            recoveredBlock24Local2 := recoveredBlock24Stack1.
            recoveredBlock24PC := 88.
        ].
        recoveredBlock24Step = 88 ifTrue: [
            recoveredBlock24Stack1 := issuesTree.
            recoveredBlock24PC := 90.
        ].
        recoveredBlock24Step = 90 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Local2.
            recoveredBlock24PC := 93.
        ].
        recoveredBlock24Step = 93 ifTrue: [
            recoveredBlock24Stack3 := [
    | block2810b280Value0 block2810b280Value1 |
    block2810b280Value0 := OrderedCollection.
    block2810b280Value1 := (block2810b280Value0) new.
    block2810b280Value1
].
            recoveredBlock24PC := 95.
        ].
        recoveredBlock24Step = 95 ifTrue: [
            recoveredBlock24PC := 102.
        ].
        recoveredBlock24Step = 102 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) at: (recoveredBlock24Stack2) ifAbsent: (recoveredBlock24Stack3).
            recoveredBlock24PC := 104.
        ].
        recoveredBlock24Step = 104 ifTrue: [
            recoveredBlock24Stack2 := [:recoveredBlock24Block104Arg1 | 
    | recoveredBlock24Block104Stack0 recoveredBlock24Block104Stack1 recoveredBlock24Block104Stack2 recoveredBlock24Block104Stack3 recoveredBlock24Block104Stack4 recoveredBlock24Block104PC recoveredBlock24Block104Step recoveredBlock24Block104Done recoveredBlock24Block104Result |
    recoveredBlock24Block104Stack0 := nil.
    recoveredBlock24Block104PC := 110.
    recoveredBlock24Block104Done := false.
    [recoveredBlock24Block104Done not] whileTrue: [
        recoveredBlock24Block104Step := recoveredBlock24Block104PC.
        recoveredBlock24Block104Step = 110 ifTrue: [
            recoveredBlock24Block104Stack1 := nil.
            recoveredBlock24Block104PC := 111.
        ].
        recoveredBlock24Block104Step = 111 ifTrue: [
            recoveredBlock24Block104Stack2 := recoveredBlock24Block104Arg1.
            recoveredBlock24Block104PC := 112.
        ].
        recoveredBlock24Block104Step = 112 ifTrue: [
            recoveredBlock24Block104Stack3 := 1.
            recoveredBlock24Block104PC := 114.
        ].
        recoveredBlock24Block104Step = 114 ifTrue: [
            recoveredBlock24Block104Stack2 := (recoveredBlock24Block104Stack2) at: (recoveredBlock24Block104Stack3).
            recoveredBlock24Block104PC := 116.
        ].
        recoveredBlock24Block104Step = 116 ifTrue: [
            recoveredBlock24Block104Stack3 := recoveredBlock24Arg1.
            recoveredBlock24Block104PC := 119.
        ].
        recoveredBlock24Block104Step = 119 ifTrue: [
            (recoveredBlock24Block104Stack2 ~~ recoveredBlock24Block104Stack3) ifTrue: [recoveredBlock24Block104PC := 128] ifFalse: [recoveredBlock24Block104PC := 122].
        ].
        recoveredBlock24Block104Step = 122 ifTrue: [
            recoveredBlock24Block104PC := 123.
        ].
        recoveredBlock24Block104Step = 123 ifTrue: [
            recoveredBlock24Block104Stack1 := recoveredBlock24Block104Arg1.
            recoveredBlock24Block104PC := 124.
        ].
        recoveredBlock24Block104Step = 124 ifTrue: [
            recoveredBlock24Block104Stack2 := recoveredBlock24Block104Stack1.
            recoveredBlock24Block104PC := 125.
        ].
        recoveredBlock24Block104Step = 125 ifTrue: [
            recoveredBlock24Local1 := recoveredBlock24Block104Stack2.
            recoveredBlock24Block104PC := 128.
        ].
        recoveredBlock24Block104Step = 128 ifTrue: [
            recoveredBlock24Block104Result := recoveredBlock24Block104Stack1.
            recoveredBlock24Block104Done := true.
        ].
    ].
    recoveredBlock24Block104Result
].
            recoveredBlock24PC := 129.
        ].
        recoveredBlock24Step = 129 ifTrue: [
            (recoveredBlock24Stack1) do: (recoveredBlock24Stack2).
            recoveredBlock24PC := 131.
        ].
        recoveredBlock24Step = 131 ifTrue: [
            recoveredBlock24Stack1 := recoveredLocal1.
            recoveredBlock24PC := 134.
        ].
        recoveredBlock24Step = 134 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Local2.
            recoveredBlock24PC := 137.
        ].
        recoveredBlock24Step = 137 ifTrue: [
            recoveredBlock24Stack3 := [
    | recoveredBlock24Block137Value0 recoveredBlock24Block137Value1 recoveredBlock24Block137Value2 recoveredBlock24Block137Value3 recoveredBlock24Block137Value4 recoveredBlock24Block137Value5 |
    recoveredBlock24Block137Value0 := recoveredLocal1.
    recoveredBlock24Block137Value1 := recoveredBlock24Local2.
    recoveredBlock24Block137Value2 := OrderedCollection.
    recoveredBlock24Block137Value3 := recoveredBlock24Local1.
    recoveredBlock24Block137Value4 := (recoveredBlock24Block137Value2) with: (recoveredBlock24Block137Value3).
    recoveredBlock24Block137Value5 := (recoveredBlock24Block137Value0) at: (recoveredBlock24Block137Value1) put: (recoveredBlock24Block137Value4).
    recoveredBlock24Block137Value5
].
            recoveredBlock24PC := 160.
        ].
        recoveredBlock24Step = 160 ifTrue: [
            recoveredBlock24Stack4 := [:recoveredBlock24Block160Arg1 | 
    | recoveredBlock24Block160Value0 recoveredBlock24Block160Value1 recoveredBlock24Block160Value2 |
    recoveredBlock24Block160Value0 := recoveredBlock24Block160Arg1.
    recoveredBlock24Block160Value1 := recoveredBlock24Local1.
    recoveredBlock24Block160Value2 := (recoveredBlock24Block160Value0) add: (recoveredBlock24Block160Value1).
    recoveredBlock24Block160Value2
].
            recoveredBlock24PC := 173.
        ].
        recoveredBlock24Step = 173 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) at: (recoveredBlock24Stack2) ifAbsent: (recoveredBlock24Stack3) ifPresent: (recoveredBlock24Stack4).
            recoveredBlock24PC := 176.
        ].
        recoveredBlock24Step = 176 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack1.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            issuesTree := recoveredStack1.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20575730; bytecode file offset 0xe72078"
!ASDXMLExportIssueSolverTreeDialog methodsFor: 'recovered'!
fileNameCellValueCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'GeneralInformation'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := CgRGBColor.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := OS.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := ColorWindowtext.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) getSysColor: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromOSRGB: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) issuesTree.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := [
    #()
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := [:block28112324Arg1 | 
    | block28112324Value0 block28112324Value1 block28112324Value2 |
    block28112324Value0 := block28112324Arg1.
    block28112324Value1 := (block28112324Value0) at: (1).
    block28112324Value2 := (block28112324Value1) isInformation.
    block28112324Value2
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := 'GeneralInformation'.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := [:block28112348Arg1 | 
    | block28112348Value0 block28112348Value1 block28112348Value2 |
    block28112348Value0 := block28112348Arg1.
    block28112348Value1 := (block28112348Value0) at: (1).
    block28112348Value2 := (block28112348Value1) isWarning.
    block28112348Value2
].
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 93].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := 'GeneralWarning'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := [:block2811236cArg1 | 
    | block2811236cValue0 block2811236cValue1 block2811236cValue2 |
    block2811236cValue0 := block2811236cArg1.
    block2811236cValue1 := (block2811236cValue0) at: (1).
    block2811236cValue2 := (block2811236cValue1) isError.
    block2811236cValue2
].
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 117].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := 'GeneralError'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredPC := 185.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInformation.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 139].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := 'GeneralInformation'.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) isWarning.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 149].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := 'GeneralWarning'.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 159].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := 'GeneralError'.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) ascetLink.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 174] ifFalse: [recoveredPC := 185].
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := CgRGBColor.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := OS.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := ColorGraytext.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := (recoveredStack2) getSysColor: (recoveredStack3).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromOSRGB: (recoveredStack2).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := RBUserInterface.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := (recoveredStack1) resourceManager.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnIconWithName: (recoveredStack2).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 202] ifFalse: [recoveredPC := 220].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := RBRenderableBitmapString.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := (recoveredStack3) item.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack2 := (recoveredStack2) createOnString: (recoveredStack3) image: (recoveredStack4) rgbColor: (recoveredStack5).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredPC := 249.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := RBRenderableBitmapString.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack3 := (recoveredStack3) errorID.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack4 := ': '.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack4 := (recoveredStack4) errorDescription.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack4 := '. (See monitor for details)'.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrs.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack2 := (recoveredStack2) createOnString: (recoveredStack3) image: (recoveredStack4) rgbColor: (recoveredStack5).
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20637ed0; bytecode file offset 0xf34890"
!ASDXMLExportIssueSolverTreeDialog methodsFor: 'recovered'!
createFilterFrameIn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'filterFrame'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [:block28121018Arg1 | 
    | block28121018Value0 block28121018Value1 |
    block28121018Value0 := block28121018Arg1.
    block28121018Value1 := (block28121018Value0) labelString: ('Filter and Settings').
    block28121018Value1
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFrame: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 'filterFrame'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 'filterForm'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := 'filterForm'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := 'filterIcon'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := [:block2812103cArg1 | 
    | block2812103cValue0 block2812103cValue1 block2812103cValue2 block2812103cValue3 block2812103cValue4 block2812103cValue5 block2812103cValue6 block2812103cValue7 block2812103cValue8 block2812103cValue9 |
    block2812103cValue0 := block2812103cArg1.
    block2812103cValue1 := block2812103cValue0.
    block2812103cValue2 := XmICON.
    (block2812103cValue1) labelType: (block2812103cValue2).
    block2812103cValue3 := block2812103cValue0.
    block2812103cValue4 := RBUserInterface.
    block2812103cValue5 := (block2812103cValue4) resourceManager.
    block2812103cValue6 := (block2812103cValue5) returnIconWithName: ('GeneralFilter').
    (block2812103cValue3) labelIcon: (block2812103cValue6).
    block2812103cValue7 := block2812103cValue0.
    (block2812103cValue7) height: (20).
    block2812103cValue8 := block2812103cValue0.
    (block2812103cValue8) width: (20).
    block2812103cValue9 := (block2812103cValue0) recomputeSize: (false).
    block2812103cValue9
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := 'filterIcon'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := 'errorCheckBox'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := [:block28121060Arg1 | 
    | block28121060Value0 block28121060Value1 block28121060Value2 block28121060Value3 block28121060Value4 block28121060Value5 block28121060Value6 |
    block28121060Value0 := block28121060Arg1.
    block28121060Value1 := block28121060Value0.
    block28121060Value2 := XmALIGNMENTBEGINNING.
    (block28121060Value1) alignment: (block28121060Value2).
    block28121060Value3 := block28121060Value0.
    (block28121060Value3) height: (20).
    block28121060Value4 := block28121060Value0.
    (block28121060Value4) width: (120).
    block28121060Value5 := block28121060Value0.
    (block28121060Value5) set: (true).
    block28121060Value6 := (block28121060Value0) labelString: ('Errors').
    block28121060Value6
].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := 'errorCheckBox'.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := 'warningCheckBox'.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := [:block28121084Arg1 | 
    | block28121084Value0 block28121084Value1 block28121084Value2 block28121084Value3 block28121084Value4 block28121084Value5 block28121084Value6 |
    block28121084Value0 := block28121084Arg1.
    block28121084Value1 := block28121084Value0.
    block28121084Value2 := XmALIGNMENTBEGINNING.
    (block28121084Value1) alignment: (block28121084Value2).
    block28121084Value3 := block28121084Value0.
    (block28121084Value3) height: (20).
    block28121084Value4 := block28121084Value0.
    (block28121084Value4) width: (120).
    block28121084Value5 := block28121084Value0.
    (block28121084Value5) set: (true).
    block28121084Value6 := (block28121084Value0) labelString: ('Warnings').
    block28121084Value6
].
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := 'warningCheckBox'.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := 'informationCheckBox'.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack2 := [:block281210a8Arg1 | 
    | block281210a8Value0 block281210a8Value1 block281210a8Value2 block281210a8Value3 block281210a8Value4 block281210a8Value5 block281210a8Value6 |
    block281210a8Value0 := block281210a8Arg1.
    block281210a8Value1 := block281210a8Value0.
    block281210a8Value2 := XmALIGNMENTBEGINNING.
    (block281210a8Value1) alignment: (block281210a8Value2).
    block281210a8Value3 := block281210a8Value0.
    (block281210a8Value3) height: (20).
    block281210a8Value4 := block281210a8Value0.
    (block281210a8Value4) width: (120).
    block281210a8Value5 := block281210a8Value0.
    (block281210a8Value5) set: (true).
    block281210a8Value6 := (block281210a8Value0) labelString: ('Information').
    block281210a8Value6
].
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := 'informationCheckBox'.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := [:recoveredBlock280Arg1 | 
    | recoveredBlock280Value0 recoveredBlock280Value1 recoveredBlock280Value2 recoveredBlock280Value3 recoveredBlock280Value4 recoveredBlock280Value5 recoveredBlock280Value6 recoveredBlock280Value7 recoveredBlock280Value8 recoveredBlock280Value9 recoveredBlock280Value10 recoveredBlock280Value11 recoveredBlock280Value12 recoveredBlock280Value13 |
    recoveredBlock280Value0 := recoveredBlock280Arg1.
    recoveredBlock280Value1 := recoveredBlock280Value0.
    recoveredBlock280Value2 := XmATTACHNONE.
    (recoveredBlock280Value1) topAttachment: (recoveredBlock280Value2).
    recoveredBlock280Value3 := recoveredBlock280Value0.
    recoveredBlock280Value4 := XmATTACHWIDGET.
    (recoveredBlock280Value3) bottomAttachment: (recoveredBlock280Value4).
    recoveredBlock280Value5 := recoveredBlock280Value0.
    recoveredBlock280Value6 := (self) widgetCancelButton.
    (recoveredBlock280Value5) bottomWidget: (recoveredBlock280Value6).
    recoveredBlock280Value7 := recoveredBlock280Value0.
    (recoveredBlock280Value7) bottomOffset: (5).
    recoveredBlock280Value8 := recoveredBlock280Value0.
    recoveredBlock280Value9 := XmATTACHFORM.
    (recoveredBlock280Value8) leftAttachment: (recoveredBlock280Value9).
    recoveredBlock280Value10 := recoveredBlock280Value0.
    (recoveredBlock280Value10) leftOffset: (5).
    recoveredBlock280Value11 := recoveredBlock280Value0.
    recoveredBlock280Value12 := XmATTACHFORM.
    (recoveredBlock280Value11) rightAttachment: (recoveredBlock280Value12).
    recoveredBlock280Value13 := (recoveredBlock280Value0) rightOffset: (5).
    recoveredBlock280Value13
].
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack1 := [:block281210ccArg1 | 
    | block281210ccValue0 block281210ccValue1 block281210ccValue2 block281210ccValue3 block281210ccValue4 block281210ccValue5 block281210ccValue6 block281210ccValue7 block281210ccValue8 block281210ccValue9 block281210ccValue10 |
    block281210ccValue0 := block281210ccArg1.
    block281210ccValue1 := block281210ccValue0.
    block281210ccValue2 := XmATTACHFORM.
    (block281210ccValue1) topAttachment: (block281210ccValue2).
    block281210ccValue3 := block281210ccValue0.
    (block281210ccValue3) topOffset: (5).
    block281210ccValue4 := block281210ccValue0.
    block281210ccValue5 := XmATTACHNONE.
    (block281210ccValue4) bottomAttachment: (block281210ccValue5).
    block281210ccValue6 := block281210ccValue0.
    block281210ccValue7 := XmATTACHFORM.
    (block281210ccValue6) leftAttachment: (block281210ccValue7).
    block281210ccValue8 := block281210ccValue0.
    (block281210ccValue8) leftOffset: (5).
    block281210ccValue9 := XmATTACHNONE.
    block281210ccValue10 := (block281210ccValue0) rightAttachment: (block281210ccValue9).
    block281210ccValue10
].
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack1 := [:recoveredBlock374Arg1 | 
    | recoveredBlock374Value0 recoveredBlock374Value1 recoveredBlock374Value2 recoveredBlock374Value3 recoveredBlock374Value4 recoveredBlock374Value5 recoveredBlock374Value6 recoveredBlock374Value7 recoveredBlock374Value8 recoveredBlock374Value9 recoveredBlock374Value10 recoveredBlock374Value11 recoveredBlock374Value12 recoveredBlock374Value13 |
    recoveredBlock374Value0 := recoveredBlock374Arg1.
    recoveredBlock374Value1 := recoveredBlock374Value0.
    recoveredBlock374Value2 := XmATTACHFORM.
    (recoveredBlock374Value1) topAttachment: (recoveredBlock374Value2).
    recoveredBlock374Value3 := recoveredBlock374Value0.
    (recoveredBlock374Value3) topOffset: (5).
    recoveredBlock374Value4 := recoveredBlock374Value0.
    recoveredBlock374Value5 := XmATTACHNONE.
    (recoveredBlock374Value4) bottomAttachment: (recoveredBlock374Value5).
    recoveredBlock374Value6 := recoveredBlock374Value0.
    recoveredBlock374Value7 := XmATTACHWIDGET.
    (recoveredBlock374Value6) leftAttachment: (recoveredBlock374Value7).
    recoveredBlock374Value8 := recoveredBlock374Value0.
    recoveredBlock374Value9 := recoveredLocal4.
    (recoveredBlock374Value8) leftWidget: (recoveredBlock374Value9).
    recoveredBlock374Value10 := recoveredBlock374Value0.
    (recoveredBlock374Value10) leftOffset: (10).
    recoveredBlock374Value11 := recoveredBlock374Value0.
    recoveredBlock374Value12 := XmATTACHNONE.
    (recoveredBlock374Value11) rightAttachment: (recoveredBlock374Value12).
    recoveredBlock374Value13 := (recoveredBlock374Value0) rightOffset: (5).
    recoveredBlock374Value13
].
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack1 := [:recoveredBlock428Arg1 | 
    | recoveredBlock428Value0 recoveredBlock428Value1 recoveredBlock428Value2 recoveredBlock428Value3 recoveredBlock428Value4 recoveredBlock428Value5 recoveredBlock428Value6 recoveredBlock428Value7 recoveredBlock428Value8 recoveredBlock428Value9 recoveredBlock428Value10 recoveredBlock428Value11 recoveredBlock428Value12 recoveredBlock428Value13 |
    recoveredBlock428Value0 := recoveredBlock428Arg1.
    recoveredBlock428Value1 := recoveredBlock428Value0.
    recoveredBlock428Value2 := XmATTACHFORM.
    (recoveredBlock428Value1) topAttachment: (recoveredBlock428Value2).
    recoveredBlock428Value3 := recoveredBlock428Value0.
    (recoveredBlock428Value3) topOffset: (5).
    recoveredBlock428Value4 := recoveredBlock428Value0.
    recoveredBlock428Value5 := XmATTACHNONE.
    (recoveredBlock428Value4) bottomAttachment: (recoveredBlock428Value5).
    recoveredBlock428Value6 := recoveredBlock428Value0.
    recoveredBlock428Value7 := XmATTACHWIDGET.
    (recoveredBlock428Value6) leftAttachment: (recoveredBlock428Value7).
    recoveredBlock428Value8 := recoveredBlock428Value0.
    recoveredBlock428Value9 := recoveredLocal3.
    (recoveredBlock428Value8) leftWidget: (recoveredBlock428Value9).
    recoveredBlock428Value10 := recoveredBlock428Value0.
    (recoveredBlock428Value10) leftOffset: (5).
    recoveredBlock428Value11 := recoveredBlock428Value0.
    recoveredBlock428Value12 := XmATTACHNONE.
    (recoveredBlock428Value11) rightAttachment: (recoveredBlock428Value12).
    recoveredBlock428Value13 := (recoveredBlock428Value0) rightOffset: (5).
    recoveredBlock428Value13
].
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack1 := [:recoveredBlock482Arg1 | 
    | recoveredBlock482Value0 recoveredBlock482Value1 recoveredBlock482Value2 recoveredBlock482Value3 recoveredBlock482Value4 recoveredBlock482Value5 recoveredBlock482Value6 recoveredBlock482Value7 recoveredBlock482Value8 recoveredBlock482Value9 recoveredBlock482Value10 recoveredBlock482Value11 recoveredBlock482Value12 recoveredBlock482Value13 |
    recoveredBlock482Value0 := recoveredBlock482Arg1.
    recoveredBlock482Value1 := recoveredBlock482Value0.
    recoveredBlock482Value2 := XmATTACHFORM.
    (recoveredBlock482Value1) topAttachment: (recoveredBlock482Value2).
    recoveredBlock482Value3 := recoveredBlock482Value0.
    (recoveredBlock482Value3) topOffset: (5).
    recoveredBlock482Value4 := recoveredBlock482Value0.
    recoveredBlock482Value5 := XmATTACHNONE.
    (recoveredBlock482Value4) bottomAttachment: (recoveredBlock482Value5).
    recoveredBlock482Value6 := recoveredBlock482Value0.
    recoveredBlock482Value7 := XmATTACHWIDGET.
    (recoveredBlock482Value6) leftAttachment: (recoveredBlock482Value7).
    recoveredBlock482Value8 := recoveredBlock482Value0.
    recoveredBlock482Value9 := recoveredLocal2.
    (recoveredBlock482Value8) leftWidget: (recoveredBlock482Value9).
    recoveredBlock482Value10 := recoveredBlock482Value0.
    (recoveredBlock482Value10) leftOffset: (5).
    recoveredBlock482Value11 := recoveredBlock482Value0.
    recoveredBlock482Value12 := XmATTACHNONE.
    (recoveredBlock482Value11) rightAttachment: (recoveredBlock482Value12).
    recoveredBlock482Value13 := (recoveredBlock482Value0) rightOffset: (5).
    recoveredBlock482Value13
].
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack3 := 'filterChanged:clientData:callData:'.
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredStack3 := 'filterChanged:clientData:callData:'.
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 572.
        ].
        recoveredStep = 572 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredStack3 := 'filterChanged:clientData:callData:'.
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 600.
        ].
        recoveredStep = 600 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 606.
        ].
        recoveredStep = 606 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            recoveredStack1 := 'Show all Errors'.
            recoveredPC := 614.
        ].
        recoveredStep = 614 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            recoveredStack1 := 'Show all Warnings'.
            recoveredPC := 630.
        ].
        recoveredStep = 630 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 633.
        ].
        recoveredStep = 633 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 637.
        ].
        recoveredStep = 637 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 638.
        ].
        recoveredStep = 638 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 643.
        ].
        recoveredStep = 643 ifTrue: [
            recoveredStack1 := 'Show all Information'.
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 649.
        ].
        recoveredStep = 649 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 653.
        ].
        recoveredStep = 653 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 656.
        ].
        recoveredStep = 656 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

