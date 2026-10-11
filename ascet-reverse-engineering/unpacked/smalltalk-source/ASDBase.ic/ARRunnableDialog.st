"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000ec8; bytecode file offset 0x8ffcfc"
!ARRunnableDialog methodsFor: 'recovered'!
updateSettingsPane
    ^self
! !

"ASDBase.ic method 0x200159e0; bytecode file offset 0x92209c"
!ARRunnableDialog methodsFor: 'recovered'!
pageSettingsLabel
    ^'Settings'
! !

"ASDBase.ic method 0x2004697c; bytecode file offset 0x9451f8"
!ARRunnableDialog methodsFor: 'recovered'!
widgetMinimumStartTimeField
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('minimumStartTimeField').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20046cac; bytecode file offset 0x9451f8"
!ARRunnableDialog methodsFor: 'recovered'!
widgetInvokeConcurrentlyCheckBox
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('invokeConcurrentlyCheckBox').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20047f4c; bytecode file offset 0x9451f8"
!ARRunnableDialog methodsFor: 'recovered'!
pageSettings
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('pageSettings').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d6040; bytecode file offset 0x9d3134"
!ARRunnableDialog methodsFor: 'recovered'!
updatePanes
    super updatePanes.
    (self) updatePageSettings.
    ^self
! !

"ASDBase.ic method 0x201c9a24; bytecode file offset 0xac6300"
!ARRunnableDialog methodsFor: 'recovered'!
ok
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (self) widgetInvokeConcurrentlyCheckBox.
    recoveredValue2 := (recoveredValue1) set.
    (recoveredValue0) updateInvokeConcurrently: (recoveredValue2).
    recoveredValue3 := (self) uiController.
    recoveredValue4 := (self) widgetMinimumStartTimeField.
    recoveredValue5 := (recoveredValue4) getString.
    recoveredValue6 := (recoveredValue5) asFloat.
    (recoveredValue3) updateMinimumStartTime: (recoveredValue6).
    recoveredValue7 := super ok.
    ^recoveredValue7
! !

"ASDBase.ic method 0x20211d04; bytecode file offset 0xb0e5dc"
!ARRunnableDialog methodsFor: 'recovered'!
updatePageSettings
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) method.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetInvokeConcurrentlyCheckBox.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) canBeInvokedConcurrently.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetMinimumStartTimeField.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) minimumStartTime.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205f9f14; bytecode file offset 0xef689c"
!ARRunnableDialog methodsFor: 'recovered'!
createWidgetHierarchyPageSettings
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) pageSettings.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:block2811c05cArg1 | 
    | block2811c05cValue0 block2811c05cValue1 |
    block2811c05cValue0 := block2811c05cArg1.
    block2811c05cValue1 := (block2811c05cValue0) labelString: ('Properties').
    block2811c05cValue1
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFrame: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 'propertyFrame'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := 'propertyForm'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := 'propertyForm'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := 'invokeConcurrentlyCheckBox'.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := [:block2811c080Arg1 | 
    | block2811c080Value0 block2811c080Value1 block2811c080Value2 block2811c080Value3 |
    block2811c080Value0 := block2811c080Arg1.
    block2811c080Value1 := block2811c080Value0.
    (block2811c080Value1) labelString: ('Can be Invoked Concurrently').
    block2811c080Value2 := block2811c080Value0.
    (block2811c080Value2) height: (22).
    block2811c080Value3 := (block2811c080Value0) width: (120).
    block2811c080Value3
].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := 'invokeConcurrentlyCheckBox'.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := 'minimumStartTimeLabel'.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := [:block2811c0a4Arg1 | 
    | block2811c0a4Value0 block2811c0a4Value1 block2811c0a4Value2 block2811c0a4Value3 block2811c0a4Value4 block2811c0a4Value5 |
    block2811c0a4Value0 := block2811c0a4Arg1.
    block2811c0a4Value1 := block2811c0a4Value0.
    block2811c0a4Value2 := XmALIGNMENTBEGINNING.
    (block2811c0a4Value1) alignment: (block2811c0a4Value2).
    block2811c0a4Value3 := block2811c0a4Value0.
    (block2811c0a4Value3) labelString: ('Minimum Start Time (ms)').
    block2811c0a4Value4 := block2811c0a4Value0.
    (block2811c0a4Value4) height: (22).
    block2811c0a4Value5 := (block2811c0a4Value0) width: (120).
    block2811c0a4Value5
].
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := 'minimumStartTimeLabel'.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := 'minimumStartTimeField'.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := [:block2811c0c8Arg1 | 
    | block2811c0c8Value0 block2811c0c8Value1 block2811c0c8Value2 block2811c0c8Value3 |
    block2811c0c8Value0 := block2811c0c8Arg1.
    block2811c0c8Value1 := block2811c0c8Value0.
    (block2811c0c8Value1) characterMethod: ('checkFloat:').
    block2811c0c8Value2 := block2811c0c8Value0.
    (block2811c0c8Value2) height: (22).
    block2811c0c8Value3 := (block2811c0c8Value0) width: (120).
    block2811c0c8Value3
].
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEnhancedText: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := 'minimumStartTimeField'.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := [:block2811c0ecArg1 | 
    | block2811c0ecValue0 block2811c0ecValue1 block2811c0ecValue2 block2811c0ecValue3 block2811c0ecValue4 block2811c0ecValue5 block2811c0ecValue6 block2811c0ecValue7 block2811c0ecValue8 block2811c0ecValue9 block2811c0ecValue10 block2811c0ecValue11 block2811c0ecValue12 |
    block2811c0ecValue0 := block2811c0ecArg1.
    block2811c0ecValue1 := block2811c0ecValue0.
    block2811c0ecValue2 := XmATTACHFORM.
    (block2811c0ecValue1) topAttachment: (block2811c0ecValue2).
    block2811c0ecValue3 := block2811c0ecValue0.
    (block2811c0ecValue3) topOffset: (5).
    block2811c0ecValue4 := block2811c0ecValue0.
    block2811c0ecValue5 := XmATTACHFORM.
    (block2811c0ecValue4) bottomAttachment: (block2811c0ecValue5).
    block2811c0ecValue6 := block2811c0ecValue0.
    (block2811c0ecValue6) bottomOffset: (5).
    block2811c0ecValue7 := block2811c0ecValue0.
    block2811c0ecValue8 := XmATTACHFORM.
    (block2811c0ecValue7) leftAttachment: (block2811c0ecValue8).
    block2811c0ecValue9 := block2811c0ecValue0.
    (block2811c0ecValue9) leftOffset: (5).
    block2811c0ecValue10 := block2811c0ecValue0.
    block2811c0ecValue11 := XmATTACHFORM.
    (block2811c0ecValue10) rightAttachment: (block2811c0ecValue11).
    block2811c0ecValue12 := (block2811c0ecValue0) rightOffset: (5).
    block2811c0ecValue12
].
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := [:block2811c110Arg1 | 
    | block2811c110Value0 block2811c110Value1 block2811c110Value2 block2811c110Value3 block2811c110Value4 block2811c110Value5 block2811c110Value6 block2811c110Value7 block2811c110Value8 block2811c110Value9 |
    block2811c110Value0 := block2811c110Arg1.
    block2811c110Value1 := block2811c110Value0.
    block2811c110Value2 := XmATTACHFORM.
    (block2811c110Value1) topAttachment: (block2811c110Value2).
    block2811c110Value3 := block2811c110Value0.
    (block2811c110Value3) topOffset: (0).
    block2811c110Value4 := block2811c110Value0.
    block2811c110Value5 := XmATTACHFORM.
    (block2811c110Value4) leftAttachment: (block2811c110Value5).
    block2811c110Value6 := block2811c110Value0.
    (block2811c110Value6) leftOffset: (5).
    block2811c110Value7 := block2811c110Value0.
    block2811c110Value8 := XmATTACHFORM.
    (block2811c110Value7) rightAttachment: (block2811c110Value8).
    block2811c110Value9 := (block2811c110Value0) rightOffset: (5).
    block2811c110Value9
].
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack1 := [:recoveredBlock304Arg1 | 
    | recoveredBlock304Value0 recoveredBlock304Value1 recoveredBlock304Value2 recoveredBlock304Value3 recoveredBlock304Value4 recoveredBlock304Value5 recoveredBlock304Value6 recoveredBlock304Value7 recoveredBlock304Value8 recoveredBlock304Value9 recoveredBlock304Value10 recoveredBlock304Value11 |
    recoveredBlock304Value0 := recoveredBlock304Arg1.
    recoveredBlock304Value1 := recoveredBlock304Value0.
    recoveredBlock304Value2 := XmATTACHWIDGET.
    (recoveredBlock304Value1) topAttachment: (recoveredBlock304Value2).
    recoveredBlock304Value3 := recoveredBlock304Value0.
    recoveredBlock304Value4 := recoveredLocal3.
    (recoveredBlock304Value3) topWidget: (recoveredBlock304Value4).
    recoveredBlock304Value5 := recoveredBlock304Value0.
    (recoveredBlock304Value5) topOffset: (5).
    recoveredBlock304Value6 := recoveredBlock304Value0.
    recoveredBlock304Value7 := XmATTACHFORM.
    (recoveredBlock304Value6) leftAttachment: (recoveredBlock304Value7).
    recoveredBlock304Value8 := recoveredBlock304Value0.
    (recoveredBlock304Value8) leftOffset: (5).
    recoveredBlock304Value9 := recoveredBlock304Value0.
    recoveredBlock304Value10 := XmATTACHFORM.
    (recoveredBlock304Value9) rightAttachment: (recoveredBlock304Value10).
    recoveredBlock304Value11 := (recoveredBlock304Value0) rightOffset: (5).
    recoveredBlock304Value11
].
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack1 := [:recoveredBlock352Arg1 | 
    | recoveredBlock352Value0 recoveredBlock352Value1 recoveredBlock352Value2 recoveredBlock352Value3 recoveredBlock352Value4 recoveredBlock352Value5 recoveredBlock352Value6 recoveredBlock352Value7 recoveredBlock352Value8 recoveredBlock352Value9 recoveredBlock352Value10 |
    recoveredBlock352Value0 := recoveredBlock352Arg1.
    recoveredBlock352Value1 := recoveredBlock352Value0.
    recoveredBlock352Value2 := XmATTACHWIDGET.
    (recoveredBlock352Value1) topAttachment: (recoveredBlock352Value2).
    recoveredBlock352Value3 := recoveredBlock352Value0.
    recoveredBlock352Value4 := recoveredLocal2.
    (recoveredBlock352Value3) topWidget: (recoveredBlock352Value4).
    recoveredBlock352Value5 := recoveredBlock352Value0.
    recoveredBlock352Value6 := XmATTACHFORM.
    (recoveredBlock352Value5) leftAttachment: (recoveredBlock352Value6).
    recoveredBlock352Value7 := recoveredBlock352Value0.
    (recoveredBlock352Value7) leftOffset: (5).
    recoveredBlock352Value8 := recoveredBlock352Value0.
    recoveredBlock352Value9 := XmATTACHFORM.
    (recoveredBlock352Value8) rightAttachment: (recoveredBlock352Value9).
    recoveredBlock352Value10 := (recoveredBlock352Value0) rightOffset: (5).
    recoveredBlock352Value10
].
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack1 := 'Allow this runnable to be invoked concurrently'.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack1 := 'The minimum start time required for this runnable'.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            (recoveredStack0) updateFonts.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

