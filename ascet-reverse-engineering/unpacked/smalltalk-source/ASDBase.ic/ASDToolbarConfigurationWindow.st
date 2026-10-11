"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20020af8; bytecode file offset 0x92209c"
!ASDToolbarConfigurationWindow methodsFor: 'recovered'!
toolbarNames
    ^#('General' 'Elements' 'Basic Blocks')
! !

"ASDBase.ic method 0x200432fc; bytecode file offset 0x9451f8"
!ASDToolbarConfigurationWindow methodsFor: 'recovered'!
asdConfigWidget
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('asdConfigWidget').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005a710; bytecode file offset 0x957a6c"
!ASDToolbarConfigurationWindow methodsFor: 'recovered'!
okButton: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) ok.
    ^self
! !

"ASDBase.ic method 0x2005b184; bytecode file offset 0x957a6c"
!ASDToolbarConfigurationWindow methodsFor: 'recovered'!
cancelButton: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) cancel.
    ^self
! !

"ASDBase.ic method 0x20064264; bytecode file offset 0x961970"
!ASDToolbarConfigurationWindow methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredValue0 |
    recoveredValue0 := (self) asdConfigWidget.
    (recoveredValue0) setInputFocus.
    ^self
! !

"ASDBase.ic method 0x20070038; bytecode file offset 0x96cb7c"
!ASDToolbarConfigurationWindow methodsFor: 'recovered'!
availableButtons
    | recoveredValue0 |
    recoveredValue0 := availableButtons.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200702fc; bytecode file offset 0x96ce40"
!ASDToolbarConfigurationWindow methodsFor: 'recovered'!
visibleButtons
    | recoveredValue0 |
    recoveredValue0 := visibleButtons.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c6618; bytecode file offset 0x9c3164"
!ASDToolbarConfigurationWindow methodsFor: 'recovered'!
availableButtons: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    availableButtons := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c68c4; bytecode file offset 0x9c3470"
!ASDToolbarConfigurationWindow methodsFor: 'recovered'!
visibleButtons: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    visibleButtons := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e2724; bytecode file offset 0x9df000"
!ASDToolbarConfigurationWindow methodsFor: 'recovered'!
ok
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) asdConfigWidget.
    recoveredValue1 := (recoveredValue0) visibleButtons.
    (self) result: (recoveredValue1).
    (self) close.
    ^self
! !

"ASDBase.ic method 0x20162800; bytecode file offset 0xa5f0cc"
!ASDToolbarConfigurationWindow methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 |
    super initializeAfterCreate.
    (self) installActionKeys.
    (self) updateFonts.
    recoveredValue0 := (self) asdConfigWidget.
    (recoveredValue0) initButtonLists.
    ^self
! !

"ASDBase.ic method 0x20335d40; bytecode file offset 0xc3262c"
!ASDToolbarConfigurationWindow methodsFor: 'recovered'!
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

"ASDBase.ic method 0x2061a9b4; bytecode file offset 0xf1737c"
!ASDToolbarConfigurationWindow methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'topShell'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:block2811e870Arg1 | 
    | block2811e870Value0 block2811e870Value1 block2811e870Value2 block2811e870Value3 block2811e870Value4 block2811e870Value5 block2811e870Value6 block2811e870Value7 block2811e870Value8 block2811e870Value9 block2811e870Value10 block2811e870Value11 block2811e870Value12 block2811e870Value13 |
    block2811e870Value0 := block2811e870Arg1.
    block2811e870Value1 := block2811e870Value0.
    (block2811e870Value1) title: ('Toolbar Configuration').
    block2811e870Value2 := block2811e870Value0.
    (block2811e870Value2) height: (400).
    block2811e870Value3 := block2811e870Value0.
    (block2811e870Value3) width: (600).
    block2811e870Value4 := block2811e870Value0.
    block2811e870Value5 := MWMINPUTFULLAPPLICATIONMODAL.
    (block2811e870Value4) mwmInputMode: (block2811e870Value5).
    block2811e870Value6 := MWMDECORBORDER.
    block2811e870Value7 := MWMDECORRESIZEH.
    block2811e870Value8 := (block2811e870Value6) | (block2811e870Value7).
    block2811e870Value9 := MWMDECORTITLE.
    block2811e870Value10 := (block2811e870Value8) | (block2811e870Value9).
    block2811e870Value11 := MWMDECORMENU.
    block2811e870Value12 := (block2811e870Value10) | (block2811e870Value11).
    block2811e870Value13 := (block2811e870Value0) mwmDecorations: (block2811e870Value12).
    block2811e870Value13
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := 'topShell'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := 'asdConfigWidget'.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := [:recoveredBlock126Arg1 | 
    | recoveredBlock126Value0 recoveredBlock126Value1 recoveredBlock126Value2 recoveredBlock126Value3 recoveredBlock126Value4 recoveredBlock126Value5 recoveredBlock126Value6 recoveredBlock126Value7 |
    recoveredBlock126Value0 := recoveredBlock126Arg1.
    recoveredBlock126Value1 := recoveredBlock126Value0.
    recoveredBlock126Value2 := (self) availableButtons.
    (recoveredBlock126Value1) availableButtons: (recoveredBlock126Value2).
    recoveredBlock126Value3 := recoveredBlock126Value0.
    recoveredBlock126Value4 := (self) visibleButtons.
    recoveredBlock126Value5 := [:recoveredBlock126Block143Arg1 | 
    | recoveredBlock126Block143Value0 recoveredBlock126Block143Value1 recoveredBlock126Block143Value2 |
    recoveredBlock126Block143Value0 := (self) availableButtons.
    recoveredBlock126Block143Value1 := recoveredBlock126Block143Arg1.
    recoveredBlock126Block143Value2 := (recoveredBlock126Block143Value0) includes: (recoveredBlock126Block143Value1).
    recoveredBlock126Block143Value2
].
    recoveredBlock126Value6 := (recoveredBlock126Value4) select: (recoveredBlock126Value5).
    (recoveredBlock126Value3) visibleButtons: (recoveredBlock126Value6).
    recoveredBlock126Value7 := recoveredBlock126Value0.
    (recoveredBlock126Value7) owner: (self).
    recoveredBlock126Value0
].
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) createASDToolbarConfigurationWidget: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := 'asdConfigWidget'.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack1) updateFonts.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack3 := [:block2811e894Arg1 | 
    | block2811e894Value0 block2811e894Value1 block2811e894Value2 block2811e894Value3 block2811e894Value4 block2811e894Value5 |
    block2811e894Value0 := block2811e894Arg1.
    block2811e894Value1 := block2811e894Value0.
    (block2811e894Value1) labelString: ('Cancel').
    block2811e894Value2 := block2811e894Value0.
    (block2811e894Value2) mnemonic: ($C).
    block2811e894Value3 := block2811e894Value0.
    (block2811e894Value3) height: (24).
    block2811e894Value4 := block2811e894Value0.
    (block2811e894Value4) width: (90).
    block2811e894Value5 := (block2811e894Value0) recomputeSize: (false).
    block2811e894Value5
].
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack3 := [:block2811e8b8Arg1 | 
    | block2811e8b8Value0 block2811e8b8Value1 block2811e8b8Value2 block2811e8b8Value3 block2811e8b8Value4 block2811e8b8Value5 |
    block2811e8b8Value0 := block2811e8b8Arg1.
    block2811e8b8Value1 := block2811e8b8Value0.
    (block2811e8b8Value1) labelString: ('OK').
    block2811e8b8Value2 := block2811e8b8Value0.
    (block2811e8b8Value2) mnemonic: ($O).
    block2811e8b8Value3 := block2811e8b8Value0.
    (block2811e8b8Value3) height: (24).
    block2811e8b8Value4 := block2811e8b8Value0.
    (block2811e8b8Value4) width: (90).
    block2811e8b8Value5 := (block2811e8b8Value0) recomputeSize: (false).
    block2811e8b8Value5
].
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack2 := [:block2811e8dcArg1 | 
    | block2811e8dcValue0 block2811e8dcValue1 block2811e8dcValue2 block2811e8dcValue3 block2811e8dcValue4 block2811e8dcValue5 block2811e8dcValue6 block2811e8dcValue7 block2811e8dcValue8 block2811e8dcValue9 block2811e8dcValue10 |
    block2811e8dcValue0 := block2811e8dcArg1.
    block2811e8dcValue1 := block2811e8dcValue0.
    block2811e8dcValue2 := XmATTACHFORM.
    (block2811e8dcValue1) bottomAttachment: (block2811e8dcValue2).
    block2811e8dcValue3 := block2811e8dcValue0.
    (block2811e8dcValue3) bottomOffset: (5).
    block2811e8dcValue4 := block2811e8dcValue0.
    block2811e8dcValue5 := XmATTACHNONE.
    (block2811e8dcValue4) topAttachment: (block2811e8dcValue5).
    block2811e8dcValue6 := block2811e8dcValue0.
    block2811e8dcValue7 := XmATTACHNONE.
    (block2811e8dcValue6) leftAttachment: (block2811e8dcValue7).
    block2811e8dcValue8 := block2811e8dcValue0.
    block2811e8dcValue9 := XmATTACHFORM.
    (block2811e8dcValue8) rightAttachment: (block2811e8dcValue9).
    block2811e8dcValue10 := (block2811e8dcValue0) rightOffset: (5).
    block2811e8dcValue10
].
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack2 := [:recoveredBlock350Arg1 | 
    | recoveredBlock350Value0 recoveredBlock350Value1 recoveredBlock350Value2 recoveredBlock350Value3 recoveredBlock350Value4 recoveredBlock350Value5 recoveredBlock350Value6 recoveredBlock350Value7 recoveredBlock350Value8 recoveredBlock350Value9 recoveredBlock350Value10 recoveredBlock350Value11 recoveredBlock350Value12 |
    recoveredBlock350Value0 := recoveredBlock350Arg1.
    recoveredBlock350Value1 := recoveredBlock350Value0.
    recoveredBlock350Value2 := XmATTACHFORM.
    (recoveredBlock350Value1) bottomAttachment: (recoveredBlock350Value2).
    recoveredBlock350Value3 := recoveredBlock350Value0.
    (recoveredBlock350Value3) bottomOffset: (5).
    recoveredBlock350Value4 := recoveredBlock350Value0.
    recoveredBlock350Value5 := XmATTACHNONE.
    (recoveredBlock350Value4) topAttachment: (recoveredBlock350Value5).
    recoveredBlock350Value6 := recoveredBlock350Value0.
    recoveredBlock350Value7 := XmATTACHNONE.
    (recoveredBlock350Value6) leftAttachment: (recoveredBlock350Value7).
    recoveredBlock350Value8 := recoveredBlock350Value0.
    recoveredBlock350Value9 := XmATTACHWIDGET.
    (recoveredBlock350Value8) rightAttachment: (recoveredBlock350Value9).
    recoveredBlock350Value10 := recoveredBlock350Value0.
    recoveredBlock350Value11 := recoveredLocal1.
    (recoveredBlock350Value10) rightWidget: (recoveredBlock350Value11).
    recoveredBlock350Value12 := (recoveredBlock350Value0) rightOffset: (5).
    recoveredBlock350Value12
].
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack2 := [:recoveredBlock408Arg1 | 
    | recoveredBlock408Value0 recoveredBlock408Value1 recoveredBlock408Value2 recoveredBlock408Value3 recoveredBlock408Value4 recoveredBlock408Value5 recoveredBlock408Value6 recoveredBlock408Value7 recoveredBlock408Value8 recoveredBlock408Value9 recoveredBlock408Value10 recoveredBlock408Value11 |
    recoveredBlock408Value0 := recoveredBlock408Arg1.
    recoveredBlock408Value1 := recoveredBlock408Value0.
    recoveredBlock408Value2 := XmATTACHWIDGET.
    (recoveredBlock408Value1) bottomAttachment: (recoveredBlock408Value2).
    recoveredBlock408Value3 := recoveredBlock408Value0.
    recoveredBlock408Value4 := recoveredLocal2.
    (recoveredBlock408Value3) bottomWidget: (recoveredBlock408Value4).
    recoveredBlock408Value5 := recoveredBlock408Value0.
    (recoveredBlock408Value5) bottomOffset: (5).
    recoveredBlock408Value6 := recoveredBlock408Value0.
    recoveredBlock408Value7 := XmATTACHFORM.
    (recoveredBlock408Value6) topAttachment: (recoveredBlock408Value7).
    recoveredBlock408Value8 := recoveredBlock408Value0.
    recoveredBlock408Value9 := XmATTACHFORM.
    (recoveredBlock408Value8) leftAttachment: (recoveredBlock408Value9).
    recoveredBlock408Value10 := recoveredBlock408Value0.
    recoveredBlock408Value11 := XmATTACHFORM.
    (recoveredBlock408Value10) rightAttachment: (recoveredBlock408Value11).
    recoveredBlock408Value0
].
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack4 := 'okButton:clientData:callData:'.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack4 := 'cancelButton:clientData:callData:'.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

