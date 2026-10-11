"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001b48; bytecode file offset 0x8ffcfc"
!SGAbstractChangeSequenceDialog methodsFor: 'recovered'!
setDefaultWindowConfigurationForUserInterface
    ^self
! !

"ASDBase.ic method 0x2004413c; bytecode file offset 0x9451f8"
!SGAbstractChangeSequenceDialog methodsFor: 'recovered'!
offsetButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('offsetButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20047bac; bytecode file offset 0x9451f8"
!SGAbstractChangeSequenceDialog methodsFor: 'recovered'!
mainWindow
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('aMainWindow').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005acec; bytecode file offset 0x957a6c"
!SGAbstractChangeSequenceDialog methodsFor: 'recovered'!
yesActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) yes.
    ^self
! !

"ASDBase.ic method 0x2005af44; bytecode file offset 0x957a6c"
!SGAbstractChangeSequenceDialog methodsFor: 'recovered'!
cancelActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) cancel.
    ^self
! !

"ASDBase.ic method 0x2005b0d0; bytecode file offset 0x957a6c"
!SGAbstractChangeSequenceDialog methodsFor: 'recovered'!
noActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) no.
    ^self
! !

"ASDBase.ic method 0x200b2ff4; bytecode file offset 0x9af8ac"
!SGAbstractChangeSequenceDialog methodsFor: 'recovered'!
no
    result := 0.
    (self) close.
    ^self
! !

"ASDBase.ic method 0x200d4fe0; bytecode file offset 0x9d18a0"
!SGAbstractChangeSequenceDialog methodsFor: 'recovered'!
yes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) offsetButton.
    recoveredValue1 := (recoveredValue0) value.
    result := recoveredValue1.
    (self) close.
    ^self
! !

"ASDBase.ic method 0x202cdf40; bytecode file offset 0xbca830"
!SGAbstractChangeSequenceDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := (self) offsetButton.
    recoveredValue1 := MainController.
    recoveredValue2 := (recoveredValue1) asdBlockDiagramEditorOptions.
    recoveredValue3 := (recoveredValue2) optionSequenceOffset.
    (recoveredValue0) value: (recoveredValue3).
    recoveredValue4 := (self) widgetAt: ('aDialogShell').
    recoveredValue5 := (self) class.
    recoveredValue6 := (recoveredValue5) titleText.
    (recoveredValue4) title: (recoveredValue6).
    recoveredValue7 := (self) widgetAt: ('noteLabel').
    recoveredValue8 := (self) class.
    recoveredValue9 := (recoveredValue8) noteLabelText.
    (recoveredValue7) labelString: (recoveredValue9).
    recoveredValue10 := (self) widgetAt: ('messageLabel').
    recoveredValue11 := (self) class.
    recoveredValue12 := (recoveredValue11) messageLabelText.
    (recoveredValue10) labelString: (recoveredValue12).
    ^self
! !

"ASDBase.ic method 0x2067e748; bytecode file offset 0xf7b194"
!SGAbstractChangeSequenceDialog methodsFor: 'recovered'!
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
    (recoveredBlock15Value3) title: ('').
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
    recoveredBlock15Value14 := recoveredBlock15Value0.
    recoveredBlock15Value15 := (self) class.
    recoveredBlock15Value16 := (recoveredBlock15Value15) minSize.
    recoveredBlock15Value17 := (recoveredBlock15Value16) x.
    (recoveredBlock15Value14) width: (recoveredBlock15Value17).
    recoveredBlock15Value0
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := 'aDialogShell'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := 'aMainWindow'.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := [:block28128ef0Arg1 | 
    nil
].
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := 'aMainWindow'.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredLocal11.
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
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := 'cancel'.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack3 := [:block28128f14Arg1 | 
    | block28128f14Value0 block28128f14Value1 block28128f14Value2 block28128f14Value3 |
    block28128f14Value0 := block28128f14Arg1.
    block28128f14Value1 := block28128f14Value0.
    (block28128f14Value1) labelString: ('&Cancel').
    block28128f14Value2 := block28128f14Value0.
    (block28128f14Value2) height: (25).
    block28128f14Value3 := (block28128f14Value0) width: (70).
    block28128f14Value3
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
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := 'cancel'.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := 'yes'.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack3 := [:block28128f38Arg1 | 
    | block28128f38Value0 block28128f38Value1 block28128f38Value2 block28128f38Value3 |
    block28128f38Value0 := block28128f38Arg1.
    block28128f38Value1 := block28128f38Value0.
    (block28128f38Value1) labelString: ('&Yes').
    block28128f38Value2 := block28128f38Value0.
    (block28128f38Value2) height: (25).
    block28128f38Value3 := (block28128f38Value0) width: (70).
    block28128f38Value3
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
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := 'yes'.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := 'no'.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack3 := [:block28128f5cArg1 | 
    | block28128f5cValue0 block28128f5cValue1 block28128f5cValue2 block28128f5cValue3 |
    block28128f5cValue0 := block28128f5cArg1.
    block28128f5cValue1 := block28128f5cValue0.
    (block28128f5cValue1) labelString: ('&No').
    block28128f5cValue2 := block28128f5cValue0.
    (block28128f5cValue2) height: (25).
    block28128f5cValue3 := (block28128f5cValue0) width: (70).
    block28128f5cValue3
].
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := 'no'.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack2 := 'messageLabel'.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack3 := [:block28128f80Arg1 | 
    | block28128f80Value0 block28128f80Value1 block28128f80Value2 block28128f80Value3 block28128f80Value4 |
    block28128f80Value0 := block28128f80Arg1.
    block28128f80Value1 := block28128f80Value0.
    block28128f80Value2 := XmALIGNMENTBEGINNING.
    (block28128f80Value1) alignment: (block28128f80Value2).
    block28128f80Value3 := block28128f80Value0.
    (block28128f80Value3) width: (50).
    block28128f80Value4 := (block28128f80Value0) labelString: ('').
    block28128f80Value4
].
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack2 := 'messageLabel'.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack2 := 'offsetLabel'.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack3 := [:block28128fa4Arg1 | 
    | block28128fa4Value0 block28128fa4Value1 block28128fa4Value2 block28128fa4Value3 block28128fa4Value4 |
    block28128fa4Value0 := block28128fa4Arg1.
    block28128fa4Value1 := block28128fa4Value0.
    block28128fa4Value2 := XmALIGNMENTBEGINNING.
    (block28128fa4Value1) alignment: (block28128fa4Value2).
    block28128fa4Value3 := block28128fa4Value0.
    (block28128fa4Value3) width: (35).
    block28128fa4Value4 := (block28128fa4Value0) labelString: ('Offset').
    block28128fa4Value4
].
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack2 := 'offsetLabel'.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack2 := 'offsetButton'.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack3 := [:block28128fc8Arg1 | 
    | block28128fc8Value0 block28128fc8Value1 block28128fc8Value2 block28128fc8Value3 block28128fc8Value4 block28128fc8Value5 |
    block28128fc8Value0 := block28128fc8Arg1.
    block28128fc8Value1 := block28128fc8Value0.
    (block28128fc8Value1) maximum: (1000000).
    block28128fc8Value2 := block28128fc8Value0.
    (block28128fc8Value2) editable: (true).
    block28128fc8Value3 := block28128fc8Value0.
    (block28128fc8Value3) minimum: (1).
    block28128fc8Value4 := block28128fc8Value0.
    (block28128fc8Value4) height: (35).
    block28128fc8Value5 := (block28128fc8Value0) width: (80).
    block28128fc8Value5
].
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSpinButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack2 := 'offsetButton'.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack2 := 'noteFrame'.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack3 := [:block28128fecArg1 | 
    | block28128fecValue0 block28128fecValue1 block28128fecValue2 |
    block28128fecValue0 := block28128fecArg1.
    block28128fecValue1 := block28128fecValue0.
    (block28128fecValue1) width: (100).
    block28128fecValue2 := block28128fecValue0.
    (block28128fecValue2) labelString: ('Note').
    block28128fecValue0
].
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFrame: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack2 := 'noteFrame'.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack2 := 'noteForm'.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack3 := [:block28129010Arg1 | 
    | block28129010Value0 |
    block28129010Value0 := block28129010Arg1.
    block28129010Value0
].
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredStack2 := 'noteForm'.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack2 := 'noteLabel'.
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            recoveredStack3 := [:block28129034Arg1 | 
    | block28129034Value0 block28129034Value1 block28129034Value2 block28129034Value3 block28129034Value4 |
    block28129034Value0 := block28129034Arg1.
    block28129034Value1 := block28129034Value0.
    block28129034Value2 := XmALIGNMENTBEGINNING.
    (block28129034Value1) alignment: (block28129034Value2).
    block28129034Value3 := block28129034Value0.
    (block28129034Value3) width: (50).
    block28129034Value4 := (block28129034Value0) labelString: ('').
    block28129034Value4
].
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            recoveredStack2 := 'noteLabel'.
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack2 := [:recoveredBlock550Arg1 | 
    | recoveredBlock550Value0 recoveredBlock550Value1 recoveredBlock550Value2 |
    recoveredBlock550Value0 := recoveredBlock550Arg1.
    recoveredBlock550Value1 := recoveredLocal10.
    recoveredBlock550Value2 := (recoveredBlock550Value0) workWindow: (recoveredBlock550Value1).
    recoveredBlock550Value2
].
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            recoveredStack2 := [:recoveredBlock574Arg1 | 
    | recoveredBlock574Value0 recoveredBlock574Value1 recoveredBlock574Value2 recoveredBlock574Value3 recoveredBlock574Value4 |
    recoveredBlock574Value0 := recoveredBlock574Arg1.
    recoveredBlock574Value1 := recoveredBlock574Value0.
    recoveredBlock574Value2 := recoveredLocal8.
    (recoveredBlock574Value1) cancelButton: (recoveredBlock574Value2).
    recoveredBlock574Value3 := recoveredLocal7.
    recoveredBlock574Value4 := (recoveredBlock574Value0) defaultButton: (recoveredBlock574Value3).
    recoveredBlock574Value4
].
            recoveredPC := 598.
        ].
        recoveredStep = 598 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 606.
        ].
        recoveredStep = 606 ifTrue: [
            recoveredStack2 := [:block28129058Arg1 | 
    | block28129058Value0 block28129058Value1 block28129058Value2 block28129058Value3 block28129058Value4 block28129058Value5 block28129058Value6 block28129058Value7 block28129058Value8 block28129058Value9 block28129058Value10 block28129058Value11 block28129058Value12 |
    block28129058Value0 := block28129058Arg1.
    block28129058Value1 := block28129058Value0.
    block28129058Value2 := XmATTACHFORM.
    (block28129058Value1) topAttachment: (block28129058Value2).
    block28129058Value3 := block28129058Value0.
    (block28129058Value3) topOffset: (5).
    block28129058Value4 := block28129058Value0.
    block28129058Value5 := XmATTACHNONE.
    (block28129058Value4) bottomAttachment: (block28129058Value5).
    block28129058Value6 := block28129058Value0.
    (block28129058Value6) bottomOffset: (5).
    block28129058Value7 := block28129058Value0.
    block28129058Value8 := XmATTACHFORM.
    (block28129058Value7) leftAttachment: (block28129058Value8).
    block28129058Value9 := block28129058Value0.
    (block28129058Value9) leftOffset: (5).
    block28129058Value10 := block28129058Value0.
    block28129058Value11 := XmATTACHFORM.
    (block28129058Value10) rightAttachment: (block28129058Value11).
    block28129058Value12 := (block28129058Value0) rightOffset: (5).
    block28129058Value12
].
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            recoveredPC := 674.
        ].
        recoveredStep = 674 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 679.
        ].
        recoveredStep = 679 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 682.
        ].
        recoveredStep = 682 ifTrue: [
            recoveredStack2 := [:recoveredBlock682Arg1 | 
    | recoveredBlock682Value0 recoveredBlock682Value1 recoveredBlock682Value2 recoveredBlock682Value3 recoveredBlock682Value4 recoveredBlock682Value5 recoveredBlock682Value6 recoveredBlock682Value7 recoveredBlock682Value8 recoveredBlock682Value9 recoveredBlock682Value10 recoveredBlock682Value11 recoveredBlock682Value12 recoveredBlock682Value13 recoveredBlock682Value14 |
    recoveredBlock682Value0 := recoveredBlock682Arg1.
    recoveredBlock682Value1 := recoveredBlock682Value0.
    recoveredBlock682Value2 := XmATTACHWIDGET.
    (recoveredBlock682Value1) topAttachment: (recoveredBlock682Value2).
    recoveredBlock682Value3 := recoveredBlock682Value0.
    (recoveredBlock682Value3) topOffset: (5).
    recoveredBlock682Value4 := recoveredBlock682Value0.
    recoveredBlock682Value5 := recoveredLocal5.
    (recoveredBlock682Value4) topWidget: (recoveredBlock682Value5).
    recoveredBlock682Value6 := recoveredBlock682Value0.
    recoveredBlock682Value7 := XmATTACHNONE.
    (recoveredBlock682Value6) bottomAttachment: (recoveredBlock682Value7).
    recoveredBlock682Value8 := recoveredBlock682Value0.
    (recoveredBlock682Value8) bottomOffset: (5).
    recoveredBlock682Value9 := recoveredBlock682Value0.
    recoveredBlock682Value10 := XmATTACHFORM.
    (recoveredBlock682Value9) leftAttachment: (recoveredBlock682Value10).
    recoveredBlock682Value11 := recoveredBlock682Value0.
    (recoveredBlock682Value11) leftOffset: (5).
    recoveredBlock682Value12 := recoveredBlock682Value0.
    recoveredBlock682Value13 := XmATTACHFORM.
    (recoveredBlock682Value12) rightAttachment: (recoveredBlock682Value13).
    recoveredBlock682Value14 := (recoveredBlock682Value0) rightOffset: (5).
    recoveredBlock682Value14
].
            recoveredPC := 756.
        ].
        recoveredStep = 756 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 761.
        ].
        recoveredStep = 761 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 764.
        ].
        recoveredStep = 764 ifTrue: [
            recoveredStack2 := [:block2812907cArg1 | 
    | block2812907cValue0 block2812907cValue1 block2812907cValue2 block2812907cValue3 block2812907cValue4 block2812907cValue5 block2812907cValue6 block2812907cValue7 block2812907cValue8 block2812907cValue9 block2812907cValue10 block2812907cValue11 block2812907cValue12 |
    block2812907cValue0 := block2812907cArg1.
    block2812907cValue1 := block2812907cValue0.
    block2812907cValue2 := XmATTACHFORM.
    (block2812907cValue1) topAttachment: (block2812907cValue2).
    block2812907cValue3 := block2812907cValue0.
    (block2812907cValue3) topOffset: (5).
    block2812907cValue4 := block2812907cValue0.
    block2812907cValue5 := XmATTACHFORM.
    (block2812907cValue4) bottomAttachment: (block2812907cValue5).
    block2812907cValue6 := block2812907cValue0.
    (block2812907cValue6) bottomOffset: (5).
    block2812907cValue7 := block2812907cValue0.
    block2812907cValue8 := XmATTACHFORM.
    (block2812907cValue7) leftAttachment: (block2812907cValue8).
    block2812907cValue9 := block2812907cValue0.
    (block2812907cValue9) leftOffset: (5).
    block2812907cValue10 := block2812907cValue0.
    block2812907cValue11 := XmATTACHFORM.
    (block2812907cValue10) rightAttachment: (block2812907cValue11).
    block2812907cValue12 := (block2812907cValue0) rightOffset: (5).
    block2812907cValue12
].
            recoveredPC := 768.
        ].
        recoveredStep = 768 ifTrue: [
            recoveredPC := 832.
        ].
        recoveredStep = 832 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 837.
        ].
        recoveredStep = 837 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 840.
        ].
        recoveredStep = 840 ifTrue: [
            recoveredStack2 := [:block281290a0Arg1 | 
    | block281290a0Value0 block281290a0Value1 block281290a0Value2 block281290a0Value3 block281290a0Value4 block281290a0Value5 block281290a0Value6 block281290a0Value7 block281290a0Value8 block281290a0Value9 block281290a0Value10 block281290a0Value11 block281290a0Value12 |
    block281290a0Value0 := block281290a0Arg1.
    block281290a0Value1 := block281290a0Value0.
    block281290a0Value2 := XmATTACHNONE.
    (block281290a0Value1) topAttachment: (block281290a0Value2).
    block281290a0Value3 := block281290a0Value0.
    (block281290a0Value3) topOffset: (5).
    block281290a0Value4 := block281290a0Value0.
    block281290a0Value5 := XmATTACHFORM.
    (block281290a0Value4) bottomAttachment: (block281290a0Value5).
    block281290a0Value6 := block281290a0Value0.
    (block281290a0Value6) bottomOffset: (7).
    block281290a0Value7 := block281290a0Value0.
    block281290a0Value8 := XmATTACHFORM.
    (block281290a0Value7) leftAttachment: (block281290a0Value8).
    block281290a0Value9 := block281290a0Value0.
    (block281290a0Value9) leftOffset: (5).
    block281290a0Value10 := block281290a0Value0.
    block281290a0Value11 := XmATTACHNONE.
    (block281290a0Value10) rightAttachment: (block281290a0Value11).
    block281290a0Value12 := (block281290a0Value0) rightOffset: (5).
    block281290a0Value12
].
            recoveredPC := 844.
        ].
        recoveredStep = 844 ifTrue: [
            recoveredPC := 908.
        ].
        recoveredStep = 908 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 913.
        ].
        recoveredStep = 913 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 916.
        ].
        recoveredStep = 916 ifTrue: [
            recoveredStack2 := [:recoveredBlock916Arg1 | 
    | recoveredBlock916Value0 recoveredBlock916Value1 recoveredBlock916Value2 recoveredBlock916Value3 recoveredBlock916Value4 recoveredBlock916Value5 recoveredBlock916Value6 recoveredBlock916Value7 recoveredBlock916Value8 recoveredBlock916Value9 recoveredBlock916Value10 recoveredBlock916Value11 recoveredBlock916Value12 recoveredBlock916Value13 recoveredBlock916Value14 |
    recoveredBlock916Value0 := recoveredBlock916Arg1.
    recoveredBlock916Value1 := recoveredBlock916Value0.
    recoveredBlock916Value2 := XmATTACHNONE.
    (recoveredBlock916Value1) topAttachment: (recoveredBlock916Value2).
    recoveredBlock916Value3 := recoveredBlock916Value0.
    (recoveredBlock916Value3) topOffset: (5).
    recoveredBlock916Value4 := recoveredBlock916Value0.
    recoveredBlock916Value5 := XmATTACHFORM.
    (recoveredBlock916Value4) bottomAttachment: (recoveredBlock916Value5).
    recoveredBlock916Value6 := recoveredBlock916Value0.
    (recoveredBlock916Value6) bottomOffset: (7).
    recoveredBlock916Value7 := recoveredBlock916Value0.
    recoveredBlock916Value8 := XmATTACHWIDGET.
    (recoveredBlock916Value7) leftAttachment: (recoveredBlock916Value8).
    recoveredBlock916Value9 := recoveredBlock916Value0.
    (recoveredBlock916Value9) leftOffset: (5).
    recoveredBlock916Value10 := recoveredBlock916Value0.
    recoveredBlock916Value11 := recoveredLocal4.
    (recoveredBlock916Value10) leftWidget: (recoveredBlock916Value11).
    recoveredBlock916Value12 := recoveredBlock916Value0.
    recoveredBlock916Value13 := XmATTACHNONE.
    (recoveredBlock916Value12) rightAttachment: (recoveredBlock916Value13).
    recoveredBlock916Value14 := (recoveredBlock916Value0) rightOffset: (5).
    recoveredBlock916Value14
].
            recoveredPC := 990.
        ].
        recoveredStep = 990 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 995.
        ].
        recoveredStep = 995 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 998.
        ].
        recoveredStep = 998 ifTrue: [
            recoveredStack2 := [:recoveredBlock998Arg1 | 
    | recoveredBlock998Value0 recoveredBlock998Value1 recoveredBlock998Value2 recoveredBlock998Value3 recoveredBlock998Value4 recoveredBlock998Value5 recoveredBlock998Value6 recoveredBlock998Value7 recoveredBlock998Value8 recoveredBlock998Value9 recoveredBlock998Value10 recoveredBlock998Value11 recoveredBlock998Value12 recoveredBlock998Value13 recoveredBlock998Value14 |
    recoveredBlock998Value0 := recoveredBlock998Arg1.
    recoveredBlock998Value1 := recoveredBlock998Value0.
    recoveredBlock998Value2 := XmATTACHNONE.
    (recoveredBlock998Value1) topAttachment: (recoveredBlock998Value2).
    recoveredBlock998Value3 := recoveredBlock998Value0.
    (recoveredBlock998Value3) topOffset: (5).
    recoveredBlock998Value4 := recoveredBlock998Value0.
    recoveredBlock998Value5 := XmATTACHFORM.
    (recoveredBlock998Value4) bottomAttachment: (recoveredBlock998Value5).
    recoveredBlock998Value6 := recoveredBlock998Value0.
    (recoveredBlock998Value6) bottomOffset: (5).
    recoveredBlock998Value7 := recoveredBlock998Value0.
    recoveredBlock998Value8 := XmATTACHWIDGET.
    (recoveredBlock998Value7) rightAttachment: (recoveredBlock998Value8).
    recoveredBlock998Value9 := recoveredBlock998Value0.
    (recoveredBlock998Value9) rightOffset: (5).
    recoveredBlock998Value10 := recoveredBlock998Value0.
    recoveredBlock998Value11 := recoveredLocal6.
    (recoveredBlock998Value10) rightWidget: (recoveredBlock998Value11).
    recoveredBlock998Value12 := recoveredBlock998Value0.
    recoveredBlock998Value13 := XmATTACHNONE.
    (recoveredBlock998Value12) leftAttachment: (recoveredBlock998Value13).
    recoveredBlock998Value14 := (recoveredBlock998Value0) leftOffset: (5).
    recoveredBlock998Value14
].
            recoveredPC := 1072.
        ].
        recoveredStep = 1072 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1077.
        ].
        recoveredStep = 1077 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1080.
        ].
        recoveredStep = 1080 ifTrue: [
            recoveredStack2 := [:recoveredBlock1080Arg1 | 
    | recoveredBlock1080Value0 recoveredBlock1080Value1 recoveredBlock1080Value2 recoveredBlock1080Value3 recoveredBlock1080Value4 recoveredBlock1080Value5 recoveredBlock1080Value6 recoveredBlock1080Value7 recoveredBlock1080Value8 recoveredBlock1080Value9 recoveredBlock1080Value10 recoveredBlock1080Value11 recoveredBlock1080Value12 recoveredBlock1080Value13 recoveredBlock1080Value14 |
    recoveredBlock1080Value0 := recoveredBlock1080Arg1.
    recoveredBlock1080Value1 := recoveredBlock1080Value0.
    recoveredBlock1080Value2 := XmATTACHNONE.
    (recoveredBlock1080Value1) topAttachment: (recoveredBlock1080Value2).
    recoveredBlock1080Value3 := recoveredBlock1080Value0.
    (recoveredBlock1080Value3) topOffset: (5).
    recoveredBlock1080Value4 := recoveredBlock1080Value0.
    recoveredBlock1080Value5 := XmATTACHFORM.
    (recoveredBlock1080Value4) bottomAttachment: (recoveredBlock1080Value5).
    recoveredBlock1080Value6 := recoveredBlock1080Value0.
    (recoveredBlock1080Value6) bottomOffset: (5).
    recoveredBlock1080Value7 := recoveredBlock1080Value0.
    recoveredBlock1080Value8 := XmATTACHWIDGET.
    (recoveredBlock1080Value7) rightAttachment: (recoveredBlock1080Value8).
    recoveredBlock1080Value9 := recoveredBlock1080Value0.
    (recoveredBlock1080Value9) rightOffset: (5).
    recoveredBlock1080Value10 := recoveredBlock1080Value0.
    recoveredBlock1080Value11 := recoveredLocal8.
    (recoveredBlock1080Value10) rightWidget: (recoveredBlock1080Value11).
    recoveredBlock1080Value12 := recoveredBlock1080Value0.
    recoveredBlock1080Value13 := XmATTACHNONE.
    (recoveredBlock1080Value12) leftAttachment: (recoveredBlock1080Value13).
    recoveredBlock1080Value14 := (recoveredBlock1080Value0) leftOffset: (5).
    recoveredBlock1080Value14
].
            recoveredPC := 1154.
        ].
        recoveredStep = 1154 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1159.
        ].
        recoveredStep = 1159 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1162.
        ].
        recoveredStep = 1162 ifTrue: [
            recoveredStack2 := [:block281290c4Arg1 | 
    | block281290c4Value0 block281290c4Value1 block281290c4Value2 block281290c4Value3 block281290c4Value4 block281290c4Value5 block281290c4Value6 block281290c4Value7 block281290c4Value8 block281290c4Value9 block281290c4Value10 block281290c4Value11 block281290c4Value12 |
    block281290c4Value0 := block281290c4Arg1.
    block281290c4Value1 := block281290c4Value0.
    block281290c4Value2 := XmATTACHNONE.
    (block281290c4Value1) topAttachment: (block281290c4Value2).
    block281290c4Value3 := block281290c4Value0.
    (block281290c4Value3) topOffset: (5).
    block281290c4Value4 := block281290c4Value0.
    block281290c4Value5 := XmATTACHFORM.
    (block281290c4Value4) bottomAttachment: (block281290c4Value5).
    block281290c4Value6 := block281290c4Value0.
    (block281290c4Value6) bottomOffset: (5).
    block281290c4Value7 := block281290c4Value0.
    block281290c4Value8 := XmATTACHNONE.
    (block281290c4Value7) leftAttachment: (block281290c4Value8).
    block281290c4Value9 := block281290c4Value0.
    (block281290c4Value9) leftOffset: (5).
    block281290c4Value10 := block281290c4Value0.
    block281290c4Value11 := XmATTACHFORM.
    (block281290c4Value10) rightAttachment: (block281290c4Value11).
    block281290c4Value12 := (block281290c4Value0) rightOffset: (5).
    block281290c4Value12
].
            recoveredPC := 1166.
        ].
        recoveredStep = 1166 ifTrue: [
            recoveredPC := 1230.
        ].
        recoveredStep = 1230 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1235.
        ].
        recoveredStep = 1235 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1238.
        ].
        recoveredStep = 1238 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1242.
        ].
        recoveredStep = 1242 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1243.
        ].
        recoveredStep = 1243 ifTrue: [
            recoveredStack4 := 'cancelActivate:clientData:callData:'.
            recoveredPC := 1246.
        ].
        recoveredStep = 1246 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1247.
        ].
        recoveredStep = 1247 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1251.
        ].
        recoveredStep = 1251 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1254.
        ].
        recoveredStep = 1254 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1258.
        ].
        recoveredStep = 1258 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1259.
        ].
        recoveredStep = 1259 ifTrue: [
            recoveredStack4 := 'yesActivate:clientData:callData:'.
            recoveredPC := 1262.
        ].
        recoveredStep = 1262 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1263.
        ].
        recoveredStep = 1263 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1267.
        ].
        recoveredStep = 1267 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1270.
        ].
        recoveredStep = 1270 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1274.
        ].
        recoveredStep = 1274 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1275.
        ].
        recoveredStep = 1275 ifTrue: [
            recoveredStack4 := 'noActivate:clientData:callData:'.
            recoveredPC := 1278.
        ].
        recoveredStep = 1278 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1279.
        ].
        recoveredStep = 1279 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1283.
        ].
        recoveredStep = 1283 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1286.
        ].
        recoveredStep = 1286 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1291.
        ].
        recoveredStep = 1291 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1294.
        ].
        recoveredStep = 1294 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1299.
        ].
        recoveredStep = 1299 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1302.
        ].
        recoveredStep = 1302 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1307.
        ].
        recoveredStep = 1307 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1310.
        ].
        recoveredStep = 1310 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1315.
        ].
        recoveredStep = 1315 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 1318.
        ].
        recoveredStep = 1318 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 1321.
        ].
        recoveredStep = 1321 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 1324.
        ].
        recoveredStep = 1324 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 1329.
        ].
        recoveredStep = 1329 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

