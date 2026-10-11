"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005a4f4; bytecode file offset 0x957a6c"
!EtasPostScriptFontMappingDialog methodsFor: 'recovered'!
cancelActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) cancel.
    ^self
! !

"ASDBase.ic method 0x2005a5f0; bytecode file offset 0x957a6c"
!EtasPostScriptFontMappingDialog methodsFor: 'recovered'!
fontMappinListSingleSelect: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) update.
    ^self
! !

"ASDBase.ic method 0x2005aaf4; bytecode file offset 0x957a6c"
!EtasPostScriptFontMappingDialog methodsFor: 'recovered'!
okActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) ok.
    ^self
! !

"ASDBase.ic method 0x20061424; bytecode file offset 0x95e838"
!EtasPostScriptFontMappingDialog methodsFor: 'recovered'!
widgetPreviewButton
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetDictionary.
    recoveredValue1 := (recoveredValue0) at: ('previewButton').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200619c4; bytecode file offset 0x95e838"
!EtasPostScriptFontMappingDialog methodsFor: 'recovered'!
widgetFontMappingList
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetDictionary.
    recoveredValue1 := (recoveredValue0) at: ('fontMappingList').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061c94; bytecode file offset 0x95e838"
!EtasPostScriptFontMappingDialog methodsFor: 'recovered'!
widgetRemoveButton
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetDictionary.
    recoveredValue1 := (recoveredValue0) at: ('removeButton').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061e60; bytecode file offset 0x95e838"
!EtasPostScriptFontMappingDialog methodsFor: 'recovered'!
widgetScrolledFontMappingList
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetDictionary.
    recoveredValue1 := (recoveredValue0) at: ('scrolledFontMappingList').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061e88; bytecode file offset 0x95e838"
!EtasPostScriptFontMappingDialog methodsFor: 'recovered'!
widgetColumnPSFont
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetDictionary.
    recoveredValue1 := (recoveredValue0) at: ('columnPSFont').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061f50; bytecode file offset 0x95e838"
!EtasPostScriptFontMappingDialog methodsFor: 'recovered'!
widgetColumnSTFont
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetDictionary.
    recoveredValue1 := (recoveredValue0) at: ('columnSTFont').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008727c; bytecode file offset 0x983b4c"
!EtasPostScriptFontMappingDialog methodsFor: 'recovered'!
psFontCellBeginEditCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := recoveredArg3.
    (recoveredValue0) doit: (true).
    ^self
! !

"ASDBase.ic method 0x200c6600; bytecode file offset 0x9c3164"
!EtasPostScriptFontMappingDialog methodsFor: 'recovered'!
fontMappings: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fontMappings := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d397c; bytecode file offset 0x9d0258"
!EtasPostScriptFontMappingDialog methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredValue0 recoveredValue1 |
    (self) update.
    recoveredValue0 := (self) shell.
    recoveredValue1 := (recoveredValue0) osWidget.
    (recoveredValue1) setAppModal.
    ^self
! !

"ASDBase.ic method 0x200dd900; bytecode file offset 0x9da1e8"
!EtasPostScriptFontMappingDialog methodsFor: 'recovered'!
stFontCellValueCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) item.
    recoveredValue3 := (recoveredValue2) at: (1).
    (recoveredValue0) value: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200dd94c; bytecode file offset 0x9da234"
!EtasPostScriptFontMappingDialog methodsFor: 'recovered'!
psFontCellValueCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) item.
    recoveredValue3 := (recoveredValue2) at: (2).
    (recoveredValue0) value: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200dd9c0; bytecode file offset 0x9da280"
!EtasPostScriptFontMappingDialog methodsFor: 'recovered'!
psFontSizeCellValueCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) item.
    recoveredValue3 := (recoveredValue2) at: (3).
    (recoveredValue0) value: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201117b0; bytecode file offset 0xa0e074"
!EtasPostScriptFontMappingDialog methodsFor: 'recovered'!
psFontCellEndEditCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) item.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (recoveredValue2) newValue.
    (recoveredValue1) at: (2) put: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) refresh.
    ^self
! !

"ASDBase.ic method 0x2012acc4; bytecode file offset 0xa275d0"
!EtasPostScriptFontMappingDialog methodsFor: 'recovered'!
fontMappings
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := fontMappings.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
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
            fontMappings := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := fontMappings.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012c7a8; bytecode file offset 0xa2906c"
!EtasPostScriptFontMappingDialog methodsFor: 'recovered'!
ok
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) fontMappings.
    result := recoveredValue0.
    recoveredValue1 := RBPostScriptMedium.
    recoveredValue2 := (self) fontMappings.
    (recoveredValue1) FontMappingDictionary: (recoveredValue2).
    (self) close.
    ^self
! !

"ASDBase.ic method 0x201d86f8; bytecode file offset 0xad4fc4"
!EtasPostScriptFontMappingDialog methodsFor: 'recovered'!
fontMappingColumns: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) createTableColumnSTFont: (recoveredValue3).
    (recoveredValue2) add: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (self) createTableColumnPSFont: (recoveredValue6).
    (recoveredValue5) add: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (self) createTableColumnPSSize: (recoveredValue9).
    (recoveredValue8) add: (recoveredValue10).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201dc974; bytecode file offset 0xad9240"
!EtasPostScriptFontMappingDialog methodsFor: 'recovered'!
psFontSizeCellBeginEditCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) editPolicy.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) doit: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201eab40; bytecode file offset 0xae7418"
!EtasPostScriptFontMappingDialog methodsFor: 'recovered'!
addActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) fontMappings.
    recoveredValue1 := Array.
    recoveredValue2 := (recoveredValue1) with: ('-*-*-*-*-*-*-*-*-*-*-*-*-*-*') with: ('Helvetica') with: (nil).
    (recoveredValue0) add: (recoveredValue2).
    recoveredValue3 := (self) widgetFontMappingList.
    recoveredValue4 := (self) fontMappings.
    (recoveredValue3) items: (recoveredValue4).
    (self) update.
    ^self
! !

"ASDBase.ic method 0x20204ad0; bytecode file offset 0xb0139c"
!EtasPostScriptFontMappingDialog methodsFor: 'recovered'!
psFontSizeCellEndEditCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) newValue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) asNumber.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) refresh.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) newValue.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) asFloat.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) refresh.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020abfc; bytecode file offset 0xb074dc"
!EtasPostScriptFontMappingDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) installActionKeys.
    (self) iconSmall: ('GeneralFont') large: ('GeneralFont32').
    recoveredValue0 := RBPostScriptMedium.
    recoveredValue1 := (recoveredValue0) FontMappingDictionary.
    recoveredValue2 := (recoveredValue1) deepCopy.
    (self) fontMappings: (recoveredValue2).
    recoveredValue3 := (self) widgetFontMappingList.
    recoveredValue4 := (self) fontMappings.
    (recoveredValue3) items: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2021e75c; bytecode file offset 0xb1b034"
!EtasPostScriptFontMappingDialog methodsFor: 'recovered'!
removeActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFontMappingList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedCells.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
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
            recoveredStack0 := (recoveredStack0) fontMappings.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetFontMappingList.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedCell.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) removeAtIndex: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFontMappingList.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontMappings.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) update.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20249854; bytecode file offset 0xb46120"
!EtasPostScriptFontMappingDialog methodsFor: 'recovered'!
update
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFontMappingList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedCells.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetRemoveButton.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetPreviewButton.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetRemoveButton.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetPreviewButton.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20311050; bytecode file offset 0xc0d954"
!EtasPostScriptFontMappingDialog methodsFor: 'recovered'!
previewActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFontMappingList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedCells.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
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
            recoveredStack0 := (recoveredStack0) fontMappings.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetFontMappingList.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedCell.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 'Generated PS Font String: \'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := RBPostScriptMedium.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := CgDisplay.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := (recoveredStack3) default.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) loadQueryFont: (recoveredStack4).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) logicalFontDescription.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) stFontToPSFont: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20335cc0; bytecode file offset 0xc3262c"
!EtasPostScriptFontMappingDialog methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := (self) globalActionKeys.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := SCOk.
    recoveredValue4 := (recoveredValue3) getHotkeyString.
    recoveredValue5 := ('Alt-') , (recoveredValue4).
    recoveredValue6 := DirectedMessageWithText.
    recoveredValue7 := SCOk.
    recoveredValue8 := (recoveredValue6) selector: ('ok') arguments: (#()) receiver: (self) text: (recoveredValue7).
    (recoveredValue2) at: (recoveredValue5) put: (recoveredValue8).
    recoveredValue9 := recoveredValue1.
    recoveredValue10 := SCCancel.
    recoveredValue11 := (recoveredValue10) getHotkeyString.
    recoveredValue12 := ('Alt-') , (recoveredValue11).
    recoveredValue13 := DirectedMessageWithText.
    recoveredValue14 := SCCancel.
    recoveredValue15 := (recoveredValue13) selector: ('cancel') arguments: (#()) receiver: (self) text: (recoveredValue14).
    (recoveredValue9) at: (recoveredValue12) put: (recoveredValue15).
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := (self) shell.
    (self) setActionDict: (recoveredValue16) forWidget: (recoveredValue17).
    ^self
! !

"ASDBase.ic method 0x203363e8; bytecode file offset 0xc32cd8"
!EtasPostScriptFontMappingDialog methodsFor: 'recovered'!
createTableColumnSTFont: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) heading: ('SmallTalk Font Descriptor').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) editable: (true).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) verticalSeparatorThickness: (1).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) resizable: (true).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) width: (300).
    recoveredLocal1 := recoveredValue1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := XmNcellValueCallback.
    (recoveredValue8) addCallback: (recoveredValue9) receiver: (self) selector: ('stFontCellValueCallback:clientData:callData:') clientData: (nil).
    recoveredValue10 := XmNbeginEditCallback.
    (recoveredValue7) addCallback: (recoveredValue10) receiver: (self) selector: ('stFontCellBeginEditCallback:clientData:callData:') clientData: (nil).
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := recoveredLocal1.
    (recoveredValue11) at: ('columnSTFont') put: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    ^recoveredValue13
! !

"ASDBase.ic method 0x20378748; bytecode file offset 0xc7508c"
!EtasPostScriptFontMappingDialog methodsFor: 'recovered'!
createTableColumnPSSize: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) heading: ('PostScript Font Size').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) editable: (true).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) verticalSeparatorThickness: (1).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) resizable: (true).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) width: (100).
    recoveredLocal1 := recoveredValue1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := XmNcellValueCallback.
    (recoveredValue8) addCallback: (recoveredValue9) receiver: (self) selector: ('psFontSizeCellValueCallback:clientData:callData:') clientData: (nil).
    recoveredValue10 := recoveredValue7.
    recoveredValue11 := XmNbeginEditCallback.
    (recoveredValue10) addCallback: (recoveredValue11) receiver: (self) selector: ('psFontSizeCellBeginEditCallback:clientData:callData:') clientData: (nil).
    recoveredValue12 := XmNendEditCallback.
    (recoveredValue7) addCallback: (recoveredValue12) receiver: (self) selector: ('psFontSizeCellEndEditCallback:clientData:callData:') clientData: (nil).
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := recoveredLocal1.
    (recoveredValue13) at: ('columnPSFontSize') put: (recoveredValue14).
    recoveredValue15 := recoveredLocal1.
    ^recoveredValue15
! !

"ASDBase.ic method 0x20378794; bytecode file offset 0xc7508c"
!EtasPostScriptFontMappingDialog methodsFor: 'recovered'!
createTableColumnPSFont: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) heading: ('PostScript Font Name').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) editable: (true).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) verticalSeparatorThickness: (1).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) resizable: (true).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) width: (100).
    recoveredLocal1 := recoveredValue1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := XmNcellValueCallback.
    (recoveredValue8) addCallback: (recoveredValue9) receiver: (self) selector: ('psFontCellValueCallback:clientData:callData:') clientData: (nil).
    recoveredValue10 := recoveredValue7.
    recoveredValue11 := XmNbeginEditCallback.
    (recoveredValue10) addCallback: (recoveredValue11) receiver: (self) selector: ('psFontCellBeginEditCallback:clientData:callData:') clientData: (nil).
    recoveredValue12 := XmNendEditCallback.
    (recoveredValue7) addCallback: (recoveredValue12) receiver: (self) selector: ('psFontCellEndEditCallback:clientData:callData:') clientData: (nil).
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := recoveredLocal1.
    (recoveredValue13) at: ('columnPSFont') put: (recoveredValue14).
    recoveredValue15 := recoveredLocal1.
    ^recoveredValue15
! !

"ASDBase.ic method 0x203d4600; bytecode file offset 0xcd0f04"
!EtasPostScriptFontMappingDialog methodsFor: 'recovered'!
stFontCellBeginEditCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) doit: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := CgDisplay.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) loadQueryFont: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := CwFontList.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontStruct: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := CwFontList.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := RBFontGlobal.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) instance.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) fontTiny.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) fontStruct.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontStruct: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := EtasFontPrompter.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) fontStruct.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) logicalFontDescription.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontName: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) refresh.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20676358; bytecode file offset 0xf72dc0"
!EtasPostScriptFontMappingDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal13 := recoveredStack1.
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
            recoveredStack3 := [:block28127a20Arg1 | 
    | block28127a20Value0 block28127a20Value1 block28127a20Value2 block28127a20Value3 block28127a20Value4 block28127a20Value5 block28127a20Value6 block28127a20Value7 block28127a20Value8 block28127a20Value9 block28127a20Value10 block28127a20Value11 |
    block28127a20Value0 := block28127a20Arg1.
    block28127a20Value1 := block28127a20Value0.
    block28127a20Value2 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (block28127a20Value1) mwmInputMode: (block28127a20Value2).
    block28127a20Value3 := block28127a20Value0.
    (block28127a20Value3) title: ('PostScript Font Mapping').
    block28127a20Value4 := block28127a20Value0.
    block28127a20Value5 := MWMDECORALL.
    block28127a20Value6 := MWMDECORMINIMIZE.
    block28127a20Value7 := (block28127a20Value5) | (block28127a20Value6).
    block28127a20Value8 := MWMDECORMAXIMIZE.
    block28127a20Value9 := (block28127a20Value7) | (block28127a20Value8).
    (block28127a20Value4) mwmDecorations: (block28127a20Value9).
    block28127a20Value10 := block28127a20Value0.
    (block28127a20Value10) height: (400).
    block28127a20Value11 := (block28127a20Value0) width: (700).
    block28127a20Value11
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := 'aForm'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := 'mappingFrame'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFrame: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := 'mappingFrame'.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := 'mappingForm'.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := 'mappingForm'.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := 'fontMappingList'.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := [:recoveredBlock167Arg1 | 
    | recoveredBlock167Value0 recoveredBlock167Value1 recoveredBlock167Value2 recoveredBlock167Value3 recoveredBlock167Value4 recoveredBlock167Value5 recoveredBlock167Value6 recoveredBlock167Value7 recoveredBlock167Value8 recoveredBlock167Value9 recoveredBlock167Value10 recoveredBlock167Value11 recoveredBlock167Value12 recoveredBlock167Value13 recoveredBlock167Value14 |
    recoveredBlock167Value0 := recoveredBlock167Arg1.
    recoveredBlock167Value1 := recoveredBlock167Value0.
    recoveredBlock167Value2 := recoveredLocal13.
    recoveredBlock167Value3 := (self) fontMappingColumns: (recoveredBlock167Value2).
    (recoveredBlock167Value1) columns: (recoveredBlock167Value3).
    recoveredBlock167Value4 := recoveredBlock167Value0.
    (recoveredBlock167Value4) editable: (false).
    recoveredBlock167Value5 := recoveredBlock167Value0.
    (recoveredBlock167Value5) selectableColumns: (false).
    recoveredBlock167Value6 := recoveredBlock167Value0.
    recoveredBlock167Value7 := XmCELLSINGLESELECT.
    (recoveredBlock167Value6) selectionPolicy: (recoveredBlock167Value7).
    recoveredBlock167Value8 := recoveredBlock167Value0.
    (recoveredBlock167Value8) headingSeparatorThickness: (2).
    recoveredBlock167Value9 := recoveredBlock167Value0.
    (recoveredBlock167Value9) itemHeight: (nil).
    recoveredBlock167Value10 := recoveredBlock167Value0.
    recoveredBlock167Value11 := XmETCHCELLS.
    (recoveredBlock167Value10) headingVisualStyle: (recoveredBlock167Value11).
    recoveredBlock167Value12 := recoveredBlock167Value0.
    recoveredBlock167Value13 := XmETCHCELLS.
    (recoveredBlock167Value12) visualStyle: (recoveredBlock167Value13).
    recoveredBlock167Value14 := (recoveredBlock167Value0) applicationDrawnBackground: (false).
    recoveredBlock167Value14
].
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledTableList: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack2 := 'fontMappingList'.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack2 := 'scrolledFontMappingList'.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack2 := 'addButton'.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack3 := [:recoveredBlock260Arg1 | 
    | recoveredBlock260Value0 recoveredBlock260Value1 recoveredBlock260Value2 recoveredBlock260Value3 recoveredBlock260Value4 recoveredBlock260Value5 recoveredBlock260Value6 recoveredBlock260Value7 |
    recoveredBlock260Value0 := recoveredBlock260Arg1.
    recoveredBlock260Value1 := recoveredBlock260Value0.
    recoveredBlock260Value2 := XmICON.
    (recoveredBlock260Value1) labelType: (recoveredBlock260Value2).
    recoveredBlock260Value3 := recoveredBlock260Value0.
    recoveredBlock260Value4 := (self) resourceManager.
    recoveredBlock260Value5 := (recoveredBlock260Value4) returnIconWithName: ('GeneralAdd').
    (recoveredBlock260Value3) labelIcon: (recoveredBlock260Value5).
    recoveredBlock260Value6 := recoveredBlock260Value0.
    (recoveredBlock260Value6) height: (24).
    recoveredBlock260Value7 := (recoveredBlock260Value0) width: (24).
    recoveredBlock260Value7
].
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack2 := 'addButton'.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack2 := 'removeButton'.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack3 := [:recoveredBlock314Arg1 | 
    | recoveredBlock314Value0 recoveredBlock314Value1 recoveredBlock314Value2 recoveredBlock314Value3 recoveredBlock314Value4 recoveredBlock314Value5 recoveredBlock314Value6 recoveredBlock314Value7 recoveredBlock314Value8 recoveredBlock314Value9 recoveredBlock314Value10 recoveredBlock314Value11 recoveredBlock314Value12 recoveredBlock314Value13 |
    recoveredBlock314Value0 := recoveredBlock314Arg1.
    recoveredBlock314Value1 := recoveredBlock314Value0.
    recoveredBlock314Value2 := XmICON.
    (recoveredBlock314Value1) labelType: (recoveredBlock314Value2).
    recoveredBlock314Value3 := recoveredBlock314Value0.
    recoveredBlock314Value4 := (self) resourceManager.
    recoveredBlock314Value5 := (recoveredBlock314Value4) returnIconWithName: ('GeneralRemove').
    (recoveredBlock314Value3) labelIcon: (recoveredBlock314Value5).
    recoveredBlock314Value6 := recoveredBlock314Value0.
    recoveredBlock314Value7 := (self) resourceManager.
    recoveredBlock314Value8 := recoveredBlock314Arg1.
    recoveredBlock314Value9 := (recoveredBlock314Value8) labelIcon.
    recoveredBlock314Value10 := (recoveredBlock314Value9) name.
    recoveredBlock314Value11 := (recoveredBlock314Value7) returnGrayedIconWithName: (recoveredBlock314Value10).
    (recoveredBlock314Value6) labelInsensitiveIcon: (recoveredBlock314Value11).
    recoveredBlock314Value12 := recoveredBlock314Value0.
    (recoveredBlock314Value12) height: (24).
    recoveredBlock314Value13 := (recoveredBlock314Value0) width: (24).
    recoveredBlock314Value13
].
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack2 := 'removeButton'.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack2 := 'previewButton'.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack3 := [:recoveredBlock394Arg1 | 
    | recoveredBlock394Value0 recoveredBlock394Value1 recoveredBlock394Value2 recoveredBlock394Value3 recoveredBlock394Value4 recoveredBlock394Value5 recoveredBlock394Value6 recoveredBlock394Value7 recoveredBlock394Value8 recoveredBlock394Value9 recoveredBlock394Value10 recoveredBlock394Value11 recoveredBlock394Value12 recoveredBlock394Value13 |
    recoveredBlock394Value0 := recoveredBlock394Arg1.
    recoveredBlock394Value1 := recoveredBlock394Value0.
    recoveredBlock394Value2 := XmICON.
    (recoveredBlock394Value1) labelType: (recoveredBlock394Value2).
    recoveredBlock394Value3 := recoveredBlock394Value0.
    recoveredBlock394Value4 := (self) resourceManager.
    recoveredBlock394Value5 := (recoveredBlock394Value4) returnIconWithName: ('GeneralPreview').
    (recoveredBlock394Value3) labelIcon: (recoveredBlock394Value5).
    recoveredBlock394Value6 := recoveredBlock394Value0.
    recoveredBlock394Value7 := (self) resourceManager.
    recoveredBlock394Value8 := recoveredBlock394Arg1.
    recoveredBlock394Value9 := (recoveredBlock394Value8) labelIcon.
    recoveredBlock394Value10 := (recoveredBlock394Value9) name.
    recoveredBlock394Value11 := (recoveredBlock394Value7) returnGrayedIconWithName: (recoveredBlock394Value10).
    (recoveredBlock394Value6) labelInsensitiveIcon: (recoveredBlock394Value11).
    recoveredBlock394Value12 := recoveredBlock394Value0.
    (recoveredBlock394Value12) height: (24).
    recoveredBlock394Value13 := (recoveredBlock394Value0) width: (24).
    recoveredBlock394Value13
].
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack2 := 'previewButton'.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack3 := [:block28127a44Arg1 | 
    | block28127a44Value0 block28127a44Value1 block28127a44Value2 block28127a44Value3 |
    block28127a44Value0 := block28127a44Arg1.
    block28127a44Value1 := block28127a44Value0.
    (block28127a44Value1) labelString: ('&Cancel').
    block28127a44Value2 := block28127a44Value0.
    (block28127a44Value2) height: (25).
    block28127a44Value3 := (block28127a44Value0) width: (80).
    block28127a44Value3
].
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 524.
        ].
        recoveredStep = 524 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack3 := [:block28127a68Arg1 | 
    | block28127a68Value0 block28127a68Value1 block28127a68Value2 block28127a68Value3 |
    block28127a68Value0 := block28127a68Arg1.
    block28127a68Value1 := block28127a68Value0.
    (block28127a68Value1) labelString: ('&OK').
    block28127a68Value2 := block28127a68Value0.
    (block28127a68Value2) height: (25).
    block28127a68Value3 := (block28127a68Value0) width: (80).
    block28127a68Value3
].
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredStack2 := [:recoveredBlock578Arg1 | 
    | recoveredBlock578Value0 recoveredBlock578Value1 recoveredBlock578Value2 recoveredBlock578Value3 recoveredBlock578Value4 recoveredBlock578Value5 recoveredBlock578Value6 recoveredBlock578Value7 recoveredBlock578Value8 recoveredBlock578Value9 recoveredBlock578Value10 recoveredBlock578Value11 recoveredBlock578Value12 recoveredBlock578Value13 recoveredBlock578Value14 |
    recoveredBlock578Value0 := recoveredBlock578Arg1.
    recoveredBlock578Value1 := recoveredBlock578Value0.
    recoveredBlock578Value2 := XmATTACHFORM.
    (recoveredBlock578Value1) topAttachment: (recoveredBlock578Value2).
    recoveredBlock578Value3 := recoveredBlock578Value0.
    (recoveredBlock578Value3) topOffset: (5).
    recoveredBlock578Value4 := recoveredBlock578Value0.
    recoveredBlock578Value5 := XmATTACHWIDGET.
    (recoveredBlock578Value4) bottomAttachment: (recoveredBlock578Value5).
    recoveredBlock578Value6 := recoveredBlock578Value0.
    recoveredBlock578Value7 := recoveredLocal7.
    (recoveredBlock578Value6) bottomWidget: (recoveredBlock578Value7).
    recoveredBlock578Value8 := recoveredBlock578Value0.
    (recoveredBlock578Value8) bottomOffset: (5).
    recoveredBlock578Value9 := recoveredBlock578Value0.
    recoveredBlock578Value10 := XmATTACHFORM.
    (recoveredBlock578Value9) rightAttachment: (recoveredBlock578Value10).
    recoveredBlock578Value11 := recoveredBlock578Value0.
    (recoveredBlock578Value11) rightOffset: (5).
    recoveredBlock578Value12 := recoveredBlock578Value0.
    recoveredBlock578Value13 := XmATTACHFORM.
    (recoveredBlock578Value12) leftAttachment: (recoveredBlock578Value13).
    recoveredBlock578Value14 := (recoveredBlock578Value0) leftOffset: (5).
    recoveredBlock578Value14
].
            recoveredPC := 652.
        ].
        recoveredStep = 652 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 657.
        ].
        recoveredStep = 657 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 660.
        ].
        recoveredStep = 660 ifTrue: [
            recoveredStack2 := [:recoveredBlock660Arg1 | 
    | recoveredBlock660Value0 recoveredBlock660Value1 recoveredBlock660Value2 recoveredBlock660Value3 recoveredBlock660Value4 recoveredBlock660Value5 recoveredBlock660Value6 recoveredBlock660Value7 recoveredBlock660Value8 recoveredBlock660Value9 recoveredBlock660Value10 recoveredBlock660Value11 recoveredBlock660Value12 recoveredBlock660Value13 recoveredBlock660Value14 |
    recoveredBlock660Value0 := recoveredBlock660Arg1.
    recoveredBlock660Value1 := recoveredBlock660Value0.
    recoveredBlock660Value2 := XmATTACHFORM.
    (recoveredBlock660Value1) topAttachment: (recoveredBlock660Value2).
    recoveredBlock660Value3 := recoveredBlock660Value0.
    (recoveredBlock660Value3) topOffset: (5).
    recoveredBlock660Value4 := recoveredBlock660Value0.
    recoveredBlock660Value5 := XmATTACHFORM.
    (recoveredBlock660Value4) bottomAttachment: (recoveredBlock660Value5).
    recoveredBlock660Value6 := recoveredBlock660Value0.
    (recoveredBlock660Value6) bottomOffset: (5).
    recoveredBlock660Value7 := recoveredBlock660Value0.
    recoveredBlock660Value8 := XmATTACHWIDGET.
    (recoveredBlock660Value7) rightAttachment: (recoveredBlock660Value8).
    recoveredBlock660Value9 := recoveredBlock660Value0.
    recoveredBlock660Value10 := recoveredLocal5.
    (recoveredBlock660Value9) rightWidget: (recoveredBlock660Value10).
    recoveredBlock660Value11 := recoveredBlock660Value0.
    (recoveredBlock660Value11) rightOffset: (5).
    recoveredBlock660Value12 := recoveredBlock660Value0.
    recoveredBlock660Value13 := XmATTACHFORM.
    (recoveredBlock660Value12) leftAttachment: (recoveredBlock660Value13).
    recoveredBlock660Value14 := (recoveredBlock660Value0) leftOffset: (5).
    recoveredBlock660Value14
].
            recoveredPC := 734.
        ].
        recoveredStep = 734 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 739.
        ].
        recoveredStep = 739 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 742.
        ].
        recoveredStep = 742 ifTrue: [
            recoveredStack2 := [:block28127a8cArg1 | 
    | block28127a8cValue0 block28127a8cValue1 block28127a8cValue2 block28127a8cValue3 block28127a8cValue4 block28127a8cValue5 block28127a8cValue6 block28127a8cValue7 block28127a8cValue8 block28127a8cValue9 block28127a8cValue10 |
    block28127a8cValue0 := block28127a8cArg1.
    block28127a8cValue1 := block28127a8cValue0.
    block28127a8cValue2 := XmATTACHFORM.
    (block28127a8cValue1) topAttachment: (block28127a8cValue2).
    block28127a8cValue3 := block28127a8cValue0.
    (block28127a8cValue3) topOffset: (5).
    block28127a8cValue4 := block28127a8cValue0.
    block28127a8cValue5 := XmATTACHNONE.
    (block28127a8cValue4) bottomAttachment: (block28127a8cValue5).
    block28127a8cValue6 := block28127a8cValue0.
    block28127a8cValue7 := XmATTACHFORM.
    (block28127a8cValue6) rightAttachment: (block28127a8cValue7).
    block28127a8cValue8 := block28127a8cValue0.
    (block28127a8cValue8) rightOffset: (5).
    block28127a8cValue9 := XmATTACHNONE.
    block28127a8cValue10 := (block28127a8cValue0) leftAttachment: (block28127a8cValue9).
    block28127a8cValue10
].
            recoveredPC := 746.
        ].
        recoveredStep = 746 ifTrue: [
            recoveredPC := 798.
        ].
        recoveredStep = 798 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 803.
        ].
        recoveredStep = 803 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 806.
        ].
        recoveredStep = 806 ifTrue: [
            recoveredStack2 := [:recoveredBlock806Arg1 | 
    | recoveredBlock806Value0 recoveredBlock806Value1 recoveredBlock806Value2 recoveredBlock806Value3 recoveredBlock806Value4 recoveredBlock806Value5 recoveredBlock806Value6 recoveredBlock806Value7 recoveredBlock806Value8 recoveredBlock806Value9 recoveredBlock806Value10 recoveredBlock806Value11 recoveredBlock806Value12 |
    recoveredBlock806Value0 := recoveredBlock806Arg1.
    recoveredBlock806Value1 := recoveredBlock806Value0.
    recoveredBlock806Value2 := XmATTACHWIDGET.
    (recoveredBlock806Value1) topAttachment: (recoveredBlock806Value2).
    recoveredBlock806Value3 := recoveredBlock806Value0.
    recoveredBlock806Value4 := recoveredLocal5.
    (recoveredBlock806Value3) topWidget: (recoveredBlock806Value4).
    recoveredBlock806Value5 := recoveredBlock806Value0.
    (recoveredBlock806Value5) topOffset: (5).
    recoveredBlock806Value6 := recoveredBlock806Value0.
    recoveredBlock806Value7 := XmATTACHNONE.
    (recoveredBlock806Value6) bottomAttachment: (recoveredBlock806Value7).
    recoveredBlock806Value8 := recoveredBlock806Value0.
    recoveredBlock806Value9 := XmATTACHFORM.
    (recoveredBlock806Value8) rightAttachment: (recoveredBlock806Value9).
    recoveredBlock806Value10 := recoveredBlock806Value0.
    (recoveredBlock806Value10) rightOffset: (5).
    recoveredBlock806Value11 := XmATTACHNONE.
    recoveredBlock806Value12 := (recoveredBlock806Value0) leftAttachment: (recoveredBlock806Value11).
    recoveredBlock806Value12
].
            recoveredPC := 868.
        ].
        recoveredStep = 868 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 873.
        ].
        recoveredStep = 873 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 876.
        ].
        recoveredStep = 876 ifTrue: [
            recoveredStack2 := [:recoveredBlock876Arg1 | 
    | recoveredBlock876Value0 recoveredBlock876Value1 recoveredBlock876Value2 recoveredBlock876Value3 recoveredBlock876Value4 recoveredBlock876Value5 recoveredBlock876Value6 recoveredBlock876Value7 recoveredBlock876Value8 recoveredBlock876Value9 recoveredBlock876Value10 recoveredBlock876Value11 recoveredBlock876Value12 |
    recoveredBlock876Value0 := recoveredBlock876Arg1.
    recoveredBlock876Value1 := recoveredBlock876Value0.
    recoveredBlock876Value2 := XmATTACHWIDGET.
    (recoveredBlock876Value1) topAttachment: (recoveredBlock876Value2).
    recoveredBlock876Value3 := recoveredBlock876Value0.
    recoveredBlock876Value4 := recoveredLocal4.
    (recoveredBlock876Value3) topWidget: (recoveredBlock876Value4).
    recoveredBlock876Value5 := recoveredBlock876Value0.
    (recoveredBlock876Value5) topOffset: (5).
    recoveredBlock876Value6 := recoveredBlock876Value0.
    recoveredBlock876Value7 := XmATTACHNONE.
    (recoveredBlock876Value6) bottomAttachment: (recoveredBlock876Value7).
    recoveredBlock876Value8 := recoveredBlock876Value0.
    recoveredBlock876Value9 := XmATTACHFORM.
    (recoveredBlock876Value8) rightAttachment: (recoveredBlock876Value9).
    recoveredBlock876Value10 := recoveredBlock876Value0.
    (recoveredBlock876Value10) rightOffset: (5).
    recoveredBlock876Value11 := XmATTACHNONE.
    recoveredBlock876Value12 := (recoveredBlock876Value0) leftAttachment: (recoveredBlock876Value11).
    recoveredBlock876Value12
].
            recoveredPC := 938.
        ].
        recoveredStep = 938 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 943.
        ].
        recoveredStep = 943 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 946.
        ].
        recoveredStep = 946 ifTrue: [
            recoveredStack2 := [:block28127ab0Arg1 | 
    | block28127ab0Value0 block28127ab0Value1 block28127ab0Value2 block28127ab0Value3 block28127ab0Value4 block28127ab0Value5 block28127ab0Value6 block28127ab0Value7 block28127ab0Value8 |
    block28127ab0Value0 := block28127ab0Arg1.
    block28127ab0Value1 := block28127ab0Value0.
    block28127ab0Value2 := XmATTACHNONE.
    (block28127ab0Value1) topAttachment: (block28127ab0Value2).
    block28127ab0Value3 := block28127ab0Value0.
    block28127ab0Value4 := XmATTACHFORM.
    (block28127ab0Value3) bottomAttachment: (block28127ab0Value4).
    block28127ab0Value5 := block28127ab0Value0.
    (block28127ab0Value5) bottomOffset: (5).
    block28127ab0Value6 := block28127ab0Value0.
    block28127ab0Value7 := XmATTACHFORM.
    (block28127ab0Value6) rightAttachment: (block28127ab0Value7).
    block28127ab0Value8 := (block28127ab0Value0) rightOffset: (5).
    block28127ab0Value8
].
            recoveredPC := 950.
        ].
        recoveredStep = 950 ifTrue: [
            recoveredPC := 994.
        ].
        recoveredStep = 994 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 999.
        ].
        recoveredStep = 999 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1002.
        ].
        recoveredStep = 1002 ifTrue: [
            recoveredStack2 := [:recoveredBlock1002Arg1 | 
    | recoveredBlock1002Value0 recoveredBlock1002Value1 recoveredBlock1002Value2 recoveredBlock1002Value3 recoveredBlock1002Value4 recoveredBlock1002Value5 recoveredBlock1002Value6 recoveredBlock1002Value7 recoveredBlock1002Value8 recoveredBlock1002Value9 recoveredBlock1002Value10 |
    recoveredBlock1002Value0 := recoveredBlock1002Arg1.
    recoveredBlock1002Value1 := recoveredBlock1002Value0.
    recoveredBlock1002Value2 := XmATTACHNONE.
    (recoveredBlock1002Value1) topAttachment: (recoveredBlock1002Value2).
    recoveredBlock1002Value3 := recoveredBlock1002Value0.
    recoveredBlock1002Value4 := XmATTACHFORM.
    (recoveredBlock1002Value3) bottomAttachment: (recoveredBlock1002Value4).
    recoveredBlock1002Value5 := recoveredBlock1002Value0.
    (recoveredBlock1002Value5) bottomOffset: (5).
    recoveredBlock1002Value6 := recoveredBlock1002Value0.
    recoveredBlock1002Value7 := XmATTACHWIDGET.
    (recoveredBlock1002Value6) rightAttachment: (recoveredBlock1002Value7).
    recoveredBlock1002Value8 := recoveredBlock1002Value0.
    recoveredBlock1002Value9 := recoveredLocal7.
    (recoveredBlock1002Value8) rightWidget: (recoveredBlock1002Value9).
    recoveredBlock1002Value10 := (recoveredBlock1002Value0) rightOffset: (5).
    recoveredBlock1002Value10
].
            recoveredPC := 1056.
        ].
        recoveredStep = 1056 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1061.
        ].
        recoveredStep = 1061 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1064.
        ].
        recoveredStep = 1064 ifTrue: [
            recoveredStack2 := XmNcellSingleSelectionCallback.
            recoveredPC := 1068.
        ].
        recoveredStep = 1068 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1069.
        ].
        recoveredStep = 1069 ifTrue: [
            recoveredStack4 := 'fontMappinListSingleSelect:clientData:callData:'.
            recoveredPC := 1072.
        ].
        recoveredStep = 1072 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1073.
        ].
        recoveredStep = 1073 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1077.
        ].
        recoveredStep = 1077 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1080.
        ].
        recoveredStep = 1080 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1084.
        ].
        recoveredStep = 1084 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1085.
        ].
        recoveredStep = 1085 ifTrue: [
            recoveredStack4 := 'addActivate:clientData:callData:'.
            recoveredPC := 1088.
        ].
        recoveredStep = 1088 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1089.
        ].
        recoveredStep = 1089 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1093.
        ].
        recoveredStep = 1093 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1096.
        ].
        recoveredStep = 1096 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1100.
        ].
        recoveredStep = 1100 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1101.
        ].
        recoveredStep = 1101 ifTrue: [
            recoveredStack4 := 'removeActivate:clientData:callData:'.
            recoveredPC := 1104.
        ].
        recoveredStep = 1104 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1105.
        ].
        recoveredStep = 1105 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1109.
        ].
        recoveredStep = 1109 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1112.
        ].
        recoveredStep = 1112 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1116.
        ].
        recoveredStep = 1116 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1117.
        ].
        recoveredStep = 1117 ifTrue: [
            recoveredStack4 := 'previewActivate:clientData:callData:'.
            recoveredPC := 1120.
        ].
        recoveredStep = 1120 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1121.
        ].
        recoveredStep = 1121 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1125.
        ].
        recoveredStep = 1125 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1128.
        ].
        recoveredStep = 1128 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1132.
        ].
        recoveredStep = 1132 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1133.
        ].
        recoveredStep = 1133 ifTrue: [
            recoveredStack4 := 'cancelActivate:clientData:callData:'.
            recoveredPC := 1136.
        ].
        recoveredStep = 1136 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1137.
        ].
        recoveredStep = 1137 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1141.
        ].
        recoveredStep = 1141 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1144.
        ].
        recoveredStep = 1144 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1148.
        ].
        recoveredStep = 1148 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1149.
        ].
        recoveredStep = 1149 ifTrue: [
            recoveredStack4 := 'okActivate:clientData:callData:'.
            recoveredPC := 1152.
        ].
        recoveredStep = 1152 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1153.
        ].
        recoveredStep = 1153 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1157.
        ].
        recoveredStep = 1157 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1160.
        ].
        recoveredStep = 1160 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1165.
        ].
        recoveredStep = 1165 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1168.
        ].
        recoveredStep = 1168 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1173.
        ].
        recoveredStep = 1173 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1176.
        ].
        recoveredStep = 1176 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1181.
        ].
        recoveredStep = 1181 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1184.
        ].
        recoveredStep = 1184 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1189.
        ].
        recoveredStep = 1189 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1192.
        ].
        recoveredStep = 1192 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1197.
        ].
        recoveredStep = 1197 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1200.
        ].
        recoveredStep = 1200 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1205.
        ].
        recoveredStep = 1205 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 1209.
        ].
        recoveredStep = 1209 ifTrue: [
            recoveredStack1 := 'Add new Mapping Entry'.
            recoveredPC := 1212.
        ].
        recoveredStep = 1212 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 1215.
        ].
        recoveredStep = 1215 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 1219.
        ].
        recoveredStep = 1219 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1220.
        ].
        recoveredStep = 1220 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 1225.
        ].
        recoveredStep = 1225 ifTrue: [
            recoveredStack1 := 'Remove selected Mapping Entry'.
            recoveredPC := 1228.
        ].
        recoveredStep = 1228 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 1231.
        ].
        recoveredStep = 1231 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 1235.
        ].
        recoveredStep = 1235 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1236.
        ].
        recoveredStep = 1236 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 1241.
        ].
        recoveredStep = 1241 ifTrue: [
            recoveredStack1 := 'Preview selected Mapping Entry'.
            recoveredPC := 1244.
        ].
        recoveredStep = 1244 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 1247.
        ].
        recoveredStep = 1247 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 1251.
        ].
        recoveredStep = 1251 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 1254.
        ].
        recoveredStep = 1254 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 1257.
        ].
        recoveredStep = 1257 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 1260.
        ].
        recoveredStep = 1260 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 1265.
        ].
        recoveredStep = 1265 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

