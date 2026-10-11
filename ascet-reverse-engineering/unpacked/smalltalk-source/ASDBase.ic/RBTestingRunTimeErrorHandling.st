"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20080908; bytecode file offset 0x97d1bc"
!RBTestingRunTimeErrorHandling methodsFor: 'recovered'!
width
    ^330
! !

"ASDBase.ic method 0x20080eb8; bytecode file offset 0x97d79c"
!RBTestingRunTimeErrorHandling methodsFor: 'recovered'!
height
    ^100
! !

"ASDBase.ic method 0x200a0af0; bytecode file offset 0x99d3ac"
!RBTestingRunTimeErrorHandling methodsFor: 'recovered'!
specificRunTimeErrorHandling
    (self) openEditorOnCurrentWalkback.
    (self) prompt.
    ^self
! !

"ASDBase.ic method 0x200ec5e8; bytecode file offset 0x9e8ed0"
!RBTestingRunTimeErrorHandling methodsFor: 'recovered'!
exitPushButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) close.
    (self) outputWalkbackIntoSeperateFileIfNecessary.
    (self) exitRunTime.
    ^self
! !

"ASDBase.ic method 0x200ec610; bytecode file offset 0x9e8ed0"
!RBTestingRunTimeErrorHandling methodsFor: 'recovered'!
continuePushButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) close.
    (self) outputWalkbackIntoSeperateFileIfNecessary.
    (self) continueRunTime.
    ^self
! !

"ASDBase.ic method 0x2025f67c; bytecode file offset 0xb5bf68"
!RBTestingRunTimeErrorHandling methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) exitPushButton.
    recoveredValue1 := BSystemExit.
    (recoveredValue0) labelString: (recoveredValue1).
    recoveredValue2 := (self) continuePushButton.
    recoveredValue3 := BContinue.
    (recoveredValue2) labelString: (recoveredValue3).
    recoveredValue4 := (self) messageStringText.
    recoveredValue5 := SCSystemErrorChoice.
    (recoveredValue4) value: (recoveredValue5).
    recoveredValue6 := (self) shell.
    recoveredValue7 := TSystemError.
    (recoveredValue6) title: (recoveredValue7).
    (self) installActionKeys.
    super initializeAfterCreate.
    ^self
! !

"ASDBase.ic method 0x20304a70; bytecode file offset 0xc01354"
!RBTestingRunTimeErrorHandling methodsFor: 'recovered'!
installActionKeys
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := (self) exitPushButton.
    recoveredValue1 := AccBSystemExit.
    recoveredValue2 := (recoveredValue1) first.
    recoveredValue3 := (recoveredValue2) asCharacter.
    (recoveredValue0) mnemonic: (recoveredValue3).
    recoveredValue4 := (self) exitPushButton.
    recoveredValue5 := CwAccelerator.
    recoveredValue6 := ControlMask.
    recoveredValue7 := AccBSystemExit.
    recoveredValue8 := (recoveredValue7) first.
    recoveredValue9 := (recoveredValue8) asCharacter.
    recoveredValue10 := (recoveredValue9) value.
    recoveredValue11 := (recoveredValue5) mask: (recoveredValue6) keysym: (recoveredValue10).
    (recoveredValue4) accelerator: (recoveredValue11).
    recoveredValue12 := (self) continuePushButton.
    recoveredValue13 := AccBContinue.
    recoveredValue14 := (recoveredValue13) first.
    recoveredValue15 := (recoveredValue14) asCharacter.
    (recoveredValue12) mnemonic: (recoveredValue15).
    recoveredValue16 := (self) continuePushButton.
    recoveredValue17 := CwAccelerator.
    recoveredValue18 := ControlMask.
    recoveredValue19 := AccBContinue.
    recoveredValue20 := (recoveredValue19) first.
    recoveredValue21 := (recoveredValue20) asCharacter.
    recoveredValue22 := (recoveredValue21) value.
    recoveredValue23 := (recoveredValue17) mask: (recoveredValue18) keysym: (recoveredValue22).
    (recoveredValue16) accelerator: (recoveredValue23).
    ^self
! !

"ASDBase.ic method 0x2062f674; bytecode file offset 0xf2c034"
!RBTestingRunTimeErrorHandling methodsFor: 'recovered'!
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
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal7 := recoveredStack1.
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
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 recoveredBlock25Value5 recoveredBlock25Value6 recoveredBlock25Value7 recoveredBlock25Value8 recoveredBlock25Value9 recoveredBlock25Value10 recoveredBlock25Value11 recoveredBlock25Value12 recoveredBlock25Value13 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredBlock25Value1 := recoveredBlock25Value0.
    recoveredBlock25Value2 := MWMINPUTSYSTEMMODAL.
    (recoveredBlock25Value1) mwmInputMode: (recoveredBlock25Value2).
    recoveredBlock25Value3 := recoveredBlock25Value0.
    (recoveredBlock25Value3) title: ('SYSTEMFEHLER').
    recoveredBlock25Value4 := recoveredBlock25Value0.
    recoveredBlock25Value5 := MWMDECORTITLE.
    (recoveredBlock25Value4) mwmDecorations: (recoveredBlock25Value5).
    recoveredBlock25Value6 := recoveredBlock25Value0.
    recoveredBlock25Value7 := recoveredLocal7.
    recoveredBlock25Value8 := (100) * (recoveredBlock25Value7).
    recoveredBlock25Value9 := (recoveredBlock25Value8) rounded.
    (recoveredBlock25Value6) height: (recoveredBlock25Value9).
    recoveredBlock25Value10 := recoveredLocal8.
    recoveredBlock25Value11 := (330) * (recoveredBlock25Value10).
    recoveredBlock25Value12 := (recoveredBlock25Value11) rounded.
    recoveredBlock25Value13 := (recoveredBlock25Value0) width: (recoveredBlock25Value12).
    recoveredBlock25Value13
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := [:recoveredBlock93Arg1 | 
    | recoveredBlock93Value0 recoveredBlock93Value1 recoveredBlock93Value2 recoveredBlock93Value3 recoveredBlock93Value4 |
    recoveredBlock93Value0 := recoveredBlock93Arg1.
    recoveredBlock93Value1 := recoveredLocal8.
    recoveredBlock93Value2 := (100) * (recoveredBlock93Value1).
    recoveredBlock93Value3 := (recoveredBlock93Value2) rounded.
    recoveredBlock93Value4 := (recoveredBlock93Value0) width: (recoveredBlock93Value3).
    recoveredBlock93Value4
].
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := 'exitPushButton'.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack3 := [:recoveredBlock156Arg1 | 
    | recoveredBlock156Value0 recoveredBlock156Value1 recoveredBlock156Value2 recoveredBlock156Value3 recoveredBlock156Value4 recoveredBlock156Value5 recoveredBlock156Value6 recoveredBlock156Value7 recoveredBlock156Value8 recoveredBlock156Value9 recoveredBlock156Value10 recoveredBlock156Value11 recoveredBlock156Value12 recoveredBlock156Value13 recoveredBlock156Value14 recoveredBlock156Value15 recoveredBlock156Value16 recoveredBlock156Value17 |
    recoveredBlock156Value0 := recoveredBlock156Arg1.
    recoveredBlock156Value1 := recoveredBlock156Value0.
    recoveredBlock156Value2 := recoveredLocal8.
    recoveredBlock156Value3 := (170) * (recoveredBlock156Value2).
    recoveredBlock156Value4 := (recoveredBlock156Value3) rounded.
    (recoveredBlock156Value1) x: (recoveredBlock156Value4).
    recoveredBlock156Value5 := recoveredBlock156Value0.
    (recoveredBlock156Value5) labelString: ('&Nein').
    recoveredBlock156Value6 := recoveredBlock156Value0.
    recoveredBlock156Value7 := recoveredLocal7.
    recoveredBlock156Value8 := (60) * (recoveredBlock156Value7).
    recoveredBlock156Value9 := (recoveredBlock156Value8) rounded.
    (recoveredBlock156Value6) y: (recoveredBlock156Value9).
    recoveredBlock156Value10 := recoveredBlock156Value0.
    recoveredBlock156Value11 := recoveredLocal7.
    recoveredBlock156Value12 := (30) * (recoveredBlock156Value11).
    recoveredBlock156Value13 := (recoveredBlock156Value12) rounded.
    (recoveredBlock156Value10) height: (recoveredBlock156Value13).
    recoveredBlock156Value14 := recoveredLocal8.
    recoveredBlock156Value15 := (110) * (recoveredBlock156Value14).
    recoveredBlock156Value16 := (recoveredBlock156Value15) rounded.
    recoveredBlock156Value17 := (recoveredBlock156Value0) width: (recoveredBlock156Value16).
    recoveredBlock156Value17
].
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
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := 'exitPushButton'.
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
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack2 := 'continuePushButton'.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack3 := [:recoveredBlock237Arg1 | 
    | recoveredBlock237Value0 recoveredBlock237Value1 recoveredBlock237Value2 recoveredBlock237Value3 recoveredBlock237Value4 recoveredBlock237Value5 recoveredBlock237Value6 recoveredBlock237Value7 recoveredBlock237Value8 recoveredBlock237Value9 recoveredBlock237Value10 recoveredBlock237Value11 recoveredBlock237Value12 recoveredBlock237Value13 recoveredBlock237Value14 recoveredBlock237Value15 recoveredBlock237Value16 recoveredBlock237Value17 |
    recoveredBlock237Value0 := recoveredBlock237Arg1.
    recoveredBlock237Value1 := recoveredBlock237Value0.
    recoveredBlock237Value2 := recoveredLocal8.
    recoveredBlock237Value3 := (30) * (recoveredBlock237Value2).
    recoveredBlock237Value4 := (recoveredBlock237Value3) rounded.
    (recoveredBlock237Value1) x: (recoveredBlock237Value4).
    recoveredBlock237Value5 := recoveredBlock237Value0.
    (recoveredBlock237Value5) labelString: ('&Ja').
    recoveredBlock237Value6 := recoveredBlock237Value0.
    recoveredBlock237Value7 := recoveredLocal7.
    recoveredBlock237Value8 := (59) * (recoveredBlock237Value7).
    recoveredBlock237Value9 := (recoveredBlock237Value8) rounded.
    (recoveredBlock237Value6) y: (recoveredBlock237Value9).
    recoveredBlock237Value10 := recoveredBlock237Value0.
    recoveredBlock237Value11 := recoveredLocal7.
    recoveredBlock237Value12 := (30) * (recoveredBlock237Value11).
    recoveredBlock237Value13 := (recoveredBlock237Value12) rounded.
    (recoveredBlock237Value10) height: (recoveredBlock237Value13).
    recoveredBlock237Value14 := recoveredLocal8.
    recoveredBlock237Value15 := (110) * (recoveredBlock237Value14).
    recoveredBlock237Value16 := (recoveredBlock237Value15) rounded.
    recoveredBlock237Value17 := (recoveredBlock237Value0) width: (recoveredBlock237Value16).
    recoveredBlock237Value17
].
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack2 := 'continuePushButton'.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack2 := 'messageStringText'.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack3 := [:recoveredBlock317Arg1 | 
    | recoveredBlock317Value0 recoveredBlock317Value1 recoveredBlock317Value2 recoveredBlock317Value3 recoveredBlock317Value4 recoveredBlock317Value5 recoveredBlock317Value6 recoveredBlock317Value7 recoveredBlock317Value8 recoveredBlock317Value9 recoveredBlock317Value10 recoveredBlock317Value11 recoveredBlock317Value12 recoveredBlock317Value13 recoveredBlock317Value14 recoveredBlock317Value15 recoveredBlock317Value16 recoveredBlock317Value17 recoveredBlock317Value18 recoveredBlock317Value19 recoveredBlock317Value20 recoveredBlock317Value21 recoveredBlock317Value22 recoveredBlock317Value23 recoveredBlock317Value24 recoveredBlock317Value25 recoveredBlock317Value26 recoveredBlock317Value27 |
    recoveredBlock317Value0 := recoveredBlock317Arg1.
    recoveredBlock317Value1 := recoveredBlock317Value0.
    (recoveredBlock317Value1) editable: (false).
    recoveredBlock317Value2 := recoveredBlock317Value0.
    recoveredBlock317Value3 := recoveredLocal7.
    recoveredBlock317Value4 := (10) * (recoveredBlock317Value3).
    recoveredBlock317Value5 := (recoveredBlock317Value4) rounded.
    (recoveredBlock317Value2) y: (recoveredBlock317Value5).
    recoveredBlock317Value6 := recoveredBlock317Value0.
    recoveredBlock317Value7 := CgRGBColor.
    recoveredBlock317Value8 := (recoveredBlock317Value7) basicNew.
    recoveredBlock317Value9 := recoveredBlock317Value8.
    (recoveredBlock317Value9) instVarAt: (1) put: (49344).
    recoveredBlock317Value10 := recoveredBlock317Value8.
    (recoveredBlock317Value10) instVarAt: (2) put: (49344).
    recoveredBlock317Value11 := recoveredBlock317Value8.
    (recoveredBlock317Value11) instVarAt: (3) put: (49344).
    (recoveredBlock317Value6) backgroundColor: (recoveredBlock317Value8).
    recoveredBlock317Value12 := recoveredBlock317Value0.
    (recoveredBlock317Value12) wordWrap: (true).
    recoveredBlock317Value13 := recoveredBlock317Value0.
    recoveredBlock317Value14 := recoveredLocal8.
    recoveredBlock317Value15 := (10) * (recoveredBlock317Value14).
    recoveredBlock317Value16 := (recoveredBlock317Value15) rounded.
    (recoveredBlock317Value13) x: (recoveredBlock317Value16).
    recoveredBlock317Value17 := recoveredBlock317Value0.
    recoveredBlock317Value18 := XmALIGNMENTCENTER.
    (recoveredBlock317Value17) alignment: (recoveredBlock317Value18).
    recoveredBlock317Value19 := recoveredBlock317Value0.
    (recoveredBlock317Value19) value: ('Es ist ein Systemfehler aufgetreten.
Wollen Sie die Anwendung fortsetzen?').
    recoveredBlock317Value20 := recoveredBlock317Value0.
    recoveredBlock317Value21 := recoveredLocal7.
    recoveredBlock317Value22 := (40) * (recoveredBlock317Value21).
    recoveredBlock317Value23 := (recoveredBlock317Value22) rounded.
    (recoveredBlock317Value20) height: (recoveredBlock317Value23).
    recoveredBlock317Value24 := recoveredLocal8.
    recoveredBlock317Value25 := (422) * (recoveredBlock317Value24).
    recoveredBlock317Value26 := (recoveredBlock317Value25) rounded.
    recoveredBlock317Value27 := (recoveredBlock317Value0) width: (recoveredBlock317Value26).
    recoveredBlock317Value27
].
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack1 := (recoveredStack1) createText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack2 := 'messageStringText'.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack2 := [:recoveredBlock437Arg1 | 
    | recoveredBlock437Value0 recoveredBlock437Value1 recoveredBlock437Value2 |
    recoveredBlock437Value0 := recoveredBlock437Arg1.
    recoveredBlock437Value1 := recoveredLocal4.
    recoveredBlock437Value2 := (recoveredBlock437Value0) workWindow: (recoveredBlock437Value1).
    recoveredBlock437Value2
].
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack2 := [:recoveredBlock456Arg1 | 
    | recoveredBlock456Value0 recoveredBlock456Value1 recoveredBlock456Value2 recoveredBlock456Value3 recoveredBlock456Value4 recoveredBlock456Value5 recoveredBlock456Value6 recoveredBlock456Value7 |
    recoveredBlock456Value0 := recoveredBlock456Arg1.
    recoveredBlock456Value1 := recoveredBlock456Value0.
    recoveredBlock456Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock456Value1) topAttachment: (recoveredBlock456Value2).
    recoveredBlock456Value3 := recoveredBlock456Value0.
    recoveredBlock456Value4 := recoveredLocal2.
    (recoveredBlock456Value3) topWidget: (recoveredBlock456Value4).
    recoveredBlock456Value5 := recoveredBlock456Value0.
    recoveredBlock456Value6 := XmATTACHFORM.
    (recoveredBlock456Value5) rightAttachment: (recoveredBlock456Value6).
    recoveredBlock456Value7 := (recoveredBlock456Value0) rightOffset: (30).
    recoveredBlock456Value7
].
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredStack2 := [:block281200a0Arg1 | 
    | block281200a0Value0 block281200a0Value1 block281200a0Value2 block281200a0Value3 |
    block281200a0Value0 := block281200a0Arg1.
    block281200a0Value1 := block281200a0Value0.
    block281200a0Value2 := XmATTACHFORM.
    (block281200a0Value1) leftAttachment: (block281200a0Value2).
    block281200a0Value3 := (block281200a0Value0) leftOffset: (30).
    block281200a0Value3
].
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack2 := [:block281200c4Arg1 | 
    | block281200c4Value0 block281200c4Value1 block281200c4Value2 block281200c4Value3 block281200c4Value4 block281200c4Value5 block281200c4Value6 block281200c4Value7 block281200c4Value8 block281200c4Value9 block281200c4Value10 |
    block281200c4Value0 := block281200c4Arg1.
    block281200c4Value1 := block281200c4Value0.
    block281200c4Value2 := XmATTACHFORM.
    (block281200c4Value1) topAttachment: (block281200c4Value2).
    block281200c4Value3 := block281200c4Value0.
    (block281200c4Value3) topOffset: (10).
    block281200c4Value4 := block281200c4Value0.
    block281200c4Value5 := XmATTACHFORM.
    (block281200c4Value4) leftAttachment: (block281200c4Value5).
    block281200c4Value6 := block281200c4Value0.
    (block281200c4Value6) leftOffset: (10).
    block281200c4Value7 := block281200c4Value0.
    block281200c4Value8 := XmATTACHFORM.
    (block281200c4Value7) rightAttachment: (block281200c4Value8).
    block281200c4Value9 := block281200c4Value0.
    (block281200c4Value9) rightOffset: (10).
    block281200c4Value10 := (block281200c4Value0) doubleClickSelect: (false).
    block281200c4Value10
].
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredStack4 := 'exitPushButtonActivate:clientData:callData:'.
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            recoveredStack4 := 'continuePushButtonActivate:clientData:callData:'.
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 600.
        ].
        recoveredStep = 600 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 608.
        ].
        recoveredStep = 608 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 614.
        ].
        recoveredStep = 614 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

