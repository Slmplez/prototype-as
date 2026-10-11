"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004571c; bytecode file offset 0x9451f8"
!RBPrecisionXColumnWidthDialog methodsFor: 'recovered'!
decimalsText
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('decimalsText').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200460ac; bytecode file offset 0x9451f8"
!RBPrecisionXColumnWidthDialog methodsFor: 'recovered'!
incDecStepLabel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('incDecStepLabel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20047a2c; bytecode file offset 0x9451f8"
!RBPrecisionXColumnWidthDialog methodsFor: 'recovered'!
xDecimalsSpinButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('xDecimalsSpinButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004855c; bytecode file offset 0x9451f8"
!RBPrecisionXColumnWidthDialog methodsFor: 'recovered'!
xDecimalsText
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('xDecimalsText').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200485ec; bytecode file offset 0x9451f8"
!RBPrecisionXColumnWidthDialog methodsFor: 'recovered'!
columnWidthText
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('columnWidthText').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20063e04; bytecode file offset 0x961970"
!RBPrecisionXColumnWidthDialog methodsFor: 'recovered'!
focusYDecimalsSpinButton
    | recoveredValue0 |
    recoveredValue0 := (self) yDecimalsSpinButton.
    (recoveredValue0) setInputFocus.
    ^self
! !

"ASDBase.ic method 0x200d26f0; bytecode file offset 0x9cefac"
!RBPrecisionXColumnWidthDialog methodsFor: 'recovered'!
cancel
    xPrecision := nil.
    super cancel.
    ^self
! !

"ASDBase.ic method 0x20108190; bytecode file offset 0xa04a74"
!RBPrecisionXColumnWidthDialog methodsFor: 'recovered'!
ok
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) xDecimalsSpinButton.
    recoveredValue1 := (recoveredValue0) value.
    (self) xPrecision: (recoveredValue1).
    super ok.
    ^self
! !

"ASDBase.ic method 0x201930ec; bytecode file offset 0xa8f9b0"
!RBPrecisionXColumnWidthDialog methodsFor: 'recovered'!
xPrecision: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            xPrecision := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := 'xPrecisionField'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 'xPrecisionField'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201c7e84; bytecode file offset 0xac4738"
!RBPrecisionXColumnWidthDialog methodsFor: 'recovered'!
xPrecision
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xPrecision.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := xPrecision.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := xPrecision.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := xPrecision.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201d498c; bytecode file offset 0xad125c"
!RBPrecisionXColumnWidthDialog methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    super installActionKeys.
    recoveredValue0 := (self) widgetKeyActions.
    recoveredValue1 := (self) shell.
    recoveredValue2 := (recoveredValue0) at: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) at: ($x) put: ('focusXDecimalsSpinButton').
    ^self
! !

"ASDBase.ic method 0x2038ed50; bytecode file offset 0xc8b648"
!RBPrecisionXColumnWidthDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    super initializeAfterCreate.
    recoveredValue0 := (self) xDecimalsText.
    recoveredValue1 := SCXDistribDecimals.
    (recoveredValue0) labelString: (recoveredValue1).
    recoveredValue2 := (self) xDecimalsSpinButton.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) minimum: (0).
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) maximum: (99).
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) editable: (true).
    recoveredValue6 := recoveredValue2.
    recoveredValue7 := (self) xPrecision.
    (recoveredValue6) value: (recoveredValue7).
    (recoveredValue2) wrap: (false).
    recoveredValue8 := (self) decimalsText.
    recoveredValue9 := (self) defaultLabelBlue.
    (recoveredValue8) foregroundColor: (recoveredValue9).
    recoveredValue10 := (self) xDecimalsText.
    recoveredValue11 := (self) defaultLabelBlue.
    (recoveredValue10) foregroundColor: (recoveredValue11).
    recoveredValue12 := (self) incDecStepLabel.
    recoveredValue13 := (self) defaultLabelBlue.
    (recoveredValue12) foregroundColor: (recoveredValue13).
    recoveredValue14 := (self) columnWidthText.
    recoveredValue15 := (self) defaultLabelBlue.
    (recoveredValue14) foregroundColor: (recoveredValue15).
    ^self
! !

"ASDBase.ic method 0x20699f20; bytecode file offset 0xf96980"
!RBPrecisionXColumnWidthDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal16 := recoveredStack1.
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
            recoveredStack3 := [:block2812cc64Arg1 | 
    | block2812cc64Value0 block2812cc64Value1 block2812cc64Value2 block2812cc64Value3 block2812cc64Value4 block2812cc64Value5 |
    block2812cc64Value0 := block2812cc64Arg1.
    block2812cc64Value1 := block2812cc64Value0.
    block2812cc64Value2 := MWMINPUTSYSTEMMODAL.
    (block2812cc64Value1) mwmInputMode: (block2812cc64Value2).
    block2812cc64Value3 := block2812cc64Value0.
    (block2812cc64Value3) title: ('Display Setup').
    block2812cc64Value4 := block2812cc64Value0.
    (block2812cc64Value4) height: (210).
    block2812cc64Value5 := (block2812cc64Value0) width: (250).
    block2812cc64Value5
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
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredLocal15.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal15.
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
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal14.
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
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := [:block2812cc88Arg1 | 
    | block2812cc88Value0 block2812cc88Value1 block2812cc88Value2 block2812cc88Value3 block2812cc88Value4 block2812cc88Value5 |
    block2812cc88Value0 := block2812cc88Arg1.
    block2812cc88Value1 := block2812cc88Value0.
    (block2812cc88Value1) x: (155).
    block2812cc88Value2 := block2812cc88Value0.
    block2812cc88Value3 := XmVERTICAL.
    (block2812cc88Value2) orientation: (block2812cc88Value3).
    block2812cc88Value4 := block2812cc88Value0.
    (block2812cc88Value4) height: (131).
    block2812cc88Value5 := (block2812cc88Value0) width: (1).
    block2812cc88Value5
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
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := 'decimalsSpinButton'.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack3 := [:block2812ccacArg1 | 
    | block2812ccacValue0 block2812ccacValue1 block2812ccacValue2 block2812ccacValue3 block2812ccacValue4 |
    block2812ccacValue0 := block2812ccacArg1.
    block2812ccacValue1 := block2812ccacValue0.
    (block2812ccacValue1) x: (5).
    block2812ccacValue2 := block2812ccacValue0.
    (block2812ccacValue2) y: (25).
    block2812ccacValue3 := block2812ccacValue0.
    (block2812ccacValue3) height: (25).
    block2812ccacValue4 := (block2812ccacValue0) width: (120).
    block2812ccacValue4
].
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSpinButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := 'decimalsSpinButton'.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := 'decimalsSpinButton'.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack3 := [:block2812ccd0Arg1 | 
    | block2812ccd0Value0 block2812ccd0Value1 block2812ccd0Value2 block2812ccd0Value3 block2812ccd0Value4 |
    block2812ccd0Value0 := block2812ccd0Arg1.
    block2812ccd0Value1 := block2812ccd0Value0.
    (block2812ccd0Value1) x: (5).
    block2812ccd0Value2 := block2812ccd0Value0.
    (block2812ccd0Value2) y: (25).
    block2812ccd0Value3 := block2812ccd0Value0.
    (block2812ccd0Value3) height: (25).
    block2812ccd0Value4 := (block2812ccd0Value0) width: (120).
    block2812ccd0Value4
].
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSpinButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack2 := 'xDecimalsSpinButton'.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack2 := 'incDecStepText'.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack3 := [:block2812ccf4Arg1 | 
    | block2812ccf4Value0 block2812ccf4Value1 block2812ccf4Value2 block2812ccf4Value3 block2812ccf4Value4 |
    block2812ccf4Value0 := block2812ccf4Arg1.
    block2812ccf4Value1 := block2812ccf4Value0.
    (block2812ccf4Value1) y: (75).
    block2812ccf4Value2 := block2812ccf4Value0.
    (block2812ccf4Value2) x: (5).
    block2812ccf4Value3 := block2812ccf4Value0.
    (block2812ccf4Value3) height: (20).
    block2812ccf4Value4 := (block2812ccf4Value0) width: (120).
    block2812ccf4Value4
].
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack2 := 'incDecStepText'.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack3 := [:block2812cd18Arg1 | 
    | block2812cd18Value0 block2812cd18Value1 block2812cd18Value2 block2812cd18Value3 block2812cd18Value4 block2812cd18Value5 block2812cd18Value6 |
    block2812cd18Value0 := block2812cd18Arg1.
    block2812cd18Value1 := block2812cd18Value0.
    (block2812cd18Value1) x: (165).
    block2812cd18Value2 := block2812cd18Value0.
    (block2812cd18Value2) showAsDefault: (1).
    block2812cd18Value3 := block2812cd18Value0.
    (block2812cd18Value3) labelString: ('Ok').
    block2812cd18Value4 := block2812cd18Value0.
    (block2812cd18Value4) y: (5).
    block2812cd18Value5 := block2812cd18Value0.
    (block2812cd18Value5) height: (25).
    block2812cd18Value6 := (block2812cd18Value0) width: (90).
    block2812cd18Value6
].
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack3 := [:block2812cd3cArg1 | 
    | block2812cd3cValue0 block2812cd3cValue1 block2812cd3cValue2 block2812cd3cValue3 block2812cd3cValue4 block2812cd3cValue5 |
    block2812cd3cValue0 := block2812cd3cArg1.
    block2812cd3cValue1 := block2812cd3cValue0.
    (block2812cd3cValue1) x: (165).
    block2812cd3cValue2 := block2812cd3cValue0.
    (block2812cd3cValue2) labelString: ('Cancel').
    block2812cd3cValue3 := block2812cd3cValue0.
    (block2812cd3cValue3) y: (35).
    block2812cd3cValue4 := block2812cd3cValue0.
    (block2812cd3cValue4) height: (25).
    block2812cd3cValue5 := (block2812cd3cValue0) width: (90).
    block2812cd3cValue5
].
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack2 := 'helpButton'.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack3 := [:block2812cd60Arg1 | 
    | block2812cd60Value0 block2812cd60Value1 block2812cd60Value2 block2812cd60Value3 block2812cd60Value4 block2812cd60Value5 |
    block2812cd60Value0 := block2812cd60Arg1.
    block2812cd60Value1 := block2812cd60Value0.
    (block2812cd60Value1) x: (165).
    block2812cd60Value2 := block2812cd60Value0.
    (block2812cd60Value2) labelString: ('Help').
    block2812cd60Value3 := block2812cd60Value0.
    (block2812cd60Value3) y: (65).
    block2812cd60Value4 := block2812cd60Value0.
    (block2812cd60Value4) height: (25).
    block2812cd60Value5 := (block2812cd60Value0) width: (90).
    block2812cd60Value5
].
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack2 := 'helpButton'.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack2 := 'decimalsText'.
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredStack3 := [:block2812cd84Arg1 | 
    | block2812cd84Value0 block2812cd84Value1 block2812cd84Value2 block2812cd84Value3 block2812cd84Value4 block2812cd84Value5 block2812cd84Value6 block2812cd84Value7 block2812cd84Value8 block2812cd84Value9 block2812cd84Value10 block2812cd84Value11 |
    block2812cd84Value0 := block2812cd84Arg1.
    block2812cd84Value1 := block2812cd84Value0.
    block2812cd84Value2 := XmALIGNMENTBEGINNING.
    (block2812cd84Value1) alignment: (block2812cd84Value2).
    block2812cd84Value3 := block2812cd84Value0.
    (block2812cd84Value3) x: (10).
    block2812cd84Value4 := block2812cd84Value0.
    (block2812cd84Value4) marginRight: (10).
    block2812cd84Value5 := block2812cd84Value0.
    (block2812cd84Value5) labelString: ('Number of decimals').
    block2812cd84Value6 := block2812cd84Value0.
    (block2812cd84Value6) marginWidth: (0).
    block2812cd84Value7 := block2812cd84Value0.
    (block2812cd84Value7) marginHeight: (0).
    block2812cd84Value8 := block2812cd84Value0.
    (block2812cd84Value8) y: (10).
    block2812cd84Value9 := block2812cd84Value0.
    (block2812cd84Value9) height: (20).
    block2812cd84Value10 := block2812cd84Value0.
    (block2812cd84Value10) marginBottom: (10).
    block2812cd84Value11 := (block2812cd84Value0) width: (120).
    block2812cd84Value11
].
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredStack2 := 'decimalsText'.
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            recoveredStack2 := 'decimalsText'.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredStack3 := [:block2812cda8Arg1 | 
    | block2812cda8Value0 block2812cda8Value1 block2812cda8Value2 block2812cda8Value3 block2812cda8Value4 block2812cda8Value5 block2812cda8Value6 block2812cda8Value7 block2812cda8Value8 block2812cda8Value9 block2812cda8Value10 block2812cda8Value11 |
    block2812cda8Value0 := block2812cda8Arg1.
    block2812cda8Value1 := block2812cda8Value0.
    block2812cda8Value2 := XmALIGNMENTBEGINNING.
    (block2812cda8Value1) alignment: (block2812cda8Value2).
    block2812cda8Value3 := block2812cda8Value0.
    (block2812cda8Value3) x: (10).
    block2812cda8Value4 := block2812cda8Value0.
    (block2812cda8Value4) marginRight: (10).
    block2812cda8Value5 := block2812cda8Value0.
    (block2812cda8Value5) labelString: ('Number of x Decimals').
    block2812cda8Value6 := block2812cda8Value0.
    (block2812cda8Value6) marginWidth: (0).
    block2812cda8Value7 := block2812cda8Value0.
    (block2812cda8Value7) marginHeight: (0).
    block2812cda8Value8 := block2812cda8Value0.
    (block2812cda8Value8) y: (10).
    block2812cda8Value9 := block2812cda8Value0.
    (block2812cda8Value9) height: (20).
    block2812cda8Value10 := block2812cda8Value0.
    (block2812cda8Value10) marginBottom: (10).
    block2812cda8Value11 := (block2812cda8Value0) width: (120).
    block2812cda8Value11
].
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            recoveredPC := 645.
        ].
        recoveredStep = 645 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 649.
        ].
        recoveredStep = 649 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 651.
        ].
        recoveredStep = 651 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 654.
        ].
        recoveredStep = 654 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 657.
        ].
        recoveredStep = 657 ifTrue: [
            recoveredStack2 := 'xDecimalsText'.
            recoveredPC := 660.
        ].
        recoveredStep = 660 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 663.
        ].
        recoveredStep = 663 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 665.
        ].
        recoveredStep = 665 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 668.
        ].
        recoveredStep = 668 ifTrue: [
            recoveredStack2 := 'incDecStepLabel'.
            recoveredPC := 672.
        ].
        recoveredStep = 672 ifTrue: [
            recoveredStack3 := [:block2812cdccArg1 | 
    | block2812cdccValue0 block2812cdccValue1 block2812cdccValue2 block2812cdccValue3 block2812cdccValue4 block2812cdccValue5 block2812cdccValue6 block2812cdccValue7 |
    block2812cdccValue0 := block2812cdccArg1.
    block2812cdccValue1 := block2812cdccValue0.
    (block2812cdccValue1) x: (5).
    block2812cdccValue2 := block2812cdccValue0.
    block2812cdccValue3 := XmALIGNMENTBEGINNING.
    (block2812cdccValue2) alignment: (block2812cdccValue3).
    block2812cdccValue4 := block2812cdccValue0.
    (block2812cdccValue4) labelString: ('Column width').
    block2812cdccValue5 := block2812cdccValue0.
    (block2812cdccValue5) y: (55).
    block2812cdccValue6 := block2812cdccValue0.
    (block2812cdccValue6) height: (20).
    block2812cdccValue7 := (block2812cdccValue0) width: (120).
    block2812cdccValue7
].
            recoveredPC := 676.
        ].
        recoveredStep = 676 ifTrue: [
            recoveredPC := 715.
        ].
        recoveredStep = 715 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 719.
        ].
        recoveredStep = 719 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 721.
        ].
        recoveredStep = 721 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 724.
        ].
        recoveredStep = 724 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 727.
        ].
        recoveredStep = 727 ifTrue: [
            recoveredStack2 := 'incDecStepLabel'.
            recoveredPC := 730.
        ].
        recoveredStep = 730 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 733.
        ].
        recoveredStep = 733 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 735.
        ].
        recoveredStep = 735 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 738.
        ].
        recoveredStep = 738 ifTrue: [
            recoveredStack2 := 'columnWidthText'.
            recoveredPC := 742.
        ].
        recoveredStep = 742 ifTrue: [
            recoveredStack3 := [:block2812cdf0Arg1 | 
    | block2812cdf0Value0 block2812cdf0Value1 block2812cdf0Value2 block2812cdf0Value3 block2812cdf0Value4 block2812cdf0Value5 block2812cdf0Value6 block2812cdf0Value7 |
    block2812cdf0Value0 := block2812cdf0Arg1.
    block2812cdf0Value1 := block2812cdf0Value0.
    (block2812cdf0Value1) x: (5).
    block2812cdf0Value2 := block2812cdf0Value0.
    block2812cdf0Value3 := XmALIGNMENTBEGINNING.
    (block2812cdf0Value2) alignment: (block2812cdf0Value3).
    block2812cdf0Value4 := block2812cdf0Value0.
    (block2812cdf0Value4) labelString: ('Column width').
    block2812cdf0Value5 := block2812cdf0Value0.
    (block2812cdf0Value5) y: (101).
    block2812cdf0Value6 := block2812cdf0Value0.
    (block2812cdf0Value6) height: (20).
    block2812cdf0Value7 := (block2812cdf0Value0) width: (120).
    block2812cdf0Value7
].
            recoveredPC := 746.
        ].
        recoveredStep = 746 ifTrue: [
            recoveredPC := 785.
        ].
        recoveredStep = 785 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 789.
        ].
        recoveredStep = 789 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 791.
        ].
        recoveredStep = 791 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 794.
        ].
        recoveredStep = 794 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 797.
        ].
        recoveredStep = 797 ifTrue: [
            recoveredStack2 := 'columnWidthText'.
            recoveredPC := 800.
        ].
        recoveredStep = 800 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 803.
        ].
        recoveredStep = 803 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 805.
        ].
        recoveredStep = 805 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 808.
        ].
        recoveredStep = 808 ifTrue: [
            recoveredStack2 := 'columnWidthSpinButton'.
            recoveredPC := 812.
        ].
        recoveredStep = 812 ifTrue: [
            recoveredStack3 := [:block2812ce14Arg1 | 
    | block2812ce14Value0 block2812ce14Value1 block2812ce14Value2 block2812ce14Value3 block2812ce14Value4 block2812ce14Value5 |
    block2812ce14Value0 := block2812ce14Arg1.
    block2812ce14Value1 := block2812ce14Value0.
    (block2812ce14Value1) x: (9).
    block2812ce14Value2 := block2812ce14Value0.
    (block2812ce14Value2) editable: (true).
    block2812ce14Value3 := block2812ce14Value0.
    (block2812ce14Value3) y: (123).
    block2812ce14Value4 := block2812ce14Value0.
    (block2812ce14Value4) height: (25).
    block2812ce14Value5 := (block2812ce14Value0) width: (120).
    block2812ce14Value5
].
            recoveredPC := 816.
        ].
        recoveredStep = 816 ifTrue: [
            recoveredPC := 849.
        ].
        recoveredStep = 849 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSpinButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 851.
        ].
        recoveredStep = 851 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 853.
        ].
        recoveredStep = 853 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 856.
        ].
        recoveredStep = 856 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 859.
        ].
        recoveredStep = 859 ifTrue: [
            recoveredStack2 := 'columnWidthSpinButton'.
            recoveredPC := 862.
        ].
        recoveredStep = 862 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 865.
        ].
        recoveredStep = 865 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 867.
        ].
        recoveredStep = 867 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 870.
        ].
        recoveredStep = 870 ifTrue: [
            recoveredStack2 := [:recoveredBlock870Arg1 | 
    | recoveredBlock870Value0 recoveredBlock870Value1 recoveredBlock870Value2 |
    recoveredBlock870Value0 := recoveredBlock870Arg1.
    recoveredBlock870Value1 := recoveredLocal13.
    recoveredBlock870Value2 := (recoveredBlock870Value0) workWindow: (recoveredBlock870Value1).
    recoveredBlock870Value2
].
            recoveredPC := 886.
        ].
        recoveredStep = 886 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 891.
        ].
        recoveredStep = 891 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 894.
        ].
        recoveredStep = 894 ifTrue: [
            recoveredStack2 := [:block2812ce38Arg1 | 
    | block2812ce38Value0 block2812ce38Value1 block2812ce38Value2 block2812ce38Value3 block2812ce38Value4 block2812ce38Value5 block2812ce38Value6 block2812ce38Value7 |
    block2812ce38Value0 := block2812ce38Arg1.
    block2812ce38Value1 := block2812ce38Value0.
    block2812ce38Value2 := XmATTACHFORM.
    (block2812ce38Value1) bottomAttachment: (block2812ce38Value2).
    block2812ce38Value3 := block2812ce38Value0.
    block2812ce38Value4 := XmATTACHFORM.
    (block2812ce38Value3) topAttachment: (block2812ce38Value4).
    block2812ce38Value5 := block2812ce38Value0.
    block2812ce38Value6 := XmATTACHOPPOSITEFORM.
    (block2812ce38Value5) leftAttachment: (block2812ce38Value6).
    block2812ce38Value7 := (block2812ce38Value0) leftOffset: (-102).
    block2812ce38Value7
].
            recoveredPC := 898.
        ].
        recoveredStep = 898 ifTrue: [
            recoveredPC := 938.
        ].
        recoveredStep = 938 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 943.
        ].
        recoveredStep = 943 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 946.
        ].
        recoveredStep = 946 ifTrue: [
            recoveredStack2 := [:recoveredBlock946Arg1 | 
    | recoveredBlock946Value0 recoveredBlock946Value1 recoveredBlock946Value2 recoveredBlock946Value3 recoveredBlock946Value4 recoveredBlock946Value5 recoveredBlock946Value6 recoveredBlock946Value7 recoveredBlock946Value8 recoveredBlock946Value9 recoveredBlock946Value10 recoveredBlock946Value11 recoveredBlock946Value12 |
    recoveredBlock946Value0 := recoveredBlock946Arg1.
    recoveredBlock946Value1 := recoveredBlock946Value0.
    recoveredBlock946Value2 := XmATTACHWIDGET.
    (recoveredBlock946Value1) topAttachment: (recoveredBlock946Value2).
    recoveredBlock946Value3 := recoveredBlock946Value0.
    recoveredBlock946Value4 := recoveredLocal4.
    (recoveredBlock946Value3) topWidget: (recoveredBlock946Value4).
    recoveredBlock946Value5 := recoveredBlock946Value0.
    recoveredBlock946Value6 := XmATTACHFORM.
    (recoveredBlock946Value5) leftAttachment: (recoveredBlock946Value6).
    recoveredBlock946Value7 := recoveredBlock946Value0.
    (recoveredBlock946Value7) leftOffset: (5).
    recoveredBlock946Value8 := recoveredBlock946Value0.
    recoveredBlock946Value9 := XmATTACHWIDGET.
    (recoveredBlock946Value8) rightAttachment: (recoveredBlock946Value9).
    recoveredBlock946Value10 := recoveredBlock946Value0.
    recoveredBlock946Value11 := recoveredLocal10.
    (recoveredBlock946Value10) rightWidget: (recoveredBlock946Value11).
    recoveredBlock946Value12 := (recoveredBlock946Value0) rightOffset: (5).
    recoveredBlock946Value12
].
            recoveredPC := 1008.
        ].
        recoveredStep = 1008 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1013.
        ].
        recoveredStep = 1013 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1016.
        ].
        recoveredStep = 1016 ifTrue: [
            recoveredStack2 := [:recoveredBlock1016Arg1 | 
    | recoveredBlock1016Value0 recoveredBlock1016Value1 recoveredBlock1016Value2 recoveredBlock1016Value3 recoveredBlock1016Value4 recoveredBlock1016Value5 recoveredBlock1016Value6 recoveredBlock1016Value7 recoveredBlock1016Value8 recoveredBlock1016Value9 recoveredBlock1016Value10 recoveredBlock1016Value11 recoveredBlock1016Value12 |
    recoveredBlock1016Value0 := recoveredBlock1016Arg1.
    recoveredBlock1016Value1 := recoveredBlock1016Value0.
    recoveredBlock1016Value2 := XmATTACHWIDGET.
    (recoveredBlock1016Value1) topAttachment: (recoveredBlock1016Value2).
    recoveredBlock1016Value3 := recoveredBlock1016Value0.
    recoveredBlock1016Value4 := recoveredLocal12.
    (recoveredBlock1016Value3) topWidget: (recoveredBlock1016Value4).
    recoveredBlock1016Value5 := recoveredBlock1016Value0.
    recoveredBlock1016Value6 := XmATTACHFORM.
    (recoveredBlock1016Value5) leftAttachment: (recoveredBlock1016Value6).
    recoveredBlock1016Value7 := recoveredBlock1016Value0.
    (recoveredBlock1016Value7) leftOffset: (5).
    recoveredBlock1016Value8 := recoveredBlock1016Value0.
    recoveredBlock1016Value9 := XmATTACHWIDGET.
    (recoveredBlock1016Value8) rightAttachment: (recoveredBlock1016Value9).
    recoveredBlock1016Value10 := recoveredBlock1016Value0.
    recoveredBlock1016Value11 := recoveredLocal10.
    (recoveredBlock1016Value10) rightWidget: (recoveredBlock1016Value11).
    recoveredBlock1016Value12 := (recoveredBlock1016Value0) rightOffset: (5).
    recoveredBlock1016Value12
].
            recoveredPC := 1078.
        ].
        recoveredStep = 1078 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1083.
        ].
        recoveredStep = 1083 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1086.
        ].
        recoveredStep = 1086 ifTrue: [
            recoveredStack2 := [:recoveredBlock1086Arg1 | 
    | recoveredBlock1086Value0 recoveredBlock1086Value1 recoveredBlock1086Value2 recoveredBlock1086Value3 recoveredBlock1086Value4 recoveredBlock1086Value5 recoveredBlock1086Value6 recoveredBlock1086Value7 recoveredBlock1086Value8 recoveredBlock1086Value9 recoveredBlock1086Value10 recoveredBlock1086Value11 recoveredBlock1086Value12 |
    recoveredBlock1086Value0 := recoveredBlock1086Arg1.
    recoveredBlock1086Value1 := recoveredBlock1086Value0.
    recoveredBlock1086Value2 := XmATTACHWIDGET.
    (recoveredBlock1086Value1) topAttachment: (recoveredBlock1086Value2).
    recoveredBlock1086Value3 := recoveredBlock1086Value0.
    recoveredBlock1086Value4 := recoveredLocal3.
    (recoveredBlock1086Value3) topWidget: (recoveredBlock1086Value4).
    recoveredBlock1086Value5 := recoveredBlock1086Value0.
    recoveredBlock1086Value6 := XmATTACHFORM.
    (recoveredBlock1086Value5) leftAttachment: (recoveredBlock1086Value6).
    recoveredBlock1086Value7 := recoveredBlock1086Value0.
    (recoveredBlock1086Value7) leftOffset: (5).
    recoveredBlock1086Value8 := recoveredBlock1086Value0.
    recoveredBlock1086Value9 := XmATTACHWIDGET.
    (recoveredBlock1086Value8) rightAttachment: (recoveredBlock1086Value9).
    recoveredBlock1086Value10 := recoveredBlock1086Value0.
    recoveredBlock1086Value11 := recoveredLocal10.
    (recoveredBlock1086Value10) rightWidget: (recoveredBlock1086Value11).
    recoveredBlock1086Value12 := (recoveredBlock1086Value0) rightOffset: (5).
    recoveredBlock1086Value12
].
            recoveredPC := 1148.
        ].
        recoveredStep = 1148 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1153.
        ].
        recoveredStep = 1153 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1156.
        ].
        recoveredStep = 1156 ifTrue: [
            recoveredStack2 := [:block2812ce5cArg1 | 
    | block2812ce5cValue0 block2812ce5cValue1 block2812ce5cValue2 block2812ce5cValue3 |
    block2812ce5cValue0 := block2812ce5cArg1.
    block2812ce5cValue1 := block2812ce5cValue0.
    block2812ce5cValue2 := XmATTACHOPPOSITEFORM.
    (block2812ce5cValue1) leftAttachment: (block2812ce5cValue2).
    block2812ce5cValue3 := (block2812ce5cValue0) leftOffset: (-95).
    block2812ce5cValue3
].
            recoveredPC := 1160.
        ].
        recoveredStep = 1160 ifTrue: [
            recoveredPC := 1184.
        ].
        recoveredStep = 1184 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1189.
        ].
        recoveredStep = 1189 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1192.
        ].
        recoveredStep = 1192 ifTrue: [
            recoveredStack2 := [:block2812ce80Arg1 | 
    | block2812ce80Value0 block2812ce80Value1 block2812ce80Value2 block2812ce80Value3 |
    block2812ce80Value0 := block2812ce80Arg1.
    block2812ce80Value1 := block2812ce80Value0.
    block2812ce80Value2 := XmATTACHOPPOSITEFORM.
    (block2812ce80Value1) leftAttachment: (block2812ce80Value2).
    block2812ce80Value3 := (block2812ce80Value0) leftOffset: (-95).
    block2812ce80Value3
].
            recoveredPC := 1196.
        ].
        recoveredStep = 1196 ifTrue: [
            recoveredPC := 1220.
        ].
        recoveredStep = 1220 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1225.
        ].
        recoveredStep = 1225 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1228.
        ].
        recoveredStep = 1228 ifTrue: [
            recoveredStack2 := [:block2812cea4Arg1 | 
    | block2812cea4Value0 block2812cea4Value1 block2812cea4Value2 block2812cea4Value3 |
    block2812cea4Value0 := block2812cea4Arg1.
    block2812cea4Value1 := block2812cea4Value0.
    block2812cea4Value2 := XmATTACHOPPOSITEFORM.
    (block2812cea4Value1) leftAttachment: (block2812cea4Value2).
    block2812cea4Value3 := (block2812cea4Value0) leftOffset: (-95).
    block2812cea4Value3
].
            recoveredPC := 1232.
        ].
        recoveredStep = 1232 ifTrue: [
            recoveredPC := 1256.
        ].
        recoveredStep = 1256 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1261.
        ].
        recoveredStep = 1261 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1264.
        ].
        recoveredStep = 1264 ifTrue: [
            recoveredStack2 := [:recoveredBlock1264Arg1 | 
    | recoveredBlock1264Value0 recoveredBlock1264Value1 recoveredBlock1264Value2 recoveredBlock1264Value3 recoveredBlock1264Value4 recoveredBlock1264Value5 recoveredBlock1264Value6 recoveredBlock1264Value7 recoveredBlock1264Value8 recoveredBlock1264Value9 recoveredBlock1264Value10 recoveredBlock1264Value11 |
    recoveredBlock1264Value0 := recoveredBlock1264Arg1.
    recoveredBlock1264Value1 := recoveredBlock1264Value0.
    recoveredBlock1264Value2 := XmATTACHFORM.
    (recoveredBlock1264Value1) topAttachment: (recoveredBlock1264Value2).
    recoveredBlock1264Value3 := recoveredBlock1264Value0.
    (recoveredBlock1264Value3) topOffset: (5).
    recoveredBlock1264Value4 := recoveredBlock1264Value0.
    recoveredBlock1264Value5 := XmATTACHFORM.
    (recoveredBlock1264Value4) leftAttachment: (recoveredBlock1264Value5).
    recoveredBlock1264Value6 := recoveredBlock1264Value0.
    (recoveredBlock1264Value6) leftOffset: (5).
    recoveredBlock1264Value7 := recoveredBlock1264Value0.
    recoveredBlock1264Value8 := XmATTACHWIDGET.
    (recoveredBlock1264Value7) rightAttachment: (recoveredBlock1264Value8).
    recoveredBlock1264Value9 := recoveredBlock1264Value0.
    recoveredBlock1264Value10 := recoveredLocal10.
    (recoveredBlock1264Value9) rightWidget: (recoveredBlock1264Value10).
    recoveredBlock1264Value11 := (recoveredBlock1264Value0) rightOffset: (5).
    recoveredBlock1264Value11
].
            recoveredPC := 1324.
        ].
        recoveredStep = 1324 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1329.
        ].
        recoveredStep = 1329 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1332.
        ].
        recoveredStep = 1332 ifTrue: [
            recoveredStack2 := [:recoveredBlock1332Arg1 | 
    | recoveredBlock1332Value0 recoveredBlock1332Value1 recoveredBlock1332Value2 recoveredBlock1332Value3 recoveredBlock1332Value4 recoveredBlock1332Value5 recoveredBlock1332Value6 recoveredBlock1332Value7 recoveredBlock1332Value8 recoveredBlock1332Value9 recoveredBlock1332Value10 recoveredBlock1332Value11 recoveredBlock1332Value12 recoveredBlock1332Value13 |
    recoveredBlock1332Value0 := recoveredBlock1332Arg1.
    recoveredBlock1332Value1 := recoveredBlock1332Value0.
    recoveredBlock1332Value2 := XmATTACHWIDGET.
    (recoveredBlock1332Value1) topAttachment: (recoveredBlock1332Value2).
    recoveredBlock1332Value3 := recoveredBlock1332Value0.
    recoveredBlock1332Value4 := recoveredLocal8.
    (recoveredBlock1332Value3) topWidget: (recoveredBlock1332Value4).
    recoveredBlock1332Value5 := recoveredBlock1332Value0.
    (recoveredBlock1332Value5) topOffset: (5).
    recoveredBlock1332Value6 := recoveredBlock1332Value0.
    recoveredBlock1332Value7 := XmATTACHFORM.
    (recoveredBlock1332Value6) leftAttachment: (recoveredBlock1332Value7).
    recoveredBlock1332Value8 := recoveredBlock1332Value0.
    (recoveredBlock1332Value8) leftOffset: (5).
    recoveredBlock1332Value9 := recoveredBlock1332Value0.
    recoveredBlock1332Value10 := XmATTACHWIDGET.
    (recoveredBlock1332Value9) rightAttachment: (recoveredBlock1332Value10).
    recoveredBlock1332Value11 := recoveredBlock1332Value0.
    recoveredBlock1332Value12 := recoveredLocal10.
    (recoveredBlock1332Value11) rightWidget: (recoveredBlock1332Value12).
    recoveredBlock1332Value13 := (recoveredBlock1332Value0) rightOffset: (5).
    recoveredBlock1332Value13
].
            recoveredPC := 1400.
        ].
        recoveredStep = 1400 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1405.
        ].
        recoveredStep = 1405 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 1408.
        ].
        recoveredStep = 1408 ifTrue: [
            recoveredStack2 := [:recoveredBlock1408Arg1 | 
    | recoveredBlock1408Value0 recoveredBlock1408Value1 recoveredBlock1408Value2 recoveredBlock1408Value3 recoveredBlock1408Value4 recoveredBlock1408Value5 recoveredBlock1408Value6 recoveredBlock1408Value7 recoveredBlock1408Value8 recoveredBlock1408Value9 recoveredBlock1408Value10 recoveredBlock1408Value11 recoveredBlock1408Value12 recoveredBlock1408Value13 |
    recoveredBlock1408Value0 := recoveredBlock1408Arg1.
    recoveredBlock1408Value1 := recoveredBlock1408Value0.
    recoveredBlock1408Value2 := XmATTACHWIDGET.
    (recoveredBlock1408Value1) topAttachment: (recoveredBlock1408Value2).
    recoveredBlock1408Value3 := recoveredBlock1408Value0.
    recoveredBlock1408Value4 := recoveredLocal9.
    (recoveredBlock1408Value3) topWidget: (recoveredBlock1408Value4).
    recoveredBlock1408Value5 := recoveredBlock1408Value0.
    (recoveredBlock1408Value5) topOffset: (5).
    recoveredBlock1408Value6 := recoveredBlock1408Value0.
    recoveredBlock1408Value7 := XmATTACHFORM.
    (recoveredBlock1408Value6) leftAttachment: (recoveredBlock1408Value7).
    recoveredBlock1408Value8 := recoveredBlock1408Value0.
    (recoveredBlock1408Value8) leftOffset: (5).
    recoveredBlock1408Value9 := recoveredBlock1408Value0.
    recoveredBlock1408Value10 := XmATTACHWIDGET.
    (recoveredBlock1408Value9) rightAttachment: (recoveredBlock1408Value10).
    recoveredBlock1408Value11 := recoveredBlock1408Value0.
    recoveredBlock1408Value12 := recoveredLocal10.
    (recoveredBlock1408Value11) rightWidget: (recoveredBlock1408Value12).
    recoveredBlock1408Value13 := (recoveredBlock1408Value0) rightOffset: (5).
    recoveredBlock1408Value13
].
            recoveredPC := 1476.
        ].
        recoveredStep = 1476 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1481.
        ].
        recoveredStep = 1481 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 1484.
        ].
        recoveredStep = 1484 ifTrue: [
            recoveredStack2 := [:recoveredBlock1484Arg1 | 
    | recoveredBlock1484Value0 recoveredBlock1484Value1 recoveredBlock1484Value2 recoveredBlock1484Value3 recoveredBlock1484Value4 recoveredBlock1484Value5 recoveredBlock1484Value6 recoveredBlock1484Value7 recoveredBlock1484Value8 recoveredBlock1484Value9 recoveredBlock1484Value10 recoveredBlock1484Value11 recoveredBlock1484Value12 recoveredBlock1484Value13 |
    recoveredBlock1484Value0 := recoveredBlock1484Arg1.
    recoveredBlock1484Value1 := recoveredBlock1484Value0.
    recoveredBlock1484Value2 := XmATTACHWIDGET.
    (recoveredBlock1484Value1) topAttachment: (recoveredBlock1484Value2).
    recoveredBlock1484Value3 := recoveredBlock1484Value0.
    recoveredBlock1484Value4 := recoveredLocal11.
    (recoveredBlock1484Value3) topWidget: (recoveredBlock1484Value4).
    recoveredBlock1484Value5 := recoveredBlock1484Value0.
    (recoveredBlock1484Value5) topOffset: (0).
    recoveredBlock1484Value6 := recoveredBlock1484Value0.
    recoveredBlock1484Value7 := XmATTACHFORM.
    (recoveredBlock1484Value6) leftAttachment: (recoveredBlock1484Value7).
    recoveredBlock1484Value8 := recoveredBlock1484Value0.
    (recoveredBlock1484Value8) leftOffset: (5).
    recoveredBlock1484Value9 := recoveredBlock1484Value0.
    recoveredBlock1484Value10 := XmATTACHWIDGET.
    (recoveredBlock1484Value9) rightAttachment: (recoveredBlock1484Value10).
    recoveredBlock1484Value11 := recoveredBlock1484Value0.
    recoveredBlock1484Value12 := recoveredLocal10.
    (recoveredBlock1484Value11) rightWidget: (recoveredBlock1484Value12).
    recoveredBlock1484Value13 := (recoveredBlock1484Value0) rightOffset: (5).
    recoveredBlock1484Value13
].
            recoveredPC := 1552.
        ].
        recoveredStep = 1552 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1557.
        ].
        recoveredStep = 1557 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1560.
        ].
        recoveredStep = 1560 ifTrue: [
            recoveredStack2 := [:recoveredBlock1560Arg1 | 
    | recoveredBlock1560Value0 recoveredBlock1560Value1 recoveredBlock1560Value2 recoveredBlock1560Value3 recoveredBlock1560Value4 recoveredBlock1560Value5 recoveredBlock1560Value6 recoveredBlock1560Value7 recoveredBlock1560Value8 recoveredBlock1560Value9 recoveredBlock1560Value10 recoveredBlock1560Value11 recoveredBlock1560Value12 |
    recoveredBlock1560Value0 := recoveredBlock1560Arg1.
    recoveredBlock1560Value1 := recoveredBlock1560Value0.
    recoveredBlock1560Value2 := XmATTACHWIDGET.
    (recoveredBlock1560Value1) topAttachment: (recoveredBlock1560Value2).
    recoveredBlock1560Value3 := recoveredBlock1560Value0.
    recoveredBlock1560Value4 := recoveredLocal2.
    (recoveredBlock1560Value3) topWidget: (recoveredBlock1560Value4).
    recoveredBlock1560Value5 := recoveredBlock1560Value0.
    recoveredBlock1560Value6 := XmATTACHFORM.
    (recoveredBlock1560Value5) leftAttachment: (recoveredBlock1560Value6).
    recoveredBlock1560Value7 := recoveredBlock1560Value0.
    (recoveredBlock1560Value7) leftOffset: (5).
    recoveredBlock1560Value8 := recoveredBlock1560Value0.
    recoveredBlock1560Value9 := XmATTACHWIDGET.
    (recoveredBlock1560Value8) rightAttachment: (recoveredBlock1560Value9).
    recoveredBlock1560Value10 := recoveredBlock1560Value0.
    recoveredBlock1560Value11 := recoveredLocal10.
    (recoveredBlock1560Value10) rightWidget: (recoveredBlock1560Value11).
    recoveredBlock1560Value12 := (recoveredBlock1560Value0) rightOffset: (5).
    recoveredBlock1560Value12
].
            recoveredPC := 1622.
        ].
        recoveredStep = 1622 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1627.
        ].
        recoveredStep = 1627 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 1630.
        ].
        recoveredStep = 1630 ifTrue: [
            recoveredStack2 := XmNdestroyCallback.
            recoveredPC := 1634.
        ].
        recoveredStep = 1634 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1635.
        ].
        recoveredStep = 1635 ifTrue: [
            recoveredStack4 := 'aForm1Destroy:clientData:callData:'.
            recoveredPC := 1638.
        ].
        recoveredStep = 1638 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1639.
        ].
        recoveredStep = 1639 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1643.
        ].
        recoveredStep = 1643 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1646.
        ].
        recoveredStep = 1646 ifTrue: [
            recoveredStack2 := XmNmodifyVerifyCallback.
            recoveredPC := 1650.
        ].
        recoveredStep = 1650 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1651.
        ].
        recoveredStep = 1651 ifTrue: [
            recoveredStack4 := 'incDecStepTextModify:clientData:callData:'.
            recoveredPC := 1654.
        ].
        recoveredStep = 1654 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1655.
        ].
        recoveredStep = 1655 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1659.
        ].
        recoveredStep = 1659 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1662.
        ].
        recoveredStep = 1662 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1666.
        ].
        recoveredStep = 1666 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1667.
        ].
        recoveredStep = 1667 ifTrue: [
            recoveredStack4 := 'okButtonActivate:clientData:callData:'.
            recoveredPC := 1670.
        ].
        recoveredStep = 1670 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1671.
        ].
        recoveredStep = 1671 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1675.
        ].
        recoveredStep = 1675 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1678.
        ].
        recoveredStep = 1678 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1682.
        ].
        recoveredStep = 1682 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1683.
        ].
        recoveredStep = 1683 ifTrue: [
            recoveredStack4 := 'cancelButtonActivate:clientData:callData:'.
            recoveredPC := 1686.
        ].
        recoveredStep = 1686 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1687.
        ].
        recoveredStep = 1687 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1691.
        ].
        recoveredStep = 1691 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1694.
        ].
        recoveredStep = 1694 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1699.
        ].
        recoveredStep = 1699 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 1702.
        ].
        recoveredStep = 1702 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1707.
        ].
        recoveredStep = 1707 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1710.
        ].
        recoveredStep = 1710 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1715.
        ].
        recoveredStep = 1715 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1718.
        ].
        recoveredStep = 1718 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1723.
        ].
        recoveredStep = 1723 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1726.
        ].
        recoveredStep = 1726 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1731.
        ].
        recoveredStep = 1731 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1734.
        ].
        recoveredStep = 1734 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1739.
        ].
        recoveredStep = 1739 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 1742.
        ].
        recoveredStep = 1742 ifTrue: [
            recoveredStack2 := recoveredLocal16.
            recoveredPC := 1745.
        ].
        recoveredStep = 1745 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 1748.
        ].
        recoveredStep = 1748 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 1753.
        ].
        recoveredStep = 1753 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

