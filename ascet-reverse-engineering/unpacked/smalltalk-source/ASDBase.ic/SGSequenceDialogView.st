"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200166d0; bytecode file offset 0x92209c"
!SGSequenceDialogView methodsFor: 'recovered'!
optionGroupName
    ^'Appearance\Editors\Block Diagram\Sequencing'
! !

"ASDBase.ic method 0x20042c3c; bytecode file offset 0x9451f8"
!SGSequenceDialogView methodsFor: 'recovered'!
seqName
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('nameBox').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200432ac; bytecode file offset 0x9451f8"
!SGSequenceDialogView methodsFor: 'recovered'!
mainWindow
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('aMainWindow').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004336c; bytecode file offset 0x9451f8"
!SGSequenceDialogView methodsFor: 'recovered'!
nextButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('nextNumber').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20043b4c; bytecode file offset 0x9451f8"
!SGSequenceDialogView methodsFor: 'recovered'!
seqNumber
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('spinButtonNumber').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004561c; bytecode file offset 0x9451f8"
!SGSequenceDialogView methodsFor: 'recovered'!
processNameFrame
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('processNameFrame').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005a4d0; bytecode file offset 0x957a6c"
!SGSequenceDialogView methodsFor: 'recovered'!
okActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) ok.
    ^self
! !

"ASDBase.ic method 0x2005ad28; bytecode file offset 0x957a6c"
!SGSequenceDialogView methodsFor: 'recovered'!
cancelActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) cancel.
    ^self
! !

"ASDBase.ic method 0x2005af20; bytecode file offset 0x957a6c"
!SGSequenceDialogView methodsFor: 'recovered'!
nextNumberActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) nextNumber.
    ^self
! !

"ASDBase.ic method 0x2005cba4; bytecode file offset 0x959680"
!SGSequenceDialogView methodsFor: 'recovered'!
step
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := MainController.
    recoveredValue1 := (recoveredValue0) asdBlockDiagramEditorOptions.
    recoveredValue2 := (recoveredValue1) optionSequenceStepSize.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20063ba4; bytecode file offset 0x961970"
!SGSequenceDialogView methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredValue0 |
    recoveredValue0 := (self) seqNumber.
    (recoveredValue0) setInputFocus.
    ^self
! !

"ASDBase.ic method 0x20070b6c; bytecode file offset 0x96d580"
!SGSequenceDialogView methodsFor: 'recovered'!
selectedMethod
    | recoveredValue0 |
    recoveredValue0 := selectedMethod.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200710c8; bytecode file offset 0x96d9d4"
!SGSequenceDialogView methodsFor: 'recovered'!
currentResult
    | recoveredValue0 |
    recoveredValue0 := currentResult.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20071154; bytecode file offset 0x96da70"
!SGSequenceDialogView methodsFor: 'recovered'!
callGO
    | recoveredValue0 |
    recoveredValue0 := callGO.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20087570; bytecode file offset 0x983e3c"
!SGSequenceDialogView methodsFor: 'recovered'!
losingFocusForSequence: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) entryField.
    (recoveredValue1) clearSelection.
    ^self
! !

"ASDBase.ic method 0x200a2b40; bytecode file offset 0x99f57c"
!SGSequenceDialogView methodsFor: 'recovered'!
step: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := MainController.
    recoveredValue1 := (recoveredValue0) asdBlockDiagramEditorOptions.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) optionSequenceStepSize: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c7254; bytecode file offset 0x9c3c10"
!SGSequenceDialogView methodsFor: 'recovered'!
selectedMethod: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selectedMethod := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c7750; bytecode file offset 0x9c400c"
!SGSequenceDialogView methodsFor: 'recovered'!
currentResult: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    currentResult := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c7784; bytecode file offset 0x9c4068"
!SGSequenceDialogView methodsFor: 'recovered'!
callGO: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    callGO := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e489c; bytecode file offset 0x9e1164"
!SGSequenceDialogView methodsFor: 'recovered'!
nextNumber
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) seqNumber.
    recoveredValue1 := (self) seqName.
    recoveredValue2 := (recoveredValue1) getString.
    recoveredValue3 := (self) getNextFreeSeqNumForMethod: (recoveredValue2).
    (recoveredValue0) value: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201021b4; bytecode file offset 0x9fea78"
!SGSequenceDialogView methodsFor: 'recovered'!
gettingFocusForSequence: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) entryField.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) entryField.
    recoveredValue4 := (recoveredValue3) getLastPosition.
    recoveredValue5 := (0) @ (recoveredValue4).
    (recoveredValue1) setSelection: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20116e1c; bytecode file offset 0xa136d0"
!SGSequenceDialogView methodsFor: 'recovered'!
lastUsedSequenceNumber
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := lastUsedSequenceNumber.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            lastUsedSequenceNumber := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := lastUsedSequenceNumber.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201bfd60; bytecode file offset 0xabc654"
!SGSequenceDialogView methodsFor: 'recovered'!
initFonts
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGUserInterfaceSettings.
    recoveredValue1 := (self) widgetAt: ('mainForm').
    (recoveredValue0) updateLabelsForForm: (recoveredValue1).
    recoveredValue2 := SGUserInterfaceSettings.
    recoveredValue3 := (self) seqName.
    (recoveredValue2) updateLabelFont: (recoveredValue3).
    recoveredValue4 := SGUserInterfaceSettings.
    recoveredValue5 := (self) seqNumber.
    (recoveredValue4) updateLabelFont: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20203280; bytecode file offset 0xaffb3c"
!SGSequenceDialogView methodsFor: 'recovered'!
methodForName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := allowedMethods.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) methodName.
    recoveredBlock6Value2 := recoveredArg1.
    recoveredBlock6Value3 := (recoveredBlock6Value1) = (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2022c9b0; bytecode file offset 0xb2927c"
!SGSequenceDialogView methodsFor: 'recovered'!
getNextFreeSeqNumForMethod: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodForName: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) asdBlockDiagramEditorOptions.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionSequenceUseGaps.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := paneController.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) getNextFreeSeqNumForMethod: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := paneController.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLastFreeSeqNumForMethod: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20356880; bytecode file offset 0xc5316c"
!SGSequenceDialogView methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
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
    (recoveredValue12) at: ('Alt-n') put: ('nextNumber').
    recoveredValue13 := recoveredLocal2.
    recoveredValue14 := (self) shell.
    recoveredValue15 := recoveredLocal1.
    (recoveredValue13) at: (recoveredValue14) put: (recoveredValue15).
    recoveredValue16 := recoveredLocal2.
    (self) widgetKeyActions: (recoveredValue16).
    ^self
! !

"ASDBase.ic method 0x2047cfe4; bytecode file offset 0xd798cc"
!SGSequenceDialogView methodsFor: 'recovered'!
initWith: recoveredArg1 allowedMethods: recoveredArg2 selectedMethod: recoveredArg3 seqNameDisabled: recoveredArg4 nextNumberDisabled: recoveredArg5 mySequenceCall: recoveredArg6 sequenceCalls: recoveredArg7 paneController: recoveredArg8
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_85196'.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodName.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) zapBlanks.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            methodName := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            methodName := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg6.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            callGO := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredArg7.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            sequenceCalls := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            allowedMethods := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            selectedMethod := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            seqNameDisabled := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            nextNumberDisabled := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            lastUsedSequenceNumber := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := selectedMethod.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 103] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredArg8.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := selectedMethod.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (recoveredStack2) aliasName.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) lastUsedSequenceNumberforMethod: (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            lastUsedSequenceNumber := recoveredStack1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) currentResult: (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentResult.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentResult.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := recoveredArg8.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            paneController := recoveredStack0.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204dc604; bytecode file offset 0xdd8fb8"
!SGSequenceDialogView methodsFor: 'recovered'!
update: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeDependent: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:block28107c38Arg1 | 
    | block28107c38Value0 block28107c38Value1 |
    block28107c38Value0 := block28107c38Arg1.
    block28107c38Value1 := (block28107c38Value0) optionClass.
    block28107c38Value1
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := [:block28107c5cArg1 | 
    | block28107c5cValue0 block28107c5cValue1 block28107c5cValue2 |
    block28107c5cValue0 := block28107c5cArg1.
    block28107c5cValue1 := (block28107c5cValue0) optionClass.
    block28107c5cValue2 := (block28107c5cValue1) isContainerOption.
    block28107c5cValue2
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := [:recoveredBlock60Arg1 | 
    | recoveredBlock60Stack0 recoveredBlock60Stack1 recoveredBlock60Stack2 recoveredBlock60Stack3 recoveredBlock60Stack4 recoveredBlock60PC recoveredBlock60Step recoveredBlock60Done recoveredBlock60Result |
    recoveredBlock60Stack0 := self.
    recoveredBlock60PC := 66.
    recoveredBlock60Done := false.
    [recoveredBlock60Done not] whileTrue: [
        recoveredBlock60Step := recoveredBlock60PC.
        recoveredBlock60Step = 66 ifTrue: [
            recoveredBlock60Stack1 := recoveredLocal1.
            recoveredBlock60PC := 69.
        ].
        recoveredBlock60Step = 69 ifTrue: [
            recoveredBlock60Stack2 := recoveredBlock60Arg1.
            recoveredBlock60PC := 70.
        ].
        recoveredBlock60Step = 70 ifTrue: [
            recoveredBlock60Stack2 := (recoveredBlock60Stack2) optionClass.
            recoveredBlock60PC := 72.
        ].
        recoveredBlock60Step = 72 ifTrue: [
            recoveredBlock60Stack2 := (recoveredBlock60Stack2) options.
            recoveredBlock60PC := 73.
        ].
        recoveredBlock60Step = 73 ifTrue: [
            recoveredBlock60Stack3 := [:block28107c80Arg1 | 
    | block28107c80Value0 block28107c80Value1 |
    block28107c80Value0 := block28107c80Arg1.
    block28107c80Value1 := (block28107c80Value0) optionClass.
    block28107c80Value1
].
            recoveredBlock60PC := 75.
        ].
        recoveredBlock60Step = 75 ifTrue: [
            recoveredBlock60PC := 82.
        ].
        recoveredBlock60Step = 82 ifTrue: [
            recoveredBlock60Stack2 := (recoveredBlock60Stack2) collect: (recoveredBlock60Stack3).
            recoveredBlock60PC := 84.
        ].
        recoveredBlock60Step = 84 ifTrue: [
            recoveredBlock60Stack1 := (recoveredBlock60Stack1) addAll: (recoveredBlock60Stack2).
            recoveredBlock60PC := 86.
        ].
        recoveredBlock60Step = 86 ifTrue: [
            recoveredBlock60Result := recoveredBlock60Stack1.
            recoveredBlock60Done := true.
        ].
    ].
    recoveredBlock60Result
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock108Stack0 recoveredBlock108Stack1 recoveredBlock108Stack2 recoveredBlock108PC recoveredBlock108Step recoveredBlock108Done recoveredBlock108Result |
    recoveredBlock108Stack0 := self.
    recoveredBlock108PC := 114.
    recoveredBlock108Done := false.
    [recoveredBlock108Done not] whileTrue: [
        recoveredBlock108Step := recoveredBlock108PC.
        recoveredBlock108Step = 114 ifTrue: [
            recoveredBlock108Stack0 := (recoveredBlock108Stack0) options.
            recoveredBlock108PC := 115.
        ].
        recoveredBlock108Step = 115 ifTrue: [
            recoveredBlock108Stack1 := [:block28107ca4Arg1 | 
    | block28107ca4Stack0 block28107ca4Stack1 block28107ca4Stack2 block28107ca4Stack3 block28107ca4PC block28107ca4Step block28107ca4Done block28107ca4Result |
    block28107ca4Stack0 := self.
    block28107ca4PC := 4.
    block28107ca4Done := false.
    [block28107ca4Done not] whileTrue: [
        block28107ca4Step := block28107ca4PC.
        block28107ca4Step = 4 ifTrue: [
            block28107ca4Stack1 := block28107ca4Arg1.
            block28107ca4PC := 5.
        ].
        block28107ca4Step = 5 ifTrue: [
            block28107ca4Stack1 := (block28107ca4Stack1) optionClass.
            block28107ca4PC := 7.
        ].
        block28107ca4Step = 7 ifTrue: [
            (block28107ca4Stack1) updateOptionWidget.
            block28107ca4PC := 9.
        ].
        block28107ca4Step = 9 ifTrue: [
            block28107ca4Stack1 := nil.
            block28107ca4PC := 10.
        ].
        block28107ca4Step = 10 ifTrue: [
            block28107ca4Stack2 := block28107ca4Arg1.
            block28107ca4PC := 11.
        ].
        block28107ca4Step = 11 ifTrue: [
            block28107ca4Stack2 := (block28107ca4Stack2) optionClass.
            block28107ca4PC := 13.
        ].
        block28107ca4Step = 13 ifTrue: [
            block28107ca4Stack2 := (block28107ca4Stack2) isContainerOption.
            block28107ca4PC := 15.
        ].
        block28107ca4Step = 15 ifTrue: [
            (block28107ca4Stack2) ifTrue: [block28107ca4PC := 18] ifFalse: [block28107ca4PC := 36].
        ].
        block28107ca4Step = 18 ifTrue: [
            block28107ca4PC := 19.
        ].
        block28107ca4Step = 19 ifTrue: [
            block28107ca4Stack1 := block28107ca4Arg1.
            block28107ca4PC := 20.
        ].
        block28107ca4Step = 20 ifTrue: [
            block28107ca4Stack1 := (block28107ca4Stack1) optionClass.
            block28107ca4PC := 22.
        ].
        block28107ca4Step = 22 ifTrue: [
            block28107ca4Stack1 := (block28107ca4Stack1) options.
            block28107ca4PC := 23.
        ].
        block28107ca4Step = 23 ifTrue: [
            block28107ca4Stack2 := [:block28107cc8Arg1 | 
    | block28107cc8Value0 block28107cc8Value1 block28107cc8Value2 |
    block28107cc8Value0 := block28107cc8Arg1.
    block28107cc8Value1 := (block28107cc8Value0) optionClass.
    block28107cc8Value2 := (block28107cc8Value1) updateOptionWidget.
    block28107cc8Value2
].
            block28107ca4PC := 25.
        ].
        block28107ca4Step = 25 ifTrue: [
            block28107ca4PC := 34.
        ].
        block28107ca4Step = 34 ifTrue: [
            block28107ca4Stack1 := (block28107ca4Stack1) do: (block28107ca4Stack2).
            block28107ca4PC := 36.
        ].
        block28107ca4Step = 36 ifTrue: [
            block28107ca4Result := block28107ca4Stack1.
            block28107ca4Done := true.
        ].
    ].
    block28107ca4Result
].
            recoveredBlock108PC := 117.
        ].
        recoveredBlock108Step = 117 ifTrue: [
            recoveredBlock108PC := 153.
        ].
        recoveredBlock108Step = 153 ifTrue: [
            recoveredBlock108Stack0 := (recoveredBlock108Stack0) do: (recoveredBlock108Stack1).
            recoveredBlock108PC := 155.
        ].
        recoveredBlock108Step = 155 ifTrue: [
            recoveredBlock108Result := recoveredBlock108Stack0.
            recoveredBlock108Done := true.
        ].
    ].
    recoveredBlock108Result
].
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack0) deferRedraw: (recoveredStack1).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20550810; bytecode file offset 0xe4d160"
!SGSequenceDialogView methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'Sequence for: '.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := methodName.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) title: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) seqNumber.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentResult.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := allowedMethods.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := allowedMethods.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProcessClass.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) processNameFrame.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := 'Method Name'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := 'call_85196'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := allowedMethods.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := [:block2810f528Arg1 | 
    | block2810f528Value0 block2810f528Value1 |
    block2810f528Value0 := block2810f528Arg1.
    block2810f528Value1 := (block2810f528Value0) methodName.
    block2810f528Value1
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) seqName.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentResult.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) seqName.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentResult.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) seqName.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := seqNameDisabled.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) nextButton.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := nextNumberDisabled.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := seqNameDisabled.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredPC := 182.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentResult.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 182] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 182].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedMethod.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 174] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedMethod.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMethodDeclaration.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 174].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := (recoveredStack0) seqName.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedMethod.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodName.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredPC := 182.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := (recoveredStack0) seqName.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack0) initFonts.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack0) installActionKeys.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := (recoveredStack1) options.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionClass.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack0) update: (recoveredStack1).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := (recoveredStack0) seqNumber.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := XmNfocusCallback.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack3 := 'gettingFocusForSequence:clientData:callData:'.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := (recoveredStack0) seqNumber.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := XmNlosingFocusCallback.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack3 := 'losingFocusForSequence:clientData:callData:'.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20563810; bytecode file offset 0xe60138"
!SGSequenceDialogView methodsFor: 'recovered'!
ok
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) seqName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodForName: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) seqNumber.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := seqNameDisabled.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 184] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 'Please select a sequence name!!'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := sequenceCalls.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := [:recoveredBlock46Arg1 | 
    | recoveredBlock46Value0 recoveredBlock46Value1 recoveredBlock46Value2 recoveredBlock46Value3 recoveredBlock46Value4 |
    recoveredBlock46Value0 := recoveredBlock46Arg1.
    recoveredBlock46Value1 := (recoveredBlock46Value0) editedAlias.
    recoveredBlock46Value2 := recoveredLocal5.
    recoveredBlock46Value3 := (recoveredBlock46Value2) aliasName.
    recoveredBlock46Value4 := (recoveredBlock46Value1) = (recoveredBlock46Value3).
    recoveredBlock46Value4
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := [:recoveredBlock70Arg1 | 
    | recoveredBlock70Value0 recoveredBlock70Value1 recoveredBlock70Value2 recoveredBlock70Value3 |
    recoveredBlock70Value0 := recoveredBlock70Arg1.
    recoveredBlock70Value1 := (recoveredBlock70Value0) editedNo.
    recoveredBlock70Value2 := recoveredLocal4.
    recoveredBlock70Value3 := (recoveredBlock70Value1) = (recoveredBlock70Value2).
    recoveredBlock70Value3
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 184] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := SGAddOffsetSequenceDialog.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) promptAtCurrentMousePosition.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 180] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := [:block28110ca4Arg1 :block28110ca4Arg2 | 
    | block28110ca4Value0 block28110ca4Value1 block28110ca4Value2 block28110ca4Value3 block28110ca4Value4 |
    block28110ca4Value0 := block28110ca4Arg1.
    block28110ca4Value1 := (block28110ca4Value0) editedNo.
    block28110ca4Value2 := block28110ca4Arg2.
    block28110ca4Value3 := (block28110ca4Value2) editedNo.
    block28110ca4Value4 := (block28110ca4Value1) <= (block28110ca4Value3).
    block28110ca4Value4
].
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := [:recoveredBlock148Arg1 | 
    | recoveredBlock148Stack0 recoveredBlock148Stack1 recoveredBlock148Stack2 recoveredBlock148Stack3 recoveredBlock148Stack4 recoveredBlock148PC recoveredBlock148Step recoveredBlock148Done recoveredBlock148Result |
    recoveredBlock148Stack0 := self.
    recoveredBlock148PC := 154.
    recoveredBlock148Done := false.
    [recoveredBlock148Done not] whileTrue: [
        recoveredBlock148Step := recoveredBlock148PC.
        recoveredBlock148Step = 154 ifTrue: [
            recoveredBlock148Stack1 := nil.
            recoveredBlock148PC := 155.
        ].
        recoveredBlock148Step = 155 ifTrue: [
            recoveredBlock148Stack2 := recoveredBlock148Arg1.
            recoveredBlock148PC := 156.
        ].
        recoveredBlock148Step = 156 ifTrue: [
            recoveredBlock148Stack2 := (recoveredBlock148Stack2) editedNo.
            recoveredBlock148PC := 158.
        ].
        recoveredBlock148Step = 158 ifTrue: [
            recoveredBlock148Stack3 := recoveredLocal4.
            recoveredBlock148PC := 161.
        ].
        recoveredBlock148Step = 161 ifTrue: [
            recoveredBlock148Stack2 := (recoveredBlock148Stack2) >= (recoveredBlock148Stack3).
            recoveredBlock148PC := 162.
        ].
        recoveredBlock148Step = 162 ifTrue: [
            (recoveredBlock148Stack2) ifTrue: [recoveredBlock148PC := 166] ifFalse: [recoveredBlock148PC := 177].
        ].
        recoveredBlock148Step = 166 ifTrue: [
            recoveredBlock148PC := 167.
        ].
        recoveredBlock148Step = 167 ifTrue: [
            recoveredBlock148Stack1 := recoveredBlock148Arg1.
            recoveredBlock148PC := 168.
        ].
        recoveredBlock148Step = 168 ifTrue: [
            recoveredBlock148Stack2 := recoveredBlock148Arg1.
            recoveredBlock148PC := 169.
        ].
        recoveredBlock148Step = 169 ifTrue: [
            recoveredBlock148Stack2 := (recoveredBlock148Stack2) editedNo.
            recoveredBlock148PC := 171.
        ].
        recoveredBlock148Step = 171 ifTrue: [
            recoveredBlock148Stack3 := recoveredLocal1.
            recoveredBlock148PC := 174.
        ].
        recoveredBlock148Step = 174 ifTrue: [
            recoveredBlock148Stack2 := (recoveredBlock148Stack2) + (recoveredBlock148Stack3).
            recoveredBlock148PC := 175.
        ].
        recoveredBlock148Step = 175 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) editedNo: (recoveredBlock148Stack2).
            recoveredBlock148PC := 177.
        ].
        recoveredBlock148Step = 177 ifTrue: [
            recoveredBlock148Result := recoveredBlock148Stack1.
            recoveredBlock148Done := true.
        ].
    ].
    recoveredBlock148Result
].
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := 'call_85196'.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := seqNameDisabled.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 196] ifFalse: [recoveredPC := 210].
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            (recoveredStack0) result: (recoveredStack1).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredPC := 231.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 231] ifFalse: [recoveredPC := 216].
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack3 := (recoveredStack3) aliasName.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack0) result: (recoveredStack1).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2068dcfc; bytecode file offset 0xf8a79c"
!SGSequenceDialogView methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'aDialogShell'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 recoveredBlock15Value6 recoveredBlock15Value7 recoveredBlock15Value8 recoveredBlock15Value9 recoveredBlock15Value10 recoveredBlock15Value11 recoveredBlock15Value12 recoveredBlock15Value13 recoveredBlock15Value14 recoveredBlock15Value15 recoveredBlock15Value16 recoveredBlock15Value17 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := recoveredBlock15Value0.
    recoveredBlock15Value2 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (recoveredBlock15Value1) mwmInputMode: (recoveredBlock15Value2).
    recoveredBlock15Value3 := recoveredBlock15Value0.
    (recoveredBlock15Value3) title: ('Sequence Dialog').
    recoveredBlock15Value4 := recoveredBlock15Value0.
    recoveredBlock15Value5 := MWMDECORALL.
    recoveredBlock15Value6 := MWMDECORMINIMIZE.
    recoveredBlock15Value7 := (recoveredBlock15Value5) | (recoveredBlock15Value6).
    recoveredBlock15Value8 := MWMDECORMAXIMIZE.
    recoveredBlock15Value9 := (recoveredBlock15Value7) | (recoveredBlock15Value8).
    (recoveredBlock15Value4) mwmDecorations: (recoveredBlock15Value9).
    recoveredBlock15Value10 := recoveredBlock15Value0.
    recoveredBlock15Value11 := (self) class.
    recoveredBlock15Value12 := (recoveredBlock15Value11) minSize.
    recoveredBlock15Value13 := (recoveredBlock15Value12) y.
    (recoveredBlock15Value10) height: (recoveredBlock15Value13).
    recoveredBlock15Value14 := (self) class.
    recoveredBlock15Value15 := (recoveredBlock15Value14) minSize.
    recoveredBlock15Value16 := (recoveredBlock15Value15) x.
    recoveredBlock15Value17 := (recoveredBlock15Value0) width: (recoveredBlock15Value16).
    recoveredBlock15Value17
].
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := 'aDialogShell'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := 'aMainWindow'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := [:block2812ad98Arg1 | 
    nil
].
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := 'aMainWindow'.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := 'cancel'.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack3 := [:block2812adbcArg1 | 
    | block2812adbcValue0 block2812adbcValue1 block2812adbcValue2 block2812adbcValue3 |
    block2812adbcValue0 := block2812adbcArg1.
    block2812adbcValue1 := block2812adbcValue0.
    (block2812adbcValue1) labelString: ('&Cancel').
    block2812adbcValue2 := block2812adbcValue0.
    (block2812adbcValue2) height: (24).
    block2812adbcValue3 := (block2812adbcValue0) width: (80).
    block2812adbcValue3
].
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := 'cancel'.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := 'ok'.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack3 := [:block2812ade0Arg1 | 
    | block2812ade0Value0 block2812ade0Value1 block2812ade0Value2 block2812ade0Value3 |
    block2812ade0Value0 := block2812ade0Arg1.
    block2812ade0Value1 := block2812ade0Value0.
    (block2812ade0Value1) labelString: ('&OK').
    block2812ade0Value2 := block2812ade0Value0.
    (block2812ade0Value2) height: (24).
    block2812ade0Value3 := (block2812ade0Value0) width: (80).
    block2812ade0Value3
].
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := 'ok'.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := 'sequenceNumberFrame'.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack3 := [:block2812ae04Arg1 | 
    | block2812ae04Value0 block2812ae04Value1 block2812ae04Value2 |
    block2812ae04Value0 := block2812ae04Arg1.
    block2812ae04Value1 := block2812ae04Value0.
    (block2812ae04Value1) width: (170).
    block2812ae04Value2 := block2812ae04Value0.
    (block2812ae04Value2) labelString: ('Sequence Number').
    block2812ae04Value0
].
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFrame: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack2 := 'sequenceNumberFrame'.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack2 := 'sequenceNumberForm'.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack3 := [:block2812ae28Arg1 | 
    | block2812ae28Value0 |
    block2812ae28Value0 := block2812ae28Arg1.
    block2812ae28Value0
].
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack2 := 'sequenceNumberForm'.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack2 := 'spinButtonNumber'.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack3 := [:block2812ae4cArg1 | 
    | block2812ae4cValue0 block2812ae4cValue1 block2812ae4cValue2 block2812ae4cValue3 block2812ae4cValue4 block2812ae4cValue5 block2812ae4cValue6 |
    block2812ae4cValue0 := block2812ae4cArg1.
    block2812ae4cValue1 := block2812ae4cValue0.
    block2812ae4cValue2 := (64) power: (2).
    (block2812ae4cValue1) maximum: (block2812ae4cValue2).
    block2812ae4cValue3 := block2812ae4cValue0.
    (block2812ae4cValue3) editable: (true).
    block2812ae4cValue4 := block2812ae4cValue0.
    (block2812ae4cValue4) minimum: (0).
    block2812ae4cValue5 := block2812ae4cValue0.
    (block2812ae4cValue5) height: (22).
    block2812ae4cValue6 := (block2812ae4cValue0) width: (120).
    block2812ae4cValue6
].
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSpinButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack2 := 'spinButtonNumber'.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack1 := (recoveredStack1) entryField.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack2 := XmALIGNMENTEND.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            (recoveredStack1) alignment: (recoveredStack2).
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack2 := 'nextNumber'.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack3 := [:block2812ae70Arg1 | 
    | block2812ae70Value0 block2812ae70Value1 block2812ae70Value2 block2812ae70Value3 |
    block2812ae70Value0 := block2812ae70Arg1.
    block2812ae70Value1 := block2812ae70Value0.
    (block2812ae70Value1) labelString: ('&Next free').
    block2812ae70Value2 := block2812ae70Value0.
    (block2812ae70Value2) height: (22).
    block2812ae70Value3 := (block2812ae70Value0) width: (80).
    block2812ae70Value3
].
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack2 := 'nextNumber'.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack2 := 'sequenceOptionFrame'.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack3 := [:block2812ae94Arg1 | 
    | block2812ae94Value0 block2812ae94Value1 block2812ae94Value2 |
    block2812ae94Value0 := block2812ae94Arg1.
    block2812ae94Value1 := block2812ae94Value0.
    (block2812ae94Value1) width: (280).
    block2812ae94Value2 := block2812ae94Value0.
    (block2812ae94Value2) labelString: ('Options').
    block2812ae94Value0
].
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFrame: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack2 := 'sequenceOptionFrame'.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack2 := 'sequenceOptionForm'.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack3 := [:block2812aeb8Arg1 | 
    | block2812aeb8Value0 |
    block2812aeb8Value0 := block2812aeb8Arg1.
    block2812aeb8Value0
].
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack2 := 'sequenceOptionForm'.
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            (recoveredStack0) createOptionWidgetsInForm: (recoveredStack1).
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack1 := 'processNameFrame'.
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack2 := [:block2812aedcArg1 | 
    | block2812aedcValue0 block2812aedcValue1 block2812aedcValue2 |
    block2812aedcValue0 := block2812aedcArg1.
    block2812aedcValue1 := block2812aedcValue0.
    (block2812aedcValue1) width: (170).
    block2812aedcValue2 := block2812aedcValue0.
    (block2812aedcValue2) labelString: ('Method/Process Name').
    block2812aedcValue0
].
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFrame: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack1 := 'processNameFrame'.
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            recoveredStack1 := 'processNameForm'.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack2 := [:block2812af00Arg1 | 
    | block2812af00Value0 |
    block2812af00Value0 := block2812af00Arg1.
    block2812af00Value0
].
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredPC := 572.
        ].
        recoveredStep = 572 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            recoveredStack1 := 'processNameForm'.
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 591.
        ].
        recoveredStep = 591 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 594.
        ].
        recoveredStep = 594 ifTrue: [
            recoveredStack1 := 'nameBox'.
            recoveredPC := 598.
        ].
        recoveredStep = 598 ifTrue: [
            recoveredStack2 := [:block2812af24Arg1 | 
    | block2812af24Stack0 block2812af24Stack1 block2812af24Stack2 block2812af24Stack3 block2812af24Stack4 block2812af24Stack5 block2812af24PC block2812af24Step block2812af24Done block2812af24Result |
    block2812af24Stack0 := self.
    block2812af24PC := 4.
    block2812af24Done := false.
    [block2812af24Done not] whileTrue: [
        block2812af24Step := block2812af24PC.
        block2812af24Step = 4 ifTrue: [
            block2812af24Stack1 := block2812af24Arg1.
            block2812af24PC := 5.
        ].
        block2812af24Step = 5 ifTrue: [
            block2812af24Stack2 := block2812af24Stack1.
            block2812af24PC := 6.
        ].
        block2812af24Step = 6 ifTrue: [
            block2812af24Stack3 := OrderedCollection.
            block2812af24PC := 10.
        ].
        block2812af24Step = 10 ifTrue: [
            block2812af24Stack3 := (block2812af24Stack3) new.
            block2812af24PC := 11.
        ].
        block2812af24Step = 11 ifTrue: [
            block2812af24Stack4 := [:block2812af48Arg1 | 
    | block2812af48Stack0 block2812af48Stack1 block2812af48Stack2 block2812af48PC block2812af48Step block2812af48Done block2812af48Result |
    block2812af48Stack0 := self.
    block2812af48PC := 4.
    block2812af48Done := false.
    [block2812af48Done not] whileTrue: [
        block2812af48Step := block2812af48PC.
        block2812af48Step = 4 ifTrue: [
            block2812af48Stack1 := block2812af48Arg1.
            block2812af48PC := 5.
        ].
        block2812af48Step = 5 ifTrue: [
            block2812af48Stack1 := (block2812af48Stack1) isString.
            block2812af48PC := 9.
        ].
        block2812af48Step = 9 ifTrue: [
            (block2812af48Stack1) ifTrue: [block2812af48PC := 12] ifFalse: [block2812af48PC := 16].
        ].
        block2812af48Step = 12 ifTrue: [
            block2812af48Stack1 := block2812af48Arg1.
            block2812af48PC := 13.
        ].
        block2812af48Step = 13 ifTrue: [
            block2812af48PC := 21.
        ].
        block2812af48Step = 16 ifTrue: [
            block2812af48Stack1 := block2812af48Arg1.
            block2812af48PC := 17.
        ].
        block2812af48Step = 17 ifTrue: [
            block2812af48Stack1 := (block2812af48Stack1) printString.
            block2812af48PC := 21.
        ].
        block2812af48Step = 21 ifTrue: [
            block2812af48Result := block2812af48Stack1.
            block2812af48Done := true.
        ].
    ].
    block2812af48Result
].
            block2812af24PC := 14.
        ].
        block2812af24Step = 14 ifTrue: [
            block2812af24PC := 36.
        ].
        block2812af24Step = 36 ifTrue: [
            block2812af24Stack3 := (block2812af24Stack3) collect: (block2812af24Stack4).
            block2812af24PC := 41.
        ].
        block2812af24Step = 41 ifTrue: [
            (block2812af24Stack2) items: (block2812af24Stack3).
            block2812af24Stack2 := block2812af24Stack1.
            block2812af24PC := 45.
        ].
        block2812af24Step = 45 ifTrue: [
            block2812af24Stack3 := 22.
            block2812af24PC := 47.
        ].
        block2812af24Step = 47 ifTrue: [
            (block2812af24Stack2) height: (block2812af24Stack3).
            block2812af24PC := 49.
        ].
        block2812af24Step = 49 ifTrue: [
            block2812af24Stack2 := 80.
            block2812af24PC := 52.
        ].
        block2812af24Step = 52 ifTrue: [
            block2812af24Stack1 := (block2812af24Stack1) width: (block2812af24Stack2).
            block2812af24PC := 54.
        ].
        block2812af24Step = 54 ifTrue: [
            block2812af24Result := block2812af24Stack1.
            block2812af24Done := true.
        ].
    ].
    block2812af24Result
].
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            recoveredPC := 657.
        ].
        recoveredStep = 657 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasComboBox: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 661.
        ].
        recoveredStep = 661 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 663.
        ].
        recoveredStep = 663 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 666.
        ].
        recoveredStep = 666 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 669.
        ].
        recoveredStep = 669 ifTrue: [
            recoveredStack1 := 'nameBox'.
            recoveredPC := 672.
        ].
        recoveredStep = 672 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 675.
        ].
        recoveredStep = 675 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 677.
        ].
        recoveredStep = 677 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 680.
        ].
        recoveredStep = 680 ifTrue: [
            recoveredStack1 := [:recoveredBlock680Arg1 | 
    | recoveredBlock680Value0 recoveredBlock680Value1 recoveredBlock680Value2 |
    recoveredBlock680Value0 := recoveredBlock680Arg1.
    recoveredBlock680Value1 := recoveredLocal6.
    recoveredBlock680Value2 := (recoveredBlock680Value0) workWindow: (recoveredBlock680Value1).
    recoveredBlock680Value2
].
            recoveredPC := 696.
        ].
        recoveredStep = 696 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 701.
        ].
        recoveredStep = 701 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 704.
        ].
        recoveredStep = 704 ifTrue: [
            recoveredStack1 := [:recoveredBlock704Arg1 | 
    | recoveredBlock704Value0 recoveredBlock704Value1 recoveredBlock704Value2 recoveredBlock704Value3 recoveredBlock704Value4 |
    recoveredBlock704Value0 := recoveredBlock704Arg1.
    recoveredBlock704Value1 := recoveredBlock704Value0.
    recoveredBlock704Value2 := recoveredLocal5.
    (recoveredBlock704Value1) cancelButton: (recoveredBlock704Value2).
    recoveredBlock704Value3 := recoveredLocal4.
    recoveredBlock704Value4 := (recoveredBlock704Value0) defaultButton: (recoveredBlock704Value3).
    recoveredBlock704Value4
].
            recoveredPC := 728.
        ].
        recoveredStep = 728 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 733.
        ].
        recoveredStep = 733 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 736.
        ].
        recoveredStep = 736 ifTrue: [
            recoveredStack1 := [:recoveredBlock736Arg1 | 
    | recoveredBlock736Value0 recoveredBlock736Value1 recoveredBlock736Value2 recoveredBlock736Value3 recoveredBlock736Value4 recoveredBlock736Value5 recoveredBlock736Value6 recoveredBlock736Value7 recoveredBlock736Value8 recoveredBlock736Value9 recoveredBlock736Value10 recoveredBlock736Value11 recoveredBlock736Value12 recoveredBlock736Value13 recoveredBlock736Value14 |
    recoveredBlock736Value0 := recoveredBlock736Arg1.
    recoveredBlock736Value1 := recoveredBlock736Value0.
    recoveredBlock736Value2 := XmATTACHNONE.
    (recoveredBlock736Value1) topAttachment: (recoveredBlock736Value2).
    recoveredBlock736Value3 := recoveredBlock736Value0.
    (recoveredBlock736Value3) topOffset: (5).
    recoveredBlock736Value4 := recoveredBlock736Value0.
    recoveredBlock736Value5 := XmATTACHFORM.
    (recoveredBlock736Value4) bottomAttachment: (recoveredBlock736Value5).
    recoveredBlock736Value6 := recoveredBlock736Value0.
    (recoveredBlock736Value6) bottomOffset: (5).
    recoveredBlock736Value7 := recoveredBlock736Value0.
    recoveredBlock736Value8 := XmATTACHWIDGET.
    (recoveredBlock736Value7) rightAttachment: (recoveredBlock736Value8).
    recoveredBlock736Value9 := recoveredBlock736Value0.
    (recoveredBlock736Value9) rightOffset: (5).
    recoveredBlock736Value10 := recoveredBlock736Value0.
    recoveredBlock736Value11 := recoveredLocal5.
    (recoveredBlock736Value10) rightWidget: (recoveredBlock736Value11).
    recoveredBlock736Value12 := recoveredBlock736Value0.
    recoveredBlock736Value13 := XmATTACHNONE.
    (recoveredBlock736Value12) leftAttachment: (recoveredBlock736Value13).
    recoveredBlock736Value14 := (recoveredBlock736Value0) leftOffset: (5).
    recoveredBlock736Value14
].
            recoveredPC := 810.
        ].
        recoveredStep = 810 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 815.
        ].
        recoveredStep = 815 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 818.
        ].
        recoveredStep = 818 ifTrue: [
            recoveredStack1 := [:block2812af6cArg1 | 
    | block2812af6cValue0 block2812af6cValue1 block2812af6cValue2 block2812af6cValue3 block2812af6cValue4 block2812af6cValue5 block2812af6cValue6 block2812af6cValue7 block2812af6cValue8 block2812af6cValue9 block2812af6cValue10 block2812af6cValue11 block2812af6cValue12 |
    block2812af6cValue0 := block2812af6cArg1.
    block2812af6cValue1 := block2812af6cValue0.
    block2812af6cValue2 := XmATTACHNONE.
    (block2812af6cValue1) topAttachment: (block2812af6cValue2).
    block2812af6cValue3 := block2812af6cValue0.
    (block2812af6cValue3) topOffset: (5).
    block2812af6cValue4 := block2812af6cValue0.
    block2812af6cValue5 := XmATTACHFORM.
    (block2812af6cValue4) bottomAttachment: (block2812af6cValue5).
    block2812af6cValue6 := block2812af6cValue0.
    (block2812af6cValue6) bottomOffset: (5).
    block2812af6cValue7 := block2812af6cValue0.
    block2812af6cValue8 := XmATTACHNONE.
    (block2812af6cValue7) leftAttachment: (block2812af6cValue8).
    block2812af6cValue9 := block2812af6cValue0.
    (block2812af6cValue9) leftOffset: (5).
    block2812af6cValue10 := block2812af6cValue0.
    block2812af6cValue11 := XmATTACHFORM.
    (block2812af6cValue10) rightAttachment: (block2812af6cValue11).
    block2812af6cValue12 := (block2812af6cValue0) rightOffset: (5).
    block2812af6cValue12
].
            recoveredPC := 822.
        ].
        recoveredStep = 822 ifTrue: [
            recoveredPC := 886.
        ].
        recoveredStep = 886 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 891.
        ].
        recoveredStep = 891 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 894.
        ].
        recoveredStep = 894 ifTrue: [
            recoveredStack1 := [:block2812af90Arg1 | 
    | block2812af90Value0 block2812af90Value1 block2812af90Value2 block2812af90Value3 block2812af90Value4 block2812af90Value5 block2812af90Value6 block2812af90Value7 block2812af90Value8 block2812af90Value9 block2812af90Value10 block2812af90Value11 block2812af90Value12 |
    block2812af90Value0 := block2812af90Arg1.
    block2812af90Value1 := block2812af90Value0.
    block2812af90Value2 := XmATTACHFORM.
    (block2812af90Value1) topAttachment: (block2812af90Value2).
    block2812af90Value3 := block2812af90Value0.
    (block2812af90Value3) topOffset: (5).
    block2812af90Value4 := block2812af90Value0.
    block2812af90Value5 := XmATTACHNONE.
    (block2812af90Value4) bottomAttachment: (block2812af90Value5).
    block2812af90Value6 := block2812af90Value0.
    (block2812af90Value6) bottomOffset: (5).
    block2812af90Value7 := block2812af90Value0.
    block2812af90Value8 := XmATTACHFORM.
    (block2812af90Value7) leftAttachment: (block2812af90Value8).
    block2812af90Value9 := block2812af90Value0.
    (block2812af90Value9) leftOffset: (5).
    block2812af90Value10 := block2812af90Value0.
    block2812af90Value11 := XmATTACHFORM.
    (block2812af90Value10) rightAttachment: (block2812af90Value11).
    block2812af90Value12 := (block2812af90Value0) rightOffset: (5).
    block2812af90Value12
].
            recoveredPC := 898.
        ].
        recoveredStep = 898 ifTrue: [
            recoveredPC := 962.
        ].
        recoveredStep = 962 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 967.
        ].
        recoveredStep = 967 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 970.
        ].
        recoveredStep = 970 ifTrue: [
            recoveredStack1 := [:recoveredBlock970Arg1 | 
    | recoveredBlock970Value0 recoveredBlock970Value1 recoveredBlock970Value2 recoveredBlock970Value3 recoveredBlock970Value4 recoveredBlock970Value5 recoveredBlock970Value6 recoveredBlock970Value7 recoveredBlock970Value8 recoveredBlock970Value9 recoveredBlock970Value10 recoveredBlock970Value11 recoveredBlock970Value12 recoveredBlock970Value13 recoveredBlock970Value14 |
    recoveredBlock970Value0 := recoveredBlock970Arg1.
    recoveredBlock970Value1 := recoveredBlock970Value0.
    recoveredBlock970Value2 := XmATTACHFORM.
    (recoveredBlock970Value1) topAttachment: (recoveredBlock970Value2).
    recoveredBlock970Value3 := recoveredBlock970Value0.
    (recoveredBlock970Value3) topOffset: (5).
    recoveredBlock970Value4 := recoveredBlock970Value0.
    recoveredBlock970Value5 := XmATTACHNONE.
    (recoveredBlock970Value4) bottomAttachment: (recoveredBlock970Value5).
    recoveredBlock970Value6 := recoveredBlock970Value0.
    (recoveredBlock970Value6) bottomOffset: (5).
    recoveredBlock970Value7 := recoveredBlock970Value0.
    recoveredBlock970Value8 := XmATTACHFORM.
    (recoveredBlock970Value7) leftAttachment: (recoveredBlock970Value8).
    recoveredBlock970Value9 := recoveredBlock970Value0.
    (recoveredBlock970Value9) leftOffset: (5).
    recoveredBlock970Value10 := recoveredBlock970Value0.
    recoveredBlock970Value11 := XmATTACHWIDGET.
    (recoveredBlock970Value10) rightAttachment: (recoveredBlock970Value11).
    recoveredBlock970Value12 := recoveredBlock970Value0.
    (recoveredBlock970Value12) rightOffset: (5).
    recoveredBlock970Value13 := recoveredLocal2.
    recoveredBlock970Value14 := (recoveredBlock970Value0) rightWidget: (recoveredBlock970Value13).
    recoveredBlock970Value14
].
            recoveredPC := 1044.
        ].
        recoveredStep = 1044 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1049.
        ].
        recoveredStep = 1049 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 1052.
        ].
        recoveredStep = 1052 ifTrue: [
            recoveredStack1 := [:block2812afb4Arg1 | 
    | block2812afb4Value0 block2812afb4Value1 block2812afb4Value2 block2812afb4Value3 block2812afb4Value4 block2812afb4Value5 block2812afb4Value6 block2812afb4Value7 block2812afb4Value8 block2812afb4Value9 block2812afb4Value10 block2812afb4Value11 block2812afb4Value12 |
    block2812afb4Value0 := block2812afb4Arg1.
    block2812afb4Value1 := block2812afb4Value0.
    block2812afb4Value2 := XmATTACHFORM.
    (block2812afb4Value1) topAttachment: (block2812afb4Value2).
    block2812afb4Value3 := block2812afb4Value0.
    (block2812afb4Value3) topOffset: (5).
    block2812afb4Value4 := block2812afb4Value0.
    block2812afb4Value5 := XmATTACHNONE.
    (block2812afb4Value4) bottomAttachment: (block2812afb4Value5).
    block2812afb4Value6 := block2812afb4Value0.
    (block2812afb4Value6) bottomOffset: (5).
    block2812afb4Value7 := block2812afb4Value0.
    block2812afb4Value8 := XmATTACHNONE.
    (block2812afb4Value7) leftAttachment: (block2812afb4Value8).
    block2812afb4Value9 := block2812afb4Value0.
    (block2812afb4Value9) leftOffset: (5).
    block2812afb4Value10 := block2812afb4Value0.
    block2812afb4Value11 := XmATTACHFORM.
    (block2812afb4Value10) rightAttachment: (block2812afb4Value11).
    block2812afb4Value12 := (block2812afb4Value0) rightOffset: (5).
    block2812afb4Value12
].
            recoveredPC := 1056.
        ].
        recoveredStep = 1056 ifTrue: [
            recoveredPC := 1120.
        ].
        recoveredStep = 1120 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1125.
        ].
        recoveredStep = 1125 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 1128.
        ].
        recoveredStep = 1128 ifTrue: [
            recoveredStack1 := [:recoveredBlock1128Arg1 | 
    | recoveredBlock1128Value0 recoveredBlock1128Value1 recoveredBlock1128Value2 recoveredBlock1128Value3 recoveredBlock1128Value4 recoveredBlock1128Value5 recoveredBlock1128Value6 recoveredBlock1128Value7 recoveredBlock1128Value8 recoveredBlock1128Value9 recoveredBlock1128Value10 recoveredBlock1128Value11 recoveredBlock1128Value12 recoveredBlock1128Value13 |
    recoveredBlock1128Value0 := recoveredBlock1128Arg1.
    recoveredBlock1128Value1 := recoveredBlock1128Value0.
    recoveredBlock1128Value2 := XmATTACHWIDGET.
    (recoveredBlock1128Value1) topAttachment: (recoveredBlock1128Value2).
    recoveredBlock1128Value3 := recoveredBlock1128Value0.
    (recoveredBlock1128Value3) topOffset: (5).
    recoveredBlock1128Value4 := recoveredBlock1128Value0.
    recoveredBlock1128Value5 := recoveredLocal9.
    (recoveredBlock1128Value4) topWidget: (recoveredBlock1128Value5).
    recoveredBlock1128Value6 := recoveredBlock1128Value0.
    recoveredBlock1128Value7 := XmATTACHNONE.
    (recoveredBlock1128Value6) bottomAttachment: (recoveredBlock1128Value7).
    recoveredBlock1128Value8 := recoveredBlock1128Value0.
    recoveredBlock1128Value9 := XmATTACHFORM.
    (recoveredBlock1128Value8) leftAttachment: (recoveredBlock1128Value9).
    recoveredBlock1128Value10 := recoveredBlock1128Value0.
    (recoveredBlock1128Value10) leftOffset: (5).
    recoveredBlock1128Value11 := recoveredBlock1128Value0.
    recoveredBlock1128Value12 := XmATTACHFORM.
    (recoveredBlock1128Value11) rightAttachment: (recoveredBlock1128Value12).
    recoveredBlock1128Value13 := (recoveredBlock1128Value0) rightOffset: (5).
    recoveredBlock1128Value13
].
            recoveredPC := 1196.
        ].
        recoveredStep = 1196 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1201.
        ].
        recoveredStep = 1201 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 1204.
        ].
        recoveredStep = 1204 ifTrue: [
            recoveredStack1 := [:recoveredBlock1204Arg1 | 
    | recoveredBlock1204Value0 recoveredBlock1204Value1 recoveredBlock1204Value2 recoveredBlock1204Value3 recoveredBlock1204Value4 recoveredBlock1204Value5 recoveredBlock1204Value6 recoveredBlock1204Value7 recoveredBlock1204Value8 recoveredBlock1204Value9 recoveredBlock1204Value10 recoveredBlock1204Value11 recoveredBlock1204Value12 recoveredBlock1204Value13 recoveredBlock1204Value14 |
    recoveredBlock1204Value0 := recoveredBlock1204Arg1.
    recoveredBlock1204Value1 := recoveredBlock1204Value0.
    recoveredBlock1204Value2 := XmATTACHWIDGET.
    (recoveredBlock1204Value1) topAttachment: (recoveredBlock1204Value2).
    recoveredBlock1204Value3 := recoveredBlock1204Value0.
    (recoveredBlock1204Value3) topOffset: (5).
    recoveredBlock1204Value4 := recoveredBlock1204Value0.
    recoveredBlock1204Value5 := recoveredLocal13.
    (recoveredBlock1204Value4) topWidget: (recoveredBlock1204Value5).
    recoveredBlock1204Value6 := recoveredBlock1204Value0.
    recoveredBlock1204Value7 := XmATTACHNONE.
    (recoveredBlock1204Value6) bottomAttachment: (recoveredBlock1204Value7).
    recoveredBlock1204Value8 := recoveredBlock1204Value0.
    (recoveredBlock1204Value8) bottomOffset: (5).
    recoveredBlock1204Value9 := recoveredBlock1204Value0.
    recoveredBlock1204Value10 := XmATTACHFORM.
    (recoveredBlock1204Value9) leftAttachment: (recoveredBlock1204Value10).
    recoveredBlock1204Value11 := recoveredBlock1204Value0.
    (recoveredBlock1204Value11) leftOffset: (5).
    recoveredBlock1204Value12 := recoveredBlock1204Value0.
    recoveredBlock1204Value13 := XmATTACHFORM.
    (recoveredBlock1204Value12) rightAttachment: (recoveredBlock1204Value13).
    recoveredBlock1204Value14 := (recoveredBlock1204Value0) rightOffset: (5).
    recoveredBlock1204Value14
].
            recoveredPC := 1278.
        ].
        recoveredStep = 1278 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1283.
        ].
        recoveredStep = 1283 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 1286.
        ].
        recoveredStep = 1286 ifTrue: [
            recoveredStack1 := [:block2812afd8Arg1 | 
    | block2812afd8Value0 block2812afd8Value1 block2812afd8Value2 block2812afd8Value3 block2812afd8Value4 block2812afd8Value5 block2812afd8Value6 block2812afd8Value7 block2812afd8Value8 block2812afd8Value9 block2812afd8Value10 block2812afd8Value11 block2812afd8Value12 |
    block2812afd8Value0 := block2812afd8Arg1.
    block2812afd8Value1 := block2812afd8Value0.
    block2812afd8Value2 := XmATTACHFORM.
    (block2812afd8Value1) topAttachment: (block2812afd8Value2).
    block2812afd8Value3 := block2812afd8Value0.
    (block2812afd8Value3) topOffset: (5).
    block2812afd8Value4 := block2812afd8Value0.
    block2812afd8Value5 := XmATTACHFORM.
    (block2812afd8Value4) bottomAttachment: (block2812afd8Value5).
    block2812afd8Value6 := block2812afd8Value0.
    (block2812afd8Value6) bottomOffset: (5).
    block2812afd8Value7 := block2812afd8Value0.
    block2812afd8Value8 := XmATTACHFORM.
    (block2812afd8Value7) leftAttachment: (block2812afd8Value8).
    block2812afd8Value9 := block2812afd8Value0.
    (block2812afd8Value9) leftOffset: (5).
    block2812afd8Value10 := block2812afd8Value0.
    block2812afd8Value11 := XmATTACHFORM.
    (block2812afd8Value10) rightAttachment: (block2812afd8Value11).
    block2812afd8Value12 := (block2812afd8Value0) rightOffset: (5).
    block2812afd8Value12
].
            recoveredPC := 1290.
        ].
        recoveredStep = 1290 ifTrue: [
            recoveredPC := 1354.
        ].
        recoveredStep = 1354 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1359.
        ].
        recoveredStep = 1359 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 1362.
        ].
        recoveredStep = 1362 ifTrue: [
            recoveredStack1 := XmNresizeCallback.
            recoveredPC := 1366.
        ].
        recoveredStep = 1366 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1367.
        ].
        recoveredStep = 1367 ifTrue: [
            recoveredStack3 := 'shellResizeCallback:clientData:callData:'.
            recoveredPC := 1370.
        ].
        recoveredStep = 1370 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1371.
        ].
        recoveredStep = 1371 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1375.
        ].
        recoveredStep = 1375 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 1378.
        ].
        recoveredStep = 1378 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 1382.
        ].
        recoveredStep = 1382 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1383.
        ].
        recoveredStep = 1383 ifTrue: [
            recoveredStack3 := 'cancelActivate:clientData:callData:'.
            recoveredPC := 1386.
        ].
        recoveredStep = 1386 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1387.
        ].
        recoveredStep = 1387 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1391.
        ].
        recoveredStep = 1391 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 1394.
        ].
        recoveredStep = 1394 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 1398.
        ].
        recoveredStep = 1398 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1399.
        ].
        recoveredStep = 1399 ifTrue: [
            recoveredStack3 := 'okActivate:clientData:callData:'.
            recoveredPC := 1402.
        ].
        recoveredStep = 1402 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1403.
        ].
        recoveredStep = 1403 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1407.
        ].
        recoveredStep = 1407 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 1410.
        ].
        recoveredStep = 1410 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 1414.
        ].
        recoveredStep = 1414 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1415.
        ].
        recoveredStep = 1415 ifTrue: [
            recoveredStack3 := 'nextNumberActivate:clientData:callData:'.
            recoveredPC := 1418.
        ].
        recoveredStep = 1418 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1419.
        ].
        recoveredStep = 1419 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1423.
        ].
        recoveredStep = 1423 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1424.
        ].
        recoveredStep = 1424 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 1429.
        ].
        recoveredStep = 1429 ifTrue: [
            recoveredStack1 := 'The Sequence Number for the Sequence Call'.
            recoveredPC := 1432.
        ].
        recoveredStep = 1432 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 1435.
        ].
        recoveredStep = 1435 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 1439.
        ].
        recoveredStep = 1439 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1440.
        ].
        recoveredStep = 1440 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 1445.
        ].
        recoveredStep = 1445 ifTrue: [
            recoveredStack1 := 'Compute the Next Free Number for the Sequence Call'.
            recoveredPC := 1448.
        ].
        recoveredStep = 1448 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 1451.
        ].
        recoveredStep = 1451 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 1455.
        ].
        recoveredStep = 1455 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1456.
        ].
        recoveredStep = 1456 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 1461.
        ].
        recoveredStep = 1461 ifTrue: [
            recoveredStack1 := 'The Method the Sequence Call Shall be Assigned to'.
            recoveredPC := 1464.
        ].
        recoveredStep = 1464 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 1467.
        ].
        recoveredStep = 1467 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 1471.
        ].
        recoveredStep = 1471 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 1474.
        ].
        recoveredStep = 1474 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1479.
        ].
        recoveredStep = 1479 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 1482.
        ].
        recoveredStep = 1482 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1487.
        ].
        recoveredStep = 1487 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 1490.
        ].
        recoveredStep = 1490 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1495.
        ].
        recoveredStep = 1495 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 1498.
        ].
        recoveredStep = 1498 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1503.
        ].
        recoveredStep = 1503 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 1506.
        ].
        recoveredStep = 1506 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1511.
        ].
        recoveredStep = 1511 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 1514.
        ].
        recoveredStep = 1514 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 1517.
        ].
        recoveredStep = 1517 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 1520.
        ].
        recoveredStep = 1520 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 1525.
        ].
        recoveredStep = 1525 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

