"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000070; bytecode file offset 0x8ffcfc"
!RBBitMeasureDataWindow methodsFor: 'recovered'!
menuSetup
    ^self
! !

"ASDBase.ic method 0x2001e2fc; bytecode file offset 0x92209c"
!RBBitMeasureDataWindow methodsFor: 'recovered'!
subpaneOrientation
    ^'horizontal'
! !

"ASDBase.ic method 0x2001fd90; bytecode file offset 0x92209c"
!RBBitMeasureDataWindow methodsFor: 'recovered'!
defaultIcon
    ^'EditorEEMeasurementBit32'
! !

"ASDBase.ic method 0x201aefe8; bytecode file offset 0xaab8b8"
!RBBitMeasureDataWindow methodsFor: 'recovered'!
minSubpaneWidth
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultMinSize.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := [:block280d3800Arg1 :block280d3800Arg2 | 
    | block280d3800Value0 block280d3800Value1 block280d3800Value2 block280d3800Value3 |
    block280d3800Value0 := block280d3800Arg1.
    block280d3800Value1 := block280d3800Arg2.
    block280d3800Value2 := (block280d3800Value1) minWidth.
    block280d3800Value3 := (block280d3800Value0) max: (block280d3800Value2).
    block280d3800Value3
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) inject: (recoveredStack2) into: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2029f978; bytecode file offset 0xb9c250"
!RBBitMeasureDataWindow methodsFor: 'recovered'!
minSubpaneHeight
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280e3a9cArg1 | 
    | block280e3a9cValue0 block280e3a9cValue1 block280e3a9cValue2 block280e3a9cValue3 |
    block280e3a9cValue0 := block280e3a9cArg1.
    block280e3a9cValue1 := RB1BitMeasureDataWidget.
    block280e3a9cValue2 := (block280e3a9cValue0) isKindOf: (block280e3a9cValue1).
    block280e3a9cValue3 := (block280e3a9cValue2) not.
    block280e3a9cValue3
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) minSize.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) marginWidth.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 35.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202e6980; bytecode file offset 0xbe3254"
!RBBitMeasureDataWindow methodsFor: 'recovered'!
checkValidDatas: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asOrderedCollection.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 22.
        ].
        recoveredBlock14Step = 22 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) getImplType.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) byteSize.
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            recoveredBlock14Stack3 := 4.
            recoveredBlock14PC := 26.
        ].
        recoveredBlock14Step = 26 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) > (recoveredBlock14Stack3).
            recoveredBlock14PC := 27.
        ].
        recoveredBlock14Step = 27 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 30] ifFalse: [recoveredBlock14PC := 44].
        ].
        recoveredBlock14Step = 30 ifTrue: [
            recoveredBlock14PC := 31.
        ].
        recoveredBlock14Step = 31 ifTrue: [
            recoveredBlock14Stack1 := RBError.
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 34.
        ].
        recoveredBlock14Step = 34 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) wName.
            recoveredBlock14PC := 36.
        ].
        recoveredBlock14Step = 36 ifTrue: [
            (recoveredBlock14Stack1) cannotDisplayDataInBitDisplay: (recoveredBlock14Stack2).
            recoveredBlock14PC := 38.
        ].
        recoveredBlock14Step = 38 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal1.
            recoveredBlock14PC := 41.
        ].
        recoveredBlock14Step = 41 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 42.
        ].
        recoveredBlock14Step = 42 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) remove: (recoveredBlock14Stack2).
            recoveredBlock14PC := 44.
        ].
        recoveredBlock14Step = 44 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2040a3a4; bytecode file offset 0xd06ca4"
!RBBitMeasureDataWindow methodsFor: 'recovered'!
createSubpaneFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataManager.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataOfId: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) form.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'aSubPane'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := subWidgets.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 recoveredBlock20Value5 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := recoveredBlock20Value0.
    recoveredBlock20Value2 := (self) class.
    recoveredBlock20Value3 := (recoveredBlock20Value2) defaultSubWidgetHeight.
    recoveredBlock20Value4 := (recoveredBlock20Value3) - (10).
    (recoveredBlock20Value1) height: (recoveredBlock20Value4).
    recoveredBlock20Value5 := (recoveredBlock20Value0) width: (245).
    recoveredBlock20Value5
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) createASDDrawnBitMeasureDataWidget: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBitData.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) clearShowBitIndex.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) default1BitMinSize.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) minSize: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredPC := 94.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) minWidthForData: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) width.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) width: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20574940; bytecode file offset 0xe71284"
!RBBitMeasureDataWindow methodsFor: 'recovered'!
createDataMenu
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 |
    recoveredValue0 := CwMenu.
    recoveredValue1 := (recoveredValue0) defaultMenuClass.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := MTOptions.
    (recoveredValue3) title: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := MPCopyDataToWindow.
    recoveredValue7 := Dots.
    recoveredValue8 := (recoveredValue6) , (recoveredValue7).
    recoveredValue9 := [
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 recoveredBlock22Value3 recoveredBlock22Value4 recoveredBlock22Value5 recoveredBlock22Value6 recoveredBlock22Value7 recoveredBlock22Value8 recoveredBlock22Value9 recoveredBlock22Value10 recoveredBlock22Value11 recoveredBlock22Value12 |
    recoveredBlock22Value0 := selectedWidgets.
    recoveredBlock22Value1 := (recoveredBlock22Value0) isEmpty.
    recoveredBlock22Value2 := (recoveredBlock22Value1) not.
    recoveredBlock22Value3 := (self) dataManager.
    recoveredBlock22Value4 := (recoveredBlock22Value3) isOnlineInDevices.
    recoveredBlock22Value5 := (recoveredBlock22Value4) not.
    recoveredBlock22Value6 := (self) dataManager.
    recoveredBlock22Value7 := (recoveredBlock22Value6) canAddRemoveDataDuringAcquisition.
    recoveredBlock22Value8 := (recoveredBlock22Value5) | (recoveredBlock22Value7).
    recoveredBlock22Value9 := (self) dataManager.
    recoveredBlock22Value10 := (recoveredBlock22Value9) autoStartingAcquisitionMode.
    recoveredBlock22Value11 := (recoveredBlock22Value8) | (recoveredBlock22Value10).
    recoveredBlock22Value12 := (recoveredBlock22Value2) & (recoveredBlock22Value11).
    recoveredBlock22Value12
].
    (recoveredValue5) add: ('menuCopyData') label: (recoveredValue8) enable: (recoveredValue9).
    recoveredValue10 := recoveredValue2.
    recoveredValue11 := MPMoveDataToWindow.
    recoveredValue12 := Dots.
    recoveredValue13 := (recoveredValue11) , (recoveredValue12).
    recoveredValue14 := [
    | recoveredBlock67Value0 recoveredBlock67Value1 recoveredBlock67Value2 recoveredBlock67Value3 recoveredBlock67Value4 recoveredBlock67Value5 recoveredBlock67Value6 recoveredBlock67Value7 recoveredBlock67Value8 recoveredBlock67Value9 recoveredBlock67Value10 recoveredBlock67Value11 recoveredBlock67Value12 |
    recoveredBlock67Value0 := selectedWidgets.
    recoveredBlock67Value1 := (recoveredBlock67Value0) isEmpty.
    recoveredBlock67Value2 := (recoveredBlock67Value1) not.
    recoveredBlock67Value3 := (self) dataManager.
    recoveredBlock67Value4 := (recoveredBlock67Value3) isOnlineInDevices.
    recoveredBlock67Value5 := (recoveredBlock67Value4) not.
    recoveredBlock67Value6 := (self) dataManager.
    recoveredBlock67Value7 := (recoveredBlock67Value6) canAddRemoveDataDuringAcquisition.
    recoveredBlock67Value8 := (recoveredBlock67Value5) | (recoveredBlock67Value7).
    recoveredBlock67Value9 := (self) dataManager.
    recoveredBlock67Value10 := (recoveredBlock67Value9) autoStartingAcquisitionMode.
    recoveredBlock67Value11 := (recoveredBlock67Value8) | (recoveredBlock67Value10).
    recoveredBlock67Value12 := (recoveredBlock67Value2) & (recoveredBlock67Value11).
    recoveredBlock67Value12
].
    (recoveredValue10) add: ('menuMoveData') label: (recoveredValue13) enable: (recoveredValue14).
    recoveredValue15 := recoveredValue2.
    recoveredValue16 := MPRemoveData.
    recoveredValue17 := [
    | recoveredBlock109Value0 recoveredBlock109Value1 recoveredBlock109Value2 recoveredBlock109Value3 recoveredBlock109Value4 recoveredBlock109Value5 recoveredBlock109Value6 recoveredBlock109Value7 recoveredBlock109Value8 recoveredBlock109Value9 recoveredBlock109Value10 recoveredBlock109Value11 recoveredBlock109Value12 |
    recoveredBlock109Value0 := selectedWidgets.
    recoveredBlock109Value1 := (recoveredBlock109Value0) isEmpty.
    recoveredBlock109Value2 := (recoveredBlock109Value1) not.
    recoveredBlock109Value3 := (self) dataManager.
    recoveredBlock109Value4 := (recoveredBlock109Value3) isOnlineInDevices.
    recoveredBlock109Value5 := (recoveredBlock109Value4) not.
    recoveredBlock109Value6 := (self) dataManager.
    recoveredBlock109Value7 := (recoveredBlock109Value6) canAddRemoveDataDuringAcquisition.
    recoveredBlock109Value8 := (recoveredBlock109Value5) | (recoveredBlock109Value7).
    recoveredBlock109Value9 := (self) dataManager.
    recoveredBlock109Value10 := (recoveredBlock109Value9) autoStartingAcquisitionMode.
    recoveredBlock109Value11 := (recoveredBlock109Value8) | (recoveredBlock109Value10).
    recoveredBlock109Value12 := (recoveredBlock109Value2) & (recoveredBlock109Value11).
    recoveredBlock109Value12
].
    (recoveredValue15) add: ('menuRemoveData') label: (recoveredValue16) enable: (recoveredValue17).
    recoveredValue18 := recoveredValue2.
    (recoveredValue18) addLine.
    recoveredValue19 := recoveredValue2.
    recoveredValue20 := MPChangeMeasureRaster.
    recoveredValue21 := Dots.
    recoveredValue22 := (recoveredValue20) , (recoveredValue21).
    recoveredValue23 := [
    | recoveredBlock158Value0 recoveredBlock158Value1 recoveredBlock158Value2 recoveredBlock158Value3 recoveredBlock158Value4 recoveredBlock158Value5 recoveredBlock158Value6 recoveredBlock158Value7 recoveredBlock158Value8 recoveredBlock158Value9 recoveredBlock158Value10 recoveredBlock158Value11 recoveredBlock158Value12 |
    recoveredBlock158Value0 := selectedWidgets.
    recoveredBlock158Value1 := (recoveredBlock158Value0) size.
    recoveredBlock158Value2 := (recoveredBlock158Value1) = (1).
    recoveredBlock158Value3 := (self) dataManager.
    recoveredBlock158Value4 := (recoveredBlock158Value3) isOnlineInDevices.
    recoveredBlock158Value5 := (recoveredBlock158Value4) not.
    recoveredBlock158Value6 := (self) dataManager.
    recoveredBlock158Value7 := (recoveredBlock158Value6) autoStartingAcquisitionMode.
    recoveredBlock158Value8 := (recoveredBlock158Value5) | (recoveredBlock158Value7).
    recoveredBlock158Value9 := (recoveredBlock158Value2) & (recoveredBlock158Value8).
    recoveredBlock158Value10 := (self) dataManager.
    recoveredBlock158Value11 := (recoveredBlock158Value10) canChangeChannelGroup.
    recoveredBlock158Value12 := (recoveredBlock158Value9) & (recoveredBlock158Value11).
    recoveredBlock158Value12
].
    (recoveredValue19) add: ('menuChangeChannelGroup') label: (recoveredValue22) enable: (recoveredValue23).
    recoveredValue24 := recoveredValue2.
    (recoveredValue24) addLine.
    recoveredValue25 := recoveredValue2.
    recoveredValue26 := MPInfoAbout.
    recoveredValue27 := Dots.
    recoveredValue28 := (recoveredValue26) , (recoveredValue27).
    recoveredValue29 := [
    | recoveredBlock208Value0 recoveredBlock208Value1 recoveredBlock208Value2 |
    recoveredBlock208Value0 := selectedWidgets.
    recoveredBlock208Value1 := (recoveredBlock208Value0) isEmpty.
    recoveredBlock208Value2 := (recoveredBlock208Value1) not.
    recoveredBlock208Value2
].
    (recoveredValue25) add: ('menuInfo') label: (recoveredValue28) enable: (recoveredValue29).
    recoveredValue30 := CwAccelerator.
    recoveredValue31 := ControlMask.
    recoveredValue32 := XKI.
    recoveredValue33 := (recoveredValue30) mask: (recoveredValue31) keysym: (recoveredValue32).
    recoveredValue34 := (recoveredValue2) setAcceleratorAt: ('menuInfo') to: (recoveredValue33) text: ('Ctrl+i').
    recoveredLocal1 := recoveredValue34.
    recoveredValue35 := recoveredLocal1.
    (self) addAttributeBufferMenu: (recoveredValue35).
    recoveredValue36 := recoveredLocal1.
    (self) addMoveSubwidgetMenu: (recoveredValue36).
    recoveredValue37 := recoveredLocal1.
    recoveredValue38 := recoveredLocal1.
    ^recoveredValue38
! !

"ASDBase.ic method 0x205897e4; bytecode file offset 0xe86134"
!RBBitMeasureDataWindow methodsFor: 'recovered'!
createOptionsMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CwMenu.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultMenuClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := MTExtras.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'menuChangeTitle'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := ChangeTitle.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := Dots.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := 'menuCopyData'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := MPCopyDataToWindow.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack5 := Dots.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 recoveredBlock44Value3 recoveredBlock44Value4 recoveredBlock44Value5 recoveredBlock44Value6 recoveredBlock44Value7 recoveredBlock44Value8 recoveredBlock44Value9 recoveredBlock44Value10 recoveredBlock44Value11 recoveredBlock44Value12 |
    recoveredBlock44Value0 := selectedWidgets.
    recoveredBlock44Value1 := (recoveredBlock44Value0) isEmpty.
    recoveredBlock44Value2 := (recoveredBlock44Value1) not.
    recoveredBlock44Value3 := (self) dataManager.
    recoveredBlock44Value4 := (recoveredBlock44Value3) isOnlineInDevices.
    recoveredBlock44Value5 := (recoveredBlock44Value4) not.
    recoveredBlock44Value6 := (self) dataManager.
    recoveredBlock44Value7 := (recoveredBlock44Value6) autoStartingAcquisitionMode.
    recoveredBlock44Value8 := (recoveredBlock44Value5) | (recoveredBlock44Value7).
    recoveredBlock44Value9 := (self) dataManager.
    recoveredBlock44Value10 := (recoveredBlock44Value9) canAddRemoveDataDuringAcquisition.
    recoveredBlock44Value11 := (recoveredBlock44Value8) | (recoveredBlock44Value10).
    recoveredBlock44Value12 := (recoveredBlock44Value2) & (recoveredBlock44Value11).
    recoveredBlock44Value12
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := 'menuMoveData'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack4 := MPMoveDataToWindow.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack5 := Dots.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock89Value0 recoveredBlock89Value1 recoveredBlock89Value2 recoveredBlock89Value3 recoveredBlock89Value4 recoveredBlock89Value5 recoveredBlock89Value6 recoveredBlock89Value7 recoveredBlock89Value8 recoveredBlock89Value9 recoveredBlock89Value10 recoveredBlock89Value11 recoveredBlock89Value12 |
    recoveredBlock89Value0 := selectedWidgets.
    recoveredBlock89Value1 := (recoveredBlock89Value0) isEmpty.
    recoveredBlock89Value2 := (recoveredBlock89Value1) not.
    recoveredBlock89Value3 := (self) dataManager.
    recoveredBlock89Value4 := (recoveredBlock89Value3) isOnlineInDevices.
    recoveredBlock89Value5 := (recoveredBlock89Value4) not.
    recoveredBlock89Value6 := (self) dataManager.
    recoveredBlock89Value7 := (recoveredBlock89Value6) autoStartingAcquisitionMode.
    recoveredBlock89Value8 := (recoveredBlock89Value5) | (recoveredBlock89Value7).
    recoveredBlock89Value9 := (self) dataManager.
    recoveredBlock89Value10 := (recoveredBlock89Value9) canAddRemoveDataDuringAcquisition.
    recoveredBlock89Value11 := (recoveredBlock89Value8) | (recoveredBlock89Value10).
    recoveredBlock89Value12 := (recoveredBlock89Value2) & (recoveredBlock89Value11).
    recoveredBlock89Value12
].
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := 'menuRemoveData'.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack4 := MPRemoveData.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock131Value0 recoveredBlock131Value1 recoveredBlock131Value2 recoveredBlock131Value3 recoveredBlock131Value4 recoveredBlock131Value5 recoveredBlock131Value6 recoveredBlock131Value7 recoveredBlock131Value8 recoveredBlock131Value9 recoveredBlock131Value10 recoveredBlock131Value11 recoveredBlock131Value12 |
    recoveredBlock131Value0 := selectedWidgets.
    recoveredBlock131Value1 := (recoveredBlock131Value0) isEmpty.
    recoveredBlock131Value2 := (recoveredBlock131Value1) not.
    recoveredBlock131Value3 := (self) dataManager.
    recoveredBlock131Value4 := (recoveredBlock131Value3) isOnlineInDevices.
    recoveredBlock131Value5 := (recoveredBlock131Value4) not.
    recoveredBlock131Value6 := (self) dataManager.
    recoveredBlock131Value7 := (recoveredBlock131Value6) autoStartingAcquisitionMode.
    recoveredBlock131Value8 := (recoveredBlock131Value5) | (recoveredBlock131Value7).
    recoveredBlock131Value9 := (self) dataManager.
    recoveredBlock131Value10 := (recoveredBlock131Value9) canAddRemoveDataDuringAcquisition.
    recoveredBlock131Value11 := (recoveredBlock131Value8) | (recoveredBlock131Value10).
    recoveredBlock131Value12 := (recoveredBlock131Value2) & (recoveredBlock131Value11).
    recoveredBlock131Value12
].
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack3 := 'menuChangeChannelGroup'.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack4 := MPChangeMeasureRaster.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack5 := Dots.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock180Value0 recoveredBlock180Value1 recoveredBlock180Value2 recoveredBlock180Value3 recoveredBlock180Value4 recoveredBlock180Value5 recoveredBlock180Value6 recoveredBlock180Value7 recoveredBlock180Value8 recoveredBlock180Value9 recoveredBlock180Value10 recoveredBlock180Value11 |
    recoveredBlock180Value0 := selectedWidgets.
    recoveredBlock180Value1 := (recoveredBlock180Value0) notEmpty.
    recoveredBlock180Value2 := (self) dataManager.
    recoveredBlock180Value3 := (recoveredBlock180Value2) isOnlineInDevices.
    recoveredBlock180Value4 := (recoveredBlock180Value3) not.
    recoveredBlock180Value5 := (self) dataManager.
    recoveredBlock180Value6 := (recoveredBlock180Value5) autoStartingAcquisitionMode.
    recoveredBlock180Value7 := (recoveredBlock180Value4) | (recoveredBlock180Value6).
    recoveredBlock180Value8 := (recoveredBlock180Value1) & (recoveredBlock180Value7).
    recoveredBlock180Value9 := (self) dataManager.
    recoveredBlock180Value10 := (recoveredBlock180Value9) canChangeChannelGroup.
    recoveredBlock180Value11 := (recoveredBlock180Value8) & (recoveredBlock180Value10).
    recoveredBlock180Value11
].
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack3 := 'menuInfo'.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack4 := MPInfoAbout.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack5 := Dots.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock227Value0 recoveredBlock227Value1 recoveredBlock227Value2 |
    recoveredBlock227Value0 := selectedWidgets.
    recoveredBlock227Value1 := (recoveredBlock227Value0) isEmpty.
    recoveredBlock227Value2 := (recoveredBlock227Value1) not.
    recoveredBlock227Value2
].
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack2 := 'menuInfo'.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack3 := CwAccelerator.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack4 := ControlMask.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack5 := XKI.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack3 := (recoveredStack3) mask: (recoveredStack4) keysym: (recoveredStack5).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack4 := 'Ctrl+i'.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := (recoveredStack1) setAcceleratorAt: (recoveredStack2) to: (recoveredStack3) text: (recoveredStack4).
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack0) addAttributeBufferMenu: (recoveredStack1).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            (recoveredStack0) addMoveSubwidgetMenu: (recoveredStack1).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205b1a50; bytecode file offset 0xeae3a8"
!RBBitMeasureDataWindow methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := CwTopLevelShell.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 recoveredBlock24Value4 recoveredBlock24Value5 recoveredBlock24Value6 recoveredBlock24Value7 recoveredBlock24Value8 recoveredBlock24Value9 |
    recoveredBlock24Value0 := recoveredBlock24Arg1.
    recoveredBlock24Value1 := recoveredBlock24Value0.
    (recoveredBlock24Value1) title: ('Ziffernanzeige').
    recoveredBlock24Value2 := recoveredBlock24Value0.
    recoveredBlock24Value3 := recoveredLocal6.
    recoveredBlock24Value4 := (30) * (recoveredBlock24Value3).
    recoveredBlock24Value5 := (recoveredBlock24Value4) rounded.
    (recoveredBlock24Value2) height: (recoveredBlock24Value5).
    recoveredBlock24Value6 := recoveredLocal7.
    recoveredBlock24Value7 := (250) * (recoveredBlock24Value6).
    recoveredBlock24Value8 := (recoveredBlock24Value7) rounded.
    recoveredBlock24Value9 := (recoveredBlock24Value0) width: (recoveredBlock24Value8).
    recoveredBlock24Value9
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) createApplicationShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := 'scrolledWindow'.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := [:recoveredBlock125Arg1 | 
    | recoveredBlock125Value0 recoveredBlock125Value1 recoveredBlock125Value2 recoveredBlock125Value3 recoveredBlock125Value4 recoveredBlock125Value5 recoveredBlock125Value6 recoveredBlock125Value7 recoveredBlock125Value8 recoveredBlock125Value9 recoveredBlock125Value10 recoveredBlock125Value11 recoveredBlock125Value12 recoveredBlock125Value13 recoveredBlock125Value14 recoveredBlock125Value15 |
    recoveredBlock125Value0 := recoveredBlock125Arg1.
    recoveredBlock125Value1 := recoveredBlock125Value0.
    (recoveredBlock125Value1) borderWidth: (0).
    recoveredBlock125Value2 := recoveredBlock125Value0.
    recoveredBlock125Value3 := XmAUTOMATIC.
    (recoveredBlock125Value2) scrollingPolicy: (recoveredBlock125Value3).
    recoveredBlock125Value4 := recoveredBlock125Value0.
    recoveredBlock125Value5 := XmCONSTANT.
    (recoveredBlock125Value4) visualPolicy: (recoveredBlock125Value5).
    recoveredBlock125Value6 := recoveredBlock125Value0.
    recoveredBlock125Value7 := XmASNEEDED.
    (recoveredBlock125Value6) scrollBarDisplayPolicy: (recoveredBlock125Value7).
    recoveredBlock125Value8 := recoveredBlock125Value0.
    recoveredBlock125Value9 := recoveredLocal6.
    recoveredBlock125Value10 := (28) * (recoveredBlock125Value9).
    recoveredBlock125Value11 := (recoveredBlock125Value10) rounded.
    (recoveredBlock125Value8) height: (recoveredBlock125Value11).
    recoveredBlock125Value12 := recoveredLocal7.
    recoveredBlock125Value13 := (250) * (recoveredBlock125Value12).
    recoveredBlock125Value14 := (recoveredBlock125Value13) rounded.
    recoveredBlock125Value15 := (recoveredBlock125Value0) width: (recoveredBlock125Value14).
    recoveredBlock125Value15
].
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack2 := 'scrolledWindow'.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack2 := 'aForm2'.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack3 := [:recoveredBlock199Arg1 | 
    | recoveredBlock199Value0 recoveredBlock199Value1 recoveredBlock199Value2 recoveredBlock199Value3 recoveredBlock199Value4 recoveredBlock199Value5 recoveredBlock199Value6 recoveredBlock199Value7 recoveredBlock199Value8 |
    recoveredBlock199Value0 := recoveredBlock199Arg1.
    recoveredBlock199Value1 := recoveredBlock199Value0.
    recoveredBlock199Value2 := recoveredLocal6.
    recoveredBlock199Value3 := (30) * (recoveredBlock199Value2).
    recoveredBlock199Value4 := (recoveredBlock199Value3) rounded.
    (recoveredBlock199Value1) height: (recoveredBlock199Value4).
    recoveredBlock199Value5 := recoveredLocal7.
    recoveredBlock199Value6 := (245) * (recoveredBlock199Value5).
    recoveredBlock199Value7 := (recoveredBlock199Value6) rounded.
    recoveredBlock199Value8 := (recoveredBlock199Value0) width: (recoveredBlock199Value7).
    recoveredBlock199Value8
].
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack2 := 'aForm2'.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack2 := [:recoveredBlock251Arg1 | 
    | recoveredBlock251Value0 recoveredBlock251Value1 recoveredBlock251Value2 |
    recoveredBlock251Value0 := recoveredBlock251Arg1.
    recoveredBlock251Value1 := recoveredLocal3.
    recoveredBlock251Value2 := (recoveredBlock251Value0) workWindow: (recoveredBlock251Value1).
    recoveredBlock251Value2
].
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack2 := [:block28116c44Arg1 | 
    | block28116c44Value0 block28116c44Value1 block28116c44Value2 block28116c44Value3 block28116c44Value4 block28116c44Value5 block28116c44Value6 block28116c44Value7 block28116c44Value8 |
    block28116c44Value0 := block28116c44Arg1.
    block28116c44Value1 := block28116c44Value0.
    block28116c44Value2 := XmATTACHFORM.
    (block28116c44Value1) bottomAttachment: (block28116c44Value2).
    block28116c44Value3 := block28116c44Value0.
    block28116c44Value4 := XmATTACHFORM.
    (block28116c44Value3) topAttachment: (block28116c44Value4).
    block28116c44Value5 := block28116c44Value0.
    block28116c44Value6 := XmATTACHFORM.
    (block28116c44Value5) leftAttachment: (block28116c44Value6).
    block28116c44Value7 := XmATTACHFORM.
    block28116c44Value8 := (block28116c44Value0) rightAttachment: (block28116c44Value7).
    block28116c44Value8
].
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

