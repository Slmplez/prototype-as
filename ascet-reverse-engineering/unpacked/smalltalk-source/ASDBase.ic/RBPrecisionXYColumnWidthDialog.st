"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004429c; bytecode file offset 0x9451f8"
!RBPrecisionXYColumnWidthDialog methodsFor: 'recovered'!
yDecimalsText
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('yDecimalsText').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004470c; bytecode file offset 0x9451f8"
!RBPrecisionXYColumnWidthDialog methodsFor: 'recovered'!
yDecimalsSpinButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('yDecimalsSpinButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20064a34; bytecode file offset 0x961970"
!RBPrecisionXYColumnWidthDialog methodsFor: 'recovered'!
focusXDecimalsSpinButton
    | recoveredValue0 |
    recoveredValue0 := (self) xDecimalsSpinButton.
    (recoveredValue0) setInputFocus.
    ^self
! !

"ASDBase.ic method 0x200d5e40; bytecode file offset 0x9d26fc"
!RBPrecisionXYColumnWidthDialog methodsFor: 'recovered'!
cancel
    super cancel.
    yPrecision := nil.
    ^self
! !

"ASDBase.ic method 0x201081ac; bytecode file offset 0xa04a74"
!RBPrecisionXYColumnWidthDialog methodsFor: 'recovered'!
ok
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) yDecimalsSpinButton.
    recoveredValue1 := (recoveredValue0) value.
    (self) yPrecision: (recoveredValue1).
    super ok.
    ^self
! !

"ASDBase.ic method 0x201931ec; bytecode file offset 0xa8fab0"
!RBPrecisionXYColumnWidthDialog methodsFor: 'recovered'!
yPrecision: recoveredArg1
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
            yPrecision := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := 'yPrecisionField'.
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
            recoveredStack1 := 'yPrecisionField'.
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

"ASDBase.ic method 0x201c7ed4; bytecode file offset 0xac4788"
!RBPrecisionXYColumnWidthDialog methodsFor: 'recovered'!
yPrecision
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := yPrecision.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := yPrecision.
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
            recoveredStack2 := yPrecision.
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
            recoveredStack1 := yPrecision.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201d49cc; bytecode file offset 0xad129c"
!RBPrecisionXYColumnWidthDialog methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    super installActionKeys.
    recoveredValue0 := (self) widgetKeyActions.
    recoveredValue1 := (self) shell.
    recoveredValue2 := (recoveredValue0) at: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) at: ($y) put: ('focusYDecimalsSpinButton').
    ^self
! !

"ASDBase.ic method 0x203f85cc; bytecode file offset 0xcf4ed0"
!RBPrecisionXYColumnWidthDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    super initializeAfterCreate.
    recoveredValue0 := (self) yDecimalsText.
    recoveredValue1 := SCYDistribDecimals.
    (recoveredValue0) labelString: (recoveredValue1).
    recoveredValue2 := (self) yDecimalsSpinButton.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) minimum: (0).
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) maximum: (99).
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) editable: (true).
    recoveredValue6 := recoveredValue2.
    recoveredValue7 := (self) yPrecision.
    (recoveredValue6) value: (recoveredValue7).
    (recoveredValue2) wrap: (false).
    recoveredValue8 := (self) widgetAt: ('decimalsText').
    recoveredValue9 := (self) defaultLabelBlue.
    (recoveredValue8) foregroundColor: (recoveredValue9).
    recoveredValue10 := (self) widgetAt: ('xDecimalsText').
    recoveredValue11 := (self) defaultLabelBlue.
    (recoveredValue10) foregroundColor: (recoveredValue11).
    recoveredValue12 := (self) widgetAt: ('yDecimalsText').
    recoveredValue13 := (self) defaultLabelBlue.
    (recoveredValue12) foregroundColor: (recoveredValue13).
    recoveredValue14 := (self) widgetAt: ('incDecStepLabel').
    recoveredValue15 := (self) defaultLabelBlue.
    (recoveredValue14) foregroundColor: (recoveredValue15).
    recoveredValue16 := (self) widgetAt: ('columnWidthText').
    recoveredValue17 := (self) defaultLabelBlue.
    (recoveredValue16) foregroundColor: (recoveredValue17).
    ^self
! !

"ASDBase.ic method 0x206a745c; bytecode file offset 0xfa3ecc"
!RBPrecisionXYColumnWidthDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal18 := recoveredStack1.
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
            recoveredStack3 := [:block2812f454Arg1 | 
    | block2812f454Value0 block2812f454Value1 block2812f454Value2 block2812f454Value3 block2812f454Value4 block2812f454Value5 |
    block2812f454Value0 := block2812f454Arg1.
    block2812f454Value1 := block2812f454Value0.
    block2812f454Value2 := MWMINPUTSYSTEMMODAL.
    (block2812f454Value1) mwmInputMode: (block2812f454Value2).
    block2812f454Value3 := block2812f454Value0.
    (block2812f454Value3) title: ('Display Setup').
    block2812f454Value4 := block2812f454Value0.
    (block2812f454Value4) height: (260).
    block2812f454Value5 := (block2812f454Value0) width: (250).
    block2812f454Value5
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
            recoveredLocal17 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredLocal17.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal17.
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
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := recoveredLocal16.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal16.
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
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := recoveredLocal15.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := [:block2812f478Arg1 | 
    | block2812f478Value0 block2812f478Value1 block2812f478Value2 block2812f478Value3 block2812f478Value4 block2812f478Value5 |
    block2812f478Value0 := block2812f478Arg1.
    block2812f478Value1 := block2812f478Value0.
    (block2812f478Value1) x: (155).
    block2812f478Value2 := block2812f478Value0.
    block2812f478Value3 := XmVERTICAL.
    (block2812f478Value2) orientation: (block2812f478Value3).
    block2812f478Value4 := block2812f478Value0.
    (block2812f478Value4) height: (131).
    block2812f478Value5 := (block2812f478Value0) width: (1).
    block2812f478Value5
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
            recoveredStack1 := recoveredLocal18.
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
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := 'decimalsSpinButton'.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack3 := [:block2812f49cArg1 | 
    | block2812f49cValue0 block2812f49cValue1 block2812f49cValue2 block2812f49cValue3 block2812f49cValue4 |
    block2812f49cValue0 := block2812f49cArg1.
    block2812f49cValue1 := block2812f49cValue0.
    (block2812f49cValue1) x: (5).
    block2812f49cValue2 := block2812f49cValue0.
    (block2812f49cValue2) y: (25).
    block2812f49cValue3 := block2812f49cValue0.
    (block2812f49cValue3) height: (25).
    block2812f49cValue4 := (block2812f49cValue0) width: (120).
    block2812f49cValue4
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
            recoveredStack1 := recoveredLocal18.
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
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := 'decimalsSpinButton'.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack3 := [:block2812f4c0Arg1 | 
    | block2812f4c0Value0 block2812f4c0Value1 block2812f4c0Value2 block2812f4c0Value3 block2812f4c0Value4 |
    block2812f4c0Value0 := block2812f4c0Arg1.
    block2812f4c0Value1 := block2812f4c0Value0.
    (block2812f4c0Value1) x: (5).
    block2812f4c0Value2 := block2812f4c0Value0.
    (block2812f4c0Value2) y: (25).
    block2812f4c0Value3 := block2812f4c0Value0.
    (block2812f4c0Value3) height: (25).
    block2812f4c0Value4 := (block2812f4c0Value0) width: (120).
    block2812f4c0Value4
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
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack2 := 'xDecimalsSpinButton'.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack2 := 'decimalsSpinButton'.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack3 := [:block2812f4e4Arg1 | 
    | block2812f4e4Value0 block2812f4e4Value1 block2812f4e4Value2 block2812f4e4Value3 block2812f4e4Value4 |
    block2812f4e4Value0 := block2812f4e4Arg1.
    block2812f4e4Value1 := block2812f4e4Value0.
    (block2812f4e4Value1) x: (5).
    block2812f4e4Value2 := block2812f4e4Value0.
    (block2812f4e4Value2) y: (25).
    block2812f4e4Value3 := block2812f4e4Value0.
    (block2812f4e4Value3) height: (25).
    block2812f4e4Value4 := (block2812f4e4Value0) width: (120).
    block2812f4e4Value4
].
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSpinButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack2 := 'yDecimalsSpinButton'.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack2 := 'incDecStepText'.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack3 := [:block2812f508Arg1 | 
    | block2812f508Value0 block2812f508Value1 block2812f508Value2 block2812f508Value3 block2812f508Value4 |
    block2812f508Value0 := block2812f508Arg1.
    block2812f508Value1 := block2812f508Value0.
    (block2812f508Value1) y: (75).
    block2812f508Value2 := block2812f508Value0.
    (block2812f508Value2) x: (5).
    block2812f508Value3 := block2812f508Value0.
    (block2812f508Value3) height: (20).
    block2812f508Value4 := (block2812f508Value0) width: (120).
    block2812f508Value4
].
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack2 := 'incDecStepText'.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack3 := [:block2812f52cArg1 | 
    | block2812f52cValue0 block2812f52cValue1 block2812f52cValue2 block2812f52cValue3 block2812f52cValue4 block2812f52cValue5 block2812f52cValue6 |
    block2812f52cValue0 := block2812f52cArg1.
    block2812f52cValue1 := block2812f52cValue0.
    (block2812f52cValue1) x: (165).
    block2812f52cValue2 := block2812f52cValue0.
    (block2812f52cValue2) showAsDefault: (1).
    block2812f52cValue3 := block2812f52cValue0.
    (block2812f52cValue3) labelString: ('Ok').
    block2812f52cValue4 := block2812f52cValue0.
    (block2812f52cValue4) y: (5).
    block2812f52cValue5 := block2812f52cValue0.
    (block2812f52cValue5) height: (25).
    block2812f52cValue6 := (block2812f52cValue0) width: (90).
    block2812f52cValue6
].
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack3 := [:block2812f550Arg1 | 
    | block2812f550Value0 block2812f550Value1 block2812f550Value2 block2812f550Value3 block2812f550Value4 block2812f550Value5 |
    block2812f550Value0 := block2812f550Arg1.
    block2812f550Value1 := block2812f550Value0.
    (block2812f550Value1) x: (165).
    block2812f550Value2 := block2812f550Value0.
    (block2812f550Value2) labelString: ('Cancel').
    block2812f550Value3 := block2812f550Value0.
    (block2812f550Value3) y: (35).
    block2812f550Value4 := block2812f550Value0.
    (block2812f550Value4) height: (25).
    block2812f550Value5 := (block2812f550Value0) width: (90).
    block2812f550Value5
].
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack2 := 'helpButton'.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack3 := [:block2812f574Arg1 | 
    | block2812f574Value0 block2812f574Value1 block2812f574Value2 block2812f574Value3 block2812f574Value4 block2812f574Value5 |
    block2812f574Value0 := block2812f574Arg1.
    block2812f574Value1 := block2812f574Value0.
    (block2812f574Value1) x: (165).
    block2812f574Value2 := block2812f574Value0.
    (block2812f574Value2) labelString: ('Help').
    block2812f574Value3 := block2812f574Value0.
    (block2812f574Value3) y: (65).
    block2812f574Value4 := block2812f574Value0.
    (block2812f574Value4) height: (25).
    block2812f574Value5 := (block2812f574Value0) width: (90).
    block2812f574Value5
].
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 524.
        ].
        recoveredStep = 524 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack2 := 'helpButton'.
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredStack2 := 'decimalsText'.
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            recoveredStack3 := [:block2812f598Arg1 | 
    | block2812f598Value0 block2812f598Value1 block2812f598Value2 block2812f598Value3 block2812f598Value4 block2812f598Value5 block2812f598Value6 block2812f598Value7 block2812f598Value8 block2812f598Value9 block2812f598Value10 block2812f598Value11 |
    block2812f598Value0 := block2812f598Arg1.
    block2812f598Value1 := block2812f598Value0.
    block2812f598Value2 := XmALIGNMENTBEGINNING.
    (block2812f598Value1) alignment: (block2812f598Value2).
    block2812f598Value3 := block2812f598Value0.
    (block2812f598Value3) x: (10).
    block2812f598Value4 := block2812f598Value0.
    (block2812f598Value4) marginRight: (10).
    block2812f598Value5 := block2812f598Value0.
    (block2812f598Value5) labelString: ('Number of decimals').
    block2812f598Value6 := block2812f598Value0.
    (block2812f598Value6) marginWidth: (0).
    block2812f598Value7 := block2812f598Value0.
    (block2812f598Value7) marginHeight: (0).
    block2812f598Value8 := block2812f598Value0.
    (block2812f598Value8) y: (10).
    block2812f598Value9 := block2812f598Value0.
    (block2812f598Value9) height: (20).
    block2812f598Value10 := block2812f598Value0.
    (block2812f598Value10) marginBottom: (10).
    block2812f598Value11 := (block2812f598Value0) width: (120).
    block2812f598Value11
].
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 616.
        ].
        recoveredStep = 616 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredStack2 := 'decimalsText'.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 625.
        ].
        recoveredStep = 625 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 630.
        ].
        recoveredStep = 630 ifTrue: [
            recoveredStack2 := 'decimalsText'.
            recoveredPC := 632.
        ].
        recoveredStep = 632 ifTrue: [
            recoveredStack3 := [:block2812f5bcArg1 | 
    | block2812f5bcValue0 block2812f5bcValue1 block2812f5bcValue2 block2812f5bcValue3 block2812f5bcValue4 block2812f5bcValue5 block2812f5bcValue6 block2812f5bcValue7 block2812f5bcValue8 block2812f5bcValue9 block2812f5bcValue10 block2812f5bcValue11 |
    block2812f5bcValue0 := block2812f5bcArg1.
    block2812f5bcValue1 := block2812f5bcValue0.
    block2812f5bcValue2 := XmALIGNMENTBEGINNING.
    (block2812f5bcValue1) alignment: (block2812f5bcValue2).
    block2812f5bcValue3 := block2812f5bcValue0.
    (block2812f5bcValue3) x: (10).
    block2812f5bcValue4 := block2812f5bcValue0.
    (block2812f5bcValue4) marginRight: (10).
    block2812f5bcValue5 := block2812f5bcValue0.
    (block2812f5bcValue5) labelString: ('Number of x Decimals').
    block2812f5bcValue6 := block2812f5bcValue0.
    (block2812f5bcValue6) marginWidth: (0).
    block2812f5bcValue7 := block2812f5bcValue0.
    (block2812f5bcValue7) marginHeight: (0).
    block2812f5bcValue8 := block2812f5bcValue0.
    (block2812f5bcValue8) y: (10).
    block2812f5bcValue9 := block2812f5bcValue0.
    (block2812f5bcValue9) height: (20).
    block2812f5bcValue10 := block2812f5bcValue0.
    (block2812f5bcValue10) marginBottom: (10).
    block2812f5bcValue11 := (block2812f5bcValue0) width: (120).
    block2812f5bcValue11
].
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            recoveredPC := 703.
        ].
        recoveredStep = 703 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 707.
        ].
        recoveredStep = 707 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 709.
        ].
        recoveredStep = 709 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 712.
        ].
        recoveredStep = 712 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 715.
        ].
        recoveredStep = 715 ifTrue: [
            recoveredStack2 := 'xDecimalsText'.
            recoveredPC := 718.
        ].
        recoveredStep = 718 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 721.
        ].
        recoveredStep = 721 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 723.
        ].
        recoveredStep = 723 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 726.
        ].
        recoveredStep = 726 ifTrue: [
            recoveredStack2 := 'decimalsText'.
            recoveredPC := 728.
        ].
        recoveredStep = 728 ifTrue: [
            recoveredStack3 := [:block2812f5e0Arg1 | 
    | block2812f5e0Value0 block2812f5e0Value1 block2812f5e0Value2 block2812f5e0Value3 block2812f5e0Value4 block2812f5e0Value5 block2812f5e0Value6 block2812f5e0Value7 block2812f5e0Value8 block2812f5e0Value9 block2812f5e0Value10 block2812f5e0Value11 |
    block2812f5e0Value0 := block2812f5e0Arg1.
    block2812f5e0Value1 := block2812f5e0Value0.
    block2812f5e0Value2 := XmALIGNMENTBEGINNING.
    (block2812f5e0Value1) alignment: (block2812f5e0Value2).
    block2812f5e0Value3 := block2812f5e0Value0.
    (block2812f5e0Value3) x: (10).
    block2812f5e0Value4 := block2812f5e0Value0.
    (block2812f5e0Value4) marginRight: (10).
    block2812f5e0Value5 := block2812f5e0Value0.
    (block2812f5e0Value5) labelString: ('Number of x Decimals').
    block2812f5e0Value6 := block2812f5e0Value0.
    (block2812f5e0Value6) marginWidth: (0).
    block2812f5e0Value7 := block2812f5e0Value0.
    (block2812f5e0Value7) marginHeight: (0).
    block2812f5e0Value8 := block2812f5e0Value0.
    (block2812f5e0Value8) y: (10).
    block2812f5e0Value9 := block2812f5e0Value0.
    (block2812f5e0Value9) height: (20).
    block2812f5e0Value10 := block2812f5e0Value0.
    (block2812f5e0Value10) marginBottom: (10).
    block2812f5e0Value11 := (block2812f5e0Value0) width: (120).
    block2812f5e0Value11
].
            recoveredPC := 732.
        ].
        recoveredStep = 732 ifTrue: [
            recoveredPC := 799.
        ].
        recoveredStep = 799 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 803.
        ].
        recoveredStep = 803 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 805.
        ].
        recoveredStep = 805 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 808.
        ].
        recoveredStep = 808 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 811.
        ].
        recoveredStep = 811 ifTrue: [
            recoveredStack2 := 'yDecimalsText'.
            recoveredPC := 814.
        ].
        recoveredStep = 814 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 817.
        ].
        recoveredStep = 817 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 819.
        ].
        recoveredStep = 819 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 822.
        ].
        recoveredStep = 822 ifTrue: [
            recoveredStack2 := 'incDecStepLabel'.
            recoveredPC := 826.
        ].
        recoveredStep = 826 ifTrue: [
            recoveredStack3 := [:block2812f604Arg1 | 
    | block2812f604Value0 block2812f604Value1 block2812f604Value2 block2812f604Value3 block2812f604Value4 block2812f604Value5 block2812f604Value6 block2812f604Value7 |
    block2812f604Value0 := block2812f604Arg1.
    block2812f604Value1 := block2812f604Value0.
    (block2812f604Value1) x: (5).
    block2812f604Value2 := block2812f604Value0.
    block2812f604Value3 := XmALIGNMENTBEGINNING.
    (block2812f604Value2) alignment: (block2812f604Value3).
    block2812f604Value4 := block2812f604Value0.
    (block2812f604Value4) labelString: ('Column width').
    block2812f604Value5 := block2812f604Value0.
    (block2812f604Value5) y: (55).
    block2812f604Value6 := block2812f604Value0.
    (block2812f604Value6) height: (20).
    block2812f604Value7 := (block2812f604Value0) width: (120).
    block2812f604Value7
].
            recoveredPC := 830.
        ].
        recoveredStep = 830 ifTrue: [
            recoveredPC := 871.
        ].
        recoveredStep = 871 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 875.
        ].
        recoveredStep = 875 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 877.
        ].
        recoveredStep = 877 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 880.
        ].
        recoveredStep = 880 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 883.
        ].
        recoveredStep = 883 ifTrue: [
            recoveredStack2 := 'incDecStepLabel'.
            recoveredPC := 886.
        ].
        recoveredStep = 886 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 889.
        ].
        recoveredStep = 889 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 891.
        ].
        recoveredStep = 891 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 894.
        ].
        recoveredStep = 894 ifTrue: [
            recoveredStack2 := 'columnWidthText'.
            recoveredPC := 898.
        ].
        recoveredStep = 898 ifTrue: [
            recoveredStack3 := [:block2812f628Arg1 | 
    | block2812f628Value0 block2812f628Value1 block2812f628Value2 block2812f628Value3 block2812f628Value4 block2812f628Value5 block2812f628Value6 block2812f628Value7 |
    block2812f628Value0 := block2812f628Arg1.
    block2812f628Value1 := block2812f628Value0.
    (block2812f628Value1) x: (5).
    block2812f628Value2 := block2812f628Value0.
    block2812f628Value3 := XmALIGNMENTBEGINNING.
    (block2812f628Value2) alignment: (block2812f628Value3).
    block2812f628Value4 := block2812f628Value0.
    (block2812f628Value4) labelString: ('Column width').
    block2812f628Value5 := block2812f628Value0.
    (block2812f628Value5) y: (101).
    block2812f628Value6 := block2812f628Value0.
    (block2812f628Value6) height: (20).
    block2812f628Value7 := (block2812f628Value0) width: (120).
    block2812f628Value7
].
            recoveredPC := 902.
        ].
        recoveredStep = 902 ifTrue: [
            recoveredPC := 943.
        ].
        recoveredStep = 943 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 947.
        ].
        recoveredStep = 947 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 949.
        ].
        recoveredStep = 949 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 952.
        ].
        recoveredStep = 952 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 955.
        ].
        recoveredStep = 955 ifTrue: [
            recoveredStack2 := 'columnWidthText'.
            recoveredPC := 958.
        ].
        recoveredStep = 958 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 961.
        ].
        recoveredStep = 961 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 963.
        ].
        recoveredStep = 963 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 966.
        ].
        recoveredStep = 966 ifTrue: [
            recoveredStack2 := 'columnWidthSpinButton'.
            recoveredPC := 970.
        ].
        recoveredStep = 970 ifTrue: [
            recoveredStack3 := [:block2812f64cArg1 | 
    | block2812f64cValue0 block2812f64cValue1 block2812f64cValue2 block2812f64cValue3 block2812f64cValue4 block2812f64cValue5 |
    block2812f64cValue0 := block2812f64cArg1.
    block2812f64cValue1 := block2812f64cValue0.
    (block2812f64cValue1) x: (9).
    block2812f64cValue2 := block2812f64cValue0.
    (block2812f64cValue2) editable: (true).
    block2812f64cValue3 := block2812f64cValue0.
    (block2812f64cValue3) y: (123).
    block2812f64cValue4 := block2812f64cValue0.
    (block2812f64cValue4) height: (25).
    block2812f64cValue5 := (block2812f64cValue0) width: (120).
    block2812f64cValue5
].
            recoveredPC := 974.
        ].
        recoveredStep = 974 ifTrue: [
            recoveredPC := 1007.
        ].
        recoveredStep = 1007 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSpinButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1009.
        ].
        recoveredStep = 1009 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1011.
        ].
        recoveredStep = 1011 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 1014.
        ].
        recoveredStep = 1014 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 1017.
        ].
        recoveredStep = 1017 ifTrue: [
            recoveredStack2 := 'columnWidthSpinButton'.
            recoveredPC := 1020.
        ].
        recoveredStep = 1020 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 1023.
        ].
        recoveredStep = 1023 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1025.
        ].
        recoveredStep = 1025 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 1028.
        ].
        recoveredStep = 1028 ifTrue: [
            recoveredStack2 := [:recoveredBlock1028Arg1 | 
    | recoveredBlock1028Value0 recoveredBlock1028Value1 recoveredBlock1028Value2 |
    recoveredBlock1028Value0 := recoveredBlock1028Arg1.
    recoveredBlock1028Value1 := recoveredLocal15.
    recoveredBlock1028Value2 := (recoveredBlock1028Value0) workWindow: (recoveredBlock1028Value1).
    recoveredBlock1028Value2
].
            recoveredPC := 1044.
        ].
        recoveredStep = 1044 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1049.
        ].
        recoveredStep = 1049 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 1052.
        ].
        recoveredStep = 1052 ifTrue: [
            recoveredStack2 := [:block2812f670Arg1 | 
    | block2812f670Value0 block2812f670Value1 block2812f670Value2 block2812f670Value3 block2812f670Value4 block2812f670Value5 block2812f670Value6 block2812f670Value7 |
    block2812f670Value0 := block2812f670Arg1.
    block2812f670Value1 := block2812f670Value0.
    block2812f670Value2 := XmATTACHFORM.
    (block2812f670Value1) bottomAttachment: (block2812f670Value2).
    block2812f670Value3 := block2812f670Value0.
    block2812f670Value4 := XmATTACHFORM.
    (block2812f670Value3) topAttachment: (block2812f670Value4).
    block2812f670Value5 := block2812f670Value0.
    block2812f670Value6 := XmATTACHOPPOSITEFORM.
    (block2812f670Value5) leftAttachment: (block2812f670Value6).
    block2812f670Value7 := (block2812f670Value0) leftOffset: (-102).
    block2812f670Value7
].
            recoveredPC := 1056.
        ].
        recoveredStep = 1056 ifTrue: [
            recoveredPC := 1096.
        ].
        recoveredStep = 1096 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1101.
        ].
        recoveredStep = 1101 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1104.
        ].
        recoveredStep = 1104 ifTrue: [
            recoveredStack2 := [:recoveredBlock1104Arg1 | 
    | recoveredBlock1104Value0 recoveredBlock1104Value1 recoveredBlock1104Value2 recoveredBlock1104Value3 recoveredBlock1104Value4 recoveredBlock1104Value5 recoveredBlock1104Value6 recoveredBlock1104Value7 recoveredBlock1104Value8 recoveredBlock1104Value9 recoveredBlock1104Value10 recoveredBlock1104Value11 recoveredBlock1104Value12 |
    recoveredBlock1104Value0 := recoveredBlock1104Arg1.
    recoveredBlock1104Value1 := recoveredBlock1104Value0.
    recoveredBlock1104Value2 := XmATTACHWIDGET.
    (recoveredBlock1104Value1) topAttachment: (recoveredBlock1104Value2).
    recoveredBlock1104Value3 := recoveredBlock1104Value0.
    recoveredBlock1104Value4 := recoveredLocal4.
    (recoveredBlock1104Value3) topWidget: (recoveredBlock1104Value4).
    recoveredBlock1104Value5 := recoveredBlock1104Value0.
    recoveredBlock1104Value6 := XmATTACHFORM.
    (recoveredBlock1104Value5) leftAttachment: (recoveredBlock1104Value6).
    recoveredBlock1104Value7 := recoveredBlock1104Value0.
    (recoveredBlock1104Value7) leftOffset: (5).
    recoveredBlock1104Value8 := recoveredBlock1104Value0.
    recoveredBlock1104Value9 := XmATTACHWIDGET.
    (recoveredBlock1104Value8) rightAttachment: (recoveredBlock1104Value9).
    recoveredBlock1104Value10 := recoveredBlock1104Value0.
    recoveredBlock1104Value11 := recoveredLocal10.
    (recoveredBlock1104Value10) rightWidget: (recoveredBlock1104Value11).
    recoveredBlock1104Value12 := (recoveredBlock1104Value0) rightOffset: (5).
    recoveredBlock1104Value12
].
            recoveredPC := 1166.
        ].
        recoveredStep = 1166 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1171.
        ].
        recoveredStep = 1171 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1174.
        ].
        recoveredStep = 1174 ifTrue: [
            recoveredStack2 := [:recoveredBlock1174Arg1 | 
    | recoveredBlock1174Value0 recoveredBlock1174Value1 recoveredBlock1174Value2 recoveredBlock1174Value3 recoveredBlock1174Value4 recoveredBlock1174Value5 recoveredBlock1174Value6 recoveredBlock1174Value7 recoveredBlock1174Value8 recoveredBlock1174Value9 recoveredBlock1174Value10 recoveredBlock1174Value11 recoveredBlock1174Value12 |
    recoveredBlock1174Value0 := recoveredBlock1174Arg1.
    recoveredBlock1174Value1 := recoveredBlock1174Value0.
    recoveredBlock1174Value2 := XmATTACHWIDGET.
    (recoveredBlock1174Value1) topAttachment: (recoveredBlock1174Value2).
    recoveredBlock1174Value3 := recoveredBlock1174Value0.
    recoveredBlock1174Value4 := recoveredLocal12.
    (recoveredBlock1174Value3) topWidget: (recoveredBlock1174Value4).
    recoveredBlock1174Value5 := recoveredBlock1174Value0.
    recoveredBlock1174Value6 := XmATTACHFORM.
    (recoveredBlock1174Value5) leftAttachment: (recoveredBlock1174Value6).
    recoveredBlock1174Value7 := recoveredBlock1174Value0.
    (recoveredBlock1174Value7) leftOffset: (5).
    recoveredBlock1174Value8 := recoveredBlock1174Value0.
    recoveredBlock1174Value9 := XmATTACHWIDGET.
    (recoveredBlock1174Value8) rightAttachment: (recoveredBlock1174Value9).
    recoveredBlock1174Value10 := recoveredBlock1174Value0.
    recoveredBlock1174Value11 := recoveredLocal10.
    (recoveredBlock1174Value10) rightWidget: (recoveredBlock1174Value11).
    recoveredBlock1174Value12 := (recoveredBlock1174Value0) rightOffset: (5).
    recoveredBlock1174Value12
].
            recoveredPC := 1236.
        ].
        recoveredStep = 1236 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1241.
        ].
        recoveredStep = 1241 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1244.
        ].
        recoveredStep = 1244 ifTrue: [
            recoveredStack2 := [:recoveredBlock1244Arg1 | 
    | recoveredBlock1244Value0 recoveredBlock1244Value1 recoveredBlock1244Value2 recoveredBlock1244Value3 recoveredBlock1244Value4 recoveredBlock1244Value5 recoveredBlock1244Value6 recoveredBlock1244Value7 recoveredBlock1244Value8 recoveredBlock1244Value9 recoveredBlock1244Value10 recoveredBlock1244Value11 recoveredBlock1244Value12 |
    recoveredBlock1244Value0 := recoveredBlock1244Arg1.
    recoveredBlock1244Value1 := recoveredBlock1244Value0.
    recoveredBlock1244Value2 := XmATTACHWIDGET.
    (recoveredBlock1244Value1) topAttachment: (recoveredBlock1244Value2).
    recoveredBlock1244Value3 := recoveredBlock1244Value0.
    recoveredBlock1244Value4 := recoveredLocal3.
    (recoveredBlock1244Value3) topWidget: (recoveredBlock1244Value4).
    recoveredBlock1244Value5 := recoveredBlock1244Value0.
    recoveredBlock1244Value6 := XmATTACHFORM.
    (recoveredBlock1244Value5) leftAttachment: (recoveredBlock1244Value6).
    recoveredBlock1244Value7 := recoveredBlock1244Value0.
    (recoveredBlock1244Value7) leftOffset: (5).
    recoveredBlock1244Value8 := recoveredBlock1244Value0.
    recoveredBlock1244Value9 := XmATTACHWIDGET.
    (recoveredBlock1244Value8) rightAttachment: (recoveredBlock1244Value9).
    recoveredBlock1244Value10 := recoveredBlock1244Value0.
    recoveredBlock1244Value11 := recoveredLocal10.
    (recoveredBlock1244Value10) rightWidget: (recoveredBlock1244Value11).
    recoveredBlock1244Value12 := (recoveredBlock1244Value0) rightOffset: (5).
    recoveredBlock1244Value12
].
            recoveredPC := 1306.
        ].
        recoveredStep = 1306 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1311.
        ].
        recoveredStep = 1311 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1314.
        ].
        recoveredStep = 1314 ifTrue: [
            recoveredStack2 := [:block2812f694Arg1 | 
    | block2812f694Value0 block2812f694Value1 block2812f694Value2 block2812f694Value3 |
    block2812f694Value0 := block2812f694Arg1.
    block2812f694Value1 := block2812f694Value0.
    block2812f694Value2 := XmATTACHOPPOSITEFORM.
    (block2812f694Value1) leftAttachment: (block2812f694Value2).
    block2812f694Value3 := (block2812f694Value0) leftOffset: (-95).
    block2812f694Value3
].
            recoveredPC := 1318.
        ].
        recoveredStep = 1318 ifTrue: [
            recoveredPC := 1342.
        ].
        recoveredStep = 1342 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1347.
        ].
        recoveredStep = 1347 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1350.
        ].
        recoveredStep = 1350 ifTrue: [
            recoveredStack2 := [:block2812f6b8Arg1 | 
    | block2812f6b8Value0 block2812f6b8Value1 block2812f6b8Value2 block2812f6b8Value3 |
    block2812f6b8Value0 := block2812f6b8Arg1.
    block2812f6b8Value1 := block2812f6b8Value0.
    block2812f6b8Value2 := XmATTACHOPPOSITEFORM.
    (block2812f6b8Value1) leftAttachment: (block2812f6b8Value2).
    block2812f6b8Value3 := (block2812f6b8Value0) leftOffset: (-95).
    block2812f6b8Value3
].
            recoveredPC := 1354.
        ].
        recoveredStep = 1354 ifTrue: [
            recoveredPC := 1378.
        ].
        recoveredStep = 1378 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1383.
        ].
        recoveredStep = 1383 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1386.
        ].
        recoveredStep = 1386 ifTrue: [
            recoveredStack2 := [:block2812f6dcArg1 | 
    | block2812f6dcValue0 block2812f6dcValue1 block2812f6dcValue2 block2812f6dcValue3 |
    block2812f6dcValue0 := block2812f6dcArg1.
    block2812f6dcValue1 := block2812f6dcValue0.
    block2812f6dcValue2 := XmATTACHOPPOSITEFORM.
    (block2812f6dcValue1) leftAttachment: (block2812f6dcValue2).
    block2812f6dcValue3 := (block2812f6dcValue0) leftOffset: (-95).
    block2812f6dcValue3
].
            recoveredPC := 1390.
        ].
        recoveredStep = 1390 ifTrue: [
            recoveredPC := 1414.
        ].
        recoveredStep = 1414 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1419.
        ].
        recoveredStep = 1419 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1422.
        ].
        recoveredStep = 1422 ifTrue: [
            recoveredStack2 := [:recoveredBlock1422Arg1 | 
    | recoveredBlock1422Value0 recoveredBlock1422Value1 recoveredBlock1422Value2 recoveredBlock1422Value3 recoveredBlock1422Value4 recoveredBlock1422Value5 recoveredBlock1422Value6 recoveredBlock1422Value7 recoveredBlock1422Value8 recoveredBlock1422Value9 recoveredBlock1422Value10 recoveredBlock1422Value11 |
    recoveredBlock1422Value0 := recoveredBlock1422Arg1.
    recoveredBlock1422Value1 := recoveredBlock1422Value0.
    recoveredBlock1422Value2 := XmATTACHFORM.
    (recoveredBlock1422Value1) topAttachment: (recoveredBlock1422Value2).
    recoveredBlock1422Value3 := recoveredBlock1422Value0.
    (recoveredBlock1422Value3) topOffset: (5).
    recoveredBlock1422Value4 := recoveredBlock1422Value0.
    recoveredBlock1422Value5 := XmATTACHFORM.
    (recoveredBlock1422Value4) leftAttachment: (recoveredBlock1422Value5).
    recoveredBlock1422Value6 := recoveredBlock1422Value0.
    (recoveredBlock1422Value6) leftOffset: (5).
    recoveredBlock1422Value7 := recoveredBlock1422Value0.
    recoveredBlock1422Value8 := XmATTACHWIDGET.
    (recoveredBlock1422Value7) rightAttachment: (recoveredBlock1422Value8).
    recoveredBlock1422Value9 := recoveredBlock1422Value0.
    recoveredBlock1422Value10 := recoveredLocal10.
    (recoveredBlock1422Value9) rightWidget: (recoveredBlock1422Value10).
    recoveredBlock1422Value11 := (recoveredBlock1422Value0) rightOffset: (5).
    recoveredBlock1422Value11
].
            recoveredPC := 1482.
        ].
        recoveredStep = 1482 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1487.
        ].
        recoveredStep = 1487 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1490.
        ].
        recoveredStep = 1490 ifTrue: [
            recoveredStack2 := [:recoveredBlock1490Arg1 | 
    | recoveredBlock1490Value0 recoveredBlock1490Value1 recoveredBlock1490Value2 recoveredBlock1490Value3 recoveredBlock1490Value4 recoveredBlock1490Value5 recoveredBlock1490Value6 recoveredBlock1490Value7 recoveredBlock1490Value8 recoveredBlock1490Value9 recoveredBlock1490Value10 recoveredBlock1490Value11 recoveredBlock1490Value12 recoveredBlock1490Value13 |
    recoveredBlock1490Value0 := recoveredBlock1490Arg1.
    recoveredBlock1490Value1 := recoveredBlock1490Value0.
    recoveredBlock1490Value2 := XmATTACHWIDGET.
    (recoveredBlock1490Value1) topAttachment: (recoveredBlock1490Value2).
    recoveredBlock1490Value3 := recoveredBlock1490Value0.
    recoveredBlock1490Value4 := recoveredLocal8.
    (recoveredBlock1490Value3) topWidget: (recoveredBlock1490Value4).
    recoveredBlock1490Value5 := recoveredBlock1490Value0.
    (recoveredBlock1490Value5) topOffset: (5).
    recoveredBlock1490Value6 := recoveredBlock1490Value0.
    recoveredBlock1490Value7 := XmATTACHFORM.
    (recoveredBlock1490Value6) leftAttachment: (recoveredBlock1490Value7).
    recoveredBlock1490Value8 := recoveredBlock1490Value0.
    (recoveredBlock1490Value8) leftOffset: (5).
    recoveredBlock1490Value9 := recoveredBlock1490Value0.
    recoveredBlock1490Value10 := XmATTACHWIDGET.
    (recoveredBlock1490Value9) rightAttachment: (recoveredBlock1490Value10).
    recoveredBlock1490Value11 := recoveredBlock1490Value0.
    recoveredBlock1490Value12 := recoveredLocal10.
    (recoveredBlock1490Value11) rightWidget: (recoveredBlock1490Value12).
    recoveredBlock1490Value13 := (recoveredBlock1490Value0) rightOffset: (5).
    recoveredBlock1490Value13
].
            recoveredPC := 1558.
        ].
        recoveredStep = 1558 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1563.
        ].
        recoveredStep = 1563 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 1566.
        ].
        recoveredStep = 1566 ifTrue: [
            recoveredStack2 := [:recoveredBlock1566Arg1 | 
    | recoveredBlock1566Value0 recoveredBlock1566Value1 recoveredBlock1566Value2 recoveredBlock1566Value3 recoveredBlock1566Value4 recoveredBlock1566Value5 recoveredBlock1566Value6 recoveredBlock1566Value7 recoveredBlock1566Value8 recoveredBlock1566Value9 recoveredBlock1566Value10 recoveredBlock1566Value11 recoveredBlock1566Value12 recoveredBlock1566Value13 |
    recoveredBlock1566Value0 := recoveredBlock1566Arg1.
    recoveredBlock1566Value1 := recoveredBlock1566Value0.
    recoveredBlock1566Value2 := XmATTACHWIDGET.
    (recoveredBlock1566Value1) topAttachment: (recoveredBlock1566Value2).
    recoveredBlock1566Value3 := recoveredBlock1566Value0.
    recoveredBlock1566Value4 := recoveredLocal9.
    (recoveredBlock1566Value3) topWidget: (recoveredBlock1566Value4).
    recoveredBlock1566Value5 := recoveredBlock1566Value0.
    (recoveredBlock1566Value5) topOffset: (5).
    recoveredBlock1566Value6 := recoveredBlock1566Value0.
    recoveredBlock1566Value7 := XmATTACHFORM.
    (recoveredBlock1566Value6) leftAttachment: (recoveredBlock1566Value7).
    recoveredBlock1566Value8 := recoveredBlock1566Value0.
    (recoveredBlock1566Value8) leftOffset: (5).
    recoveredBlock1566Value9 := recoveredBlock1566Value0.
    recoveredBlock1566Value10 := XmATTACHWIDGET.
    (recoveredBlock1566Value9) rightAttachment: (recoveredBlock1566Value10).
    recoveredBlock1566Value11 := recoveredBlock1566Value0.
    recoveredBlock1566Value12 := recoveredLocal10.
    (recoveredBlock1566Value11) rightWidget: (recoveredBlock1566Value12).
    recoveredBlock1566Value13 := (recoveredBlock1566Value0) rightOffset: (5).
    recoveredBlock1566Value13
].
            recoveredPC := 1634.
        ].
        recoveredStep = 1634 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1639.
        ].
        recoveredStep = 1639 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 1642.
        ].
        recoveredStep = 1642 ifTrue: [
            recoveredStack2 := [:recoveredBlock1642Arg1 | 
    | recoveredBlock1642Value0 recoveredBlock1642Value1 recoveredBlock1642Value2 recoveredBlock1642Value3 recoveredBlock1642Value4 recoveredBlock1642Value5 recoveredBlock1642Value6 recoveredBlock1642Value7 recoveredBlock1642Value8 recoveredBlock1642Value9 recoveredBlock1642Value10 recoveredBlock1642Value11 recoveredBlock1642Value12 |
    recoveredBlock1642Value0 := recoveredBlock1642Arg1.
    recoveredBlock1642Value1 := recoveredBlock1642Value0.
    recoveredBlock1642Value2 := XmATTACHWIDGET.
    (recoveredBlock1642Value1) topAttachment: (recoveredBlock1642Value2).
    recoveredBlock1642Value3 := recoveredBlock1642Value0.
    recoveredBlock1642Value4 := recoveredLocal13.
    (recoveredBlock1642Value3) topWidget: (recoveredBlock1642Value4).
    recoveredBlock1642Value5 := recoveredBlock1642Value0.
    recoveredBlock1642Value6 := XmATTACHFORM.
    (recoveredBlock1642Value5) leftAttachment: (recoveredBlock1642Value6).
    recoveredBlock1642Value7 := recoveredBlock1642Value0.
    (recoveredBlock1642Value7) leftOffset: (5).
    recoveredBlock1642Value8 := recoveredBlock1642Value0.
    recoveredBlock1642Value9 := XmATTACHWIDGET.
    (recoveredBlock1642Value8) rightAttachment: (recoveredBlock1642Value9).
    recoveredBlock1642Value10 := recoveredBlock1642Value0.
    recoveredBlock1642Value11 := recoveredLocal10.
    (recoveredBlock1642Value10) rightWidget: (recoveredBlock1642Value11).
    recoveredBlock1642Value12 := (recoveredBlock1642Value0) rightOffset: (5).
    recoveredBlock1642Value12
].
            recoveredPC := 1704.
        ].
        recoveredStep = 1704 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1709.
        ].
        recoveredStep = 1709 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 1712.
        ].
        recoveredStep = 1712 ifTrue: [
            recoveredStack2 := [:recoveredBlock1712Arg1 | 
    | recoveredBlock1712Value0 recoveredBlock1712Value1 recoveredBlock1712Value2 recoveredBlock1712Value3 recoveredBlock1712Value4 recoveredBlock1712Value5 recoveredBlock1712Value6 recoveredBlock1712Value7 recoveredBlock1712Value8 recoveredBlock1712Value9 recoveredBlock1712Value10 recoveredBlock1712Value11 recoveredBlock1712Value12 recoveredBlock1712Value13 |
    recoveredBlock1712Value0 := recoveredBlock1712Arg1.
    recoveredBlock1712Value1 := recoveredBlock1712Value0.
    recoveredBlock1712Value2 := XmATTACHWIDGET.
    (recoveredBlock1712Value1) topAttachment: (recoveredBlock1712Value2).
    recoveredBlock1712Value3 := recoveredBlock1712Value0.
    recoveredBlock1712Value4 := recoveredLocal14.
    (recoveredBlock1712Value3) topWidget: (recoveredBlock1712Value4).
    recoveredBlock1712Value5 := recoveredBlock1712Value0.
    (recoveredBlock1712Value5) topOffset: (5).
    recoveredBlock1712Value6 := recoveredBlock1712Value0.
    recoveredBlock1712Value7 := XmATTACHFORM.
    (recoveredBlock1712Value6) leftAttachment: (recoveredBlock1712Value7).
    recoveredBlock1712Value8 := recoveredBlock1712Value0.
    (recoveredBlock1712Value8) leftOffset: (5).
    recoveredBlock1712Value9 := recoveredBlock1712Value0.
    recoveredBlock1712Value10 := XmATTACHWIDGET.
    (recoveredBlock1712Value9) rightAttachment: (recoveredBlock1712Value10).
    recoveredBlock1712Value11 := recoveredBlock1712Value0.
    recoveredBlock1712Value12 := recoveredLocal10.
    (recoveredBlock1712Value11) rightWidget: (recoveredBlock1712Value12).
    recoveredBlock1712Value13 := (recoveredBlock1712Value0) rightOffset: (5).
    recoveredBlock1712Value13
].
            recoveredPC := 1780.
        ].
        recoveredStep = 1780 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1785.
        ].
        recoveredStep = 1785 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 1788.
        ].
        recoveredStep = 1788 ifTrue: [
            recoveredStack2 := [:recoveredBlock1788Arg1 | 
    | recoveredBlock1788Value0 recoveredBlock1788Value1 recoveredBlock1788Value2 recoveredBlock1788Value3 recoveredBlock1788Value4 recoveredBlock1788Value5 recoveredBlock1788Value6 recoveredBlock1788Value7 recoveredBlock1788Value8 recoveredBlock1788Value9 recoveredBlock1788Value10 recoveredBlock1788Value11 recoveredBlock1788Value12 |
    recoveredBlock1788Value0 := recoveredBlock1788Arg1.
    recoveredBlock1788Value1 := recoveredBlock1788Value0.
    recoveredBlock1788Value2 := XmATTACHWIDGET.
    (recoveredBlock1788Value1) topAttachment: (recoveredBlock1788Value2).
    recoveredBlock1788Value3 := recoveredBlock1788Value0.
    recoveredBlock1788Value4 := recoveredLocal11.
    (recoveredBlock1788Value3) topWidget: (recoveredBlock1788Value4).
    recoveredBlock1788Value5 := recoveredBlock1788Value0.
    recoveredBlock1788Value6 := XmATTACHFORM.
    (recoveredBlock1788Value5) leftAttachment: (recoveredBlock1788Value6).
    recoveredBlock1788Value7 := recoveredBlock1788Value0.
    (recoveredBlock1788Value7) leftOffset: (5).
    recoveredBlock1788Value8 := recoveredBlock1788Value0.
    recoveredBlock1788Value9 := XmATTACHWIDGET.
    (recoveredBlock1788Value8) rightAttachment: (recoveredBlock1788Value9).
    recoveredBlock1788Value10 := recoveredBlock1788Value0.
    recoveredBlock1788Value11 := recoveredLocal10.
    (recoveredBlock1788Value10) rightWidget: (recoveredBlock1788Value11).
    recoveredBlock1788Value12 := (recoveredBlock1788Value0) rightOffset: (5).
    recoveredBlock1788Value12
].
            recoveredPC := 1850.
        ].
        recoveredStep = 1850 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1855.
        ].
        recoveredStep = 1855 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1858.
        ].
        recoveredStep = 1858 ifTrue: [
            recoveredStack2 := [:recoveredBlock1858Arg1 | 
    | recoveredBlock1858Value0 recoveredBlock1858Value1 recoveredBlock1858Value2 recoveredBlock1858Value3 recoveredBlock1858Value4 recoveredBlock1858Value5 recoveredBlock1858Value6 recoveredBlock1858Value7 recoveredBlock1858Value8 recoveredBlock1858Value9 recoveredBlock1858Value10 recoveredBlock1858Value11 recoveredBlock1858Value12 |
    recoveredBlock1858Value0 := recoveredBlock1858Arg1.
    recoveredBlock1858Value1 := recoveredBlock1858Value0.
    recoveredBlock1858Value2 := XmATTACHWIDGET.
    (recoveredBlock1858Value1) topAttachment: (recoveredBlock1858Value2).
    recoveredBlock1858Value3 := recoveredBlock1858Value0.
    recoveredBlock1858Value4 := recoveredLocal2.
    (recoveredBlock1858Value3) topWidget: (recoveredBlock1858Value4).
    recoveredBlock1858Value5 := recoveredBlock1858Value0.
    recoveredBlock1858Value6 := XmATTACHFORM.
    (recoveredBlock1858Value5) leftAttachment: (recoveredBlock1858Value6).
    recoveredBlock1858Value7 := recoveredBlock1858Value0.
    (recoveredBlock1858Value7) leftOffset: (5).
    recoveredBlock1858Value8 := recoveredBlock1858Value0.
    recoveredBlock1858Value9 := XmATTACHWIDGET.
    (recoveredBlock1858Value8) rightAttachment: (recoveredBlock1858Value9).
    recoveredBlock1858Value10 := recoveredBlock1858Value0.
    recoveredBlock1858Value11 := recoveredLocal10.
    (recoveredBlock1858Value10) rightWidget: (recoveredBlock1858Value11).
    recoveredBlock1858Value12 := (recoveredBlock1858Value0) rightOffset: (5).
    recoveredBlock1858Value12
].
            recoveredPC := 1920.
        ].
        recoveredStep = 1920 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1925.
        ].
        recoveredStep = 1925 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 1928.
        ].
        recoveredStep = 1928 ifTrue: [
            recoveredStack2 := XmNdestroyCallback.
            recoveredPC := 1932.
        ].
        recoveredStep = 1932 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1933.
        ].
        recoveredStep = 1933 ifTrue: [
            recoveredStack4 := 'aForm1Destroy:clientData:callData:'.
            recoveredPC := 1936.
        ].
        recoveredStep = 1936 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1937.
        ].
        recoveredStep = 1937 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1941.
        ].
        recoveredStep = 1941 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1944.
        ].
        recoveredStep = 1944 ifTrue: [
            recoveredStack2 := XmNmodifyVerifyCallback.
            recoveredPC := 1948.
        ].
        recoveredStep = 1948 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1949.
        ].
        recoveredStep = 1949 ifTrue: [
            recoveredStack4 := 'incDecStepTextModify:clientData:callData:'.
            recoveredPC := 1952.
        ].
        recoveredStep = 1952 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1953.
        ].
        recoveredStep = 1953 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1957.
        ].
        recoveredStep = 1957 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1960.
        ].
        recoveredStep = 1960 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1964.
        ].
        recoveredStep = 1964 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1965.
        ].
        recoveredStep = 1965 ifTrue: [
            recoveredStack4 := 'okButtonActivate:clientData:callData:'.
            recoveredPC := 1968.
        ].
        recoveredStep = 1968 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1969.
        ].
        recoveredStep = 1969 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1973.
        ].
        recoveredStep = 1973 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1976.
        ].
        recoveredStep = 1976 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1980.
        ].
        recoveredStep = 1980 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1981.
        ].
        recoveredStep = 1981 ifTrue: [
            recoveredStack4 := 'cancelButtonActivate:clientData:callData:'.
            recoveredPC := 1984.
        ].
        recoveredStep = 1984 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1985.
        ].
        recoveredStep = 1985 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1989.
        ].
        recoveredStep = 1989 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1992.
        ].
        recoveredStep = 1992 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1997.
        ].
        recoveredStep = 1997 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 2000.
        ].
        recoveredStep = 2000 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2005.
        ].
        recoveredStep = 2005 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 2008.
        ].
        recoveredStep = 2008 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2013.
        ].
        recoveredStep = 2013 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 2016.
        ].
        recoveredStep = 2016 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2021.
        ].
        recoveredStep = 2021 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2024.
        ].
        recoveredStep = 2024 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2029.
        ].
        recoveredStep = 2029 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 2032.
        ].
        recoveredStep = 2032 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2037.
        ].
        recoveredStep = 2037 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 2040.
        ].
        recoveredStep = 2040 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2045.
        ].
        recoveredStep = 2045 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 2048.
        ].
        recoveredStep = 2048 ifTrue: [
            recoveredStack2 := recoveredLocal18.
            recoveredPC := 2051.
        ].
        recoveredStep = 2051 ifTrue: [
            recoveredStack3 := recoveredLocal16.
            recoveredPC := 2054.
        ].
        recoveredStep = 2054 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 2059.
        ].
        recoveredStep = 2059 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

