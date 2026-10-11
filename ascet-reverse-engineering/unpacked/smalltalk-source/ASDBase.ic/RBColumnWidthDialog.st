"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2012b8fc; bytecode file offset 0xa281c0"
!RBColumnWidthDialog methodsFor: 'recovered'!
ok
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetAt: ('columnWidthSpinButton').
    recoveredValue1 := (recoveredValue0) value.
    columnWidth := recoveredValue1.
    result := self.
    (self) close.
    ^self
! !

"ASDBase.ic method 0x203ae9ec; bytecode file offset 0xcab2f0"
!RBColumnWidthDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := (self) widgetAt: ('columnWidthSpinButton').
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) minimum: (10).
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) maximum: (200).
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) editable: (true).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := columnWidth.
    (recoveredValue4) value: (recoveredValue5).
    (recoveredValue0) wrap: (false).
    (self) installActionKeys.
    (self) updateFonts.
    recoveredValue6 := (self) widgetAt: ('columnWidthText').
    recoveredValue7 := LLColumnWidth.
    (recoveredValue6) labelString: (recoveredValue7).
    recoveredValue8 := (self) widgetAt: ('okButton').
    recoveredValue9 := SCOk.
    (recoveredValue8) labelString: (recoveredValue9).
    recoveredValue10 := (self) widgetAt: ('cancelButton').
    recoveredValue11 := SCCancel.
    (recoveredValue10) labelString: (recoveredValue11).
    recoveredValue12 := (self) widgetAt: ('helpButton').
    recoveredValue13 := SCHelp.
    (recoveredValue12) labelString: (recoveredValue13).
    recoveredValue14 := (self) widgetAt: ('helpButton').
    (recoveredValue14) unmanageChild.
    (self) grayBackground.
    ^self
! !

"ASDBase.ic method 0x2065ac6c; bytecode file offset 0xf57660"
!RBColumnWidthDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:block2812451cArg1 | 
    | block2812451cValue0 block2812451cValue1 block2812451cValue2 block2812451cValue3 block2812451cValue4 block2812451cValue5 |
    block2812451cValue0 := block2812451cArg1.
    block2812451cValue1 := block2812451cValue0.
    block2812451cValue2 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (block2812451cValue1) mwmInputMode: (block2812451cValue2).
    block2812451cValue3 := block2812451cValue0.
    (block2812451cValue3) title: ('Display Setup').
    block2812451cValue4 := block2812451cValue0.
    (block2812451cValue4) height: (90).
    block2812451cValue5 := (block2812451cValue0) width: (200).
    block2812451cValue5
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
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
            recoveredStack2 := 'aForm1'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := [:block28124540Arg1 | 
    | block28124540Value0 block28124540Value1 block28124540Value2 block28124540Value3 block28124540Value4 block28124540Value5 |
    block28124540Value0 := block28124540Arg1.
    block28124540Value1 := block28124540Value0.
    (block28124540Value1) x: (155).
    block28124540Value2 := block28124540Value0.
    block28124540Value3 := XmVERTICAL.
    (block28124540Value2) orientation: (block28124540Value3).
    block28124540Value4 := block28124540Value0.
    (block28124540Value4) height: (131).
    block28124540Value5 := (block28124540Value0) width: (1).
    block28124540Value5
].
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := 'columnWidthText'.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack3 := [:recoveredBlock161Arg1 | 
    | recoveredBlock161Value0 recoveredBlock161Value1 recoveredBlock161Value2 recoveredBlock161Value3 recoveredBlock161Value4 recoveredBlock161Value5 recoveredBlock161Value6 recoveredBlock161Value7 recoveredBlock161Value8 recoveredBlock161Value9 |
    recoveredBlock161Value0 := recoveredBlock161Arg1.
    recoveredBlock161Value1 := recoveredBlock161Value0.
    (recoveredBlock161Value1) x: (10).
    recoveredBlock161Value2 := recoveredBlock161Value0.
    recoveredBlock161Value3 := XmALIGNMENTBEGINNING.
    (recoveredBlock161Value2) alignment: (recoveredBlock161Value3).
    recoveredBlock161Value4 := recoveredBlock161Value0.
    (recoveredBlock161Value4) labelString: ('Column width').
    recoveredBlock161Value5 := recoveredBlock161Value0.
    (recoveredBlock161Value5) y: (70).
    recoveredBlock161Value6 := recoveredBlock161Value0.
    (recoveredBlock161Value6) height: (20).
    recoveredBlock161Value7 := recoveredBlock161Value0.
    (recoveredBlock161Value7) width: (80).
    recoveredBlock161Value8 := recoveredBlock161Value0.
    recoveredBlock161Value9 := (self) defaultLabelBlue.
    (recoveredBlock161Value8) foregroundColor: (recoveredBlock161Value9).
    recoveredBlock161Value0
].
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := 'columnWidthText'.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack2 := 'columnWidthSpinButton'.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack3 := [:block28124564Arg1 | 
    | block28124564Value0 block28124564Value1 block28124564Value2 block28124564Value3 block28124564Value4 block28124564Value5 |
    block28124564Value0 := block28124564Arg1.
    block28124564Value1 := block28124564Value0.
    (block28124564Value1) x: (55).
    block28124564Value2 := block28124564Value0.
    (block28124564Value2) editable: (true).
    block28124564Value3 := block28124564Value0.
    (block28124564Value3) y: (95).
    block28124564Value4 := block28124564Value0.
    (block28124564Value4) height: (25).
    block28124564Value5 := (block28124564Value0) width: (80).
    block28124564Value5
].
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSpinButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack2 := 'columnWidthSpinButton'.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack3 := [:block28124588Arg1 | 
    | block28124588Value0 block28124588Value1 block28124588Value2 block28124588Value3 block28124588Value4 block28124588Value5 block28124588Value6 |
    block28124588Value0 := block28124588Arg1.
    block28124588Value1 := block28124588Value0.
    (block28124588Value1) x: (165).
    block28124588Value2 := block28124588Value0.
    (block28124588Value2) showAsDefault: (1).
    block28124588Value3 := block28124588Value0.
    (block28124588Value3) labelString: ('Ok').
    block28124588Value4 := block28124588Value0.
    (block28124588Value4) y: (10).
    block28124588Value5 := block28124588Value0.
    (block28124588Value5) height: (25).
    block28124588Value6 := (block28124588Value0) width: (90).
    block28124588Value6
].
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
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
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack3 := [:block281245acArg1 | 
    | block281245acValue0 block281245acValue1 block281245acValue2 block281245acValue3 block281245acValue4 block281245acValue5 |
    block281245acValue0 := block281245acArg1.
    block281245acValue1 := block281245acValue0.
    (block281245acValue1) x: (191).
    block281245acValue2 := block281245acValue0.
    (block281245acValue2) labelString: ('Cancel').
    block281245acValue3 := block281245acValue0.
    (block281245acValue3) y: (35).
    block281245acValue4 := block281245acValue0.
    (block281245acValue4) height: (25).
    block281245acValue5 := (block281245acValue0) width: (90).
    block281245acValue5
].
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack2 := 'helpButton'.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack3 := [:block281245d0Arg1 | 
    | block281245d0Value0 block281245d0Value1 block281245d0Value2 block281245d0Value3 block281245d0Value4 block281245d0Value5 |
    block281245d0Value0 := block281245d0Arg1.
    block281245d0Value1 := block281245d0Value0.
    (block281245d0Value1) x: (191).
    block281245d0Value2 := block281245d0Value0.
    (block281245d0Value2) labelString: ('Help').
    block281245d0Value3 := block281245d0Value0.
    (block281245d0Value3) y: (65).
    block281245d0Value4 := block281245d0Value0.
    (block281245d0Value4) height: (25).
    block281245d0Value5 := (block281245d0Value0) width: (90).
    block281245d0Value5
].
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack2 := 'helpButton'.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack2 := [:recoveredBlock459Arg1 | 
    | recoveredBlock459Value0 recoveredBlock459Value1 recoveredBlock459Value2 |
    recoveredBlock459Value0 := recoveredBlock459Arg1.
    recoveredBlock459Value1 := recoveredLocal7.
    recoveredBlock459Value2 := (recoveredBlock459Value0) workWindow: (recoveredBlock459Value1).
    recoveredBlock459Value2
].
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack2 := [:block281245f4Arg1 | 
    | block281245f4Value0 block281245f4Value1 block281245f4Value2 block281245f4Value3 |
    block281245f4Value0 := block281245f4Arg1.
    block281245f4Value1 := block281245f4Value0.
    block281245f4Value2 := XmATTACHOPPOSITEFORM.
    (block281245f4Value1) leftAttachment: (block281245f4Value2).
    block281245f4Value3 := (block281245f4Value0) leftOffset: (-105).
    block281245f4Value3
].
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack2 := [:recoveredBlock516Arg1 | 
    | recoveredBlock516Value0 recoveredBlock516Value1 recoveredBlock516Value2 recoveredBlock516Value3 recoveredBlock516Value4 recoveredBlock516Value5 recoveredBlock516Value6 recoveredBlock516Value7 recoveredBlock516Value8 recoveredBlock516Value9 recoveredBlock516Value10 recoveredBlock516Value11 |
    recoveredBlock516Value0 := recoveredBlock516Arg1.
    recoveredBlock516Value1 := recoveredBlock516Value0.
    recoveredBlock516Value2 := XmATTACHFORM.
    (recoveredBlock516Value1) topAttachment: (recoveredBlock516Value2).
    recoveredBlock516Value3 := recoveredBlock516Value0.
    (recoveredBlock516Value3) topOffset: (5).
    recoveredBlock516Value4 := recoveredBlock516Value0.
    recoveredBlock516Value5 := XmATTACHFORM.
    (recoveredBlock516Value4) leftAttachment: (recoveredBlock516Value5).
    recoveredBlock516Value6 := recoveredBlock516Value0.
    (recoveredBlock516Value6) leftOffset: (5).
    recoveredBlock516Value7 := recoveredBlock516Value0.
    recoveredBlock516Value8 := XmATTACHWIDGET.
    (recoveredBlock516Value7) rightAttachment: (recoveredBlock516Value8).
    recoveredBlock516Value9 := recoveredBlock516Value0.
    recoveredBlock516Value10 := recoveredLocal6.
    (recoveredBlock516Value9) rightWidget: (recoveredBlock516Value10).
    recoveredBlock516Value11 := (recoveredBlock516Value0) rightOffset: (5).
    recoveredBlock516Value11
].
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            recoveredStack2 := [:recoveredBlock584Arg1 | 
    | recoveredBlock584Value0 recoveredBlock584Value1 recoveredBlock584Value2 recoveredBlock584Value3 recoveredBlock584Value4 recoveredBlock584Value5 recoveredBlock584Value6 recoveredBlock584Value7 recoveredBlock584Value8 recoveredBlock584Value9 recoveredBlock584Value10 recoveredBlock584Value11 recoveredBlock584Value12 |
    recoveredBlock584Value0 := recoveredBlock584Arg1.
    recoveredBlock584Value1 := recoveredBlock584Value0.
    recoveredBlock584Value2 := XmATTACHWIDGET.
    (recoveredBlock584Value1) topAttachment: (recoveredBlock584Value2).
    recoveredBlock584Value3 := recoveredBlock584Value0.
    recoveredBlock584Value4 := recoveredLocal5.
    (recoveredBlock584Value3) topWidget: (recoveredBlock584Value4).
    recoveredBlock584Value5 := recoveredBlock584Value0.
    recoveredBlock584Value6 := XmATTACHFORM.
    (recoveredBlock584Value5) leftAttachment: (recoveredBlock584Value6).
    recoveredBlock584Value7 := recoveredBlock584Value0.
    (recoveredBlock584Value7) leftOffset: (5).
    recoveredBlock584Value8 := recoveredBlock584Value0.
    recoveredBlock584Value9 := XmATTACHWIDGET.
    (recoveredBlock584Value8) rightAttachment: (recoveredBlock584Value9).
    recoveredBlock584Value10 := recoveredBlock584Value0.
    recoveredBlock584Value11 := recoveredLocal6.
    (recoveredBlock584Value10) rightWidget: (recoveredBlock584Value11).
    recoveredBlock584Value12 := (recoveredBlock584Value0) rightOffset: (5).
    recoveredBlock584Value12
].
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 651.
        ].
        recoveredStep = 651 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 654.
        ].
        recoveredStep = 654 ifTrue: [
            recoveredStack2 := [:block28124618Arg1 | 
    | block28124618Value0 block28124618Value1 block28124618Value2 block28124618Value3 block28124618Value4 block28124618Value5 block28124618Value6 |
    block28124618Value0 := block28124618Arg1.
    block28124618Value1 := block28124618Value0.
    block28124618Value2 := XmATTACHFORM.
    (block28124618Value1) topAttachment: (block28124618Value2).
    block28124618Value3 := block28124618Value0.
    (block28124618Value3) topOffset: (5).
    block28124618Value4 := block28124618Value0.
    block28124618Value5 := XmATTACHFORM.
    (block28124618Value4) rightAttachment: (block28124618Value5).
    block28124618Value6 := (block28124618Value0) rightOffset: (5).
    block28124618Value6
].
            recoveredPC := 658.
        ].
        recoveredStep = 658 ifTrue: [
            recoveredPC := 694.
        ].
        recoveredStep = 694 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 699.
        ].
        recoveredStep = 699 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 702.
        ].
        recoveredStep = 702 ifTrue: [
            recoveredStack2 := [:recoveredBlock702Arg1 | 
    | recoveredBlock702Value0 recoveredBlock702Value1 recoveredBlock702Value2 recoveredBlock702Value3 recoveredBlock702Value4 recoveredBlock702Value5 recoveredBlock702Value6 recoveredBlock702Value7 recoveredBlock702Value8 |
    recoveredBlock702Value0 := recoveredBlock702Arg1.
    recoveredBlock702Value1 := recoveredBlock702Value0.
    recoveredBlock702Value2 := XmATTACHWIDGET.
    (recoveredBlock702Value1) topAttachment: (recoveredBlock702Value2).
    recoveredBlock702Value3 := recoveredBlock702Value0.
    recoveredBlock702Value4 := recoveredLocal3.
    (recoveredBlock702Value3) topWidget: (recoveredBlock702Value4).
    recoveredBlock702Value5 := recoveredBlock702Value0.
    (recoveredBlock702Value5) topOffset: (5).
    recoveredBlock702Value6 := recoveredBlock702Value0.
    recoveredBlock702Value7 := XmATTACHFORM.
    (recoveredBlock702Value6) rightAttachment: (recoveredBlock702Value7).
    recoveredBlock702Value8 := (recoveredBlock702Value0) rightOffset: (5).
    recoveredBlock702Value8
].
            recoveredPC := 748.
        ].
        recoveredStep = 748 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 753.
        ].
        recoveredStep = 753 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 756.
        ].
        recoveredStep = 756 ifTrue: [
            recoveredStack2 := [:recoveredBlock756Arg1 | 
    | recoveredBlock756Value0 recoveredBlock756Value1 recoveredBlock756Value2 recoveredBlock756Value3 recoveredBlock756Value4 recoveredBlock756Value5 recoveredBlock756Value6 recoveredBlock756Value7 recoveredBlock756Value8 |
    recoveredBlock756Value0 := recoveredBlock756Arg1.
    recoveredBlock756Value1 := recoveredBlock756Value0.
    recoveredBlock756Value2 := XmATTACHWIDGET.
    (recoveredBlock756Value1) topAttachment: (recoveredBlock756Value2).
    recoveredBlock756Value3 := recoveredBlock756Value0.
    recoveredBlock756Value4 := recoveredLocal2.
    (recoveredBlock756Value3) topWidget: (recoveredBlock756Value4).
    recoveredBlock756Value5 := recoveredBlock756Value0.
    (recoveredBlock756Value5) topOffset: (5).
    recoveredBlock756Value6 := recoveredBlock756Value0.
    recoveredBlock756Value7 := XmATTACHFORM.
    (recoveredBlock756Value6) rightAttachment: (recoveredBlock756Value7).
    recoveredBlock756Value8 := (recoveredBlock756Value0) rightOffset: (5).
    recoveredBlock756Value8
].
            recoveredPC := 802.
        ].
        recoveredStep = 802 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 807.
        ].
        recoveredStep = 807 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 810.
        ].
        recoveredStep = 810 ifTrue: [
            recoveredStack2 := XmNdestroyCallback.
            recoveredPC := 814.
        ].
        recoveredStep = 814 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 815.
        ].
        recoveredStep = 815 ifTrue: [
            recoveredStack4 := 'aForm1Destroy:clientData:callData:'.
            recoveredPC := 818.
        ].
        recoveredStep = 818 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 819.
        ].
        recoveredStep = 819 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 823.
        ].
        recoveredStep = 823 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 826.
        ].
        recoveredStep = 826 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 830.
        ].
        recoveredStep = 830 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 831.
        ].
        recoveredStep = 831 ifTrue: [
            recoveredStack4 := 'okButtonActivate:clientData:callData:'.
            recoveredPC := 834.
        ].
        recoveredStep = 834 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 835.
        ].
        recoveredStep = 835 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 839.
        ].
        recoveredStep = 839 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 842.
        ].
        recoveredStep = 842 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 846.
        ].
        recoveredStep = 846 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 847.
        ].
        recoveredStep = 847 ifTrue: [
            recoveredStack4 := 'cancelButtonActivate:clientData:callData:'.
            recoveredPC := 850.
        ].
        recoveredStep = 850 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 851.
        ].
        recoveredStep = 851 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 855.
        ].
        recoveredStep = 855 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 858.
        ].
        recoveredStep = 858 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 863.
        ].
        recoveredStep = 863 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 866.
        ].
        recoveredStep = 866 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 871.
        ].
        recoveredStep = 871 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 874.
        ].
        recoveredStep = 874 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 879.
        ].
        recoveredStep = 879 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 882.
        ].
        recoveredStep = 882 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 887.
        ].
        recoveredStep = 887 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 890.
        ].
        recoveredStep = 890 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 893.
        ].
        recoveredStep = 893 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 896.
        ].
        recoveredStep = 896 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 901.
        ].
        recoveredStep = 901 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

