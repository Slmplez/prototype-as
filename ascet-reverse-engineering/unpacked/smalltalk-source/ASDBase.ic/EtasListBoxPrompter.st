"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005a560; bytecode file offset 0x957a6c"
!EtasListBoxPrompter methodsFor: 'recovered'!
listDoubleClick: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) ok.
    ^self
! !

"ASDBase.ic method 0x2005a65c; bytecode file offset 0x957a6c"
!EtasListBoxPrompter methodsFor: 'recovered'!
okButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) ok.
    ^self
! !

"ASDBase.ic method 0x2005ad58; bytecode file offset 0x957a6c"
!EtasListBoxPrompter methodsFor: 'recovered'!
cancelButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) cancel.
    ^self
! !

"ASDBase.ic method 0x20070824; bytecode file offset 0x96d218"
!EtasListBoxPrompter methodsFor: 'recovered'!
stringList
    | recoveredValue0 |
    recoveredValue0 := stringList.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070c6c; bytecode file offset 0x96d580"
!EtasListBoxPrompter methodsFor: 'recovered'!
selPolicy
    | recoveredValue0 |
    recoveredValue0 := selPolicy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008a214; bytecode file offset 0x986c00"
!EtasListBoxPrompter methodsFor: 'recovered'!
aList
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := widgetDictionary.
    recoveredValue1 := (recoveredValue0) at: ('aList').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008a294; bytecode file offset 0x986c00"
!EtasListBoxPrompter methodsFor: 'recovered'!
aList1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := widgetDictionary.
    recoveredValue1 := (recoveredValue0) at: ('aList1').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008a2c4; bytecode file offset 0x986c00"
!EtasListBoxPrompter methodsFor: 'recovered'!
label
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := widgetDictionary.
    recoveredValue1 := (recoveredValue0) at: ('aLabel').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008a304; bytecode file offset 0x986c00"
!EtasListBoxPrompter methodsFor: 'recovered'!
aShell
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := widgetDictionary.
    recoveredValue1 := (recoveredValue0) at: ('aDialogShell1').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200c6c50; bytecode file offset 0x9c36ec"
!EtasListBoxPrompter methodsFor: 'recovered'!
message: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    message := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6efc; bytecode file offset 0x9c38d8"
!EtasListBoxPrompter methodsFor: 'recovered'!
stringList: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    stringList := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c70e0; bytecode file offset 0x9c3a8c"
!EtasListBoxPrompter methodsFor: 'recovered'!
defaultSel: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    defaultSel := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c733c; bytecode file offset 0x9c3c10"
!EtasListBoxPrompter methodsFor: 'recovered'!
selPolicy: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selPolicy := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200cd480; bytecode file offset 0x9ca268"
!EtasListBoxPrompter methodsFor: 'recovered'!
inputText
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := widgetDictionary.
    recoveredValue1 := [].
    recoveredValue2 := (recoveredValue0) at: ('anInputText') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d2ac4; bytecode file offset 0x9cf398"
!EtasListBoxPrompter methodsFor: 'recovered'!
calculatePositions
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) label.
    recoveredValue1 := (self) label.
    recoveredValue2 := (recoveredValue1) width.
    (self) updateStringForLabel: (recoveredValue0) width: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20111a14; bytecode file offset 0xa0e324"
!EtasListBoxPrompter methodsFor: 'recovered'!
resizeSupervision: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    super resizeSupervision: (recoveredValue0) clientData: (recoveredValue1) callData: (recoveredValue2).
    (self) calculatePositions.
    ^self
! !

"ASDBase.ic method 0x2020a1ac; bytecode file offset 0xb06a84"
!EtasListBoxPrompter methodsFor: 'recovered'!
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

"ASDBase.ic method 0x20225c00; bytecode file offset 0xb224d0"
!EtasListBoxPrompter methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    super initialize.
    windowTitle := 'New Selection'.
    message := 'Select item:'.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    stringList := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    defaultSel := recoveredValue3.
    recoveredValue4 := XmSINGLESELECT.
    selPolicy := recoveredValue4.
    ^self
! !

"ASDBase.ic method 0x2023ce74; bytecode file offset 0xb3974c"
!EtasListBoxPrompter methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    super initializeAfterCreate.
    (self) updateFonts.
    recoveredValue0 := (self) label.
    recoveredValue1 := message.
    (recoveredValue0) labelString: (recoveredValue1).
    recoveredValue2 := (self) aList1.
    recoveredValue3 := selPolicy.
    (recoveredValue2) selectionPolicy: (recoveredValue3).
    recoveredValue4 := (self) aList1.
    recoveredValue5 := stringList.
    (recoveredValue4) items: (recoveredValue5).
    (self) installActionKeys.
    ^self
! !

"ASDBase.ic method 0x2024ea6c; bytecode file offset 0xb4b33c"
!EtasListBoxPrompter methodsFor: 'recovered'!
ok
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) aList1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) result: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := selPolicy.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := XmMULTIPLESELECT.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) result: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) close.
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

"ASDBase.ic method 0x202731fc; bytecode file offset 0xb6fad4"
!EtasListBoxPrompter methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := Dictionary.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) at: ('Alt-o') put: ('ok').
    recoveredValue6 := recoveredValue4.
    (recoveredValue6) at: ('Alt-c') put: ('cancel').
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := (self) shell.
    recoveredValue9 := recoveredLocal1.
    (recoveredValue7) at: (recoveredValue8) put: (recoveredValue9).
    recoveredValue10 := recoveredLocal2.
    (self) widgetKeyActions: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x2034d0e4; bytecode file offset 0xc499d4"
!EtasListBoxPrompter methodsFor: 'recovered'!
selectKeySequence
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) detectedKeyInputString.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) asUppercase.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 'call_85252'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) inputText.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := recoveredLocal1.
    recoveredBlock18Value2 := ('(') , (recoveredBlock18Value1).
    recoveredBlock18Value3 := (recoveredBlock18Value2) , (')').
    recoveredBlock18Value4 := (recoveredBlock18Value0) labelString: (recoveredBlock18Value3).
    recoveredBlock18Value4
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) selPolicy.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := XmSINGLESELECT.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := super selectKeySequence.
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
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) selectWithKey: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20427670; bytecode file offset 0xd23f44"
!EtasListBoxPrompter methodsFor: 'recovered'!
inputEvent: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) keycode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := -33.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := -34.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := -35.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) aList1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectPos: (recoveredStack2) notify: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := -36.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) aList1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectPos: (recoveredStack2) notify: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := -38.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := -40.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) character.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := 13.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) asCharacter.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) ok.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredPC := 102.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            super inputEvent: (recoveredStack2) clientData: (recoveredStack3) callData: (recoveredStack4).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2043207c; bytecode file offset 0xd2e96c"
!EtasListBoxPrompter methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            (recoveredStack0) calculatePositions.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := defaultSel.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isString.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) aList1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := defaultSel.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) selectedItems: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := defaultSel.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) aList1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := defaultSel.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) setItem: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := selPolicy.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := XmSINGLESELECT.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 57].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := defaultSel.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) selectWithKey: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 99.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) aList1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := defaultSel.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) selectedItems: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := defaultSel.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 99] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) aList1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := defaultSel.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) setItem: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := selPolicy.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := XmSINGLESELECT.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 99].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := defaultSel.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) selectWithKey: (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) aList1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) setInputFocus.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20577bc8; bytecode file offset 0xe744cc"
!EtasListBoxPrompter methodsFor: 'recovered'!
selectWithKey: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) aList1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
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
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) aList1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) setPos: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) selectPos: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) asUppercase.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 'call_85252'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) inputText.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := [:recoveredBlock51Arg1 | 
    | recoveredBlock51Value0 recoveredBlock51Value1 recoveredBlock51Value2 recoveredBlock51Value3 recoveredBlock51Value4 |
    recoveredBlock51Value0 := recoveredBlock51Arg1.
    recoveredBlock51Value1 := recoveredLocal2.
    recoveredBlock51Value2 := ('(') , (recoveredBlock51Value1).
    recoveredBlock51Value3 := (recoveredBlock51Value2) , (')').
    recoveredBlock51Value4 := (recoveredBlock51Value0) labelString: (recoveredBlock51Value3).
    recoveredBlock51Value4
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) stringList.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := [:recoveredBlock78Arg1 :recoveredBlock78Arg2 | 
    | recoveredBlock78Stack0 recoveredBlock78Stack1 recoveredBlock78Stack2 recoveredBlock78Stack3 recoveredBlock78Stack4 recoveredBlock78Stack5 recoveredBlock78PC recoveredBlock78Step recoveredBlock78Done recoveredBlock78Result |
    recoveredBlock78Stack0 := self.
    recoveredBlock78PC := 84.
    recoveredBlock78Done := false.
    [recoveredBlock78Done not] whileTrue: [
        recoveredBlock78Step := recoveredBlock78PC.
        recoveredBlock78Step = 84 ifTrue: [
            recoveredBlock78Stack1 := nil.
            recoveredBlock78PC := 85.
        ].
        recoveredBlock78Step = 85 ifTrue: [
            recoveredBlock78Stack2 := recoveredLocal2.
            recoveredBlock78PC := 88.
        ].
        recoveredBlock78Step = 88 ifTrue: [
            recoveredBlock78Stack2 := (recoveredBlock78Stack2) isEmpty.
            recoveredBlock78PC := 89.
        ].
        recoveredBlock78Step = 89 ifTrue: [
            (recoveredBlock78Stack2) ifTrue: [recoveredBlock78PC := 141] ifFalse: [recoveredBlock78PC := 92].
        ].
        recoveredBlock78Step = 92 ifTrue: [
            recoveredBlock78PC := 93.
        ].
        recoveredBlock78Step = 93 ifTrue: [
            recoveredBlock78Stack1 := nil.
            recoveredBlock78PC := 94.
        ].
        recoveredBlock78Step = 94 ifTrue: [
            recoveredBlock78Stack2 := recoveredBlock78Arg1.
            recoveredBlock78PC := 95.
        ].
        recoveredBlock78Step = 95 ifTrue: [
            recoveredBlock78Stack2 := (recoveredBlock78Stack2) size.
            recoveredBlock78PC := 97.
        ].
        recoveredBlock78Step = 97 ifTrue: [
            recoveredBlock78Stack3 := recoveredLocal2.
            recoveredBlock78PC := 100.
        ].
        recoveredBlock78Step = 100 ifTrue: [
            recoveredBlock78Stack3 := (recoveredBlock78Stack3) size.
            recoveredBlock78PC := 102.
        ].
        recoveredBlock78Step = 102 ifTrue: [
            recoveredBlock78Stack2 := (recoveredBlock78Stack2) >= (recoveredBlock78Stack3).
            recoveredBlock78PC := 103.
        ].
        recoveredBlock78Step = 103 ifTrue: [
            (recoveredBlock78Stack2) ifTrue: [recoveredBlock78PC := 106] ifFalse: [recoveredBlock78PC := 141].
        ].
        recoveredBlock78Step = 106 ifTrue: [
            recoveredBlock78PC := 107.
        ].
        recoveredBlock78Step = 107 ifTrue: [
            recoveredBlock78Stack1 := nil.
            recoveredBlock78PC := 108.
        ].
        recoveredBlock78Step = 108 ifTrue: [
            recoveredBlock78Stack2 := recoveredBlock78Arg1.
            recoveredBlock78PC := 109.
        ].
        recoveredBlock78Step = 109 ifTrue: [
            recoveredBlock78Stack2 := (recoveredBlock78Stack2) asUppercase.
            recoveredBlock78PC := 111.
        ].
        recoveredBlock78Step = 111 ifTrue: [
            recoveredBlock78Stack3 := 1.
            recoveredBlock78PC := 113.
        ].
        recoveredBlock78Step = 113 ifTrue: [
            recoveredBlock78Stack4 := recoveredLocal2.
            recoveredBlock78PC := 116.
        ].
        recoveredBlock78Step = 116 ifTrue: [
            recoveredBlock78Stack4 := (recoveredBlock78Stack4) size.
            recoveredBlock78PC := 118.
        ].
        recoveredBlock78Step = 118 ifTrue: [
            recoveredBlock78Stack2 := (recoveredBlock78Stack2) copyFrom: (recoveredBlock78Stack3) to: (recoveredBlock78Stack4).
            recoveredBlock78PC := 120.
        ].
        recoveredBlock78Step = 120 ifTrue: [
            recoveredBlock78Stack3 := recoveredLocal2.
            recoveredBlock78PC := 123.
        ].
        recoveredBlock78Step = 123 ifTrue: [
            recoveredBlock78Stack2 := (recoveredBlock78Stack2) = (recoveredBlock78Stack3).
            recoveredBlock78PC := 124.
        ].
        recoveredBlock78Step = 124 ifTrue: [
            (recoveredBlock78Stack2) ifTrue: [recoveredBlock78PC := 128] ifFalse: [recoveredBlock78PC := 141].
        ].
        recoveredBlock78Step = 128 ifTrue: [
            recoveredBlock78PC := 129.
        ].
        recoveredBlock78Step = 129 ifTrue: [
            recoveredBlock78Stack1 := self.
            recoveredBlock78PC := 130.
        ].
        recoveredBlock78Step = 130 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) aList1.
            recoveredBlock78PC := 131.
        ].
        recoveredBlock78Step = 131 ifTrue: [
            recoveredBlock78Stack2 := recoveredBlock78Stack1.
            recoveredBlock78PC := 132.
        ].
        recoveredBlock78Step = 132 ifTrue: [
            recoveredBlock78Stack3 := recoveredBlock78Arg2.
            recoveredBlock78PC := 133.
        ].
        recoveredBlock78Step = 133 ifTrue: [
            (recoveredBlock78Stack2) setPos: (recoveredBlock78Stack3).
            recoveredBlock78PC := 135.
        ].
        recoveredBlock78Step = 135 ifTrue: [
            recoveredBlock78Stack2 := recoveredBlock78Arg2.
            recoveredBlock78PC := 136.
        ].
        recoveredBlock78Step = 136 ifTrue: [
            recoveredBlock78Stack3 := true.
            recoveredBlock78PC := 137.
        ].
        recoveredBlock78Step = 137 ifTrue: [
            (recoveredBlock78Stack1) selectPos: (recoveredBlock78Stack2) notify: (recoveredBlock78Stack3).
            recoveredBlock78PC := 139.
        ].
        recoveredBlock78Step = 139 ifTrue: [
            recoveredBlock78Stack1 := nil.
            recoveredBlock78PC := 140.
        ].
        recoveredBlock78Step = 140 ifTrue: [
            ^recoveredBlock78Stack1
        ].
        recoveredBlock78Step = 141 ifTrue: [
            recoveredBlock78Result := recoveredBlock78Stack1.
            recoveredBlock78Done := true.
        ].
    ].
    recoveredBlock78Result
].
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 246] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := -1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack3 := [:recoveredBlock161Arg1 | 
    | recoveredBlock161Local1 recoveredBlock161Value0 recoveredBlock161Value1 recoveredBlock161Value2 recoveredBlock161Value3 recoveredBlock161Value4 recoveredBlock161Value5 |
    recoveredBlock161Value0 := recoveredLocal2.
    recoveredBlock161Value1 := recoveredBlock161Arg1.
    recoveredBlock161Value2 := (recoveredBlock161Value0) copyFrom: (1) to: (recoveredBlock161Value1).
    recoveredBlock161Local1 := recoveredBlock161Value2.
    recoveredBlock161Value3 := (self) stringList.
    recoveredBlock161Value4 := [:recoveredBlock161Block183Arg1 :recoveredBlock161Block183Arg2 | 
    | recoveredBlock161Block183Stack0 recoveredBlock161Block183Stack1 recoveredBlock161Block183Stack2 recoveredBlock161Block183Stack3 recoveredBlock161Block183Stack4 recoveredBlock161Block183Stack5 recoveredBlock161Block183PC recoveredBlock161Block183Step recoveredBlock161Block183Done recoveredBlock161Block183Result |
    recoveredBlock161Block183Stack0 := self.
    recoveredBlock161Block183PC := 190.
    recoveredBlock161Block183Done := false.
    [recoveredBlock161Block183Done not] whileTrue: [
        recoveredBlock161Block183Step := recoveredBlock161Block183PC.
        recoveredBlock161Block183Step = 190 ifTrue: [
            recoveredBlock161Block183Stack1 := nil.
            recoveredBlock161Block183PC := 191.
        ].
        recoveredBlock161Block183Step = 191 ifTrue: [
            recoveredBlock161Block183Stack2 := recoveredBlock161Block183Arg1.
            recoveredBlock161Block183PC := 192.
        ].
        recoveredBlock161Block183Step = 192 ifTrue: [
            recoveredBlock161Block183Stack2 := (recoveredBlock161Block183Stack2) size.
            recoveredBlock161Block183PC := 194.
        ].
        recoveredBlock161Block183Step = 194 ifTrue: [
            recoveredBlock161Block183Stack3 := recoveredBlock161Local1.
            recoveredBlock161Block183PC := 197.
        ].
        recoveredBlock161Block183Step = 197 ifTrue: [
            recoveredBlock161Block183Stack3 := (recoveredBlock161Block183Stack3) size.
            recoveredBlock161Block183PC := 199.
        ].
        recoveredBlock161Block183Step = 199 ifTrue: [
            recoveredBlock161Block183Stack2 := (recoveredBlock161Block183Stack2) >= (recoveredBlock161Block183Stack3).
            recoveredBlock161Block183PC := 200.
        ].
        recoveredBlock161Block183Step = 200 ifTrue: [
            (recoveredBlock161Block183Stack2) ifTrue: [recoveredBlock161Block183PC := 204] ifFalse: [recoveredBlock161Block183PC := 239].
        ].
        recoveredBlock161Block183Step = 204 ifTrue: [
            recoveredBlock161Block183PC := 205.
        ].
        recoveredBlock161Block183Step = 205 ifTrue: [
            recoveredBlock161Block183Stack1 := nil.
            recoveredBlock161Block183PC := 206.
        ].
        recoveredBlock161Block183Step = 206 ifTrue: [
            recoveredBlock161Block183Stack2 := recoveredBlock161Block183Arg1.
            recoveredBlock161Block183PC := 207.
        ].
        recoveredBlock161Block183Step = 207 ifTrue: [
            recoveredBlock161Block183Stack2 := (recoveredBlock161Block183Stack2) asUppercase.
            recoveredBlock161Block183PC := 209.
        ].
        recoveredBlock161Block183Step = 209 ifTrue: [
            recoveredBlock161Block183Stack3 := 1.
            recoveredBlock161Block183PC := 211.
        ].
        recoveredBlock161Block183Step = 211 ifTrue: [
            recoveredBlock161Block183Stack4 := recoveredBlock161Local1.
            recoveredBlock161Block183PC := 214.
        ].
        recoveredBlock161Block183Step = 214 ifTrue: [
            recoveredBlock161Block183Stack4 := (recoveredBlock161Block183Stack4) size.
            recoveredBlock161Block183PC := 216.
        ].
        recoveredBlock161Block183Step = 216 ifTrue: [
            recoveredBlock161Block183Stack2 := (recoveredBlock161Block183Stack2) copyFrom: (recoveredBlock161Block183Stack3) to: (recoveredBlock161Block183Stack4).
            recoveredBlock161Block183PC := 218.
        ].
        recoveredBlock161Block183Step = 218 ifTrue: [
            recoveredBlock161Block183Stack3 := recoveredBlock161Local1.
            recoveredBlock161Block183PC := 221.
        ].
        recoveredBlock161Block183Step = 221 ifTrue: [
            recoveredBlock161Block183Stack2 := (recoveredBlock161Block183Stack2) = (recoveredBlock161Block183Stack3).
            recoveredBlock161Block183PC := 222.
        ].
        recoveredBlock161Block183Step = 222 ifTrue: [
            (recoveredBlock161Block183Stack2) ifTrue: [recoveredBlock161Block183PC := 226] ifFalse: [recoveredBlock161Block183PC := 239].
        ].
        recoveredBlock161Block183Step = 226 ifTrue: [
            recoveredBlock161Block183PC := 227.
        ].
        recoveredBlock161Block183Step = 227 ifTrue: [
            recoveredBlock161Block183Stack1 := self.
            recoveredBlock161Block183PC := 228.
        ].
        recoveredBlock161Block183Step = 228 ifTrue: [
            recoveredBlock161Block183Stack1 := (recoveredBlock161Block183Stack1) aList1.
            recoveredBlock161Block183PC := 229.
        ].
        recoveredBlock161Block183Step = 229 ifTrue: [
            recoveredBlock161Block183Stack2 := recoveredBlock161Block183Stack1.
            recoveredBlock161Block183PC := 230.
        ].
        recoveredBlock161Block183Step = 230 ifTrue: [
            recoveredBlock161Block183Stack3 := recoveredBlock161Block183Arg2.
            recoveredBlock161Block183PC := 231.
        ].
        recoveredBlock161Block183Step = 231 ifTrue: [
            (recoveredBlock161Block183Stack2) setPos: (recoveredBlock161Block183Stack3).
            recoveredBlock161Block183PC := 233.
        ].
        recoveredBlock161Block183Step = 233 ifTrue: [
            recoveredBlock161Block183Stack2 := recoveredBlock161Block183Arg2.
            recoveredBlock161Block183PC := 234.
        ].
        recoveredBlock161Block183Step = 234 ifTrue: [
            recoveredBlock161Block183Stack3 := true.
            recoveredBlock161Block183PC := 235.
        ].
        recoveredBlock161Block183Step = 235 ifTrue: [
            (recoveredBlock161Block183Stack1) selectPos: (recoveredBlock161Block183Stack2) notify: (recoveredBlock161Block183Stack3).
            recoveredBlock161Block183PC := 237.
        ].
        recoveredBlock161Block183Step = 237 ifTrue: [
            recoveredBlock161Block183Stack1 := nil.
            recoveredBlock161Block183PC := 238.
        ].
        recoveredBlock161Block183Step = 238 ifTrue: [
            ^recoveredBlock161Block183Stack1
        ].
        recoveredBlock161Block183Step = 239 ifTrue: [
            recoveredBlock161Block183Result := recoveredBlock161Block183Stack1.
            recoveredBlock161Block183Done := true.
        ].
    ].
    recoveredBlock161Block183Result
].
    recoveredBlock161Value5 := (recoveredBlock161Value3) doWithIndex: (recoveredBlock161Value4).
    recoveredBlock161Value5
].
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            (recoveredStack0) to: (recoveredStack1) by: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := (recoveredStack0) aList1.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            (recoveredStack0) deselectAllItems.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20653894; bytecode file offset 0xf50298"
!EtasListBoxPrompter methodsFor: 'recovered'!
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
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 recoveredBlock25Value5 recoveredBlock25Value6 recoveredBlock25Value7 recoveredBlock25Value8 recoveredBlock25Value9 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredBlock25Value1 := recoveredBlock25Value0.
    (recoveredBlock25Value1) title: ('Dialog').
    recoveredBlock25Value2 := recoveredBlock25Value0.
    recoveredBlock25Value3 := recoveredLocal11.
    recoveredBlock25Value4 := (208) * (recoveredBlock25Value3).
    recoveredBlock25Value5 := (recoveredBlock25Value4) rounded.
    (recoveredBlock25Value2) height: (recoveredBlock25Value5).
    recoveredBlock25Value6 := recoveredLocal12.
    recoveredBlock25Value7 := (295) * (recoveredBlock25Value6).
    recoveredBlock25Value8 := (recoveredBlock25Value7) rounded.
    recoveredBlock25Value9 := (recoveredBlock25Value0) width: (recoveredBlock25Value8).
    recoveredBlock25Value9
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := MWMINPUTSYSTEMMODAL.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) mwmInputMode: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := [:recoveredBlock134Arg1 | 
    | recoveredBlock134Value0 recoveredBlock134Value1 recoveredBlock134Value2 recoveredBlock134Value3 recoveredBlock134Value4 recoveredBlock134Value5 recoveredBlock134Value6 recoveredBlock134Value7 recoveredBlock134Value8 recoveredBlock134Value9 recoveredBlock134Value10 recoveredBlock134Value11 recoveredBlock134Value12 recoveredBlock134Value13 |
    recoveredBlock134Value0 := recoveredBlock134Arg1.
    recoveredBlock134Value1 := recoveredBlock134Value0.
    recoveredBlock134Value2 := recoveredLocal12.
    recoveredBlock134Value3 := (271) * (recoveredBlock134Value2).
    recoveredBlock134Value4 := (recoveredBlock134Value3) rounded.
    (recoveredBlock134Value1) x: (recoveredBlock134Value4).
    recoveredBlock134Value5 := recoveredBlock134Value0.
    (recoveredBlock134Value5) labelString: ('&Ok').
    recoveredBlock134Value6 := recoveredBlock134Value0.
    recoveredBlock134Value7 := recoveredLocal11.
    recoveredBlock134Value8 := (10) * (recoveredBlock134Value7).
    recoveredBlock134Value9 := (recoveredBlock134Value8) rounded.
    (recoveredBlock134Value6) y: (recoveredBlock134Value9).
    recoveredBlock134Value10 := recoveredLocal12.
    recoveredBlock134Value11 := (110) * (recoveredBlock134Value10).
    recoveredBlock134Value12 := (recoveredBlock134Value11) rounded.
    recoveredBlock134Value13 := (recoveredBlock134Value0) width: (recoveredBlock134Value12).
    recoveredBlock134Value13
].
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack3 := [:recoveredBlock205Arg1 | 
    | recoveredBlock205Value0 recoveredBlock205Value1 recoveredBlock205Value2 recoveredBlock205Value3 recoveredBlock205Value4 recoveredBlock205Value5 recoveredBlock205Value6 recoveredBlock205Value7 recoveredBlock205Value8 recoveredBlock205Value9 recoveredBlock205Value10 recoveredBlock205Value11 recoveredBlock205Value12 recoveredBlock205Value13 recoveredBlock205Value14 |
    recoveredBlock205Value0 := recoveredBlock205Arg1.
    recoveredBlock205Value1 := recoveredBlock205Value0.
    recoveredBlock205Value2 := recoveredLocal12.
    recoveredBlock205Value3 := (283) * (recoveredBlock205Value2).
    recoveredBlock205Value4 := (recoveredBlock205Value3) rounded.
    (recoveredBlock205Value1) x: (recoveredBlock205Value4).
    recoveredBlock205Value5 := recoveredBlock205Value0.
    recoveredBlock205Value6 := XmVERTICAL.
    (recoveredBlock205Value5) orientation: (recoveredBlock205Value6).
    recoveredBlock205Value7 := recoveredBlock205Value0.
    recoveredBlock205Value8 := recoveredLocal11.
    recoveredBlock205Value9 := (50) * (recoveredBlock205Value8).
    recoveredBlock205Value10 := (recoveredBlock205Value9) rounded.
    (recoveredBlock205Value7) height: (recoveredBlock205Value10).
    recoveredBlock205Value11 := recoveredLocal12.
    recoveredBlock205Value12 := (12) * (recoveredBlock205Value11).
    recoveredBlock205Value13 := (recoveredBlock205Value12) rounded.
    recoveredBlock205Value14 := (recoveredBlock205Value0) width: (recoveredBlock205Value13).
    recoveredBlock205Value14
].
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack3 := [:recoveredBlock275Arg1 | 
    | recoveredBlock275Value0 recoveredBlock275Value1 recoveredBlock275Value2 recoveredBlock275Value3 recoveredBlock275Value4 recoveredBlock275Value5 recoveredBlock275Value6 recoveredBlock275Value7 recoveredBlock275Value8 recoveredBlock275Value9 recoveredBlock275Value10 recoveredBlock275Value11 recoveredBlock275Value12 recoveredBlock275Value13 |
    recoveredBlock275Value0 := recoveredBlock275Arg1.
    recoveredBlock275Value1 := recoveredBlock275Value0.
    recoveredBlock275Value2 := recoveredLocal12.
    recoveredBlock275Value3 := (282) * (recoveredBlock275Value2).
    recoveredBlock275Value4 := (recoveredBlock275Value3) rounded.
    (recoveredBlock275Value1) x: (recoveredBlock275Value4).
    recoveredBlock275Value5 := recoveredBlock275Value0.
    (recoveredBlock275Value5) labelString: ('&Cancel').
    recoveredBlock275Value6 := recoveredBlock275Value0.
    recoveredBlock275Value7 := recoveredLocal11.
    recoveredBlock275Value8 := (51) * (recoveredBlock275Value7).
    recoveredBlock275Value9 := (recoveredBlock275Value8) rounded.
    (recoveredBlock275Value6) y: (recoveredBlock275Value9).
    recoveredBlock275Value10 := recoveredLocal12.
    recoveredBlock275Value11 := (110) * (recoveredBlock275Value10).
    recoveredBlock275Value12 := (recoveredBlock275Value11) rounded.
    recoveredBlock275Value13 := (recoveredBlock275Value0) width: (recoveredBlock275Value12).
    recoveredBlock275Value13
].
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack2 := 'aLabel'.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack3 := [:block28123778Arg1 | 
    | block28123778Value0 block28123778Value1 block28123778Value2 block28123778Value3 |
    block28123778Value0 := block28123778Arg1.
    block28123778Value1 := block28123778Value0.
    block28123778Value2 := XmALIGNMENTBEGINNING.
    (block28123778Value1) alignment: (block28123778Value2).
    block28123778Value3 := (block28123778Value0) labelString: ('Message').
    block28123778Value3
].
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack2 := 'aLabel'.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack2 := 'anInputText'.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack3 := [:block2812379cArg1 | 
    | block2812379cValue0 block2812379cValue1 block2812379cValue2 block2812379cValue3 |
    block2812379cValue0 := block2812379cArg1.
    block2812379cValue1 := block2812379cValue0.
    block2812379cValue2 := XmALIGNMENTBEGINNING.
    (block2812379cValue1) alignment: (block2812379cValue2).
    block2812379cValue3 := (block2812379cValue0) labelString: ('()').
    block2812379cValue3
].
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack2 := 'anInputText'.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack2 := 'aList1'.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledList: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack2 := 'aList'.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack2 := 'aList1'.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack2 := [:recoveredBlock462Arg1 | 
    | recoveredBlock462Value0 recoveredBlock462Value1 recoveredBlock462Value2 |
    recoveredBlock462Value0 := recoveredBlock462Arg1.
    recoveredBlock462Value1 := recoveredLocal8.
    recoveredBlock462Value2 := (recoveredBlock462Value0) workWindow: (recoveredBlock462Value1).
    recoveredBlock462Value2
].
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack2 := [:block281237c0Arg1 | 
    | block281237c0Value0 block281237c0Value1 block281237c0Value2 block281237c0Value3 |
    block281237c0Value0 := block281237c0Arg1.
    block281237c0Value1 := block281237c0Value0.
    block281237c0Value2 := XmATTACHFORM.
    (block281237c0Value1) rightAttachment: (block281237c0Value2).
    block281237c0Value3 := (block281237c0Value0) rightOffset: (5).
    block281237c0Value3
].
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack2 := [:block281237e4Arg1 | 
    | block281237e4Value0 block281237e4Value1 block281237e4Value2 block281237e4Value3 block281237e4Value4 block281237e4Value5 block281237e4Value6 block281237e4Value7 |
    block281237e4Value0 := block281237e4Arg1.
    block281237e4Value1 := block281237e4Value0.
    block281237e4Value2 := XmATTACHFORM.
    (block281237e4Value1) bottomAttachment: (block281237e4Value2).
    block281237e4Value3 := block281237e4Value0.
    block281237e4Value4 := XmATTACHFORM.
    (block281237e4Value3) topAttachment: (block281237e4Value4).
    block281237e4Value5 := block281237e4Value0.
    block281237e4Value6 := XmATTACHFORM.
    (block281237e4Value5) rightAttachment: (block281237e4Value6).
    block281237e4Value7 := (block281237e4Value0) rightOffset: (120).
    block281237e4Value7
].
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack2 := [:block28123808Arg1 | 
    | block28123808Value0 block28123808Value1 block28123808Value2 block28123808Value3 |
    block28123808Value0 := block28123808Arg1.
    block28123808Value1 := block28123808Value0.
    block28123808Value2 := XmATTACHFORM.
    (block28123808Value1) rightAttachment: (block28123808Value2).
    block28123808Value3 := (block28123808Value0) rightOffset: (5).
    block28123808Value3
].
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack2 := [:block2812382cArg1 | 
    | block2812382cValue0 block2812382cValue1 block2812382cValue2 block2812382cValue3 block2812382cValue4 block2812382cValue5 block2812382cValue6 block2812382cValue7 block2812382cValue8 block2812382cValue9 |
    block2812382cValue0 := block2812382cArg1.
    block2812382cValue1 := block2812382cValue0.
    block2812382cValue2 := XmATTACHFORM.
    (block2812382cValue1) topAttachment: (block2812382cValue2).
    block2812382cValue3 := block2812382cValue0.
    (block2812382cValue3) topOffset: (2).
    block2812382cValue4 := block2812382cValue0.
    block2812382cValue5 := XmATTACHFORM.
    (block2812382cValue4) leftAttachment: (block2812382cValue5).
    block2812382cValue6 := block2812382cValue0.
    (block2812382cValue6) leftOffset: (5).
    block2812382cValue7 := block2812382cValue0.
    block2812382cValue8 := XmATTACHFORM.
    (block2812382cValue7) rightAttachment: (block2812382cValue8).
    block2812382cValue9 := (block2812382cValue0) rightOffset: (135).
    block2812382cValue9
].
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 614.
        ].
        recoveredStep = 614 ifTrue: [
            recoveredStack2 := [:block28123850Arg1 | 
    | block28123850Value0 block28123850Value1 block28123850Value2 block28123850Value3 block28123850Value4 block28123850Value5 block28123850Value6 block28123850Value7 block28123850Value8 block28123850Value9 |
    block28123850Value0 := block28123850Arg1.
    block28123850Value1 := block28123850Value0.
    block28123850Value2 := XmATTACHFORM.
    (block28123850Value1) bottomAttachment: (block28123850Value2).
    block28123850Value3 := block28123850Value0.
    (block28123850Value3) bottomOffset: (2).
    block28123850Value4 := block28123850Value0.
    block28123850Value5 := XmATTACHFORM.
    (block28123850Value4) leftAttachment: (block28123850Value5).
    block28123850Value6 := block28123850Value0.
    (block28123850Value6) leftOffset: (5).
    block28123850Value7 := block28123850Value0.
    block28123850Value8 := XmATTACHFORM.
    (block28123850Value7) rightAttachment: (block28123850Value8).
    block28123850Value9 := (block28123850Value0) rightOffset: (135).
    block28123850Value9
].
            recoveredPC := 618.
        ].
        recoveredStep = 618 ifTrue: [
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 661.
        ].
        recoveredStep = 661 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 664.
        ].
        recoveredStep = 664 ifTrue: [
            recoveredStack2 := [:recoveredBlock664Arg1 | 
    | recoveredBlock664Value0 recoveredBlock664Value1 recoveredBlock664Value2 recoveredBlock664Value3 recoveredBlock664Value4 recoveredBlock664Value5 recoveredBlock664Value6 recoveredBlock664Value7 recoveredBlock664Value8 recoveredBlock664Value9 recoveredBlock664Value10 recoveredBlock664Value11 recoveredBlock664Value12 recoveredBlock664Value13 recoveredBlock664Value14 recoveredBlock664Value15 recoveredBlock664Value16 |
    recoveredBlock664Value0 := recoveredBlock664Arg1.
    recoveredBlock664Value1 := recoveredBlock664Value0.
    recoveredBlock664Value2 := XmATTACHWIDGET.
    (recoveredBlock664Value1) bottomAttachment: (recoveredBlock664Value2).
    recoveredBlock664Value3 := recoveredBlock664Value0.
    recoveredBlock664Value4 := recoveredLocal1.
    (recoveredBlock664Value3) bottomWidget: (recoveredBlock664Value4).
    recoveredBlock664Value5 := recoveredBlock664Value0.
    (recoveredBlock664Value5) bottomOffset: (2).
    recoveredBlock664Value6 := recoveredBlock664Value0.
    recoveredBlock664Value7 := XmATTACHWIDGET.
    (recoveredBlock664Value6) topAttachment: (recoveredBlock664Value7).
    recoveredBlock664Value8 := recoveredBlock664Value0.
    recoveredBlock664Value9 := recoveredLocal4.
    (recoveredBlock664Value8) topWidget: (recoveredBlock664Value9).
    recoveredBlock664Value10 := recoveredBlock664Value0.
    (recoveredBlock664Value10) topOffset: (2).
    recoveredBlock664Value11 := recoveredBlock664Value0.
    recoveredBlock664Value12 := XmATTACHFORM.
    (recoveredBlock664Value11) leftAttachment: (recoveredBlock664Value12).
    recoveredBlock664Value13 := recoveredBlock664Value0.
    (recoveredBlock664Value13) leftOffset: (5).
    recoveredBlock664Value14 := recoveredBlock664Value0.
    recoveredBlock664Value15 := XmATTACHFORM.
    (recoveredBlock664Value14) rightAttachment: (recoveredBlock664Value15).
    recoveredBlock664Value16 := (recoveredBlock664Value0) rightOffset: (135).
    recoveredBlock664Value16
].
            recoveredPC := 739.
        ].
        recoveredStep = 739 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 741.
        ].
        recoveredStep = 741 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 744.
        ].
        recoveredStep = 744 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 748.
        ].
        recoveredStep = 748 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 749.
        ].
        recoveredStep = 749 ifTrue: [
            recoveredStack4 := 'okButtonActivate:clientData:callData:'.
            recoveredPC := 752.
        ].
        recoveredStep = 752 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 753.
        ].
        recoveredStep = 753 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 757.
        ].
        recoveredStep = 757 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 760.
        ].
        recoveredStep = 760 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 764.
        ].
        recoveredStep = 764 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 765.
        ].
        recoveredStep = 765 ifTrue: [
            recoveredStack4 := 'cancelButtonActivate:clientData:callData:'.
            recoveredPC := 768.
        ].
        recoveredStep = 768 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 769.
        ].
        recoveredStep = 769 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 773.
        ].
        recoveredStep = 773 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 776.
        ].
        recoveredStep = 776 ifTrue: [
            recoveredStack2 := XmNdefaultActionCallback.
            recoveredPC := 780.
        ].
        recoveredStep = 780 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 781.
        ].
        recoveredStep = 781 ifTrue: [
            recoveredStack4 := 'listDoubleClick:clientData:callData:'.
            recoveredPC := 784.
        ].
        recoveredStep = 784 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 785.
        ].
        recoveredStep = 785 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 789.
        ].
        recoveredStep = 789 ifTrue: [
            recoveredStack0 := (recoveredStack0) selPolicy.
            recoveredPC := 793.
        ].
        recoveredStep = 793 ifTrue: [
            recoveredStack1 := XmSINGLESELECT.
            recoveredPC := 796.
        ].
        recoveredStep = 796 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 797.
        ].
        recoveredStep = 797 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 800] ifFalse: [recoveredPC := 818].
        ].
        recoveredStep = 800 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 803.
        ].
        recoveredStep = 803 ifTrue: [
            recoveredStack1 := KeyPressMask.
            recoveredPC := 806.
        ].
        recoveredStep = 806 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 807.
        ].
        recoveredStep = 807 ifTrue: [
            recoveredStack3 := 'inputEvent:clientData:callData:'.
            recoveredPC := 810.
        ].
        recoveredStep = 810 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 811.
        ].
        recoveredStep = 811 ifTrue: [
            (recoveredStack0) addEventHandler: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 815.
        ].
        recoveredStep = 815 ifTrue: [
            recoveredPC := 825.
        ].
        recoveredStep = 818 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 821.
        ].
        recoveredStep = 821 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 825.
        ].
        recoveredStep = 825 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 828.
        ].
        recoveredStep = 828 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 831.
        ].
        recoveredStep = 831 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 834.
        ].
        recoveredStep = 834 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 839.
        ].
        recoveredStep = 839 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

