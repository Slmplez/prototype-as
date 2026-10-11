"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20063f44; bytecode file offset 0x961970"
!RBPrecisionColumnWidthDialog methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredValue0 |
    recoveredValue0 := (self) shell.
    (recoveredValue0) setInputFocus.
    ^self
! !

"ASDBase.ic method 0x20070ba4; bytecode file offset 0x96d580"
!RBPrecisionColumnWidthDialog methodsFor: 'recovered'!
columnWidth
    | recoveredValue0 |
    recoveredValue0 := columnWidth.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200732b0; bytecode file offset 0x970b34"
!RBPrecisionColumnWidthDialog methodsFor: 'recovered'!
yPrecision
    ^nil
! !

"ASDBase.ic method 0x20073940; bytecode file offset 0x970b34"
!RBPrecisionColumnWidthDialog methodsFor: 'recovered'!
xPrecision
    ^nil
! !

"ASDBase.ic method 0x2009df18; bytecode file offset 0x99a800"
!RBPrecisionColumnWidthDialog methodsFor: 'recovered'!
focusColumnWidthSpinButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('columnWidthSpinButton').
    (recoveredValue0) setInputFocus.
    ^self
! !

"ASDBase.ic method 0x200c72fc; bytecode file offset 0x9c3c10"
!RBPrecisionColumnWidthDialog methodsFor: 'recovered'!
columnWidth: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    columnWidth := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d26d0; bytecode file offset 0x9cef8c"
!RBPrecisionColumnWidthDialog methodsFor: 'recovered'!
cancel
    columnWidth := nil.
    super cancel.
    ^self
! !

"ASDBase.ic method 0x20117a74; bytecode file offset 0xa1433c"
!RBPrecisionColumnWidthDialog methodsFor: 'recovered'!
ok
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetAt: ('columnWidthSpinButton').
    recoveredValue1 := (recoveredValue0) value.
    columnWidth := recoveredValue1.
    super ok.
    ^self
! !

"ASDBase.ic method 0x201bf14c; bytecode file offset 0xabba20"
!RBPrecisionColumnWidthDialog methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    super installActionKeys.
    recoveredValue0 := (self) widgetKeyActions.
    recoveredValue1 := (self) shell.
    recoveredValue2 := (recoveredValue0) at: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := HKColumnWidth.
    (recoveredValue4) at: (recoveredValue5) put: ('focusColumnWidthSpinButton').
    ^self
! !

"ASDBase.ic method 0x203b43b8; bytecode file offset 0xcb0cbc"
!RBPrecisionColumnWidthDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super initializeAfterCreate.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) noResize: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'columnWidthSpinButton'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) minimum: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 200.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) maximum: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) editable: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := columnWidth.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) wrap: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := 'columnWidthText'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := LLColumnWidth.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) incDecStep.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) incDecStepLabel.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := SCIncDecStep.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) incDecStepText.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) incDecStepText.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := 'Change to hex!!'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20686788; bytecode file offset 0xf831d0"
!RBPrecisionColumnWidthDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal14 := recoveredStack1.
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
            recoveredStack3 := [:block28129d6cArg1 | 
    | block28129d6cValue0 block28129d6cValue1 block28129d6cValue2 block28129d6cValue3 block28129d6cValue4 block28129d6cValue5 |
    block28129d6cValue0 := block28129d6cArg1.
    block28129d6cValue1 := block28129d6cValue0.
    block28129d6cValue2 := MWMINPUTSYSTEMMODAL.
    (block28129d6cValue1) mwmInputMode: (block28129d6cValue2).
    block28129d6cValue3 := block28129d6cValue0.
    (block28129d6cValue3) title: ('Display Setup').
    block28129d6cValue4 := block28129d6cValue0.
    (block28129d6cValue4) height: (160).
    block28129d6cValue5 := (block28129d6cValue0) width: (230).
    block28129d6cValue5
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
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal13.
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
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal12.
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
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := [:block28129d90Arg1 | 
    | block28129d90Value0 block28129d90Value1 block28129d90Value2 block28129d90Value3 block28129d90Value4 block28129d90Value5 |
    block28129d90Value0 := block28129d90Arg1.
    block28129d90Value1 := block28129d90Value0.
    (block28129d90Value1) x: (155).
    block28129d90Value2 := block28129d90Value0.
    block28129d90Value3 := XmVERTICAL.
    (block28129d90Value2) orientation: (block28129d90Value3).
    block28129d90Value4 := block28129d90Value0.
    (block28129d90Value4) height: (131).
    block28129d90Value5 := (block28129d90Value0) width: (1).
    block28129d90Value5
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
            recoveredStack1 := recoveredLocal14.
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
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := 'decimalsSpinButton'.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack3 := [:block28129db4Arg1 | 
    | block28129db4Value0 block28129db4Value1 block28129db4Value2 block28129db4Value3 block28129db4Value4 |
    block28129db4Value0 := block28129db4Arg1.
    block28129db4Value1 := block28129db4Value0.
    (block28129db4Value1) x: (5).
    block28129db4Value2 := block28129db4Value0.
    (block28129db4Value2) y: (25).
    block28129db4Value3 := block28129db4Value0.
    (block28129db4Value3) height: (25).
    block28129db4Value4 := (block28129db4Value0) width: (80).
    block28129db4Value4
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
            recoveredStack1 := recoveredLocal14.
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
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := 'incDecStepText'.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack3 := [:block28129dd8Arg1 | 
    | block28129dd8Value0 block28129dd8Value1 block28129dd8Value2 block28129dd8Value3 block28129dd8Value4 |
    block28129dd8Value0 := block28129dd8Arg1.
    block28129dd8Value1 := block28129dd8Value0.
    (block28129dd8Value1) y: (75).
    block28129dd8Value2 := block28129dd8Value0.
    (block28129dd8Value2) x: (5).
    block28129dd8Value3 := block28129dd8Value0.
    (block28129dd8Value3) height: (20).
    block28129dd8Value4 := (block28129dd8Value0) width: (80).
    block28129dd8Value4
].
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack2 := 'incDecStepText'.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack3 := [:block28129dfcArg1 | 
    | block28129dfcValue0 block28129dfcValue1 block28129dfcValue2 block28129dfcValue3 block28129dfcValue4 block28129dfcValue5 block28129dfcValue6 |
    block28129dfcValue0 := block28129dfcArg1.
    block28129dfcValue1 := block28129dfcValue0.
    (block28129dfcValue1) x: (165).
    block28129dfcValue2 := block28129dfcValue0.
    (block28129dfcValue2) showAsDefault: (1).
    block28129dfcValue3 := block28129dfcValue0.
    (block28129dfcValue3) labelString: ('Ok').
    block28129dfcValue4 := block28129dfcValue0.
    (block28129dfcValue4) y: (5).
    block28129dfcValue5 := block28129dfcValue0.
    (block28129dfcValue5) height: (25).
    block28129dfcValue6 := (block28129dfcValue0) width: (90).
    block28129dfcValue6
].
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack3 := [:block28129e20Arg1 | 
    | block28129e20Value0 block28129e20Value1 block28129e20Value2 block28129e20Value3 block28129e20Value4 block28129e20Value5 |
    block28129e20Value0 := block28129e20Arg1.
    block28129e20Value1 := block28129e20Value0.
    (block28129e20Value1) x: (165).
    block28129e20Value2 := block28129e20Value0.
    (block28129e20Value2) labelString: ('Cancel').
    block28129e20Value3 := block28129e20Value0.
    (block28129e20Value3) y: (35).
    block28129e20Value4 := block28129e20Value0.
    (block28129e20Value4) height: (25).
    block28129e20Value5 := (block28129e20Value0) width: (90).
    block28129e20Value5
].
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack2 := 'helpButton'.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack3 := [:block28129e44Arg1 | 
    | block28129e44Value0 block28129e44Value1 block28129e44Value2 block28129e44Value3 block28129e44Value4 block28129e44Value5 |
    block28129e44Value0 := block28129e44Arg1.
    block28129e44Value1 := block28129e44Value0.
    (block28129e44Value1) x: (165).
    block28129e44Value2 := block28129e44Value0.
    (block28129e44Value2) labelString: ('Help').
    block28129e44Value3 := block28129e44Value0.
    (block28129e44Value3) y: (65).
    block28129e44Value4 := block28129e44Value0.
    (block28129e44Value4) height: (25).
    block28129e44Value5 := (block28129e44Value0) width: (90).
    block28129e44Value5
].
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack2 := 'helpButton'.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack2 := 'decimalsText'.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack3 := [:recoveredBlock439Arg1 | 
    | recoveredBlock439Value0 recoveredBlock439Value1 recoveredBlock439Value2 recoveredBlock439Value3 recoveredBlock439Value4 recoveredBlock439Value5 recoveredBlock439Value6 recoveredBlock439Value7 recoveredBlock439Value8 recoveredBlock439Value9 recoveredBlock439Value10 recoveredBlock439Value11 recoveredBlock439Value12 recoveredBlock439Value13 |
    recoveredBlock439Value0 := recoveredBlock439Arg1.
    recoveredBlock439Value1 := recoveredBlock439Value0.
    recoveredBlock439Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock439Value1) alignment: (recoveredBlock439Value2).
    recoveredBlock439Value3 := recoveredBlock439Value0.
    (recoveredBlock439Value3) x: (10).
    recoveredBlock439Value4 := recoveredBlock439Value0.
    (recoveredBlock439Value4) marginRight: (10).
    recoveredBlock439Value5 := recoveredBlock439Value0.
    (recoveredBlock439Value5) labelString: ('Number of decimals').
    recoveredBlock439Value6 := recoveredBlock439Value0.
    (recoveredBlock439Value6) marginWidth: (0).
    recoveredBlock439Value7 := recoveredBlock439Value0.
    (recoveredBlock439Value7) marginHeight: (0).
    recoveredBlock439Value8 := recoveredBlock439Value0.
    (recoveredBlock439Value8) y: (10).
    recoveredBlock439Value9 := recoveredBlock439Value0.
    (recoveredBlock439Value9) height: (20).
    recoveredBlock439Value10 := recoveredBlock439Value0.
    (recoveredBlock439Value10) marginBottom: (10).
    recoveredBlock439Value11 := recoveredBlock439Value0.
    (recoveredBlock439Value11) width: (100).
    recoveredBlock439Value12 := (self) defaultLabelBlue.
    recoveredBlock439Value13 := (recoveredBlock439Value0) foregroundColor: (recoveredBlock439Value12).
    recoveredBlock439Value13
].
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack2 := 'decimalsText'.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            recoveredStack2 := 'incDecStepLabel'.
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            recoveredStack3 := [:recoveredBlock538Arg1 | 
    | recoveredBlock538Value0 recoveredBlock538Value1 recoveredBlock538Value2 recoveredBlock538Value3 recoveredBlock538Value4 recoveredBlock538Value5 recoveredBlock538Value6 recoveredBlock538Value7 recoveredBlock538Value8 recoveredBlock538Value9 |
    recoveredBlock538Value0 := recoveredBlock538Arg1.
    recoveredBlock538Value1 := recoveredBlock538Value0.
    (recoveredBlock538Value1) x: (5).
    recoveredBlock538Value2 := recoveredBlock538Value0.
    recoveredBlock538Value3 := XmALIGNMENTBEGINNING.
    (recoveredBlock538Value2) alignment: (recoveredBlock538Value3).
    recoveredBlock538Value4 := recoveredBlock538Value0.
    (recoveredBlock538Value4) labelString: ('Column width').
    recoveredBlock538Value5 := recoveredBlock538Value0.
    (recoveredBlock538Value5) y: (55).
    recoveredBlock538Value6 := recoveredBlock538Value0.
    (recoveredBlock538Value6) height: (20).
    recoveredBlock538Value7 := recoveredBlock538Value0.
    (recoveredBlock538Value7) width: (100).
    recoveredBlock538Value8 := (self) defaultLabelBlue.
    recoveredBlock538Value9 := (recoveredBlock538Value0) foregroundColor: (recoveredBlock538Value8).
    recoveredBlock538Value9
].
            recoveredPC := 588.
        ].
        recoveredStep = 588 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 598.
        ].
        recoveredStep = 598 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            recoveredStack2 := 'incDecStepLabel'.
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 612.
        ].
        recoveredStep = 612 ifTrue: [
            recoveredStack2 := 'columnWidthText'.
            recoveredPC := 616.
        ].
        recoveredStep = 616 ifTrue: [
            recoveredStack3 := [:recoveredBlock616Arg1 | 
    | recoveredBlock616Value0 recoveredBlock616Value1 recoveredBlock616Value2 recoveredBlock616Value3 recoveredBlock616Value4 recoveredBlock616Value5 recoveredBlock616Value6 recoveredBlock616Value7 recoveredBlock616Value8 recoveredBlock616Value9 |
    recoveredBlock616Value0 := recoveredBlock616Arg1.
    recoveredBlock616Value1 := recoveredBlock616Value0.
    (recoveredBlock616Value1) x: (5).
    recoveredBlock616Value2 := recoveredBlock616Value0.
    recoveredBlock616Value3 := XmALIGNMENTBEGINNING.
    (recoveredBlock616Value2) alignment: (recoveredBlock616Value3).
    recoveredBlock616Value4 := recoveredBlock616Value0.
    (recoveredBlock616Value4) labelString: ('Column width').
    recoveredBlock616Value5 := recoveredBlock616Value0.
    (recoveredBlock616Value5) y: (101).
    recoveredBlock616Value6 := recoveredBlock616Value0.
    (recoveredBlock616Value6) height: (20).
    recoveredBlock616Value7 := recoveredBlock616Value0.
    (recoveredBlock616Value7) width: (80).
    recoveredBlock616Value8 := (self) defaultLabelBlue.
    recoveredBlock616Value9 := (recoveredBlock616Value0) foregroundColor: (recoveredBlock616Value8).
    recoveredBlock616Value9
].
            recoveredPC := 668.
        ].
        recoveredStep = 668 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 673.
        ].
        recoveredStep = 673 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 675.
        ].
        recoveredStep = 675 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 678.
        ].
        recoveredStep = 678 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 681.
        ].
        recoveredStep = 681 ifTrue: [
            recoveredStack2 := 'columnWidthText'.
            recoveredPC := 684.
        ].
        recoveredStep = 684 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 687.
        ].
        recoveredStep = 687 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 689.
        ].
        recoveredStep = 689 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 692.
        ].
        recoveredStep = 692 ifTrue: [
            recoveredStack2 := 'columnWidthSpinButton'.
            recoveredPC := 696.
        ].
        recoveredStep = 696 ifTrue: [
            recoveredStack3 := [:block28129e68Arg1 | 
    | block28129e68Value0 block28129e68Value1 block28129e68Value2 block28129e68Value3 block28129e68Value4 block28129e68Value5 |
    block28129e68Value0 := block28129e68Arg1.
    block28129e68Value1 := block28129e68Value0.
    (block28129e68Value1) x: (9).
    block28129e68Value2 := block28129e68Value0.
    (block28129e68Value2) editable: (true).
    block28129e68Value3 := block28129e68Value0.
    (block28129e68Value3) y: (123).
    block28129e68Value4 := block28129e68Value0.
    (block28129e68Value4) height: (25).
    block28129e68Value5 := (block28129e68Value0) width: (80).
    block28129e68Value5
].
            recoveredPC := 700.
        ].
        recoveredStep = 700 ifTrue: [
            recoveredPC := 733.
        ].
        recoveredStep = 733 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSpinButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 735.
        ].
        recoveredStep = 735 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 737.
        ].
        recoveredStep = 737 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 740.
        ].
        recoveredStep = 740 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 743.
        ].
        recoveredStep = 743 ifTrue: [
            recoveredStack2 := 'columnWidthSpinButton'.
            recoveredPC := 746.
        ].
        recoveredStep = 746 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 749.
        ].
        recoveredStep = 749 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 751.
        ].
        recoveredStep = 751 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 754.
        ].
        recoveredStep = 754 ifTrue: [
            recoveredStack2 := [:recoveredBlock754Arg1 | 
    | recoveredBlock754Value0 recoveredBlock754Value1 recoveredBlock754Value2 |
    recoveredBlock754Value0 := recoveredBlock754Arg1.
    recoveredBlock754Value1 := recoveredLocal11.
    recoveredBlock754Value2 := (recoveredBlock754Value0) workWindow: (recoveredBlock754Value1).
    recoveredBlock754Value2
].
            recoveredPC := 770.
        ].
        recoveredStep = 770 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 775.
        ].
        recoveredStep = 775 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 778.
        ].
        recoveredStep = 778 ifTrue: [
            recoveredStack2 := [:block28129e8cArg1 | 
    | block28129e8cValue0 block28129e8cValue1 block28129e8cValue2 block28129e8cValue3 block28129e8cValue4 block28129e8cValue5 block28129e8cValue6 block28129e8cValue7 |
    block28129e8cValue0 := block28129e8cArg1.
    block28129e8cValue1 := block28129e8cValue0.
    block28129e8cValue2 := XmATTACHFORM.
    (block28129e8cValue1) bottomAttachment: (block28129e8cValue2).
    block28129e8cValue3 := block28129e8cValue0.
    block28129e8cValue4 := XmATTACHFORM.
    (block28129e8cValue3) topAttachment: (block28129e8cValue4).
    block28129e8cValue5 := block28129e8cValue0.
    block28129e8cValue6 := XmATTACHOPPOSITEFORM.
    (block28129e8cValue5) leftAttachment: (block28129e8cValue6).
    block28129e8cValue7 := (block28129e8cValue0) leftOffset: (-102).
    block28129e8cValue7
].
            recoveredPC := 782.
        ].
        recoveredStep = 782 ifTrue: [
            recoveredPC := 822.
        ].
        recoveredStep = 822 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 827.
        ].
        recoveredStep = 827 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 830.
        ].
        recoveredStep = 830 ifTrue: [
            recoveredStack2 := [:recoveredBlock830Arg1 | 
    | recoveredBlock830Value0 recoveredBlock830Value1 recoveredBlock830Value2 recoveredBlock830Value3 recoveredBlock830Value4 recoveredBlock830Value5 recoveredBlock830Value6 recoveredBlock830Value7 recoveredBlock830Value8 recoveredBlock830Value9 recoveredBlock830Value10 recoveredBlock830Value11 recoveredBlock830Value12 |
    recoveredBlock830Value0 := recoveredBlock830Arg1.
    recoveredBlock830Value1 := recoveredBlock830Value0.
    recoveredBlock830Value2 := XmATTACHWIDGET.
    (recoveredBlock830Value1) topAttachment: (recoveredBlock830Value2).
    recoveredBlock830Value3 := recoveredBlock830Value0.
    recoveredBlock830Value4 := recoveredLocal4.
    (recoveredBlock830Value3) topWidget: (recoveredBlock830Value4).
    recoveredBlock830Value5 := recoveredBlock830Value0.
    recoveredBlock830Value6 := XmATTACHFORM.
    (recoveredBlock830Value5) leftAttachment: (recoveredBlock830Value6).
    recoveredBlock830Value7 := recoveredBlock830Value0.
    (recoveredBlock830Value7) leftOffset: (5).
    recoveredBlock830Value8 := recoveredBlock830Value0.
    recoveredBlock830Value9 := XmATTACHWIDGET.
    (recoveredBlock830Value8) rightAttachment: (recoveredBlock830Value9).
    recoveredBlock830Value10 := recoveredBlock830Value0.
    recoveredBlock830Value11 := recoveredLocal10.
    (recoveredBlock830Value10) rightWidget: (recoveredBlock830Value11).
    recoveredBlock830Value12 := (recoveredBlock830Value0) rightOffset: (5).
    recoveredBlock830Value12
].
            recoveredPC := 892.
        ].
        recoveredStep = 892 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 897.
        ].
        recoveredStep = 897 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 900.
        ].
        recoveredStep = 900 ifTrue: [
            recoveredStack2 := [:recoveredBlock900Arg1 | 
    | recoveredBlock900Value0 recoveredBlock900Value1 recoveredBlock900Value2 recoveredBlock900Value3 recoveredBlock900Value4 recoveredBlock900Value5 recoveredBlock900Value6 recoveredBlock900Value7 recoveredBlock900Value8 recoveredBlock900Value9 recoveredBlock900Value10 recoveredBlock900Value11 recoveredBlock900Value12 |
    recoveredBlock900Value0 := recoveredBlock900Arg1.
    recoveredBlock900Value1 := recoveredBlock900Value0.
    recoveredBlock900Value2 := XmATTACHWIDGET.
    (recoveredBlock900Value1) topAttachment: (recoveredBlock900Value2).
    recoveredBlock900Value3 := recoveredBlock900Value0.
    recoveredBlock900Value4 := recoveredLocal3.
    (recoveredBlock900Value3) topWidget: (recoveredBlock900Value4).
    recoveredBlock900Value5 := recoveredBlock900Value0.
    recoveredBlock900Value6 := XmATTACHFORM.
    (recoveredBlock900Value5) leftAttachment: (recoveredBlock900Value6).
    recoveredBlock900Value7 := recoveredBlock900Value0.
    (recoveredBlock900Value7) leftOffset: (5).
    recoveredBlock900Value8 := recoveredBlock900Value0.
    recoveredBlock900Value9 := XmATTACHWIDGET.
    (recoveredBlock900Value8) rightAttachment: (recoveredBlock900Value9).
    recoveredBlock900Value10 := recoveredBlock900Value0.
    recoveredBlock900Value11 := recoveredLocal10.
    (recoveredBlock900Value10) rightWidget: (recoveredBlock900Value11).
    recoveredBlock900Value12 := (recoveredBlock900Value0) rightOffset: (5).
    recoveredBlock900Value12
].
            recoveredPC := 962.
        ].
        recoveredStep = 962 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 967.
        ].
        recoveredStep = 967 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 970.
        ].
        recoveredStep = 970 ifTrue: [
            recoveredStack2 := [:block28129eb0Arg1 | 
    | block28129eb0Value0 block28129eb0Value1 block28129eb0Value2 block28129eb0Value3 |
    block28129eb0Value0 := block28129eb0Arg1.
    block28129eb0Value1 := block28129eb0Value0.
    block28129eb0Value2 := XmATTACHOPPOSITEFORM.
    (block28129eb0Value1) leftAttachment: (block28129eb0Value2).
    block28129eb0Value3 := (block28129eb0Value0) leftOffset: (-95).
    block28129eb0Value3
].
            recoveredPC := 974.
        ].
        recoveredStep = 974 ifTrue: [
            recoveredPC := 998.
        ].
        recoveredStep = 998 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1003.
        ].
        recoveredStep = 1003 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1006.
        ].
        recoveredStep = 1006 ifTrue: [
            recoveredStack2 := [:block28129ed4Arg1 | 
    | block28129ed4Value0 block28129ed4Value1 block28129ed4Value2 block28129ed4Value3 |
    block28129ed4Value0 := block28129ed4Arg1.
    block28129ed4Value1 := block28129ed4Value0.
    block28129ed4Value2 := XmATTACHOPPOSITEFORM.
    (block28129ed4Value1) leftAttachment: (block28129ed4Value2).
    block28129ed4Value3 := (block28129ed4Value0) leftOffset: (-95).
    block28129ed4Value3
].
            recoveredPC := 1010.
        ].
        recoveredStep = 1010 ifTrue: [
            recoveredPC := 1034.
        ].
        recoveredStep = 1034 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1039.
        ].
        recoveredStep = 1039 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1042.
        ].
        recoveredStep = 1042 ifTrue: [
            recoveredStack2 := [:block28129ef8Arg1 | 
    | block28129ef8Value0 block28129ef8Value1 block28129ef8Value2 block28129ef8Value3 |
    block28129ef8Value0 := block28129ef8Arg1.
    block28129ef8Value1 := block28129ef8Value0.
    block28129ef8Value2 := XmATTACHOPPOSITEFORM.
    (block28129ef8Value1) leftAttachment: (block28129ef8Value2).
    block28129ef8Value3 := (block28129ef8Value0) leftOffset: (-95).
    block28129ef8Value3
].
            recoveredPC := 1046.
        ].
        recoveredStep = 1046 ifTrue: [
            recoveredPC := 1070.
        ].
        recoveredStep = 1070 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1075.
        ].
        recoveredStep = 1075 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1078.
        ].
        recoveredStep = 1078 ifTrue: [
            recoveredStack2 := [:recoveredBlock1078Arg1 | 
    | recoveredBlock1078Value0 recoveredBlock1078Value1 recoveredBlock1078Value2 recoveredBlock1078Value3 recoveredBlock1078Value4 recoveredBlock1078Value5 recoveredBlock1078Value6 recoveredBlock1078Value7 recoveredBlock1078Value8 recoveredBlock1078Value9 recoveredBlock1078Value10 recoveredBlock1078Value11 |
    recoveredBlock1078Value0 := recoveredBlock1078Arg1.
    recoveredBlock1078Value1 := recoveredBlock1078Value0.
    recoveredBlock1078Value2 := XmATTACHFORM.
    (recoveredBlock1078Value1) topAttachment: (recoveredBlock1078Value2).
    recoveredBlock1078Value3 := recoveredBlock1078Value0.
    (recoveredBlock1078Value3) topOffset: (5).
    recoveredBlock1078Value4 := recoveredBlock1078Value0.
    recoveredBlock1078Value5 := XmATTACHFORM.
    (recoveredBlock1078Value4) leftAttachment: (recoveredBlock1078Value5).
    recoveredBlock1078Value6 := recoveredBlock1078Value0.
    (recoveredBlock1078Value6) leftOffset: (5).
    recoveredBlock1078Value7 := recoveredBlock1078Value0.
    recoveredBlock1078Value8 := XmATTACHWIDGET.
    (recoveredBlock1078Value7) rightAttachment: (recoveredBlock1078Value8).
    recoveredBlock1078Value9 := recoveredBlock1078Value0.
    recoveredBlock1078Value10 := recoveredLocal10.
    (recoveredBlock1078Value9) rightWidget: (recoveredBlock1078Value10).
    recoveredBlock1078Value11 := (recoveredBlock1078Value0) rightOffset: (5).
    recoveredBlock1078Value11
].
            recoveredPC := 1138.
        ].
        recoveredStep = 1138 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1143.
        ].
        recoveredStep = 1143 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1146.
        ].
        recoveredStep = 1146 ifTrue: [
            recoveredStack2 := [:recoveredBlock1146Arg1 | 
    | recoveredBlock1146Value0 recoveredBlock1146Value1 recoveredBlock1146Value2 recoveredBlock1146Value3 recoveredBlock1146Value4 recoveredBlock1146Value5 recoveredBlock1146Value6 recoveredBlock1146Value7 recoveredBlock1146Value8 recoveredBlock1146Value9 recoveredBlock1146Value10 recoveredBlock1146Value11 recoveredBlock1146Value12 recoveredBlock1146Value13 |
    recoveredBlock1146Value0 := recoveredBlock1146Arg1.
    recoveredBlock1146Value1 := recoveredBlock1146Value0.
    recoveredBlock1146Value2 := XmATTACHWIDGET.
    (recoveredBlock1146Value1) topAttachment: (recoveredBlock1146Value2).
    recoveredBlock1146Value3 := recoveredBlock1146Value0.
    recoveredBlock1146Value4 := recoveredLocal8.
    (recoveredBlock1146Value3) topWidget: (recoveredBlock1146Value4).
    recoveredBlock1146Value5 := recoveredBlock1146Value0.
    (recoveredBlock1146Value5) topOffset: (5).
    recoveredBlock1146Value6 := recoveredBlock1146Value0.
    recoveredBlock1146Value7 := XmATTACHFORM.
    (recoveredBlock1146Value6) leftAttachment: (recoveredBlock1146Value7).
    recoveredBlock1146Value8 := recoveredBlock1146Value0.
    (recoveredBlock1146Value8) leftOffset: (5).
    recoveredBlock1146Value9 := recoveredBlock1146Value0.
    recoveredBlock1146Value10 := XmATTACHWIDGET.
    (recoveredBlock1146Value9) rightAttachment: (recoveredBlock1146Value10).
    recoveredBlock1146Value11 := recoveredBlock1146Value0.
    recoveredBlock1146Value12 := recoveredLocal10.
    (recoveredBlock1146Value11) rightWidget: (recoveredBlock1146Value12).
    recoveredBlock1146Value13 := (recoveredBlock1146Value0) rightOffset: (5).
    recoveredBlock1146Value13
].
            recoveredPC := 1214.
        ].
        recoveredStep = 1214 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1219.
        ].
        recoveredStep = 1219 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1222.
        ].
        recoveredStep = 1222 ifTrue: [
            recoveredStack2 := [:recoveredBlock1222Arg1 | 
    | recoveredBlock1222Value0 recoveredBlock1222Value1 recoveredBlock1222Value2 recoveredBlock1222Value3 recoveredBlock1222Value4 recoveredBlock1222Value5 recoveredBlock1222Value6 recoveredBlock1222Value7 recoveredBlock1222Value8 recoveredBlock1222Value9 recoveredBlock1222Value10 recoveredBlock1222Value11 recoveredBlock1222Value12 |
    recoveredBlock1222Value0 := recoveredBlock1222Arg1.
    recoveredBlock1222Value1 := recoveredBlock1222Value0.
    recoveredBlock1222Value2 := XmATTACHWIDGET.
    (recoveredBlock1222Value1) topAttachment: (recoveredBlock1222Value2).
    recoveredBlock1222Value3 := recoveredBlock1222Value0.
    recoveredBlock1222Value4 := recoveredLocal2.
    (recoveredBlock1222Value3) topWidget: (recoveredBlock1222Value4).
    recoveredBlock1222Value5 := recoveredBlock1222Value0.
    recoveredBlock1222Value6 := XmATTACHFORM.
    (recoveredBlock1222Value5) leftAttachment: (recoveredBlock1222Value6).
    recoveredBlock1222Value7 := recoveredBlock1222Value0.
    (recoveredBlock1222Value7) leftOffset: (5).
    recoveredBlock1222Value8 := recoveredBlock1222Value0.
    recoveredBlock1222Value9 := XmATTACHWIDGET.
    (recoveredBlock1222Value8) rightAttachment: (recoveredBlock1222Value9).
    recoveredBlock1222Value10 := recoveredBlock1222Value0.
    recoveredBlock1222Value11 := recoveredLocal10.
    (recoveredBlock1222Value10) rightWidget: (recoveredBlock1222Value11).
    recoveredBlock1222Value12 := (recoveredBlock1222Value0) rightOffset: (5).
    recoveredBlock1222Value12
].
            recoveredPC := 1284.
        ].
        recoveredStep = 1284 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1289.
        ].
        recoveredStep = 1289 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 1292.
        ].
        recoveredStep = 1292 ifTrue: [
            recoveredStack2 := XmNdestroyCallback.
            recoveredPC := 1296.
        ].
        recoveredStep = 1296 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1297.
        ].
        recoveredStep = 1297 ifTrue: [
            recoveredStack4 := 'aForm1Destroy:clientData:callData:'.
            recoveredPC := 1300.
        ].
        recoveredStep = 1300 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1301.
        ].
        recoveredStep = 1301 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1305.
        ].
        recoveredStep = 1305 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1308.
        ].
        recoveredStep = 1308 ifTrue: [
            recoveredStack2 := XmNmodifyVerifyCallback.
            recoveredPC := 1312.
        ].
        recoveredStep = 1312 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1313.
        ].
        recoveredStep = 1313 ifTrue: [
            recoveredStack4 := 'incDecStepTextModify:clientData:callData:'.
            recoveredPC := 1316.
        ].
        recoveredStep = 1316 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1317.
        ].
        recoveredStep = 1317 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1321.
        ].
        recoveredStep = 1321 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1324.
        ].
        recoveredStep = 1324 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1328.
        ].
        recoveredStep = 1328 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1329.
        ].
        recoveredStep = 1329 ifTrue: [
            recoveredStack4 := 'okButtonActivate:clientData:callData:'.
            recoveredPC := 1332.
        ].
        recoveredStep = 1332 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1333.
        ].
        recoveredStep = 1333 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1337.
        ].
        recoveredStep = 1337 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1340.
        ].
        recoveredStep = 1340 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1344.
        ].
        recoveredStep = 1344 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1345.
        ].
        recoveredStep = 1345 ifTrue: [
            recoveredStack4 := 'cancelButtonActivate:clientData:callData:'.
            recoveredPC := 1348.
        ].
        recoveredStep = 1348 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1349.
        ].
        recoveredStep = 1349 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1353.
        ].
        recoveredStep = 1353 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1356.
        ].
        recoveredStep = 1356 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1361.
        ].
        recoveredStep = 1361 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1364.
        ].
        recoveredStep = 1364 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1369.
        ].
        recoveredStep = 1369 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1372.
        ].
        recoveredStep = 1372 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1377.
        ].
        recoveredStep = 1377 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1380.
        ].
        recoveredStep = 1380 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1385.
        ].
        recoveredStep = 1385 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1388.
        ].
        recoveredStep = 1388 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1393.
        ].
        recoveredStep = 1393 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 1396.
        ].
        recoveredStep = 1396 ifTrue: [
            recoveredStack2 := recoveredLocal14.
            recoveredPC := 1399.
        ].
        recoveredStep = 1399 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 1402.
        ].
        recoveredStep = 1402 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 1407.
        ].
        recoveredStep = 1407 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

