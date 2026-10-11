"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004325c; bytecode file offset 0x9451f8"
!SGEditDataChannelBoolDialog methodsFor: 'recovered'!
widgetButtonRowColumn
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('aRowColumn1').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200444fc; bytecode file offset 0x9451f8"
!SGEditDataChannelBoolDialog methodsFor: 'recovered'!
widgetButtonFalse
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('buttonFalse').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200466dc; bytecode file offset 0x9451f8"
!SGEditDataChannelBoolDialog methodsFor: 'recovered'!
widgetLabelData
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('labelData').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004711c; bytecode file offset 0x9451f8"
!SGEditDataChannelBoolDialog methodsFor: 'recovered'!
widgetButtonTrue
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('buttonTrue').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200e1b9c; bytecode file offset 0x9de4fc"
!SGEditDataChannelBoolDialog methodsFor: 'recovered'!
updateWidgetsForModeMatrix
    | recoveredValue0 |
    recoveredValue0 := ('Muzaffar') == ('EHI_15158').
    (self) updateWidgetsForModeSignal.
    ^self
! !

"ASDBase.ic method 0x202ea808; bytecode file offset 0xbe70e8"
!SGEditDataChannelBoolDialog methodsFor: 'recovered'!
initTabbingGroup
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) widgetDataMode.
    (recoveredValue0) addTabGroup.
    recoveredValue1 := (self) widgetDataFrequence.
    (recoveredValue1) addTabGroup.
    recoveredValue2 := (self) widgetDataPhase.
    (recoveredValue2) addTabGroup.
    recoveredValue3 := (self) widgetButtonRowColumn.
    (recoveredValue3) addTabGroup.
    recoveredValue4 := (self) widgetDataTimeScale.
    (recoveredValue4) addTabGroup.
    recoveredValue5 := (self) widgetButtonTable.
    (recoveredValue5) addTabGroup.
    recoveredValue6 := (self) widgetDataStimulus.
    (recoveredValue6) addTabGroup.
    recoveredValue7 := (self) widgetDataOk.
    (recoveredValue7) addTabGroup.
    recoveredValue8 := (self) widgetDataApply.
    (recoveredValue8) addTabGroup.
    recoveredValue9 := (self) widgetDataCancel.
    (recoveredValue9) addTabGroup.
    ^self
! !

"ASDBase.ic method 0x203e9348; bytecode file offset 0xce5c94"
!SGEditDataChannelBoolDialog methodsFor: 'recovered'!
updateWidgetsForModeRandom
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := (self) widgetLabelData.
    (recoveredValue0) manageChild.
    recoveredValue1 := (self) widgetLabelFrequence.
    (recoveredValue1) manageChild.
    recoveredValue2 := (self) widgetLabelUnit.
    (recoveredValue2) manageChild.
    recoveredValue3 := (self) widgetLabelPhase.
    (recoveredValue3) manageChild.
    recoveredValue4 := (self) widgetLabelPhaseUnit.
    (recoveredValue4) manageChild.
    recoveredValue5 := (self) widgetButtonTrue.
    (recoveredValue5) manageChild.
    recoveredValue6 := (self) widgetButtonFalse.
    (recoveredValue6) manageChild.
    recoveredValue7 := (self) widgetDataFrequence.
    (recoveredValue7) manageChild.
    recoveredValue8 := (self) widgetDataPhase.
    (recoveredValue8) manageChild.
    recoveredValue9 := (self) widgetDataApply.
    (recoveredValue9) sensitive: (true).
    recoveredValue10 := (self) widgetDataFrequence.
    (recoveredValue10) sensitive: (false).
    recoveredValue11 := (self) widgetDataPhase.
    (recoveredValue11) sensitive: (false).
    recoveredValue12 := (self) widgetButtonTable.
    (recoveredValue12) unmanageChild.
    recoveredValue13 := (self) widgetLabelTimeScale.
    (recoveredValue13) unmanageChild.
    recoveredValue14 := (self) widgetDataTimeScale.
    (recoveredValue14) unmanageChild.
    recoveredValue15 := (self) widgetLabelStimulus.
    (recoveredValue15) unmanageChild.
    recoveredValue16 := (self) widgetDataStimulus.
    (recoveredValue16) unmanageChild.
    ^self
! !

"ASDBase.ic method 0x203e9398; bytecode file offset 0xce5c94"
!SGEditDataChannelBoolDialog methodsFor: 'recovered'!
updateWidgetsForModeConstant
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := (self) widgetLabelData.
    (recoveredValue0) manageChild.
    recoveredValue1 := (self) widgetLabelFrequence.
    (recoveredValue1) manageChild.
    recoveredValue2 := (self) widgetLabelUnit.
    (recoveredValue2) manageChild.
    recoveredValue3 := (self) widgetLabelPhase.
    (recoveredValue3) manageChild.
    recoveredValue4 := (self) widgetLabelPhaseUnit.
    (recoveredValue4) manageChild.
    recoveredValue5 := (self) widgetButtonTrue.
    (recoveredValue5) manageChild.
    recoveredValue6 := (self) widgetButtonFalse.
    (recoveredValue6) manageChild.
    recoveredValue7 := (self) widgetDataFrequence.
    (recoveredValue7) manageChild.
    recoveredValue8 := (self) widgetDataPhase.
    (recoveredValue8) manageChild.
    recoveredValue9 := (self) widgetDataApply.
    (recoveredValue9) sensitive: (true).
    recoveredValue10 := (self) widgetDataFrequence.
    (recoveredValue10) sensitive: (false).
    recoveredValue11 := (self) widgetDataPhase.
    (recoveredValue11) sensitive: (false).
    recoveredValue12 := (self) widgetButtonTable.
    (recoveredValue12) unmanageChild.
    recoveredValue13 := (self) widgetLabelTimeScale.
    (recoveredValue13) unmanageChild.
    recoveredValue14 := (self) widgetDataTimeScale.
    (recoveredValue14) unmanageChild.
    recoveredValue15 := (self) widgetLabelStimulus.
    (recoveredValue15) unmanageChild.
    recoveredValue16 := (self) widgetDataStimulus.
    (recoveredValue16) unmanageChild.
    ^self
! !

"ASDBase.ic method 0x203e9444; bytecode file offset 0xce5d40"
!SGEditDataChannelBoolDialog methodsFor: 'recovered'!
updateWidgetsForModeStep
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := (self) widgetLabelData.
    (recoveredValue0) manageChild.
    recoveredValue1 := (self) widgetLabelFrequence.
    (recoveredValue1) manageChild.
    recoveredValue2 := (self) widgetLabelUnit.
    (recoveredValue2) manageChild.
    recoveredValue3 := (self) widgetLabelPhase.
    (recoveredValue3) manageChild.
    recoveredValue4 := (self) widgetLabelPhaseUnit.
    (recoveredValue4) manageChild.
    recoveredValue5 := (self) widgetButtonTrue.
    (recoveredValue5) manageChild.
    recoveredValue6 := (self) widgetButtonFalse.
    (recoveredValue6) manageChild.
    recoveredValue7 := (self) widgetDataFrequence.
    (recoveredValue7) manageChild.
    recoveredValue8 := (self) widgetDataPhase.
    (recoveredValue8) manageChild.
    recoveredValue9 := (self) widgetDataApply.
    (recoveredValue9) sensitive: (true).
    recoveredValue10 := (self) widgetDataFrequence.
    (recoveredValue10) sensitive: (false).
    recoveredValue11 := (self) widgetDataPhase.
    (recoveredValue11) sensitive: (true).
    recoveredValue12 := (self) widgetButtonTable.
    (recoveredValue12) unmanageChild.
    recoveredValue13 := (self) widgetLabelTimeScale.
    (recoveredValue13) unmanageChild.
    recoveredValue14 := (self) widgetDataTimeScale.
    (recoveredValue14) unmanageChild.
    recoveredValue15 := (self) widgetLabelStimulus.
    (recoveredValue15) unmanageChild.
    recoveredValue16 := (self) widgetDataStimulus.
    (recoveredValue16) unmanageChild.
    ^self
! !

"ASDBase.ic method 0x203e94f0; bytecode file offset 0xce5dec"
!SGEditDataChannelBoolDialog methodsFor: 'recovered'!
updateWidgetsForModeOthers
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := (self) widgetLabelData.
    (recoveredValue0) manageChild.
    recoveredValue1 := (self) widgetLabelFrequence.
    (recoveredValue1) manageChild.
    recoveredValue2 := (self) widgetLabelUnit.
    (recoveredValue2) manageChild.
    recoveredValue3 := (self) widgetLabelPhase.
    (recoveredValue3) manageChild.
    recoveredValue4 := (self) widgetLabelPhaseUnit.
    (recoveredValue4) manageChild.
    recoveredValue5 := (self) widgetButtonTrue.
    (recoveredValue5) manageChild.
    recoveredValue6 := (self) widgetButtonFalse.
    (recoveredValue6) manageChild.
    recoveredValue7 := (self) widgetDataFrequence.
    (recoveredValue7) manageChild.
    recoveredValue8 := (self) widgetDataPhase.
    (recoveredValue8) manageChild.
    recoveredValue9 := (self) widgetDataApply.
    (recoveredValue9) sensitive: (true).
    recoveredValue10 := (self) widgetDataFrequence.
    (recoveredValue10) sensitive: (true).
    recoveredValue11 := (self) widgetDataPhase.
    (recoveredValue11) sensitive: (true).
    recoveredValue12 := (self) widgetButtonTable.
    (recoveredValue12) unmanageChild.
    recoveredValue13 := (self) widgetLabelTimeScale.
    (recoveredValue13) unmanageChild.
    recoveredValue14 := (self) widgetDataTimeScale.
    (recoveredValue14) unmanageChild.
    recoveredValue15 := (self) widgetLabelStimulus.
    (recoveredValue15) unmanageChild.
    recoveredValue16 := (self) widgetDataStimulus.
    (recoveredValue16) unmanageChild.
    ^self
! !

"ASDBase.ic method 0x2041db04; bytecode file offset 0xd1a42c"
!SGEditDataChannelBoolDialog methodsFor: 'recovered'!
createTable
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 |
    recoveredValue0 := SGOneDCharTable.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredValue2 := (recoveredValue1) createDataElement.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := RBEnumeration.
    recoveredValue5 := (recoveredValue4) createDefault.
    recoveredValue6 := Array.
    recoveredValue7 := (recoveredValue6) with: ('Constant') with: ('Rounded') with: ('Linear').
    recoveredValue8 := (recoveredValue5) values: (recoveredValue7).
    recoveredValue9 := (recoveredValue8) createDataElement.
    recoveredValue10 := recoveredValue9.
    (recoveredValue10) setPhysValue: ('Constant').
    (recoveredValue3) interpolation: (recoveredValue9).
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (recoveredValue11) xDistribution.
    (recoveredValue12) name: ('Sim-Time').
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := (recoveredValue13) xDistribution.
    (recoveredValue14) unit: ('s').
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := (recoveredValue15) xDistribution.
    (recoveredValue16) maxSize: (5).
    recoveredValue17 := recoveredLocal1.
    recoveredValue18 := RBDataVector.
    recoveredValue19 := SGBoolean.
    recoveredValue20 := (recoveredValue19) createDefault.
    recoveredValue21 := (recoveredValue20) defaultImplType.
    recoveredValue22 := (recoveredValue18) createForType: (recoveredValue21).
    (recoveredValue17) values: (recoveredValue22).
    recoveredValue23 := recoveredLocal1.
    recoveredValue24 := (recoveredValue23) values.
    recoveredValue25 := channels.
    recoveredValue26 := (recoveredValue25) first.
    recoveredValue27 := (recoveredValue26) key.
    (recoveredValue24) name: (recoveredValue27).
    recoveredValue28 := recoveredLocal1.
    recoveredValue29 := (recoveredValue28) values.
    recoveredValue30 := (recoveredValue29) description.
    (recoveredValue30) type: ('KL').
    recoveredValue31 := recoveredLocal1.
    recoveredValue32 := (recoveredValue31) values.
    (recoveredValue32) maxSize: (5).
    recoveredValue33 := recoveredLocal1.
    (recoveredValue33) dim: (3).
    recoveredValue34 := recoveredLocal1.
    ^recoveredValue34
! !

"ASDBase.ic method 0x20455298; bytecode file offset 0xd51bb0"
!SGEditDataChannelBoolDialog methodsFor: 'recovered'!
updateWidgetsForModeTable
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataApply.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetLabelData.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetLabelFrequence.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetLabelUnit.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetLabelPhase.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetLabelPhaseUnit.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetButtonTrue.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetButtonFalse.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataFrequence.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataPhase.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetLabelStimulus.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataStimulus.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetButtonTable.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetLabelTimeScale.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataTimeScale.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := channels.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) table.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataTimeScale.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) description.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredPC := 113.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataTimeScale.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := #[0 0 0 0 0 0 240 63].
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204d32f4; bytecode file offset 0xdcfc08"
!SGEditDataChannelBoolDialog methodsFor: 'recovered'!
dataApplyActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataMode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataFrequence.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) asFloat.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetButtonTrue.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) getState.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataPhase.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) asFloat.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataStimulus.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := #[0 0 0 0 0 0 0 0].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) abs.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := #[0 0 0 0 0 0 0 0].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) abs.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := channels.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := [:recoveredBlock78Arg1 | 
    | recoveredBlock78Stack0 recoveredBlock78Stack1 recoveredBlock78Stack2 recoveredBlock78Stack3 recoveredBlock78PC recoveredBlock78Step recoveredBlock78Done recoveredBlock78Result |
    recoveredBlock78Stack0 := self.
    recoveredBlock78PC := 84.
    recoveredBlock78Done := false.
    [recoveredBlock78Done not] whileTrue: [
        recoveredBlock78Step := recoveredBlock78PC.
        recoveredBlock78Step = 84 ifTrue: [
            recoveredBlock78Stack1 := nil.
            recoveredBlock78PC := 85.
        ].
        recoveredBlock78Step = 85 ifTrue: [
            recoveredBlock78Stack2 := recoveredBlock78Arg1.
            recoveredBlock78PC := 86.
        ].
        recoveredBlock78Step = 86 ifTrue: [
            recoveredBlock78Stack2 := (recoveredBlock78Stack2) value.
            recoveredBlock78PC := 87.
        ].
        recoveredBlock78Step = 87 ifTrue: [
            recoveredBlock78Stack2 := (recoveredBlock78Stack2) output.
            recoveredBlock78PC := 89.
        ].
        recoveredBlock78Step = 89 ifTrue: [
            recoveredBlock78Stack2 := (recoveredBlock78Stack2) isRBDataBoolean.
            recoveredBlock78PC := 91.
        ].
        recoveredBlock78Step = 91 ifTrue: [
            (recoveredBlock78Stack2) ifTrue: [recoveredBlock78PC := 94] ifFalse: [recoveredBlock78PC := 138].
        ].
        recoveredBlock78Step = 94 ifTrue: [
            recoveredBlock78PC := 95.
        ].
        recoveredBlock78Step = 95 ifTrue: [
            recoveredBlock78Stack1 := recoveredBlock78Arg1.
            recoveredBlock78PC := 96.
        ].
        recoveredBlock78Step = 96 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) value.
            recoveredBlock78PC := 97.
        ].
        recoveredBlock78Step = 97 ifTrue: [
            recoveredBlock78Stack2 := recoveredLocal5.
            recoveredBlock78PC := 100.
        ].
        recoveredBlock78Step = 100 ifTrue: [
            (recoveredBlock78Stack1) mode: (recoveredBlock78Stack2).
            recoveredBlock78PC := 102.
        ].
        recoveredBlock78Step = 102 ifTrue: [
            recoveredBlock78Stack1 := recoveredBlock78Arg1.
            recoveredBlock78PC := 103.
        ].
        recoveredBlock78Step = 103 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) value.
            recoveredBlock78PC := 104.
        ].
        recoveredBlock78Step = 104 ifTrue: [
            recoveredBlock78Stack2 := recoveredLocal4.
            recoveredBlock78PC := 107.
        ].
        recoveredBlock78Step = 107 ifTrue: [
            (recoveredBlock78Stack1) offset: (recoveredBlock78Stack2).
            recoveredBlock78PC := 109.
        ].
        recoveredBlock78Step = 109 ifTrue: [
            recoveredBlock78Stack1 := recoveredBlock78Arg1.
            recoveredBlock78PC := 110.
        ].
        recoveredBlock78Step = 110 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) value.
            recoveredBlock78PC := 111.
        ].
        recoveredBlock78Step = 111 ifTrue: [
            recoveredBlock78Stack2 := recoveredLocal4.
            recoveredBlock78PC := 114.
        ].
        recoveredBlock78Step = 114 ifTrue: [
            recoveredBlock78Stack2 := (recoveredBlock78Stack2) not.
            recoveredBlock78PC := 115.
        ].
        recoveredBlock78Step = 115 ifTrue: [
            (recoveredBlock78Stack1) amplitude: (recoveredBlock78Stack2).
            recoveredBlock78PC := 117.
        ].
        recoveredBlock78Step = 117 ifTrue: [
            recoveredBlock78Stack1 := recoveredBlock78Arg1.
            recoveredBlock78PC := 118.
        ].
        recoveredBlock78Step = 118 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) value.
            recoveredBlock78PC := 119.
        ].
        recoveredBlock78Step = 119 ifTrue: [
            recoveredBlock78Stack2 := recoveredLocal3.
            recoveredBlock78PC := 122.
        ].
        recoveredBlock78Step = 122 ifTrue: [
            (recoveredBlock78Stack1) frequence: (recoveredBlock78Stack2).
            recoveredBlock78PC := 124.
        ].
        recoveredBlock78Step = 124 ifTrue: [
            recoveredBlock78Stack1 := recoveredBlock78Arg1.
            recoveredBlock78PC := 125.
        ].
        recoveredBlock78Step = 125 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) value.
            recoveredBlock78PC := 126.
        ].
        recoveredBlock78Step = 126 ifTrue: [
            recoveredBlock78Stack2 := recoveredLocal2.
            recoveredBlock78PC := 129.
        ].
        recoveredBlock78Step = 129 ifTrue: [
            (recoveredBlock78Stack1) phase: (recoveredBlock78Stack2).
            recoveredBlock78PC := 131.
        ].
        recoveredBlock78Step = 131 ifTrue: [
            recoveredBlock78Stack1 := recoveredBlock78Arg1.
            recoveredBlock78PC := 132.
        ].
        recoveredBlock78Step = 132 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) value.
            recoveredBlock78PC := 133.
        ].
        recoveredBlock78Step = 133 ifTrue: [
            recoveredBlock78Stack2 := recoveredLocal1.
            recoveredBlock78PC := 136.
        ].
        recoveredBlock78Step = 136 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) matrixID: (recoveredBlock78Stack2).
            recoveredBlock78PC := 138.
        ].
        recoveredBlock78Step = 138 ifTrue: [
            recoveredBlock78Result := recoveredBlock78Stack1.
            recoveredBlock78Done := true.
        ].
    ].
    recoveredBlock78Result
].
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := 'Shikhar'.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := 'EHI65932'.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := channels.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0) updateSimulationData: (recoveredStack1).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204db544; bytecode file offset 0xdd7e74"
!SGEditDataChannelBoolDialog methodsFor: 'recovered'!
updateWidgetsForModeSignal
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Muzaffar'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'EHI_15158'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataApply.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetLabelData.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetLabelFrequence.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetLabelUnit.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetLabelPhase.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetLabelPhaseUnit.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetButtonTrue.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetButtonFalse.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataFrequence.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataPhase.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetButtonTable.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetLabelTimeScale.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataTimeScale.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetLabelStimulus.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataStimulus.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := matrix.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataStimulus.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) getStimulusNames.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataStimulus.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := channels.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) matrixID.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := 'Muzaffar'.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := 'EHI_67306'.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := channels.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) matrixID.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetDataStimulus.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredPC := 158.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := 'Muzaffar'.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := 'EHI_15158'.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataStimulus.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := #('No Signal Data').
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataStimulus.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := #('No Signal Data').
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2056bbc0; bytecode file offset 0xe684e8"
!SGEditDataChannelBoolDialog methodsFor: 'recovered'!
updateWidgetsForMode: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := channels.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) offset.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetButtonTrue.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) setState: (recoveredStack2) notify: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetButtonFalse.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) setState: (recoveredStack2) notify: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) frequence.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) phase.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataFrequence.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataPhase.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock73Stack0 recoveredBlock73Stack1 recoveredBlock73Stack2 recoveredBlock73Stack3 recoveredBlock73PC recoveredBlock73Step recoveredBlock73Done recoveredBlock73Result |
    recoveredBlock73Stack0 := self.
    recoveredBlock73PC := 80.
    recoveredBlock73Done := false.
    [recoveredBlock73Done not] whileTrue: [
        recoveredBlock73Step := recoveredBlock73PC.
        recoveredBlock73Step = 80 ifTrue: [
            recoveredBlock73Stack1 := recoveredArg1.
            recoveredBlock73PC := 83.
        ].
        recoveredBlock73Step = 83 ifTrue: [
            recoveredBlock73Stack2 := 'constant'.
            recoveredBlock73PC := 85.
        ].
        recoveredBlock73Step = 85 ifTrue: [
            recoveredBlock73Stack1 := (recoveredBlock73Stack1) = (recoveredBlock73Stack2).
            recoveredBlock73PC := 86.
        ].
        recoveredBlock73Step = 86 ifTrue: [
            (recoveredBlock73Stack1) ifTrue: [recoveredBlock73PC := 90] ifFalse: [recoveredBlock73PC := 110].
        ].
        recoveredBlock73Step = 90 ifTrue: [
            recoveredBlock73Stack1 := recoveredLocal3.
            recoveredBlock73PC := 93.
        ].
        recoveredBlock73Step = 93 ifTrue: [
            recoveredBlock73Stack2 := nil.
            recoveredBlock73PC := 94.
        ].
        recoveredBlock73Step = 94 ifTrue: [
            (recoveredBlock73Stack1) table: (recoveredBlock73Stack2).
            recoveredBlock73PC := 96.
        ].
        recoveredBlock73Step = 96 ifTrue: [
            recoveredBlock73Stack1 := recoveredLocal3.
            recoveredBlock73PC := 99.
        ].
        recoveredBlock73Step = 99 ifTrue: [
            recoveredBlock73Stack2 := ''.
            recoveredBlock73PC := 101.
        ].
        recoveredBlock73Step = 101 ifTrue: [
            (recoveredBlock73Stack1) matrixID: (recoveredBlock73Stack2).
            recoveredBlock73PC := 103.
        ].
        recoveredBlock73Step = 103 ifTrue: [
            recoveredBlock73Stack1 := self.
            recoveredBlock73PC := 104.
        ].
        recoveredBlock73Step = 104 ifTrue: [
            recoveredBlock73Stack1 := (recoveredBlock73Stack1) updateWidgetsForModeConstant.
            recoveredBlock73PC := 106.
        ].
        recoveredBlock73Step = 106 ifTrue: [
            recoveredBlock73PC := 238.
        ].
        recoveredBlock73Step = 110 ifTrue: [
            recoveredBlock73Stack1 := recoveredArg1.
            recoveredBlock73PC := 113.
        ].
        recoveredBlock73Step = 113 ifTrue: [
            recoveredBlock73Stack2 := 'table'.
            recoveredBlock73PC := 115.
        ].
        recoveredBlock73Step = 115 ifTrue: [
            recoveredBlock73Stack1 := (recoveredBlock73Stack1) = (recoveredBlock73Stack2).
            recoveredBlock73PC := 116.
        ].
        recoveredBlock73Step = 116 ifTrue: [
            (recoveredBlock73Stack1) ifTrue: [recoveredBlock73PC := 120] ifFalse: [recoveredBlock73PC := 134].
        ].
        recoveredBlock73Step = 120 ifTrue: [
            recoveredBlock73Stack1 := recoveredLocal3.
            recoveredBlock73PC := 123.
        ].
        recoveredBlock73Step = 123 ifTrue: [
            recoveredBlock73Stack2 := ''.
            recoveredBlock73PC := 125.
        ].
        recoveredBlock73Step = 125 ifTrue: [
            (recoveredBlock73Stack1) matrixID: (recoveredBlock73Stack2).
            recoveredBlock73PC := 127.
        ].
        recoveredBlock73Step = 127 ifTrue: [
            recoveredBlock73Stack1 := self.
            recoveredBlock73PC := 128.
        ].
        recoveredBlock73Step = 128 ifTrue: [
            recoveredBlock73Stack1 := (recoveredBlock73Stack1) updateWidgetsForModeTable.
            recoveredBlock73PC := 130.
        ].
        recoveredBlock73Step = 130 ifTrue: [
            recoveredBlock73PC := 238.
        ].
        recoveredBlock73Step = 134 ifTrue: [
            recoveredBlock73Stack1 := 'Muzaffar'.
            recoveredBlock73PC := 136.
        ].
        recoveredBlock73Step = 136 ifTrue: [
            recoveredBlock73Stack2 := 'EHI_15158'.
            recoveredBlock73PC := 138.
        ].
        recoveredBlock73Step = 138 ifTrue: [
            recoveredBlock73Stack1 := (recoveredBlock73Stack1) == (recoveredBlock73Stack2).
            recoveredBlock73PC := 139.
        ].
        recoveredBlock73Step = 139 ifTrue: [
            recoveredBlock73PC := 140.
        ].
        recoveredBlock73Step = 140 ifTrue: [
            recoveredBlock73Stack1 := recoveredArg1.
            recoveredBlock73PC := 143.
        ].
        recoveredBlock73Step = 143 ifTrue: [
            recoveredBlock73Stack2 := 'signal'.
            recoveredBlock73PC := 145.
        ].
        recoveredBlock73Step = 145 ifTrue: [
            recoveredBlock73Stack1 := (recoveredBlock73Stack1) = (recoveredBlock73Stack2).
            recoveredBlock73PC := 146.
        ].
        recoveredBlock73Step = 146 ifTrue: [
            (recoveredBlock73Stack1) ifTrue: [recoveredBlock73PC := 150] ifFalse: [recoveredBlock73PC := 162].
        ].
        recoveredBlock73Step = 150 ifTrue: [
            recoveredBlock73Stack1 := recoveredLocal3.
            recoveredBlock73PC := 153.
        ].
        recoveredBlock73Step = 153 ifTrue: [
            recoveredBlock73Stack2 := nil.
            recoveredBlock73PC := 154.
        ].
        recoveredBlock73Step = 154 ifTrue: [
            (recoveredBlock73Stack1) table: (recoveredBlock73Stack2).
            recoveredBlock73PC := 156.
        ].
        recoveredBlock73Step = 156 ifTrue: [
            recoveredBlock73Stack1 := self.
            recoveredBlock73PC := 157.
        ].
        recoveredBlock73Step = 157 ifTrue: [
            recoveredBlock73Stack1 := (recoveredBlock73Stack1) updateWidgetsForModeSignal.
            recoveredBlock73PC := 159.
        ].
        recoveredBlock73Step = 159 ifTrue: [
            recoveredBlock73PC := 238.
        ].
        recoveredBlock73Step = 162 ifTrue: [
            recoveredBlock73Stack1 := recoveredArg1.
            recoveredBlock73PC := 165.
        ].
        recoveredBlock73Step = 165 ifTrue: [
            recoveredBlock73Stack2 := 'random'.
            recoveredBlock73PC := 167.
        ].
        recoveredBlock73Step = 167 ifTrue: [
            recoveredBlock73Stack1 := (recoveredBlock73Stack1) = (recoveredBlock73Stack2).
            recoveredBlock73PC := 168.
        ].
        recoveredBlock73Step = 168 ifTrue: [
            (recoveredBlock73Stack1) ifTrue: [recoveredBlock73PC := 172] ifFalse: [recoveredBlock73PC := 192].
        ].
        recoveredBlock73Step = 172 ifTrue: [
            recoveredBlock73Stack1 := recoveredLocal3.
            recoveredBlock73PC := 175.
        ].
        recoveredBlock73Step = 175 ifTrue: [
            recoveredBlock73Stack2 := nil.
            recoveredBlock73PC := 176.
        ].
        recoveredBlock73Step = 176 ifTrue: [
            (recoveredBlock73Stack1) table: (recoveredBlock73Stack2).
            recoveredBlock73PC := 178.
        ].
        recoveredBlock73Step = 178 ifTrue: [
            recoveredBlock73Stack1 := recoveredLocal3.
            recoveredBlock73PC := 181.
        ].
        recoveredBlock73Step = 181 ifTrue: [
            recoveredBlock73Stack2 := ''.
            recoveredBlock73PC := 183.
        ].
        recoveredBlock73Step = 183 ifTrue: [
            (recoveredBlock73Stack1) matrixID: (recoveredBlock73Stack2).
            recoveredBlock73PC := 185.
        ].
        recoveredBlock73Step = 185 ifTrue: [
            recoveredBlock73Stack1 := self.
            recoveredBlock73PC := 186.
        ].
        recoveredBlock73Step = 186 ifTrue: [
            recoveredBlock73Stack1 := (recoveredBlock73Stack1) updateWidgetsForModeRandom.
            recoveredBlock73PC := 188.
        ].
        recoveredBlock73Step = 188 ifTrue: [
            recoveredBlock73PC := 238.
        ].
        recoveredBlock73Step = 192 ifTrue: [
            recoveredBlock73Stack1 := recoveredArg1.
            recoveredBlock73PC := 195.
        ].
        recoveredBlock73Step = 195 ifTrue: [
            recoveredBlock73Stack2 := 'step'.
            recoveredBlock73PC := 197.
        ].
        recoveredBlock73Step = 197 ifTrue: [
            recoveredBlock73Stack1 := (recoveredBlock73Stack1) = (recoveredBlock73Stack2).
            recoveredBlock73PC := 198.
        ].
        recoveredBlock73Step = 198 ifTrue: [
            (recoveredBlock73Stack1) ifTrue: [recoveredBlock73PC := 202] ifFalse: [recoveredBlock73PC := 222].
        ].
        recoveredBlock73Step = 202 ifTrue: [
            recoveredBlock73Stack1 := recoveredLocal3.
            recoveredBlock73PC := 205.
        ].
        recoveredBlock73Step = 205 ifTrue: [
            recoveredBlock73Stack2 := nil.
            recoveredBlock73PC := 206.
        ].
        recoveredBlock73Step = 206 ifTrue: [
            (recoveredBlock73Stack1) table: (recoveredBlock73Stack2).
            recoveredBlock73PC := 208.
        ].
        recoveredBlock73Step = 208 ifTrue: [
            recoveredBlock73Stack1 := recoveredLocal3.
            recoveredBlock73PC := 211.
        ].
        recoveredBlock73Step = 211 ifTrue: [
            recoveredBlock73Stack2 := ''.
            recoveredBlock73PC := 213.
        ].
        recoveredBlock73Step = 213 ifTrue: [
            (recoveredBlock73Stack1) matrixID: (recoveredBlock73Stack2).
            recoveredBlock73PC := 215.
        ].
        recoveredBlock73Step = 215 ifTrue: [
            recoveredBlock73Stack1 := self.
            recoveredBlock73PC := 216.
        ].
        recoveredBlock73Step = 216 ifTrue: [
            recoveredBlock73Stack1 := (recoveredBlock73Stack1) updateWidgetsForModeStep.
            recoveredBlock73PC := 218.
        ].
        recoveredBlock73Step = 218 ifTrue: [
            recoveredBlock73PC := 238.
        ].
        recoveredBlock73Step = 222 ifTrue: [
            recoveredBlock73Stack1 := recoveredLocal3.
            recoveredBlock73PC := 225.
        ].
        recoveredBlock73Step = 225 ifTrue: [
            recoveredBlock73Stack2 := nil.
            recoveredBlock73PC := 226.
        ].
        recoveredBlock73Step = 226 ifTrue: [
            (recoveredBlock73Stack1) table: (recoveredBlock73Stack2).
            recoveredBlock73PC := 228.
        ].
        recoveredBlock73Step = 228 ifTrue: [
            recoveredBlock73Stack1 := recoveredLocal3.
            recoveredBlock73PC := 231.
        ].
        recoveredBlock73Step = 231 ifTrue: [
            recoveredBlock73Stack2 := ''.
            recoveredBlock73PC := 233.
        ].
        recoveredBlock73Step = 233 ifTrue: [
            (recoveredBlock73Stack1) matrixID: (recoveredBlock73Stack2).
            recoveredBlock73PC := 235.
        ].
        recoveredBlock73Step = 235 ifTrue: [
            recoveredBlock73Stack1 := self.
            recoveredBlock73PC := 236.
        ].
        recoveredBlock73Step = 236 ifTrue: [
            recoveredBlock73Stack1 := (recoveredBlock73Stack1) updateWidgetsForModeOthers.
            recoveredBlock73PC := 238.
        ].
        recoveredBlock73Step = 238 ifTrue: [
            recoveredBlock73Result := recoveredBlock73Stack1.
            recoveredBlock73Done := true.
        ].
    ].
    recoveredBlock73Result
].
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            (recoveredStack0) execShortOperation: (recoveredStack1).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206aa85c; bytecode file offset 0xfa7308"
!SGEditDataChannelBoolDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredLocal19 recoveredLocal20 recoveredLocal21 recoveredLocal22 recoveredLocal23 recoveredLocal24 recoveredLocal25 recoveredLocal26 recoveredLocal27 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal27 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal26 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal25 := recoveredStack1.
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
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 recoveredBlock25Value5 recoveredBlock25Value6 recoveredBlock25Value7 recoveredBlock25Value8 recoveredBlock25Value9 recoveredBlock25Value10 recoveredBlock25Value11 recoveredBlock25Value12 recoveredBlock25Value13 recoveredBlock25Value14 recoveredBlock25Value15 recoveredBlock25Value16 recoveredBlock25Value17 recoveredBlock25Value18 recoveredBlock25Value19 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredBlock25Value1 := recoveredBlock25Value0.
    recoveredBlock25Value2 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (recoveredBlock25Value1) mwmInputMode: (recoveredBlock25Value2).
    recoveredBlock25Value3 := recoveredBlock25Value0.
    recoveredBlock25Value4 := MWMDECORALL.
    recoveredBlock25Value5 := MWMDECORRESIZEH.
    recoveredBlock25Value6 := (recoveredBlock25Value4) | (recoveredBlock25Value5).
    recoveredBlock25Value7 := MWMDECORMINIMIZE.
    recoveredBlock25Value8 := (recoveredBlock25Value6) | (recoveredBlock25Value7).
    recoveredBlock25Value9 := MWMDECORMAXIMIZE.
    recoveredBlock25Value10 := (recoveredBlock25Value8) | (recoveredBlock25Value9).
    (recoveredBlock25Value3) mwmDecorations: (recoveredBlock25Value10).
    recoveredBlock25Value11 := recoveredBlock25Value0.
    (recoveredBlock25Value11) title: ('DataGenerator for:').
    recoveredBlock25Value12 := recoveredBlock25Value0.
    recoveredBlock25Value13 := recoveredLocal25.
    recoveredBlock25Value14 := (150) * (recoveredBlock25Value13).
    recoveredBlock25Value15 := (recoveredBlock25Value14) rounded.
    (recoveredBlock25Value12) height: (recoveredBlock25Value15).
    recoveredBlock25Value16 := recoveredLocal26.
    recoveredBlock25Value17 := (320) * (recoveredBlock25Value16).
    recoveredBlock25Value18 := (recoveredBlock25Value17) rounded.
    recoveredBlock25Value19 := (recoveredBlock25Value0) width: (recoveredBlock25Value18).
    recoveredBlock25Value19
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal24 := recoveredStack1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := recoveredLocal24.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal24.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal23 := recoveredStack1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := recoveredLocal23.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredLocal22 := recoveredStack1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := recoveredLocal22.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := 'dataOk'.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack3 := [:recoveredBlock149Arg1 | 
    | recoveredBlock149Value0 recoveredBlock149Value1 recoveredBlock149Value2 recoveredBlock149Value3 recoveredBlock149Value4 recoveredBlock149Value5 recoveredBlock149Value6 recoveredBlock149Value7 recoveredBlock149Value8 recoveredBlock149Value9 recoveredBlock149Value10 recoveredBlock149Value11 recoveredBlock149Value12 recoveredBlock149Value13 recoveredBlock149Value14 recoveredBlock149Value15 recoveredBlock149Value16 recoveredBlock149Value17 |
    recoveredBlock149Value0 := recoveredBlock149Arg1.
    recoveredBlock149Value1 := recoveredBlock149Value0.
    recoveredBlock149Value2 := recoveredLocal26.
    recoveredBlock149Value3 := (240) * (recoveredBlock149Value2).
    recoveredBlock149Value4 := (recoveredBlock149Value3) rounded.
    (recoveredBlock149Value1) x: (recoveredBlock149Value4).
    recoveredBlock149Value5 := recoveredBlock149Value0.
    (recoveredBlock149Value5) labelString: ('OK').
    recoveredBlock149Value6 := recoveredBlock149Value0.
    recoveredBlock149Value7 := recoveredLocal25.
    recoveredBlock149Value8 := (10) * (recoveredBlock149Value7).
    recoveredBlock149Value9 := (recoveredBlock149Value8) rounded.
    (recoveredBlock149Value6) y: (recoveredBlock149Value9).
    recoveredBlock149Value10 := recoveredBlock149Value0.
    recoveredBlock149Value11 := recoveredLocal25.
    recoveredBlock149Value12 := (25) * (recoveredBlock149Value11).
    recoveredBlock149Value13 := (recoveredBlock149Value12) rounded.
    (recoveredBlock149Value10) height: (recoveredBlock149Value13).
    recoveredBlock149Value14 := recoveredLocal26.
    recoveredBlock149Value15 := (70) * (recoveredBlock149Value14).
    recoveredBlock149Value16 := (recoveredBlock149Value15) rounded.
    recoveredBlock149Value17 := (recoveredBlock149Value0) width: (recoveredBlock149Value16).
    recoveredBlock149Value17
].
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredLocal21 := recoveredStack1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := 'dataOk'.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack3 := recoveredLocal21.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack3 := [:recoveredBlock231Arg1 | 
    | recoveredBlock231Value0 recoveredBlock231Value1 recoveredBlock231Value2 recoveredBlock231Value3 recoveredBlock231Value4 recoveredBlock231Value5 recoveredBlock231Value6 recoveredBlock231Value7 recoveredBlock231Value8 recoveredBlock231Value9 recoveredBlock231Value10 recoveredBlock231Value11 recoveredBlock231Value12 recoveredBlock231Value13 recoveredBlock231Value14 recoveredBlock231Value15 recoveredBlock231Value16 recoveredBlock231Value17 recoveredBlock231Value18 |
    recoveredBlock231Value0 := recoveredBlock231Arg1.
    recoveredBlock231Value1 := recoveredBlock231Value0.
    recoveredBlock231Value2 := recoveredLocal26.
    recoveredBlock231Value3 := (225) * (recoveredBlock231Value2).
    recoveredBlock231Value4 := (recoveredBlock231Value3) rounded.
    (recoveredBlock231Value1) x: (recoveredBlock231Value4).
    recoveredBlock231Value5 := recoveredBlock231Value0.
    recoveredBlock231Value6 := XmVERTICAL.
    (recoveredBlock231Value5) orientation: (recoveredBlock231Value6).
    recoveredBlock231Value7 := recoveredBlock231Value0.
    recoveredBlock231Value8 := recoveredLocal25.
    recoveredBlock231Value9 := (5) * (recoveredBlock231Value8).
    recoveredBlock231Value10 := (recoveredBlock231Value9) rounded.
    (recoveredBlock231Value7) y: (recoveredBlock231Value10).
    recoveredBlock231Value11 := recoveredBlock231Value0.
    recoveredBlock231Value12 := recoveredLocal25.
    recoveredBlock231Value13 := (110) * (recoveredBlock231Value12).
    recoveredBlock231Value14 := (recoveredBlock231Value13) rounded.
    (recoveredBlock231Value11) height: (recoveredBlock231Value14).
    recoveredBlock231Value15 := recoveredLocal26.
    recoveredBlock231Value16 := (10) * (recoveredBlock231Value15).
    recoveredBlock231Value17 := (recoveredBlock231Value16) rounded.
    recoveredBlock231Value18 := (recoveredBlock231Value0) width: (recoveredBlock231Value17).
    recoveredBlock231Value18
].
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredLocal20 := recoveredStack1.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack3 := recoveredLocal20.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack2 := 'labelData'.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack3 := [:recoveredBlock313Arg1 | 
    | recoveredBlock313Value0 recoveredBlock313Value1 recoveredBlock313Value2 recoveredBlock313Value3 recoveredBlock313Value4 recoveredBlock313Value5 recoveredBlock313Value6 recoveredBlock313Value7 recoveredBlock313Value8 recoveredBlock313Value9 recoveredBlock313Value10 recoveredBlock313Value11 recoveredBlock313Value12 recoveredBlock313Value13 recoveredBlock313Value14 recoveredBlock313Value15 recoveredBlock313Value16 recoveredBlock313Value17 recoveredBlock313Value18 recoveredBlock313Value19 recoveredBlock313Value20 recoveredBlock313Value21 |
    recoveredBlock313Value0 := recoveredBlock313Arg1.
    recoveredBlock313Value1 := recoveredBlock313Value0.
    recoveredBlock313Value2 := recoveredLocal26.
    recoveredBlock313Value3 := (20) * (recoveredBlock313Value2).
    recoveredBlock313Value4 := (recoveredBlock313Value3) rounded.
    (recoveredBlock313Value1) x: (recoveredBlock313Value4).
    recoveredBlock313Value5 := recoveredBlock313Value0.
    recoveredBlock313Value6 := XmALIGNMENTEND.
    (recoveredBlock313Value5) alignment: (recoveredBlock313Value6).
    recoveredBlock313Value7 := recoveredBlock313Value0.
    (recoveredBlock313Value7) labelString: ('Value').
    recoveredBlock313Value8 := recoveredBlock313Value0.
    recoveredBlock313Value9 := recoveredLocal25.
    recoveredBlock313Value10 := (115) * (recoveredBlock313Value9).
    recoveredBlock313Value11 := (recoveredBlock313Value10) rounded.
    (recoveredBlock313Value8) y: (recoveredBlock313Value11).
    recoveredBlock313Value12 := recoveredBlock313Value0.
    recoveredBlock313Value13 := recoveredLocal25.
    recoveredBlock313Value14 := (24) * (recoveredBlock313Value13).
    recoveredBlock313Value15 := (recoveredBlock313Value14) rounded.
    (recoveredBlock313Value12) height: (recoveredBlock313Value15).
    recoveredBlock313Value16 := recoveredBlock313Value0.
    recoveredBlock313Value17 := recoveredLocal26.
    recoveredBlock313Value18 := (56) * (recoveredBlock313Value17).
    recoveredBlock313Value19 := (recoveredBlock313Value18) rounded.
    (recoveredBlock313Value16) width: (recoveredBlock313Value19).
    recoveredBlock313Value20 := recoveredBlock313Value0.
    recoveredBlock313Value21 := (self) defaultLabelBlue.
    (recoveredBlock313Value20) foregroundColor: (recoveredBlock313Value21).
    recoveredBlock313Value0
].
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredLocal19 := recoveredStack1.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack2 := 'labelData'.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack3 := recoveredLocal19.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack2 := 'aRowColumn1'.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack3 := [:recoveredBlock405Arg1 | 
    | recoveredBlock405Value0 recoveredBlock405Value1 recoveredBlock405Value2 recoveredBlock405Value3 recoveredBlock405Value4 recoveredBlock405Value5 recoveredBlock405Value6 recoveredBlock405Value7 recoveredBlock405Value8 recoveredBlock405Value9 recoveredBlock405Value10 recoveredBlock405Value11 recoveredBlock405Value12 recoveredBlock405Value13 recoveredBlock405Value14 recoveredBlock405Value15 recoveredBlock405Value16 recoveredBlock405Value17 recoveredBlock405Value18 recoveredBlock405Value19 recoveredBlock405Value20 |
    recoveredBlock405Value0 := recoveredBlock405Arg1.
    recoveredBlock405Value1 := recoveredBlock405Value0.
    (recoveredBlock405Value1) radioBehavior: (true).
    recoveredBlock405Value2 := recoveredBlock405Value0.
    recoveredBlock405Value3 := recoveredLocal25.
    recoveredBlock405Value4 := (110) * (recoveredBlock405Value3).
    recoveredBlock405Value5 := (recoveredBlock405Value4) rounded.
    (recoveredBlock405Value2) y: (recoveredBlock405Value5).
    recoveredBlock405Value6 := recoveredBlock405Value0.
    recoveredBlock405Value7 := recoveredLocal26.
    recoveredBlock405Value8 := (80) * (recoveredBlock405Value7).
    recoveredBlock405Value9 := (recoveredBlock405Value8) rounded.
    (recoveredBlock405Value6) x: (recoveredBlock405Value9).
    recoveredBlock405Value10 := recoveredBlock405Value0.
    recoveredBlock405Value11 := XmHORIZONTAL.
    (recoveredBlock405Value10) orientation: (recoveredBlock405Value11).
    recoveredBlock405Value12 := recoveredBlock405Value0.
    (recoveredBlock405Value12) numColumns: (2).
    recoveredBlock405Value13 := recoveredBlock405Value0.
    recoveredBlock405Value14 := recoveredLocal25.
    recoveredBlock405Value15 := (35) * (recoveredBlock405Value14).
    recoveredBlock405Value16 := (recoveredBlock405Value15) rounded.
    (recoveredBlock405Value13) height: (recoveredBlock405Value16).
    recoveredBlock405Value17 := recoveredLocal26.
    recoveredBlock405Value18 := (135) * (recoveredBlock405Value17).
    recoveredBlock405Value19 := (recoveredBlock405Value18) rounded.
    recoveredBlock405Value20 := (recoveredBlock405Value0) width: (recoveredBlock405Value19).
    recoveredBlock405Value20
].
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack1 := (recoveredStack1) createRowColumn: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredLocal18 := recoveredStack1.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack2 := 'aRowColumn1'.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack3 := recoveredLocal18.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack2 := 'buttonTrue'.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack3 := [:recoveredBlock497Arg1 | 
    | recoveredBlock497Value0 recoveredBlock497Value1 recoveredBlock497Value2 recoveredBlock497Value3 recoveredBlock497Value4 recoveredBlock497Value5 recoveredBlock497Value6 recoveredBlock497Value7 recoveredBlock497Value8 recoveredBlock497Value9 recoveredBlock497Value10 recoveredBlock497Value11 recoveredBlock497Value12 recoveredBlock497Value13 recoveredBlock497Value14 recoveredBlock497Value15 recoveredBlock497Value16 recoveredBlock497Value17 |
    recoveredBlock497Value0 := recoveredBlock497Arg1.
    recoveredBlock497Value1 := recoveredBlock497Value0.
    recoveredBlock497Value2 := recoveredLocal25.
    recoveredBlock497Value3 := (5) * (recoveredBlock497Value2).
    recoveredBlock497Value4 := (recoveredBlock497Value3) rounded.
    (recoveredBlock497Value1) y: (recoveredBlock497Value4).
    recoveredBlock497Value5 := recoveredBlock497Value0.
    recoveredBlock497Value6 := recoveredLocal26.
    recoveredBlock497Value7 := (5) * (recoveredBlock497Value6).
    recoveredBlock497Value8 := (recoveredBlock497Value7) rounded.
    (recoveredBlock497Value5) x: (recoveredBlock497Value8).
    recoveredBlock497Value9 := recoveredBlock497Value0.
    (recoveredBlock497Value9) labelString: ('True').
    recoveredBlock497Value10 := recoveredBlock497Value0.
    recoveredBlock497Value11 := recoveredLocal25.
    recoveredBlock497Value12 := (29) * (recoveredBlock497Value11).
    recoveredBlock497Value13 := (recoveredBlock497Value12) rounded.
    (recoveredBlock497Value10) height: (recoveredBlock497Value13).
    recoveredBlock497Value14 := recoveredLocal26.
    recoveredBlock497Value15 := (52) * (recoveredBlock497Value14).
    recoveredBlock497Value16 := (recoveredBlock497Value15) rounded.
    recoveredBlock497Value17 := (recoveredBlock497Value0) width: (recoveredBlock497Value16).
    recoveredBlock497Value17
].
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            recoveredLocal17 := recoveredStack1.
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack2 := 'buttonTrue'.
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack3 := recoveredLocal17.
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            recoveredStack2 := 'buttonFalse'.
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            recoveredStack3 := [:recoveredBlock576Arg1 | 
    | recoveredBlock576Value0 recoveredBlock576Value1 recoveredBlock576Value2 recoveredBlock576Value3 recoveredBlock576Value4 recoveredBlock576Value5 recoveredBlock576Value6 recoveredBlock576Value7 recoveredBlock576Value8 recoveredBlock576Value9 |
    recoveredBlock576Value0 := recoveredBlock576Arg1.
    recoveredBlock576Value1 := recoveredBlock576Value0.
    recoveredBlock576Value2 := recoveredLocal25.
    recoveredBlock576Value3 := (5) * (recoveredBlock576Value2).
    recoveredBlock576Value4 := (recoveredBlock576Value3) rounded.
    (recoveredBlock576Value1) y: (recoveredBlock576Value4).
    recoveredBlock576Value5 := recoveredBlock576Value0.
    recoveredBlock576Value6 := recoveredLocal26.
    recoveredBlock576Value7 := (60) * (recoveredBlock576Value6).
    recoveredBlock576Value8 := (recoveredBlock576Value7) rounded.
    (recoveredBlock576Value5) x: (recoveredBlock576Value8).
    recoveredBlock576Value9 := (recoveredBlock576Value0) labelString: ('False').
    recoveredBlock576Value9
].
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 618.
        ].
        recoveredStep = 618 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            recoveredStack2 := 'buttonFalse'.
            recoveredPC := 624.
        ].
        recoveredStep = 624 ifTrue: [
            recoveredStack3 := recoveredLocal16.
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 629.
        ].
        recoveredStep = 629 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 632.
        ].
        recoveredStep = 632 ifTrue: [
            recoveredStack2 := 'buttonTable'.
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            recoveredStack3 := [:recoveredBlock636Arg1 | 
    | recoveredBlock636Value0 recoveredBlock636Value1 recoveredBlock636Value2 recoveredBlock636Value3 recoveredBlock636Value4 recoveredBlock636Value5 recoveredBlock636Value6 recoveredBlock636Value7 recoveredBlock636Value8 recoveredBlock636Value9 recoveredBlock636Value10 recoveredBlock636Value11 recoveredBlock636Value12 recoveredBlock636Value13 recoveredBlock636Value14 recoveredBlock636Value15 recoveredBlock636Value16 recoveredBlock636Value17 |
    recoveredBlock636Value0 := recoveredBlock636Arg1.
    recoveredBlock636Value1 := recoveredBlock636Value0.
    recoveredBlock636Value2 := recoveredLocal26.
    recoveredBlock636Value3 := (80) * (recoveredBlock636Value2).
    recoveredBlock636Value4 := (recoveredBlock636Value3) rounded.
    (recoveredBlock636Value1) x: (recoveredBlock636Value4).
    recoveredBlock636Value5 := recoveredBlock636Value0.
    (recoveredBlock636Value5) labelString: ('Edit Table').
    recoveredBlock636Value6 := recoveredBlock636Value0.
    recoveredBlock636Value7 := recoveredLocal25.
    recoveredBlock636Value8 := (80) * (recoveredBlock636Value7).
    recoveredBlock636Value9 := (recoveredBlock636Value8) rounded.
    (recoveredBlock636Value6) y: (recoveredBlock636Value9).
    recoveredBlock636Value10 := recoveredBlock636Value0.
    recoveredBlock636Value11 := recoveredLocal25.
    recoveredBlock636Value12 := (24) * (recoveredBlock636Value11).
    recoveredBlock636Value13 := (recoveredBlock636Value12) rounded.
    (recoveredBlock636Value10) height: (recoveredBlock636Value13).
    recoveredBlock636Value14 := recoveredLocal26.
    recoveredBlock636Value15 := (120) * (recoveredBlock636Value14).
    recoveredBlock636Value16 := (recoveredBlock636Value15) rounded.
    recoveredBlock636Value17 := (recoveredBlock636Value0) width: (recoveredBlock636Value16).
    recoveredBlock636Value17
].
            recoveredPC := 697.
        ].
        recoveredStep = 697 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 699.
        ].
        recoveredStep = 699 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 701.
        ].
        recoveredStep = 701 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 704.
        ].
        recoveredStep = 704 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 707.
        ].
        recoveredStep = 707 ifTrue: [
            recoveredStack2 := 'buttonTable'.
            recoveredPC := 710.
        ].
        recoveredStep = 710 ifTrue: [
            recoveredStack3 := recoveredLocal15.
            recoveredPC := 713.
        ].
        recoveredStep = 713 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 715.
        ].
        recoveredStep = 715 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 718.
        ].
        recoveredStep = 718 ifTrue: [
            recoveredStack2 := 'dataApply'.
            recoveredPC := 722.
        ].
        recoveredStep = 722 ifTrue: [
            recoveredStack3 := [:recoveredBlock722Arg1 | 
    | recoveredBlock722Value0 recoveredBlock722Value1 recoveredBlock722Value2 recoveredBlock722Value3 recoveredBlock722Value4 recoveredBlock722Value5 recoveredBlock722Value6 recoveredBlock722Value7 recoveredBlock722Value8 recoveredBlock722Value9 recoveredBlock722Value10 recoveredBlock722Value11 recoveredBlock722Value12 recoveredBlock722Value13 recoveredBlock722Value14 recoveredBlock722Value15 recoveredBlock722Value16 recoveredBlock722Value17 |
    recoveredBlock722Value0 := recoveredBlock722Arg1.
    recoveredBlock722Value1 := recoveredBlock722Value0.
    recoveredBlock722Value2 := recoveredLocal26.
    recoveredBlock722Value3 := (240) * (recoveredBlock722Value2).
    recoveredBlock722Value4 := (recoveredBlock722Value3) rounded.
    (recoveredBlock722Value1) x: (recoveredBlock722Value4).
    recoveredBlock722Value5 := recoveredBlock722Value0.
    (recoveredBlock722Value5) labelString: ('Apply').
    recoveredBlock722Value6 := recoveredBlock722Value0.
    recoveredBlock722Value7 := recoveredLocal25.
    recoveredBlock722Value8 := (45) * (recoveredBlock722Value7).
    recoveredBlock722Value9 := (recoveredBlock722Value8) rounded.
    (recoveredBlock722Value6) y: (recoveredBlock722Value9).
    recoveredBlock722Value10 := recoveredBlock722Value0.
    recoveredBlock722Value11 := recoveredLocal25.
    recoveredBlock722Value12 := (25) * (recoveredBlock722Value11).
    recoveredBlock722Value13 := (recoveredBlock722Value12) rounded.
    (recoveredBlock722Value10) height: (recoveredBlock722Value13).
    recoveredBlock722Value14 := recoveredLocal26.
    recoveredBlock722Value15 := (70) * (recoveredBlock722Value14).
    recoveredBlock722Value16 := (recoveredBlock722Value15) rounded.
    recoveredBlock722Value17 := (recoveredBlock722Value0) width: (recoveredBlock722Value16).
    recoveredBlock722Value17
].
            recoveredPC := 783.
        ].
        recoveredStep = 783 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 785.
        ].
        recoveredStep = 785 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 787.
        ].
        recoveredStep = 787 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 790.
        ].
        recoveredStep = 790 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 793.
        ].
        recoveredStep = 793 ifTrue: [
            recoveredStack2 := 'dataApply'.
            recoveredPC := 796.
        ].
        recoveredStep = 796 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 799.
        ].
        recoveredStep = 799 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 801.
        ].
        recoveredStep = 801 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 804.
        ].
        recoveredStep = 804 ifTrue: [
            recoveredStack2 := 'dataCancel'.
            recoveredPC := 808.
        ].
        recoveredStep = 808 ifTrue: [
            recoveredStack3 := [:recoveredBlock808Arg1 | 
    | recoveredBlock808Value0 recoveredBlock808Value1 recoveredBlock808Value2 recoveredBlock808Value3 recoveredBlock808Value4 recoveredBlock808Value5 recoveredBlock808Value6 recoveredBlock808Value7 recoveredBlock808Value8 recoveredBlock808Value9 recoveredBlock808Value10 recoveredBlock808Value11 recoveredBlock808Value12 recoveredBlock808Value13 recoveredBlock808Value14 recoveredBlock808Value15 recoveredBlock808Value16 recoveredBlock808Value17 |
    recoveredBlock808Value0 := recoveredBlock808Arg1.
    recoveredBlock808Value1 := recoveredBlock808Value0.
    recoveredBlock808Value2 := recoveredLocal26.
    recoveredBlock808Value3 := (240) * (recoveredBlock808Value2).
    recoveredBlock808Value4 := (recoveredBlock808Value3) rounded.
    (recoveredBlock808Value1) x: (recoveredBlock808Value4).
    recoveredBlock808Value5 := recoveredBlock808Value0.
    (recoveredBlock808Value5) labelString: ('Cancel').
    recoveredBlock808Value6 := recoveredBlock808Value0.
    recoveredBlock808Value7 := recoveredLocal25.
    recoveredBlock808Value8 := (80) * (recoveredBlock808Value7).
    recoveredBlock808Value9 := (recoveredBlock808Value8) rounded.
    (recoveredBlock808Value6) y: (recoveredBlock808Value9).
    recoveredBlock808Value10 := recoveredBlock808Value0.
    recoveredBlock808Value11 := recoveredLocal25.
    recoveredBlock808Value12 := (25) * (recoveredBlock808Value11).
    recoveredBlock808Value13 := (recoveredBlock808Value12) rounded.
    (recoveredBlock808Value10) height: (recoveredBlock808Value13).
    recoveredBlock808Value14 := recoveredLocal26.
    recoveredBlock808Value15 := (70) * (recoveredBlock808Value14).
    recoveredBlock808Value16 := (recoveredBlock808Value15) rounded.
    recoveredBlock808Value17 := (recoveredBlock808Value0) width: (recoveredBlock808Value16).
    recoveredBlock808Value17
].
            recoveredPC := 869.
        ].
        recoveredStep = 869 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 871.
        ].
        recoveredStep = 871 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 873.
        ].
        recoveredStep = 873 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 876.
        ].
        recoveredStep = 876 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 879.
        ].
        recoveredStep = 879 ifTrue: [
            recoveredStack2 := 'dataCancel'.
            recoveredPC := 882.
        ].
        recoveredStep = 882 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 885.
        ].
        recoveredStep = 885 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 887.
        ].
        recoveredStep = 887 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 890.
        ].
        recoveredStep = 890 ifTrue: [
            recoveredStack2 := 'labelUnit'.
            recoveredPC := 894.
        ].
        recoveredStep = 894 ifTrue: [
            recoveredStack3 := [:recoveredBlock894Arg1 | 
    | recoveredBlock894Value0 recoveredBlock894Value1 recoveredBlock894Value2 recoveredBlock894Value3 recoveredBlock894Value4 recoveredBlock894Value5 recoveredBlock894Value6 recoveredBlock894Value7 recoveredBlock894Value8 recoveredBlock894Value9 recoveredBlock894Value10 recoveredBlock894Value11 recoveredBlock894Value12 recoveredBlock894Value13 recoveredBlock894Value14 recoveredBlock894Value15 recoveredBlock894Value16 recoveredBlock894Value17 recoveredBlock894Value18 recoveredBlock894Value19 |
    recoveredBlock894Value0 := recoveredBlock894Arg1.
    recoveredBlock894Value1 := recoveredBlock894Value0.
    recoveredBlock894Value2 := recoveredLocal26.
    recoveredBlock894Value3 := (185) * (recoveredBlock894Value2).
    recoveredBlock894Value4 := (recoveredBlock894Value3) rounded.
    (recoveredBlock894Value1) x: (recoveredBlock894Value4).
    recoveredBlock894Value5 := recoveredBlock894Value0.
    recoveredBlock894Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock894Value5) alignment: (recoveredBlock894Value6).
    recoveredBlock894Value7 := recoveredBlock894Value0.
    (recoveredBlock894Value7) labelString: ('[Hz]').
    recoveredBlock894Value8 := recoveredBlock894Value0.
    recoveredBlock894Value9 := recoveredLocal25.
    recoveredBlock894Value10 := (45) * (recoveredBlock894Value9).
    recoveredBlock894Value11 := (recoveredBlock894Value10) rounded.
    (recoveredBlock894Value8) y: (recoveredBlock894Value11).
    recoveredBlock894Value12 := recoveredBlock894Value0.
    recoveredBlock894Value13 := recoveredLocal25.
    recoveredBlock894Value14 := (25) * (recoveredBlock894Value13).
    recoveredBlock894Value15 := (recoveredBlock894Value14) rounded.
    (recoveredBlock894Value12) height: (recoveredBlock894Value15).
    recoveredBlock894Value16 := recoveredLocal26.
    recoveredBlock894Value17 := (37) * (recoveredBlock894Value16).
    recoveredBlock894Value18 := (recoveredBlock894Value17) rounded.
    recoveredBlock894Value19 := (recoveredBlock894Value0) width: (recoveredBlock894Value18).
    recoveredBlock894Value19
].
            recoveredPC := 959.
        ].
        recoveredStep = 959 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 961.
        ].
        recoveredStep = 961 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 963.
        ].
        recoveredStep = 963 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 966.
        ].
        recoveredStep = 966 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 969.
        ].
        recoveredStep = 969 ifTrue: [
            recoveredStack2 := 'labelUnit'.
            recoveredPC := 972.
        ].
        recoveredStep = 972 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 975.
        ].
        recoveredStep = 975 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 977.
        ].
        recoveredStep = 977 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 980.
        ].
        recoveredStep = 980 ifTrue: [
            recoveredStack2 := 'dataFrequence'.
            recoveredPC := 984.
        ].
        recoveredStep = 984 ifTrue: [
            recoveredStack3 := [:recoveredBlock984Arg1 | 
    | recoveredBlock984Value0 recoveredBlock984Value1 recoveredBlock984Value2 recoveredBlock984Value3 recoveredBlock984Value4 recoveredBlock984Value5 recoveredBlock984Value6 recoveredBlock984Value7 recoveredBlock984Value8 recoveredBlock984Value9 recoveredBlock984Value10 recoveredBlock984Value11 recoveredBlock984Value12 recoveredBlock984Value13 recoveredBlock984Value14 recoveredBlock984Value15 recoveredBlock984Value16 recoveredBlock984Value17 |
    recoveredBlock984Value0 := recoveredBlock984Arg1.
    recoveredBlock984Value1 := recoveredBlock984Value0.
    recoveredBlock984Value2 := recoveredLocal25.
    recoveredBlock984Value3 := (45) * (recoveredBlock984Value2).
    recoveredBlock984Value4 := (recoveredBlock984Value3) rounded.
    (recoveredBlock984Value1) y: (recoveredBlock984Value4).
    recoveredBlock984Value5 := recoveredBlock984Value0.
    recoveredBlock984Value6 := recoveredLocal26.
    recoveredBlock984Value7 := (80) * (recoveredBlock984Value6).
    recoveredBlock984Value8 := (recoveredBlock984Value7) rounded.
    (recoveredBlock984Value5) x: (recoveredBlock984Value8).
    recoveredBlock984Value9 := recoveredBlock984Value0.
    (recoveredBlock984Value9) characterMethod: ('checkFloat:').
    recoveredBlock984Value10 := recoveredBlock984Value0.
    recoveredBlock984Value11 := recoveredLocal25.
    recoveredBlock984Value12 := (24) * (recoveredBlock984Value11).
    recoveredBlock984Value13 := (recoveredBlock984Value12) rounded.
    (recoveredBlock984Value10) height: (recoveredBlock984Value13).
    recoveredBlock984Value14 := recoveredLocal26.
    recoveredBlock984Value15 := (104) * (recoveredBlock984Value14).
    recoveredBlock984Value16 := (recoveredBlock984Value15) rounded.
    recoveredBlock984Value17 := (recoveredBlock984Value0) width: (recoveredBlock984Value16).
    recoveredBlock984Value17
].
            recoveredPC := 1045.
        ].
        recoveredStep = 1045 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1049.
        ].
        recoveredStep = 1049 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1051.
        ].
        recoveredStep = 1051 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 1054.
        ].
        recoveredStep = 1054 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 1057.
        ].
        recoveredStep = 1057 ifTrue: [
            recoveredStack2 := 'dataFrequence'.
            recoveredPC := 1060.
        ].
        recoveredStep = 1060 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 1063.
        ].
        recoveredStep = 1063 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1065.
        ].
        recoveredStep = 1065 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 1068.
        ].
        recoveredStep = 1068 ifTrue: [
            recoveredStack2 := 'dataMode'.
            recoveredPC := 1072.
        ].
        recoveredStep = 1072 ifTrue: [
            recoveredStack3 := [:recoveredBlock1072Arg1 | 
    | recoveredBlock1072Value0 recoveredBlock1072Value1 recoveredBlock1072Value2 recoveredBlock1072Value3 recoveredBlock1072Value4 recoveredBlock1072Value5 recoveredBlock1072Value6 recoveredBlock1072Value7 recoveredBlock1072Value8 recoveredBlock1072Value9 recoveredBlock1072Value10 recoveredBlock1072Value11 recoveredBlock1072Value12 recoveredBlock1072Value13 recoveredBlock1072Value14 recoveredBlock1072Value15 recoveredBlock1072Value16 recoveredBlock1072Value17 |
    recoveredBlock1072Value0 := recoveredBlock1072Arg1.
    recoveredBlock1072Value1 := recoveredBlock1072Value0.
    (recoveredBlock1072Value1) visibleItemCount: (10).
    recoveredBlock1072Value2 := recoveredBlock1072Value0.
    recoveredBlock1072Value3 := recoveredLocal26.
    recoveredBlock1072Value4 := (80) * (recoveredBlock1072Value3).
    recoveredBlock1072Value5 := (recoveredBlock1072Value4) rounded.
    (recoveredBlock1072Value2) x: (recoveredBlock1072Value5).
    recoveredBlock1072Value6 := recoveredBlock1072Value0.
    recoveredBlock1072Value7 := recoveredLocal25.
    recoveredBlock1072Value8 := (10) * (recoveredBlock1072Value7).
    recoveredBlock1072Value9 := (recoveredBlock1072Value8) rounded.
    (recoveredBlock1072Value6) y: (recoveredBlock1072Value9).
    recoveredBlock1072Value10 := recoveredBlock1072Value0.
    recoveredBlock1072Value11 := recoveredLocal25.
    recoveredBlock1072Value12 := (24) * (recoveredBlock1072Value11).
    recoveredBlock1072Value13 := (recoveredBlock1072Value12) rounded.
    (recoveredBlock1072Value10) height: (recoveredBlock1072Value13).
    recoveredBlock1072Value14 := recoveredLocal26.
    recoveredBlock1072Value15 := (120) * (recoveredBlock1072Value14).
    recoveredBlock1072Value16 := (recoveredBlock1072Value15) rounded.
    recoveredBlock1072Value17 := (recoveredBlock1072Value0) width: (recoveredBlock1072Value16).
    recoveredBlock1072Value17
].
            recoveredPC := 1133.
        ].
        recoveredStep = 1133 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1137.
        ].
        recoveredStep = 1137 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1139.
        ].
        recoveredStep = 1139 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 1142.
        ].
        recoveredStep = 1142 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 1145.
        ].
        recoveredStep = 1145 ifTrue: [
            recoveredStack2 := 'dataMode'.
            recoveredPC := 1148.
        ].
        recoveredStep = 1148 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 1151.
        ].
        recoveredStep = 1151 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1153.
        ].
        recoveredStep = 1153 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 1156.
        ].
        recoveredStep = 1156 ifTrue: [
            recoveredStack2 := 'labelMode'.
            recoveredPC := 1160.
        ].
        recoveredStep = 1160 ifTrue: [
            recoveredStack3 := [:recoveredBlock1160Arg1 | 
    | recoveredBlock1160Value0 recoveredBlock1160Value1 recoveredBlock1160Value2 recoveredBlock1160Value3 recoveredBlock1160Value4 recoveredBlock1160Value5 recoveredBlock1160Value6 recoveredBlock1160Value7 recoveredBlock1160Value8 recoveredBlock1160Value9 recoveredBlock1160Value10 recoveredBlock1160Value11 recoveredBlock1160Value12 recoveredBlock1160Value13 recoveredBlock1160Value14 recoveredBlock1160Value15 recoveredBlock1160Value16 recoveredBlock1160Value17 recoveredBlock1160Value18 recoveredBlock1160Value19 recoveredBlock1160Value20 recoveredBlock1160Value21 |
    recoveredBlock1160Value0 := recoveredBlock1160Arg1.
    recoveredBlock1160Value1 := recoveredBlock1160Value0.
    recoveredBlock1160Value2 := recoveredLocal26.
    recoveredBlock1160Value3 := (40) * (recoveredBlock1160Value2).
    recoveredBlock1160Value4 := (recoveredBlock1160Value3) rounded.
    (recoveredBlock1160Value1) x: (recoveredBlock1160Value4).
    recoveredBlock1160Value5 := recoveredBlock1160Value0.
    recoveredBlock1160Value6 := XmALIGNMENTEND.
    (recoveredBlock1160Value5) alignment: (recoveredBlock1160Value6).
    recoveredBlock1160Value7 := recoveredBlock1160Value0.
    (recoveredBlock1160Value7) labelString: ('Mode').
    recoveredBlock1160Value8 := recoveredBlock1160Value0.
    recoveredBlock1160Value9 := recoveredLocal25.
    recoveredBlock1160Value10 := (10) * (recoveredBlock1160Value9).
    recoveredBlock1160Value11 := (recoveredBlock1160Value10) rounded.
    (recoveredBlock1160Value8) y: (recoveredBlock1160Value11).
    recoveredBlock1160Value12 := recoveredBlock1160Value0.
    recoveredBlock1160Value13 := recoveredLocal25.
    recoveredBlock1160Value14 := (24) * (recoveredBlock1160Value13).
    recoveredBlock1160Value15 := (recoveredBlock1160Value14) rounded.
    (recoveredBlock1160Value12) height: (recoveredBlock1160Value15).
    recoveredBlock1160Value16 := recoveredBlock1160Value0.
    recoveredBlock1160Value17 := recoveredLocal26.
    recoveredBlock1160Value18 := (36) * (recoveredBlock1160Value17).
    recoveredBlock1160Value19 := (recoveredBlock1160Value18) rounded.
    (recoveredBlock1160Value16) width: (recoveredBlock1160Value19).
    recoveredBlock1160Value20 := recoveredBlock1160Value0.
    recoveredBlock1160Value21 := (self) defaultLabelBlue.
    (recoveredBlock1160Value20) foregroundColor: (recoveredBlock1160Value21).
    recoveredBlock1160Value0
].
            recoveredPC := 1230.
        ].
        recoveredStep = 1230 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1232.
        ].
        recoveredStep = 1232 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1234.
        ].
        recoveredStep = 1234 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 1237.
        ].
        recoveredStep = 1237 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 1240.
        ].
        recoveredStep = 1240 ifTrue: [
            recoveredStack2 := 'labelMode'.
            recoveredPC := 1244.
        ].
        recoveredStep = 1244 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 1247.
        ].
        recoveredStep = 1247 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1249.
        ].
        recoveredStep = 1249 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 1252.
        ].
        recoveredStep = 1252 ifTrue: [
            recoveredStack2 := 'labelPhase'.
            recoveredPC := 1256.
        ].
        recoveredStep = 1256 ifTrue: [
            recoveredStack3 := [:recoveredBlock1256Arg1 | 
    | recoveredBlock1256Value0 recoveredBlock1256Value1 recoveredBlock1256Value2 recoveredBlock1256Value3 recoveredBlock1256Value4 recoveredBlock1256Value5 recoveredBlock1256Value6 recoveredBlock1256Value7 recoveredBlock1256Value8 recoveredBlock1256Value9 recoveredBlock1256Value10 recoveredBlock1256Value11 recoveredBlock1256Value12 recoveredBlock1256Value13 recoveredBlock1256Value14 recoveredBlock1256Value15 recoveredBlock1256Value16 recoveredBlock1256Value17 |
    recoveredBlock1256Value0 := recoveredBlock1256Arg1.
    recoveredBlock1256Value1 := recoveredBlock1256Value0.
    recoveredBlock1256Value2 := XmALIGNMENTEND.
    (recoveredBlock1256Value1) alignment: (recoveredBlock1256Value2).
    recoveredBlock1256Value3 := recoveredBlock1256Value0.
    (recoveredBlock1256Value3) labelString: ('Phase').
    recoveredBlock1256Value4 := recoveredBlock1256Value0.
    recoveredBlock1256Value5 := recoveredLocal25.
    recoveredBlock1256Value6 := (80) * (recoveredBlock1256Value5).
    recoveredBlock1256Value7 := (recoveredBlock1256Value6) rounded.
    (recoveredBlock1256Value4) y: (recoveredBlock1256Value7).
    recoveredBlock1256Value8 := recoveredBlock1256Value0.
    recoveredBlock1256Value9 := recoveredLocal25.
    recoveredBlock1256Value10 := (25) * (recoveredBlock1256Value9).
    recoveredBlock1256Value11 := (recoveredBlock1256Value10) rounded.
    (recoveredBlock1256Value8) height: (recoveredBlock1256Value11).
    recoveredBlock1256Value12 := recoveredBlock1256Value0.
    recoveredBlock1256Value13 := recoveredLocal26.
    recoveredBlock1256Value14 := (76) * (recoveredBlock1256Value13).
    recoveredBlock1256Value15 := (recoveredBlock1256Value14) rounded.
    (recoveredBlock1256Value12) width: (recoveredBlock1256Value15).
    recoveredBlock1256Value16 := recoveredBlock1256Value0.
    recoveredBlock1256Value17 := (self) defaultLabelBlue.
    (recoveredBlock1256Value16) foregroundColor: (recoveredBlock1256Value17).
    recoveredBlock1256Value0
].
            recoveredPC := 1317.
        ].
        recoveredStep = 1317 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1319.
        ].
        recoveredStep = 1319 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1321.
        ].
        recoveredStep = 1321 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 1324.
        ].
        recoveredStep = 1324 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 1327.
        ].
        recoveredStep = 1327 ifTrue: [
            recoveredStack2 := 'labelPhase'.
            recoveredPC := 1330.
        ].
        recoveredStep = 1330 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 1333.
        ].
        recoveredStep = 1333 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1335.
        ].
        recoveredStep = 1335 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 1338.
        ].
        recoveredStep = 1338 ifTrue: [
            recoveredStack2 := 'labelPhaseUnit'.
            recoveredPC := 1342.
        ].
        recoveredStep = 1342 ifTrue: [
            recoveredStack3 := [:recoveredBlock1342Arg1 | 
    | recoveredBlock1342Value0 recoveredBlock1342Value1 recoveredBlock1342Value2 recoveredBlock1342Value3 recoveredBlock1342Value4 recoveredBlock1342Value5 recoveredBlock1342Value6 recoveredBlock1342Value7 recoveredBlock1342Value8 recoveredBlock1342Value9 recoveredBlock1342Value10 recoveredBlock1342Value11 recoveredBlock1342Value12 recoveredBlock1342Value13 recoveredBlock1342Value14 recoveredBlock1342Value15 recoveredBlock1342Value16 recoveredBlock1342Value17 recoveredBlock1342Value18 recoveredBlock1342Value19 |
    recoveredBlock1342Value0 := recoveredBlock1342Arg1.
    recoveredBlock1342Value1 := recoveredBlock1342Value0.
    recoveredBlock1342Value2 := recoveredLocal26.
    recoveredBlock1342Value3 := (185) * (recoveredBlock1342Value2).
    recoveredBlock1342Value4 := (recoveredBlock1342Value3) rounded.
    (recoveredBlock1342Value1) x: (recoveredBlock1342Value4).
    recoveredBlock1342Value5 := recoveredBlock1342Value0.
    recoveredBlock1342Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock1342Value5) alignment: (recoveredBlock1342Value6).
    recoveredBlock1342Value7 := recoveredBlock1342Value0.
    (recoveredBlock1342Value7) labelString: ('[s]').
    recoveredBlock1342Value8 := recoveredBlock1342Value0.
    recoveredBlock1342Value9 := recoveredLocal25.
    recoveredBlock1342Value10 := (80) * (recoveredBlock1342Value9).
    recoveredBlock1342Value11 := (recoveredBlock1342Value10) rounded.
    (recoveredBlock1342Value8) y: (recoveredBlock1342Value11).
    recoveredBlock1342Value12 := recoveredBlock1342Value0.
    recoveredBlock1342Value13 := recoveredLocal25.
    recoveredBlock1342Value14 := (25) * (recoveredBlock1342Value13).
    recoveredBlock1342Value15 := (recoveredBlock1342Value14) rounded.
    (recoveredBlock1342Value12) height: (recoveredBlock1342Value15).
    recoveredBlock1342Value16 := recoveredLocal26.
    recoveredBlock1342Value17 := (32) * (recoveredBlock1342Value16).
    recoveredBlock1342Value18 := (recoveredBlock1342Value17) rounded.
    recoveredBlock1342Value19 := (recoveredBlock1342Value0) width: (recoveredBlock1342Value18).
    recoveredBlock1342Value19
].
            recoveredPC := 1408.
        ].
        recoveredStep = 1408 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1410.
        ].
        recoveredStep = 1410 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1412.
        ].
        recoveredStep = 1412 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 1415.
        ].
        recoveredStep = 1415 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 1418.
        ].
        recoveredStep = 1418 ifTrue: [
            recoveredStack2 := 'labelPhaseUnit'.
            recoveredPC := 1422.
        ].
        recoveredStep = 1422 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 1425.
        ].
        recoveredStep = 1425 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1427.
        ].
        recoveredStep = 1427 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 1430.
        ].
        recoveredStep = 1430 ifTrue: [
            recoveredStack2 := 'dataPhase'.
            recoveredPC := 1434.
        ].
        recoveredStep = 1434 ifTrue: [
            recoveredStack3 := [:recoveredBlock1434Arg1 | 
    | recoveredBlock1434Value0 recoveredBlock1434Value1 recoveredBlock1434Value2 recoveredBlock1434Value3 recoveredBlock1434Value4 recoveredBlock1434Value5 recoveredBlock1434Value6 recoveredBlock1434Value7 recoveredBlock1434Value8 recoveredBlock1434Value9 recoveredBlock1434Value10 recoveredBlock1434Value11 recoveredBlock1434Value12 recoveredBlock1434Value13 recoveredBlock1434Value14 recoveredBlock1434Value15 recoveredBlock1434Value16 recoveredBlock1434Value17 |
    recoveredBlock1434Value0 := recoveredBlock1434Arg1.
    recoveredBlock1434Value1 := recoveredBlock1434Value0.
    recoveredBlock1434Value2 := recoveredLocal25.
    recoveredBlock1434Value3 := (80) * (recoveredBlock1434Value2).
    recoveredBlock1434Value4 := (recoveredBlock1434Value3) rounded.
    (recoveredBlock1434Value1) y: (recoveredBlock1434Value4).
    recoveredBlock1434Value5 := recoveredBlock1434Value0.
    recoveredBlock1434Value6 := recoveredLocal26.
    recoveredBlock1434Value7 := (80) * (recoveredBlock1434Value6).
    recoveredBlock1434Value8 := (recoveredBlock1434Value7) rounded.
    (recoveredBlock1434Value5) x: (recoveredBlock1434Value8).
    recoveredBlock1434Value9 := recoveredBlock1434Value0.
    (recoveredBlock1434Value9) characterMethod: ('checkFloat:').
    recoveredBlock1434Value10 := recoveredBlock1434Value0.
    recoveredBlock1434Value11 := recoveredLocal25.
    recoveredBlock1434Value12 := (24) * (recoveredBlock1434Value11).
    recoveredBlock1434Value13 := (recoveredBlock1434Value12) rounded.
    (recoveredBlock1434Value10) height: (recoveredBlock1434Value13).
    recoveredBlock1434Value14 := recoveredLocal26.
    recoveredBlock1434Value15 := (104) * (recoveredBlock1434Value14).
    recoveredBlock1434Value16 := (recoveredBlock1434Value15) rounded.
    recoveredBlock1434Value17 := (recoveredBlock1434Value0) width: (recoveredBlock1434Value16).
    recoveredBlock1434Value17
].
            recoveredPC := 1497.
        ].
        recoveredStep = 1497 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1501.
        ].
        recoveredStep = 1501 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1503.
        ].
        recoveredStep = 1503 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 1506.
        ].
        recoveredStep = 1506 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 1509.
        ].
        recoveredStep = 1509 ifTrue: [
            recoveredStack2 := 'dataPhase'.
            recoveredPC := 1512.
        ].
        recoveredStep = 1512 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 1515.
        ].
        recoveredStep = 1515 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1517.
        ].
        recoveredStep = 1517 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 1520.
        ].
        recoveredStep = 1520 ifTrue: [
            recoveredStack2 := 'labelFrequence'.
            recoveredPC := 1524.
        ].
        recoveredStep = 1524 ifTrue: [
            recoveredStack3 := [:recoveredBlock1524Arg1 | 
    | recoveredBlock1524Value0 recoveredBlock1524Value1 recoveredBlock1524Value2 recoveredBlock1524Value3 recoveredBlock1524Value4 recoveredBlock1524Value5 recoveredBlock1524Value6 recoveredBlock1524Value7 recoveredBlock1524Value8 recoveredBlock1524Value9 recoveredBlock1524Value10 recoveredBlock1524Value11 recoveredBlock1524Value12 recoveredBlock1524Value13 recoveredBlock1524Value14 recoveredBlock1524Value15 recoveredBlock1524Value16 recoveredBlock1524Value17 |
    recoveredBlock1524Value0 := recoveredBlock1524Arg1.
    recoveredBlock1524Value1 := recoveredBlock1524Value0.
    recoveredBlock1524Value2 := XmALIGNMENTEND.
    (recoveredBlock1524Value1) alignment: (recoveredBlock1524Value2).
    recoveredBlock1524Value3 := recoveredBlock1524Value0.
    (recoveredBlock1524Value3) labelString: ('Frequency').
    recoveredBlock1524Value4 := recoveredBlock1524Value0.
    recoveredBlock1524Value5 := recoveredLocal25.
    recoveredBlock1524Value6 := (45) * (recoveredBlock1524Value5).
    recoveredBlock1524Value7 := (recoveredBlock1524Value6) rounded.
    (recoveredBlock1524Value4) y: (recoveredBlock1524Value7).
    recoveredBlock1524Value8 := recoveredBlock1524Value0.
    recoveredBlock1524Value9 := recoveredLocal25.
    recoveredBlock1524Value10 := (25) * (recoveredBlock1524Value9).
    recoveredBlock1524Value11 := (recoveredBlock1524Value10) rounded.
    (recoveredBlock1524Value8) height: (recoveredBlock1524Value11).
    recoveredBlock1524Value12 := recoveredBlock1524Value0.
    recoveredBlock1524Value13 := recoveredLocal26.
    recoveredBlock1524Value14 := (76) * (recoveredBlock1524Value13).
    recoveredBlock1524Value15 := (recoveredBlock1524Value14) rounded.
    (recoveredBlock1524Value12) width: (recoveredBlock1524Value15).
    recoveredBlock1524Value16 := recoveredBlock1524Value0.
    recoveredBlock1524Value17 := (self) defaultLabelBlue.
    (recoveredBlock1524Value16) foregroundColor: (recoveredBlock1524Value17).
    recoveredBlock1524Value0
].
            recoveredPC := 1583.
        ].
        recoveredStep = 1583 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1585.
        ].
        recoveredStep = 1585 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1587.
        ].
        recoveredStep = 1587 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 1590.
        ].
        recoveredStep = 1590 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 1593.
        ].
        recoveredStep = 1593 ifTrue: [
            recoveredStack2 := 'labelFrequence'.
            recoveredPC := 1596.
        ].
        recoveredStep = 1596 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 1599.
        ].
        recoveredStep = 1599 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1601.
        ].
        recoveredStep = 1601 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 1604.
        ].
        recoveredStep = 1604 ifTrue: [
            recoveredStack2 := 'dataStimulus'.
            recoveredPC := 1608.
        ].
        recoveredStep = 1608 ifTrue: [
            recoveredStack3 := [:recoveredBlock1608Arg1 | 
    | recoveredBlock1608Value0 recoveredBlock1608Value1 recoveredBlock1608Value2 recoveredBlock1608Value3 recoveredBlock1608Value4 recoveredBlock1608Value5 recoveredBlock1608Value6 recoveredBlock1608Value7 recoveredBlock1608Value8 recoveredBlock1608Value9 recoveredBlock1608Value10 recoveredBlock1608Value11 recoveredBlock1608Value12 recoveredBlock1608Value13 recoveredBlock1608Value14 recoveredBlock1608Value15 recoveredBlock1608Value16 recoveredBlock1608Value17 |
    recoveredBlock1608Value0 := recoveredBlock1608Arg1.
    recoveredBlock1608Value1 := recoveredBlock1608Value0.
    (recoveredBlock1608Value1) visibleItemCount: (10).
    recoveredBlock1608Value2 := recoveredBlock1608Value0.
    recoveredBlock1608Value3 := recoveredLocal26.
    recoveredBlock1608Value4 := (80) * (recoveredBlock1608Value3).
    recoveredBlock1608Value5 := (recoveredBlock1608Value4) rounded.
    (recoveredBlock1608Value2) x: (recoveredBlock1608Value5).
    recoveredBlock1608Value6 := recoveredBlock1608Value0.
    recoveredBlock1608Value7 := recoveredLocal25.
    recoveredBlock1608Value8 := (45) * (recoveredBlock1608Value7).
    recoveredBlock1608Value9 := (recoveredBlock1608Value8) rounded.
    (recoveredBlock1608Value6) y: (recoveredBlock1608Value9).
    recoveredBlock1608Value10 := recoveredBlock1608Value0.
    recoveredBlock1608Value11 := recoveredLocal25.
    recoveredBlock1608Value12 := (24) * (recoveredBlock1608Value11).
    recoveredBlock1608Value13 := (recoveredBlock1608Value12) rounded.
    (recoveredBlock1608Value10) height: (recoveredBlock1608Value13).
    recoveredBlock1608Value14 := recoveredLocal26.
    recoveredBlock1608Value15 := (120) * (recoveredBlock1608Value14).
    recoveredBlock1608Value16 := (recoveredBlock1608Value15) rounded.
    recoveredBlock1608Value17 := (recoveredBlock1608Value0) width: (recoveredBlock1608Value16).
    recoveredBlock1608Value17
].
            recoveredPC := 1669.
        ].
        recoveredStep = 1669 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1673.
        ].
        recoveredStep = 1673 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1675.
        ].
        recoveredStep = 1675 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 1678.
        ].
        recoveredStep = 1678 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 1681.
        ].
        recoveredStep = 1681 ifTrue: [
            recoveredStack2 := 'dataStimulus'.
            recoveredPC := 1684.
        ].
        recoveredStep = 1684 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 1687.
        ].
        recoveredStep = 1687 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1689.
        ].
        recoveredStep = 1689 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 1692.
        ].
        recoveredStep = 1692 ifTrue: [
            recoveredStack2 := 'labelStimulus'.
            recoveredPC := 1696.
        ].
        recoveredStep = 1696 ifTrue: [
            recoveredStack3 := [:recoveredBlock1696Arg1 | 
    | recoveredBlock1696Value0 recoveredBlock1696Value1 recoveredBlock1696Value2 recoveredBlock1696Value3 recoveredBlock1696Value4 recoveredBlock1696Value5 recoveredBlock1696Value6 recoveredBlock1696Value7 recoveredBlock1696Value8 recoveredBlock1696Value9 recoveredBlock1696Value10 recoveredBlock1696Value11 recoveredBlock1696Value12 recoveredBlock1696Value13 recoveredBlock1696Value14 recoveredBlock1696Value15 recoveredBlock1696Value16 recoveredBlock1696Value17 recoveredBlock1696Value18 recoveredBlock1696Value19 recoveredBlock1696Value20 recoveredBlock1696Value21 |
    recoveredBlock1696Value0 := recoveredBlock1696Arg1.
    recoveredBlock1696Value1 := recoveredBlock1696Value0.
    recoveredBlock1696Value2 := recoveredLocal26.
    recoveredBlock1696Value3 := (5) * (recoveredBlock1696Value2).
    recoveredBlock1696Value4 := (recoveredBlock1696Value3) rounded.
    (recoveredBlock1696Value1) x: (recoveredBlock1696Value4).
    recoveredBlock1696Value5 := recoveredBlock1696Value0.
    recoveredBlock1696Value6 := XmALIGNMENTEND.
    (recoveredBlock1696Value5) alignment: (recoveredBlock1696Value6).
    recoveredBlock1696Value7 := recoveredBlock1696Value0.
    (recoveredBlock1696Value7) labelString: ('Stimulus').
    recoveredBlock1696Value8 := recoveredBlock1696Value0.
    recoveredBlock1696Value9 := recoveredLocal25.
    recoveredBlock1696Value10 := (45) * (recoveredBlock1696Value9).
    recoveredBlock1696Value11 := (recoveredBlock1696Value10) rounded.
    (recoveredBlock1696Value8) y: (recoveredBlock1696Value11).
    recoveredBlock1696Value12 := recoveredBlock1696Value0.
    recoveredBlock1696Value13 := recoveredLocal25.
    recoveredBlock1696Value14 := (24) * (recoveredBlock1696Value13).
    recoveredBlock1696Value15 := (recoveredBlock1696Value14) rounded.
    (recoveredBlock1696Value12) height: (recoveredBlock1696Value15).
    recoveredBlock1696Value16 := recoveredBlock1696Value0.
    recoveredBlock1696Value17 := recoveredLocal26.
    recoveredBlock1696Value18 := (71) * (recoveredBlock1696Value17).
    recoveredBlock1696Value19 := (recoveredBlock1696Value18) rounded.
    (recoveredBlock1696Value16) width: (recoveredBlock1696Value19).
    recoveredBlock1696Value20 := recoveredBlock1696Value0.
    recoveredBlock1696Value21 := (self) defaultLabelBlue.
    (recoveredBlock1696Value20) foregroundColor: (recoveredBlock1696Value21).
    recoveredBlock1696Value0
].
            recoveredPC := 1767.
        ].
        recoveredStep = 1767 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1769.
        ].
        recoveredStep = 1769 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1771.
        ].
        recoveredStep = 1771 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 1774.
        ].
        recoveredStep = 1774 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 1777.
        ].
        recoveredStep = 1777 ifTrue: [
            recoveredStack2 := 'labelStimulus'.
            recoveredPC := 1780.
        ].
        recoveredStep = 1780 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 1783.
        ].
        recoveredStep = 1783 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1785.
        ].
        recoveredStep = 1785 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 1788.
        ].
        recoveredStep = 1788 ifTrue: [
            recoveredStack2 := 'dataTimeScale'.
            recoveredPC := 1792.
        ].
        recoveredStep = 1792 ifTrue: [
            recoveredStack3 := [:recoveredBlock1792Arg1 | 
    | recoveredBlock1792Value0 recoveredBlock1792Value1 recoveredBlock1792Value2 recoveredBlock1792Value3 recoveredBlock1792Value4 recoveredBlock1792Value5 recoveredBlock1792Value6 recoveredBlock1792Value7 recoveredBlock1792Value8 recoveredBlock1792Value9 recoveredBlock1792Value10 recoveredBlock1792Value11 recoveredBlock1792Value12 recoveredBlock1792Value13 recoveredBlock1792Value14 recoveredBlock1792Value15 recoveredBlock1792Value16 recoveredBlock1792Value17 |
    recoveredBlock1792Value0 := recoveredBlock1792Arg1.
    recoveredBlock1792Value1 := recoveredBlock1792Value0.
    recoveredBlock1792Value2 := recoveredLocal25.
    recoveredBlock1792Value3 := (45) * (recoveredBlock1792Value2).
    recoveredBlock1792Value4 := (recoveredBlock1792Value3) rounded.
    (recoveredBlock1792Value1) y: (recoveredBlock1792Value4).
    recoveredBlock1792Value5 := recoveredBlock1792Value0.
    recoveredBlock1792Value6 := recoveredLocal26.
    recoveredBlock1792Value7 := (80) * (recoveredBlock1792Value6).
    recoveredBlock1792Value8 := (recoveredBlock1792Value7) rounded.
    (recoveredBlock1792Value5) x: (recoveredBlock1792Value8).
    recoveredBlock1792Value9 := recoveredBlock1792Value0.
    (recoveredBlock1792Value9) characterMethod: ('checkFloat:').
    recoveredBlock1792Value10 := recoveredBlock1792Value0.
    recoveredBlock1792Value11 := recoveredLocal25.
    recoveredBlock1792Value12 := (24) * (recoveredBlock1792Value11).
    recoveredBlock1792Value13 := (recoveredBlock1792Value12) rounded.
    (recoveredBlock1792Value10) height: (recoveredBlock1792Value13).
    recoveredBlock1792Value14 := recoveredLocal26.
    recoveredBlock1792Value15 := (104) * (recoveredBlock1792Value14).
    recoveredBlock1792Value16 := (recoveredBlock1792Value15) rounded.
    recoveredBlock1792Value17 := (recoveredBlock1792Value0) width: (recoveredBlock1792Value16).
    recoveredBlock1792Value17
].
            recoveredPC := 1853.
        ].
        recoveredStep = 1853 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1857.
        ].
        recoveredStep = 1857 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1859.
        ].
        recoveredStep = 1859 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 1862.
        ].
        recoveredStep = 1862 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 1865.
        ].
        recoveredStep = 1865 ifTrue: [
            recoveredStack2 := 'dataTimeScale'.
            recoveredPC := 1868.
        ].
        recoveredStep = 1868 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 1871.
        ].
        recoveredStep = 1871 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1873.
        ].
        recoveredStep = 1873 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 1876.
        ].
        recoveredStep = 1876 ifTrue: [
            recoveredStack2 := 'labelTimeScale'.
            recoveredPC := 1880.
        ].
        recoveredStep = 1880 ifTrue: [
            recoveredStack3 := [:recoveredBlock1880Arg1 | 
    | recoveredBlock1880Value0 recoveredBlock1880Value1 recoveredBlock1880Value2 recoveredBlock1880Value3 recoveredBlock1880Value4 recoveredBlock1880Value5 recoveredBlock1880Value6 recoveredBlock1880Value7 recoveredBlock1880Value8 recoveredBlock1880Value9 recoveredBlock1880Value10 recoveredBlock1880Value11 recoveredBlock1880Value12 recoveredBlock1880Value13 recoveredBlock1880Value14 recoveredBlock1880Value15 recoveredBlock1880Value16 recoveredBlock1880Value17 recoveredBlock1880Value18 recoveredBlock1880Value19 recoveredBlock1880Value20 recoveredBlock1880Value21 |
    recoveredBlock1880Value0 := recoveredBlock1880Arg1.
    recoveredBlock1880Value1 := recoveredBlock1880Value0.
    recoveredBlock1880Value2 := recoveredLocal26.
    recoveredBlock1880Value3 := (5) * (recoveredBlock1880Value2).
    recoveredBlock1880Value4 := (recoveredBlock1880Value3) rounded.
    (recoveredBlock1880Value1) x: (recoveredBlock1880Value4).
    recoveredBlock1880Value5 := recoveredBlock1880Value0.
    recoveredBlock1880Value6 := XmALIGNMENTEND.
    (recoveredBlock1880Value5) alignment: (recoveredBlock1880Value6).
    recoveredBlock1880Value7 := recoveredBlock1880Value0.
    (recoveredBlock1880Value7) labelString: ('Time Scale').
    recoveredBlock1880Value8 := recoveredBlock1880Value0.
    recoveredBlock1880Value9 := recoveredLocal25.
    recoveredBlock1880Value10 := (45) * (recoveredBlock1880Value9).
    recoveredBlock1880Value11 := (recoveredBlock1880Value10) rounded.
    (recoveredBlock1880Value8) y: (recoveredBlock1880Value11).
    recoveredBlock1880Value12 := recoveredBlock1880Value0.
    recoveredBlock1880Value13 := recoveredLocal25.
    recoveredBlock1880Value14 := (24) * (recoveredBlock1880Value13).
    recoveredBlock1880Value15 := (recoveredBlock1880Value14) rounded.
    (recoveredBlock1880Value12) height: (recoveredBlock1880Value15).
    recoveredBlock1880Value16 := recoveredBlock1880Value0.
    recoveredBlock1880Value17 := recoveredLocal26.
    recoveredBlock1880Value18 := (71) * (recoveredBlock1880Value17).
    recoveredBlock1880Value19 := (recoveredBlock1880Value18) rounded.
    (recoveredBlock1880Value16) width: (recoveredBlock1880Value19).
    recoveredBlock1880Value20 := recoveredBlock1880Value0.
    recoveredBlock1880Value21 := (self) defaultLabelBlue.
    (recoveredBlock1880Value20) foregroundColor: (recoveredBlock1880Value21).
    recoveredBlock1880Value0
].
            recoveredPC := 1951.
        ].
        recoveredStep = 1951 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1953.
        ].
        recoveredStep = 1953 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1955.
        ].
        recoveredStep = 1955 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 1958.
        ].
        recoveredStep = 1958 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 1961.
        ].
        recoveredStep = 1961 ifTrue: [
            recoveredStack2 := 'labelTimeScale'.
            recoveredPC := 1964.
        ].
        recoveredStep = 1964 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 1967.
        ].
        recoveredStep = 1967 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1969.
        ].
        recoveredStep = 1969 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 1972.
        ].
        recoveredStep = 1972 ifTrue: [
            recoveredStack2 := [:recoveredBlock1972Arg1 | 
    | recoveredBlock1972Value0 recoveredBlock1972Value1 recoveredBlock1972Value2 |
    recoveredBlock1972Value0 := recoveredBlock1972Arg1.
    recoveredBlock1972Value1 := recoveredLocal22.
    recoveredBlock1972Value2 := (recoveredBlock1972Value0) workWindow: (recoveredBlock1972Value1).
    recoveredBlock1972Value2
].
            recoveredPC := 1988.
        ].
        recoveredStep = 1988 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1993.
        ].
        recoveredStep = 1993 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 1996.
        ].
        recoveredStep = 1996 ifTrue: [
            recoveredStack2 := [:recoveredBlock1996Arg1 | 
    | recoveredBlock1996Value0 recoveredBlock1996Value1 recoveredBlock1996Value2 recoveredBlock1996Value3 recoveredBlock1996Value4 |
    recoveredBlock1996Value0 := recoveredBlock1996Arg1.
    recoveredBlock1996Value1 := recoveredBlock1996Value0.
    recoveredBlock1996Value2 := recoveredLocal13.
    (recoveredBlock1996Value1) cancelButton: (recoveredBlock1996Value2).
    recoveredBlock1996Value3 := recoveredLocal21.
    recoveredBlock1996Value4 := (recoveredBlock1996Value0) defaultButton: (recoveredBlock1996Value3).
    recoveredBlock1996Value4
].
            recoveredPC := 2020.
        ].
        recoveredStep = 2020 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2025.
        ].
        recoveredStep = 2025 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 2028.
        ].
        recoveredStep = 2028 ifTrue: [
            recoveredStack2 := [:block281301d4Arg1 | 
    | block281301d4Value0 block281301d4Value1 block281301d4Value2 block281301d4Value3 block281301d4Value4 |
    block281301d4Value0 := block281301d4Arg1.
    block281301d4Value1 := block281301d4Value0.
    block281301d4Value2 := XmATTACHFORM.
    (block281301d4Value1) bottomAttachment: (block281301d4Value2).
    block281301d4Value3 := XmATTACHFORM.
    block281301d4Value4 := (block281301d4Value0) topAttachment: (block281301d4Value3).
    block281301d4Value4
].
            recoveredPC := 2032.
        ].
        recoveredStep = 2032 ifTrue: [
            recoveredPC := 2056.
        ].
        recoveredStep = 2056 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2061.
        ].
        recoveredStep = 2061 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 2064.
        ].
        recoveredStep = 2064 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2068.
        ].
        recoveredStep = 2068 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2069.
        ].
        recoveredStep = 2069 ifTrue: [
            recoveredStack4 := 'dataOkActivate:clientData:callData:'.
            recoveredPC := 2072.
        ].
        recoveredStep = 2072 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2073.
        ].
        recoveredStep = 2073 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2077.
        ].
        recoveredStep = 2077 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 2080.
        ].
        recoveredStep = 2080 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2084.
        ].
        recoveredStep = 2084 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2085.
        ].
        recoveredStep = 2085 ifTrue: [
            recoveredStack4 := 'buttonTableActivate:clientData:callData:'.
            recoveredPC := 2088.
        ].
        recoveredStep = 2088 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2089.
        ].
        recoveredStep = 2089 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2093.
        ].
        recoveredStep = 2093 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 2096.
        ].
        recoveredStep = 2096 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2100.
        ].
        recoveredStep = 2100 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2101.
        ].
        recoveredStep = 2101 ifTrue: [
            recoveredStack4 := 'dataApplyActivate:clientData:callData:'.
            recoveredPC := 2104.
        ].
        recoveredStep = 2104 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2105.
        ].
        recoveredStep = 2105 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2109.
        ].
        recoveredStep = 2109 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 2112.
        ].
        recoveredStep = 2112 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2116.
        ].
        recoveredStep = 2116 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2117.
        ].
        recoveredStep = 2117 ifTrue: [
            recoveredStack4 := 'dataCancelActivate:clientData:callData:'.
            recoveredPC := 2120.
        ].
        recoveredStep = 2120 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2121.
        ].
        recoveredStep = 2121 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2125.
        ].
        recoveredStep = 2125 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 2128.
        ].
        recoveredStep = 2128 ifTrue: [
            recoveredStack2 := XmNmodifyVerifyCallback.
            recoveredPC := 2132.
        ].
        recoveredStep = 2132 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2133.
        ].
        recoveredStep = 2133 ifTrue: [
            recoveredStack4 := 'dataFrequenceModify:clientData:callData:'.
            recoveredPC := 2136.
        ].
        recoveredStep = 2136 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2137.
        ].
        recoveredStep = 2137 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2141.
        ].
        recoveredStep = 2141 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 2144.
        ].
        recoveredStep = 2144 ifTrue: [
            recoveredStack2 := XmNsingleSelectionCallback.
            recoveredPC := 2148.
        ].
        recoveredStep = 2148 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2149.
        ].
        recoveredStep = 2149 ifTrue: [
            recoveredStack4 := 'dataModeSingle:clientData:callData:'.
            recoveredPC := 2152.
        ].
        recoveredStep = 2152 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2153.
        ].
        recoveredStep = 2153 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2157.
        ].
        recoveredStep = 2157 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 2160.
        ].
        recoveredStep = 2160 ifTrue: [
            recoveredStack2 := XmNmodifyVerifyCallback.
            recoveredPC := 2164.
        ].
        recoveredStep = 2164 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2165.
        ].
        recoveredStep = 2165 ifTrue: [
            recoveredStack4 := 'dataFrequenceModify:clientData:callData:'.
            recoveredPC := 2168.
        ].
        recoveredStep = 2168 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2169.
        ].
        recoveredStep = 2169 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2173.
        ].
        recoveredStep = 2173 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 2176.
        ].
        recoveredStep = 2176 ifTrue: [
            recoveredStack2 := XmNsingleSelectionCallback.
            recoveredPC := 2180.
        ].
        recoveredStep = 2180 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2181.
        ].
        recoveredStep = 2181 ifTrue: [
            recoveredStack4 := 'dataStimulusSingle:clientData:callData:'.
            recoveredPC := 2184.
        ].
        recoveredStep = 2184 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2185.
        ].
        recoveredStep = 2185 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2189.
        ].
        recoveredStep = 2189 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 2192.
        ].
        recoveredStep = 2192 ifTrue: [
            recoveredStack2 := XmNmodifyVerifyCallback.
            recoveredPC := 2196.
        ].
        recoveredStep = 2196 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2197.
        ].
        recoveredStep = 2197 ifTrue: [
            recoveredStack4 := 'dataFrequenceModify:clientData:callData:'.
            recoveredPC := 2200.
        ].
        recoveredStep = 2200 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2201.
        ].
        recoveredStep = 2201 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2205.
        ].
        recoveredStep = 2205 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 2208.
        ].
        recoveredStep = 2208 ifTrue: [
            recoveredStack2 := recoveredLocal27.
            recoveredPC := 2211.
        ].
        recoveredStep = 2211 ifTrue: [
            recoveredStack3 := recoveredLocal23.
            recoveredPC := 2214.
        ].
        recoveredStep = 2214 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 2219.
        ].
        recoveredStep = 2219 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

