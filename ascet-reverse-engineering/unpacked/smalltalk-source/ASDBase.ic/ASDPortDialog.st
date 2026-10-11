"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200237d4; bytecode file offset 0x92209c"
!ASDPortDialog methodsFor: 'recovered'!
editorName
    ^'Port Editor'
! !

"ASDBase.ic method 0x20032164; bytecode file offset 0x934580"
!ASDPortDialog methodsFor: 'recovered'!
result
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (recoveredValue0) memoryGO.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20046e0c; bytecode file offset 0x9451f8"
!ASDPortDialog methodsFor: 'recovered'!
widgetAsdPortWidget
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetAsdPortWidget').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004e9d8; bytecode file offset 0x94d048"
!ASDPortDialog methodsFor: 'recovered'!
cancel
    (self) close.
    ^self
! !

"ASDBase.ic method 0x2005aba8; bytecode file offset 0x957a6c"
!ASDPortDialog methodsFor: 'recovered'!
widgetButtonCancelActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) cancel.
    ^self
! !

"ASDBase.ic method 0x2005ac8c; bytecode file offset 0x957a6c"
!ASDPortDialog methodsFor: 'recovered'!
widgetButtonOkActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) ok.
    ^self
! !

"ASDBase.ic method 0x2005e744; bytecode file offset 0x95affc"
!ASDPortDialog methodsFor: 'recovered'!
setMethodStartPage
    startPage := 'public'.
    ^self
! !

"ASDBase.ic method 0x200645f4; bytecode file offset 0x961970"
!ASDPortDialog methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAsdPortWidget.
    (recoveredValue0) installActionKeys.
    ^self
! !

"ASDBase.ic method 0x2011c208; bytecode file offset 0xa18ac8"
!ASDPortDialog methodsFor: 'recovered'!
ok
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) updateGO.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
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
            (recoveredStack0) close.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015f700; bytecode file offset 0xa5bfcc"
!ASDPortDialog methodsFor: 'recovered'!
initializeAfterCreate
    (self) installActionKeys.
    (self) updateWindowLabel.
    (self) updateFonts.
    (self) iconSmall: ('EditorLayout') large: ('EditorLayout32').
    ^self
! !

"ASDBase.ic method 0x201d0f74; bytecode file offset 0xacd84c"
!ASDPortDialog methodsFor: 'recovered'!
updateWindowLabel
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) editorName.
    recoveredValue1 := (recoveredValue0) , ('<').
    recoveredValue2 := (self) uiController.
    recoveredValue3 := (recoveredValue2) getElementClass.
    recoveredValue4 := (recoveredValue3) label.
    recoveredValue5 := (recoveredValue1) , (recoveredValue4).
    recoveredValue6 := (recoveredValue5) , ('>').
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := (self) shell.
    recoveredValue8 := recoveredLocal1.
    (recoveredValue7) title: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x2038c344; bytecode file offset 0xc88c40"
!ASDPortDialog methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
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
    (recoveredValue7) at: ('Alt-o') put: ('ok').
    recoveredValue8 := recoveredValue4.
    (recoveredValue8) at: ('Alt-c') put: ('cancel').
    recoveredValue9 := recoveredValue4.
    (recoveredValue9) at: ('Alt-a') put: ('selectAll').
    recoveredValue10 := recoveredValue4.
    (recoveredValue10) at: ('Alt-d') put: ('deselectAll').
    recoveredValue11 := recoveredValue4.
    (recoveredValue11) at: ('Alt-r') put: ('revert').
    (recoveredValue4) at: ('Alt-f') put: ('default').
    recoveredValue12 := recoveredLocal2.
    recoveredValue13 := (self) shell.
    recoveredValue14 := recoveredLocal1.
    (recoveredValue12) at: (recoveredValue13) put: (recoveredValue14).
    recoveredValue15 := recoveredLocal2.
    (self) widgetKeyActions: (recoveredValue15).
    ^self
! !

"ASDBase.ic method 0x2061a694; bytecode file offset 0xf17058"
!ASDPortDialog methodsFor: 'recovered'!
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
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:block2811e7bcArg1 | 
    | block2811e7bcValue0 block2811e7bcValue1 block2811e7bcValue2 block2811e7bcValue3 block2811e7bcValue4 block2811e7bcValue5 block2811e7bcValue6 block2811e7bcValue7 block2811e7bcValue8 block2811e7bcValue9 block2811e7bcValue10 block2811e7bcValue11 block2811e7bcValue12 |
    block2811e7bcValue0 := block2811e7bcArg1.
    block2811e7bcValue1 := block2811e7bcValue0.
    (block2811e7bcValue1) allowShellResize: (true).
    block2811e7bcValue2 := block2811e7bcValue0.
    block2811e7bcValue3 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (block2811e7bcValue2) mwmInputMode: (block2811e7bcValue3).
    block2811e7bcValue4 := block2811e7bcValue0.
    (block2811e7bcValue4) title: ('Dialog').
    block2811e7bcValue5 := MWMDECORBORDER.
    block2811e7bcValue6 := MWMDECORRESIZEH.
    block2811e7bcValue7 := (block2811e7bcValue5) | (block2811e7bcValue6).
    block2811e7bcValue8 := MWMDECORTITLE.
    block2811e7bcValue9 := (block2811e7bcValue7) | (block2811e7bcValue8).
    block2811e7bcValue10 := MWMDECORMENU.
    block2811e7bcValue11 := (block2811e7bcValue9) | (block2811e7bcValue10).
    block2811e7bcValue12 := (block2811e7bcValue0) mwmDecorations: (block2811e7bcValue11).
    block2811e7bcValue12
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
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := [:block2811e7e0Arg1 | 
    | block2811e7e0Value0 block2811e7e0Value1 block2811e7e0Value2 |
    block2811e7e0Value0 := block2811e7e0Arg1.
    block2811e7e0Value1 := block2811e7e0Value0.
    (block2811e7e0Value1) height: (300).
    block2811e7e0Value2 := (block2811e7e0Value0) width: (500).
    block2811e7e0Value2
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
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal5.
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
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := 'widgetButtonOk'.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack3 := [:block2811e804Arg1 | 
    | block2811e804Value0 block2811e804Value1 block2811e804Value2 block2811e804Value3 block2811e804Value4 |
    block2811e804Value0 := block2811e804Arg1.
    block2811e804Value1 := block2811e804Value0.
    (block2811e804Value1) labelString: ('OK').
    block2811e804Value2 := block2811e804Value0.
    (block2811e804Value2) mnemonic: ($O).
    block2811e804Value3 := block2811e804Value0.
    (block2811e804Value3) height: (24).
    block2811e804Value4 := (block2811e804Value0) width: (90).
    block2811e804Value4
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
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := 'widgetButtonOk'.
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
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := 'widgetButtonCancel'.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack3 := [:block2811e828Arg1 | 
    | block2811e828Value0 block2811e828Value1 block2811e828Value2 block2811e828Value3 block2811e828Value4 |
    block2811e828Value0 := block2811e828Arg1.
    block2811e828Value1 := block2811e828Value0.
    (block2811e828Value1) labelString: ('Cancel').
    block2811e828Value2 := block2811e828Value0.
    (block2811e828Value2) mnemonic: ($C).
    block2811e828Value3 := block2811e828Value0.
    (block2811e828Value3) height: (24).
    block2811e828Value4 := (block2811e828Value0) width: (90).
    block2811e828Value4
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
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := 'widgetButtonCancel'.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack3 := recoveredLocal2.
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
            recoveredStack2 := 'widgetAsdPortWidget'.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack3 := [:recoveredBlock237Arg1 | 
    | recoveredBlock237Value0 recoveredBlock237Value1 recoveredBlock237Value2 |
    recoveredBlock237Value0 := recoveredBlock237Arg1.
    recoveredBlock237Value1 := recoveredBlock237Value0.
    recoveredBlock237Value2 := (self) uiController.
    (recoveredBlock237Value1) uiController: (recoveredBlock237Value2).
    recoveredBlock237Value0
].
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := (recoveredStack1) createASDPortWidget: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack2 := 'widgetAsdPortWidget'.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack2 := [:recoveredBlock272Arg1 | 
    | recoveredBlock272Value0 recoveredBlock272Value1 recoveredBlock272Value2 |
    recoveredBlock272Value0 := recoveredBlock272Arg1.
    recoveredBlock272Value1 := recoveredLocal4.
    recoveredBlock272Value2 := (recoveredBlock272Value0) workWindow: (recoveredBlock272Value1).
    recoveredBlock272Value2
].
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack2 := [:recoveredBlock290Arg1 | 
    | recoveredBlock290Value0 recoveredBlock290Value1 recoveredBlock290Value2 recoveredBlock290Value3 recoveredBlock290Value4 recoveredBlock290Value5 recoveredBlock290Value6 recoveredBlock290Value7 recoveredBlock290Value8 recoveredBlock290Value9 recoveredBlock290Value10 recoveredBlock290Value11 recoveredBlock290Value12 recoveredBlock290Value13 recoveredBlock290Value14 |
    recoveredBlock290Value0 := recoveredBlock290Arg1.
    recoveredBlock290Value1 := recoveredBlock290Value0.
    recoveredBlock290Value2 := XmATTACHFORM.
    (recoveredBlock290Value1) topAttachment: (recoveredBlock290Value2).
    recoveredBlock290Value3 := recoveredBlock290Value0.
    (recoveredBlock290Value3) topOffset: (2).
    recoveredBlock290Value4 := recoveredBlock290Value0.
    recoveredBlock290Value5 := XmATTACHFORM.
    (recoveredBlock290Value4) rightAttachment: (recoveredBlock290Value5).
    recoveredBlock290Value6 := recoveredBlock290Value0.
    (recoveredBlock290Value6) rightOffset: (2).
    recoveredBlock290Value7 := recoveredBlock290Value0.
    recoveredBlock290Value8 := XmATTACHFORM.
    (recoveredBlock290Value7) leftAttachment: (recoveredBlock290Value8).
    recoveredBlock290Value9 := recoveredBlock290Value0.
    (recoveredBlock290Value9) leftOffset: (2).
    recoveredBlock290Value10 := recoveredBlock290Value0.
    recoveredBlock290Value11 := XmATTACHWIDGET.
    (recoveredBlock290Value10) bottomAttachment: (recoveredBlock290Value11).
    recoveredBlock290Value12 := recoveredBlock290Value0.
    recoveredBlock290Value13 := recoveredLocal3.
    (recoveredBlock290Value12) bottomWidget: (recoveredBlock290Value13).
    recoveredBlock290Value14 := (recoveredBlock290Value0) bottomOffset: (2).
    recoveredBlock290Value14
].
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack2 := [:block2811e84cArg1 | 
    | block2811e84cValue0 block2811e84cValue1 block2811e84cValue2 block2811e84cValue3 block2811e84cValue4 block2811e84cValue5 block2811e84cValue6 block2811e84cValue7 block2811e84cValue8 block2811e84cValue9 block2811e84cValue10 |
    block2811e84cValue0 := block2811e84cArg1.
    block2811e84cValue1 := block2811e84cValue0.
    block2811e84cValue2 := XmATTACHNONE.
    (block2811e84cValue1) leftAttachment: (block2811e84cValue2).
    block2811e84cValue3 := block2811e84cValue0.
    block2811e84cValue4 := XmATTACHNONE.
    (block2811e84cValue3) topAttachment: (block2811e84cValue4).
    block2811e84cValue5 := block2811e84cValue0.
    block2811e84cValue6 := XmATTACHFORM.
    (block2811e84cValue5) rightAttachment: (block2811e84cValue6).
    block2811e84cValue7 := block2811e84cValue0.
    (block2811e84cValue7) rightOffset: (2).
    block2811e84cValue8 := block2811e84cValue0.
    block2811e84cValue9 := XmATTACHFORM.
    (block2811e84cValue8) bottomAttachment: (block2811e84cValue9).
    block2811e84cValue10 := (block2811e84cValue0) bottomOffset: (2).
    block2811e84cValue10
].
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack2 := [:recoveredBlock395Arg1 | 
    | recoveredBlock395Value0 recoveredBlock395Value1 recoveredBlock395Value2 recoveredBlock395Value3 recoveredBlock395Value4 recoveredBlock395Value5 recoveredBlock395Value6 recoveredBlock395Value7 recoveredBlock395Value8 recoveredBlock395Value9 recoveredBlock395Value10 recoveredBlock395Value11 recoveredBlock395Value12 recoveredBlock395Value13 |
    recoveredBlock395Value0 := recoveredBlock395Arg1.
    recoveredBlock395Value1 := recoveredBlock395Value0.
    recoveredBlock395Value2 := XmATTACHNONE.
    (recoveredBlock395Value1) leftAttachment: (recoveredBlock395Value2).
    recoveredBlock395Value3 := recoveredBlock395Value0.
    recoveredBlock395Value4 := XmATTACHNONE.
    (recoveredBlock395Value3) topAttachment: (recoveredBlock395Value4).
    recoveredBlock395Value5 := recoveredBlock395Value0.
    recoveredBlock395Value6 := XmATTACHWIDGET.
    (recoveredBlock395Value5) rightAttachment: (recoveredBlock395Value6).
    recoveredBlock395Value7 := recoveredBlock395Value0.
    recoveredBlock395Value8 := recoveredLocal2.
    (recoveredBlock395Value7) rightWidget: (recoveredBlock395Value8).
    recoveredBlock395Value9 := recoveredBlock395Value0.
    (recoveredBlock395Value9) rightOffset: (5).
    recoveredBlock395Value10 := recoveredBlock395Value0.
    recoveredBlock395Value11 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock395Value10) bottomAttachment: (recoveredBlock395Value11).
    recoveredBlock395Value12 := recoveredLocal2.
    recoveredBlock395Value13 := (recoveredBlock395Value0) bottomWidget: (recoveredBlock395Value12).
    recoveredBlock395Value13
].
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack4 := 'widgetButtonOkActivate:clientData:callData:'.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack4 := 'widgetButtonCancelActivate:clientData:callData:'.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack1 := recoveredLocal2.
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

