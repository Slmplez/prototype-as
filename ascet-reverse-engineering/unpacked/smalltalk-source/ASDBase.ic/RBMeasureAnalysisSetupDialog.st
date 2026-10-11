"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000550; bytecode file offset 0x8ffcfc"
!RBMeasureAnalysisSetupDialog methodsFor: 'recovered'!
help
    ^self
! !

"ASDBase.ic method 0x2005a458; bytecode file offset 0x957a6c"
!RBMeasureAnalysisSetupDialog methodsFor: 'recovered'!
cancelButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) cancel.
    ^self
! !

"ASDBase.ic method 0x2005aee4; bytecode file offset 0x957a6c"
!RBMeasureAnalysisSetupDialog methodsFor: 'recovered'!
okButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) ok.
    ^self
! !

"ASDBase.ic method 0x2005af98; bytecode file offset 0x957a6c"
!RBMeasureAnalysisSetupDialog methodsFor: 'recovered'!
helpButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) help.
    ^self
! !

"ASDBase.ic method 0x20070a40; bytecode file offset 0x96d3ec"
!RBMeasureAnalysisSetupDialog methodsFor: 'recovered'!
timePrecision
    | recoveredValue0 |
    recoveredValue0 := timePrecision.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070cb4; bytecode file offset 0x96d580"
!RBMeasureAnalysisSetupDialog methodsFor: 'recovered'!
valPrecision
    | recoveredValue0 |
    recoveredValue0 := valPrecision.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c6ecc; bytecode file offset 0x9c38d8"
!RBMeasureAnalysisSetupDialog methodsFor: 'recovered'!
owner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    owner := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d6284; bytecode file offset 0x9d3134"
!RBMeasureAnalysisSetupDialog methodsFor: 'recovered'!
initializeAfterOpen
    super initializeAfterOpen.
    (self) setDefaultIcon.
    ^self
! !

"ASDBase.ic method 0x200de510; bytecode file offset 0x9dae4c"
!RBMeasureAnalysisSetupDialog methodsFor: 'recovered'!
aForm1Destroy: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    super aForm1Destroy: (recoveredValue0) clientData: (recoveredValue1) callData: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2014e8d0; bytecode file offset 0xa4b188"
!RBMeasureAnalysisSetupDialog methodsFor: 'recovered'!
cancel
    jumpDistance := nil.
    bigJumpDistance := nil.
    timePrecision := nil.
    valPrecision := nil.
    (self) close.
    ^self
! !

"ASDBase.ic method 0x20157ab8; bytecode file offset 0xa54380"
!RBMeasureAnalysisSetupDialog methodsFor: 'recovered'!
jumpNextTToggleValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetAt: ('jumpDtToggle').
    (recoveredValue0) setState: (false) notify: (false).
    recoveredValue1 := (self) widgetAt: ('jumpDistanceEditor').
    (recoveredValue1) setSensitive: (false).
    ^self
! !

"ASDBase.ic method 0x20157ae8; bytecode file offset 0xa543b0"
!RBMeasureAnalysisSetupDialog methodsFor: 'recovered'!
jumpDtToggleValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetAt: ('jumpNextTToggle').
    (recoveredValue0) setState: (false) notify: (false).
    recoveredValue1 := (self) widgetAt: ('jumpDistanceEditor').
    (recoveredValue1) setSensitive: (true).
    ^self
! !

"ASDBase.ic method 0x2017fc08; bytecode file offset 0xa7c4bc"
!RBMeasureAnalysisSetupDialog methodsFor: 'recovered'!
bigJumpDistance
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := bigJumpDistance.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := bigJumpDistance.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := bigJumpDistance.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201919e8; bytecode file offset 0xa8e2a8"
!RBMeasureAnalysisSetupDialog methodsFor: 'recovered'!
jumpToNextTimeMode
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := jumpDistance.
    recoveredValue1 := [
    ^nil
].
    (recoveredValue0) at: ('jumpToNextTimeMode') ifAbsent: (recoveredValue1).
    recoveredValue2 := jumpDistance.
    recoveredValue3 := (recoveredValue2) at: ('jumpToNextTimeMode').
    ^recoveredValue3
! !

"ASDBase.ic method 0x201e5ffc; bytecode file offset 0xae28e0"
!RBMeasureAnalysisSetupDialog methodsFor: 'recovered'!
jumpToNextTimeMode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := jumpDistance.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := LookupTable.
    recoveredBlock6Value1 := (recoveredBlock6Value0) new.
    recoveredBlock6Value2 := recoveredBlock6Value1.
    jumpDistance := recoveredBlock6Value2.
    recoveredBlock6Value1
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := jumpDistance.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: ('jumpToNextTimeMode') put: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201e6018; bytecode file offset 0xae28e0"
!RBMeasureAnalysisSetupDialog methodsFor: 'recovered'!
jumpDistance: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := jumpDistance.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := LookupTable.
    recoveredBlock6Value1 := (recoveredBlock6Value0) new.
    recoveredBlock6Value2 := recoveredBlock6Value1.
    jumpDistance := recoveredBlock6Value2.
    recoveredBlock6Value1
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := jumpDistance.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: ('jumpDistance') put: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20254b0c; bytecode file offset 0xb513d0"
!RBMeasureAnalysisSetupDialog methodsFor: 'recovered'!
jumpDistance
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := jumpDistance.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'jumpDistance'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := jumpDistance.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 'jumpDistance'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := #[0 0 0 0 0 0 0 0].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := jumpDistance.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 'jumpDistance'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202e0f80; bytecode file offset 0xbdd868"
!RBMeasureAnalysisSetupDialog methodsFor: 'recovered'!
ok
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) widgetAt: ('jumpNextTToggle').
    recoveredValue1 := (recoveredValue0) getState.
    (self) jumpToNextTimeMode: (recoveredValue1).
    recoveredValue2 := (self) widgetAt: ('jumpDistanceEditor').
    recoveredValue3 := (recoveredValue2) getString.
    recoveredValue4 := (recoveredValue3) asFloat.
    (self) jumpDistance: (recoveredValue4).
    recoveredValue5 := (self) widgetAt: ('bigJumpDistanceEditor').
    recoveredValue6 := (recoveredValue5) value.
    bigJumpDistance := recoveredValue6.
    recoveredValue7 := (self) widgetAt: ('timePrecisionEditor').
    recoveredValue8 := (recoveredValue7) value.
    timePrecision := recoveredValue8.
    recoveredValue9 := (self) widgetAt: ('valPrecisionEditor').
    recoveredValue10 := (recoveredValue9) value.
    valPrecision := recoveredValue10.
    (self) close.
    ^self
! !

"ASDBase.ic method 0x2037a038; bytecode file offset 0xc76928"
!RBMeasureAnalysisSetupDialog methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
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
    recoveredValue8 := Character.
    recoveredValue9 := (recoveredValue8) value: (13).
    (recoveredValue7) at: (recoveredValue9) put: ('ok').
    recoveredValue10 := recoveredValue4.
    recoveredValue11 := XKF1.
    (recoveredValue10) at: (recoveredValue11) put: ('help').
    recoveredValue12 := recoveredValue4.
    recoveredValue13 := HKOk.
    (recoveredValue12) at: (recoveredValue13) put: ('ok').
    recoveredValue14 := recoveredValue4.
    recoveredValue15 := HKCancel.
    (recoveredValue14) at: (recoveredValue15) put: ('cancel').
    recoveredValue16 := HKHelp.
    (recoveredValue4) at: (recoveredValue16) put: ('help').
    recoveredValue17 := recoveredLocal2.
    recoveredValue18 := (self) shell.
    recoveredValue19 := recoveredLocal1.
    (recoveredValue17) at: (recoveredValue18) put: (recoveredValue19).
    recoveredValue20 := recoveredLocal2.
    (self) widgetKeyActions: (recoveredValue20).
    ^self
! !

"ASDBase.ic method 0x20617660; bytecode file offset 0xf14000"
!RBMeasureAnalysisSetupDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack1 := 'ASCET16'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'ASCET32'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) iconSmall: (recoveredStack1) large: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'aLabel1'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := SCMeasureCursorMode.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) labelString: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultLabelBlue.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) foregroundColor: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 'jumpNextTToggle'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := SCJumpToNextTime.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 'jumpDtToggle'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := SCJumpForDeltaT.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := 'aLabel3'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := SCBigJumpDistance.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) labelString: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultLabelBlue.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) foregroundColor: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := 'aLabel4'.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := SCTimeValues.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := 'aLabel5'.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := SCPrecision.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) labelString: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultLabelBlue.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) foregroundColor: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := 'aLabel6'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := SCTime.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := 'aLabel7'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := SCValues.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := 'okButton'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := SCOk.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := 'cancelButton'.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := SCCancel.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := 'helpButton'.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := SCHelp.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := SCMeasureAnalysisSetup.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0) title: (recoveredStack1).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := owner.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) analysisJumpToNextTimeMode.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := 'jumpNextTToggle'.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0) setState: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := 'jumpDtToggle'.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0) setState: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := owner.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := (recoveredStack0) analysisJumpDistance.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 175] ifFalse: [recoveredPC := 172].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := #[0 0 0 0 0 0 0 0].
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := 'jumpDistanceEditor'.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 190] ifFalse: [recoveredPC := 198].
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := 'jumpDistanceEditor'.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack0) setSensitive: (recoveredStack1).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := 'bigJumpDistanceEditor'.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack1) editable: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack1) minimum: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack2 := 200.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            (recoveredStack1) maximum: (recoveredStack2).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := owner.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := (recoveredStack1) analysisBigJumpDistance.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := 'timePrecisionEditor'.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            (recoveredStack1) editable: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            (recoveredStack1) minimum: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack2 := 8.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            (recoveredStack1) maximum: (recoveredStack2).
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := owner.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := (recoveredStack1) analysisTimePrecision.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := 'valPrecisionEditor'.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            (recoveredStack1) editable: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            (recoveredStack1) minimum: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack2 := 8.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            (recoveredStack1) maximum: (recoveredStack2).
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := owner.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := (recoveredStack1) analysisValPrecision.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack1 := 'helpButton'.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack0 := smallFont.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 511] ifFalse: [recoveredPC := 298].
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack1 := 'aLabel1'.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := 'jumpNextTToggle'.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack1 := 'jumpDtToggle'.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack1 := 'aLabel2'.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack1 := 'aLabel3'.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack1 := 'aLabel4'.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack1 := 'aLabel5'.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack1 := 'aLabel6'.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack1 := 'aLabel7'.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack1 := 'okButton'.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack1 := 'cancelButton'.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack1 := 'helpButton'.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack1 := 'jumpDistanceEditor'.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack2 := smallFont.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            (recoveredStack1) fontList: (recoveredStack2).
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontStruct.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack2 := 6.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack1 := 'bigJumpDistanceEditor'.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack2 := smallFont.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            (recoveredStack1) fontList: (recoveredStack2).
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontStruct.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack2 := 6.
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack1 := 'timePrecisionEditor'.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack2 := smallFont.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            (recoveredStack1) fontList: (recoveredStack2).
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontStruct.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack2 := 6.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack1 := 'valPrecisionEditor'.
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredStack2 := smallFont.
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            (recoveredStack1) fontList: (recoveredStack2).
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontStruct.
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack2 := 6.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20692430; bytecode file offset 0xf8eec8"
!RBMeasureAnalysisSetupDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredLocal19 recoveredLocal20 recoveredLocal21 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal21 := recoveredStack1.
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
            recoveredStack3 := [:block2812b74cArg1 | 
    | block2812b74cValue0 block2812b74cValue1 block2812b74cValue2 block2812b74cValue3 block2812b74cValue4 block2812b74cValue5 |
    block2812b74cValue0 := block2812b74cArg1.
    block2812b74cValue1 := block2812b74cValue0.
    block2812b74cValue2 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (block2812b74cValue1) mwmInputMode: (block2812b74cValue2).
    block2812b74cValue3 := block2812b74cValue0.
    (block2812b74cValue3) title: ('Measure Analysis Setup').
    block2812b74cValue4 := block2812b74cValue0.
    (block2812b74cValue4) height: (206).
    block2812b74cValue5 := (block2812b74cValue0) width: (476).
    block2812b74cValue5
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
            recoveredLocal20 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredLocal20.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal20.
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
            recoveredLocal19 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := recoveredLocal19.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal19.
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
            recoveredLocal18 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := recoveredLocal18.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := 'aLabel1'.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := [:recoveredBlock109Arg1 | 
    | recoveredBlock109Value0 recoveredBlock109Value1 recoveredBlock109Value2 recoveredBlock109Value3 recoveredBlock109Value4 recoveredBlock109Value5 recoveredBlock109Value6 recoveredBlock109Value7 recoveredBlock109Value8 recoveredBlock109Value9 recoveredBlock109Value10 recoveredBlock109Value11 recoveredBlock109Value12 recoveredBlock109Value13 |
    recoveredBlock109Value0 := recoveredBlock109Arg1.
    recoveredBlock109Value1 := recoveredBlock109Value0.
    (recoveredBlock109Value1) x: (10).
    recoveredBlock109Value2 := recoveredBlock109Value0.
    (recoveredBlock109Value2) marginRight: (10).
    recoveredBlock109Value3 := recoveredBlock109Value0.
    recoveredBlock109Value4 := XmALIGNMENTBEGINNING.
    (recoveredBlock109Value3) alignment: (recoveredBlock109Value4).
    recoveredBlock109Value5 := recoveredBlock109Value0.
    (recoveredBlock109Value5) labelString: ('Measure cursor jump mode').
    recoveredBlock109Value6 := recoveredBlock109Value0.
    (recoveredBlock109Value6) marginWidth: (0).
    recoveredBlock109Value7 := recoveredBlock109Value0.
    (recoveredBlock109Value7) marginHeight: (0).
    recoveredBlock109Value8 := recoveredBlock109Value0.
    (recoveredBlock109Value8) y: (10).
    recoveredBlock109Value9 := recoveredBlock109Value0.
    (recoveredBlock109Value9) height: (20).
    recoveredBlock109Value10 := recoveredBlock109Value0.
    (recoveredBlock109Value10) marginBottom: (10).
    recoveredBlock109Value11 := recoveredBlock109Value0.
    (recoveredBlock109Value11) width: (331).
    recoveredBlock109Value12 := (self) defaultLabelBlue.
    recoveredBlock109Value13 := (recoveredBlock109Value0) foregroundColor: (recoveredBlock109Value12).
    recoveredBlock109Value13
].
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredLocal17 := recoveredStack1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := 'aLabel1'.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack3 := recoveredLocal17.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := 'aLabel3'.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack3 := [:recoveredBlock196Arg1 | 
    | recoveredBlock196Value0 recoveredBlock196Value1 recoveredBlock196Value2 recoveredBlock196Value3 recoveredBlock196Value4 recoveredBlock196Value5 recoveredBlock196Value6 recoveredBlock196Value7 recoveredBlock196Value8 recoveredBlock196Value9 recoveredBlock196Value10 recoveredBlock196Value11 recoveredBlock196Value12 recoveredBlock196Value13 |
    recoveredBlock196Value0 := recoveredBlock196Arg1.
    recoveredBlock196Value1 := recoveredBlock196Value0.
    (recoveredBlock196Value1) x: (10).
    recoveredBlock196Value2 := recoveredBlock196Value0.
    (recoveredBlock196Value2) marginRight: (10).
    recoveredBlock196Value3 := recoveredBlock196Value0.
    recoveredBlock196Value4 := XmALIGNMENTBEGINNING.
    (recoveredBlock196Value3) alignment: (recoveredBlock196Value4).
    recoveredBlock196Value5 := recoveredBlock196Value0.
    (recoveredBlock196Value5) labelString: ('Jump distance of ''long'' jumps').
    recoveredBlock196Value6 := recoveredBlock196Value0.
    (recoveredBlock196Value6) marginWidth: (0).
    recoveredBlock196Value7 := recoveredBlock196Value0.
    (recoveredBlock196Value7) marginHeight: (0).
    recoveredBlock196Value8 := recoveredBlock196Value0.
    (recoveredBlock196Value8) y: (90).
    recoveredBlock196Value9 := recoveredBlock196Value0.
    (recoveredBlock196Value9) height: (20).
    recoveredBlock196Value10 := recoveredBlock196Value0.
    (recoveredBlock196Value10) marginBottom: (10).
    recoveredBlock196Value11 := recoveredBlock196Value0.
    (recoveredBlock196Value11) width: (329).
    recoveredBlock196Value12 := (self) defaultLabelBlue.
    recoveredBlock196Value13 := (recoveredBlock196Value0) foregroundColor: (recoveredBlock196Value12).
    recoveredBlock196Value13
].
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack2 := 'aLabel3'.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack3 := recoveredLocal16.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack2 := 'aLabel4'.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack3 := [:block2812b770Arg1 | 
    | block2812b770Value0 block2812b770Value1 block2812b770Value2 block2812b770Value3 block2812b770Value4 block2812b770Value5 block2812b770Value6 block2812b770Value7 block2812b770Value8 block2812b770Value9 block2812b770Value10 |
    block2812b770Value0 := block2812b770Arg1.
    block2812b770Value1 := block2812b770Value0.
    (block2812b770Value1) x: (95).
    block2812b770Value2 := block2812b770Value0.
    (block2812b770Value2) marginRight: (10).
    block2812b770Value3 := block2812b770Value0.
    block2812b770Value4 := XmALIGNMENTBEGINNING.
    (block2812b770Value3) alignment: (block2812b770Value4).
    block2812b770Value5 := block2812b770Value0.
    (block2812b770Value5) labelString: ('time steps').
    block2812b770Value6 := block2812b770Value0.
    (block2812b770Value6) marginWidth: (0).
    block2812b770Value7 := block2812b770Value0.
    (block2812b770Value7) marginHeight: (0).
    block2812b770Value8 := block2812b770Value0.
    (block2812b770Value8) y: (115).
    block2812b770Value9 := block2812b770Value0.
    (block2812b770Value9) height: (20).
    block2812b770Value10 := (block2812b770Value0) marginBottom: (10).
    block2812b770Value10
].
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack2 := 'aLabel4'.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack3 := recoveredLocal15.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack2 := 'aLabel5'.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack3 := [:recoveredBlock362Arg1 | 
    | recoveredBlock362Value0 recoveredBlock362Value1 recoveredBlock362Value2 recoveredBlock362Value3 recoveredBlock362Value4 recoveredBlock362Value5 recoveredBlock362Value6 recoveredBlock362Value7 recoveredBlock362Value8 recoveredBlock362Value9 recoveredBlock362Value10 recoveredBlock362Value11 recoveredBlock362Value12 recoveredBlock362Value13 |
    recoveredBlock362Value0 := recoveredBlock362Arg1.
    recoveredBlock362Value1 := recoveredBlock362Value0.
    (recoveredBlock362Value1) x: (10).
    recoveredBlock362Value2 := recoveredBlock362Value0.
    (recoveredBlock362Value2) marginRight: (10).
    recoveredBlock362Value3 := recoveredBlock362Value0.
    recoveredBlock362Value4 := XmALIGNMENTBEGINNING.
    (recoveredBlock362Value3) alignment: (recoveredBlock362Value4).
    recoveredBlock362Value5 := recoveredBlock362Value0.
    (recoveredBlock362Value5) labelString: ('Number of decimals').
    recoveredBlock362Value6 := recoveredBlock362Value0.
    (recoveredBlock362Value6) marginWidth: (0).
    recoveredBlock362Value7 := recoveredBlock362Value0.
    (recoveredBlock362Value7) marginHeight: (0).
    recoveredBlock362Value8 := recoveredBlock362Value0.
    (recoveredBlock362Value8) y: (150).
    recoveredBlock362Value9 := recoveredBlock362Value0.
    (recoveredBlock362Value9) height: (20).
    recoveredBlock362Value10 := recoveredBlock362Value0.
    (recoveredBlock362Value10) marginBottom: (10).
    recoveredBlock362Value11 := recoveredBlock362Value0.
    (recoveredBlock362Value11) width: (332).
    recoveredBlock362Value12 := (self) defaultLabelBlue.
    recoveredBlock362Value13 := (recoveredBlock362Value0) foregroundColor: (recoveredBlock362Value12).
    recoveredBlock362Value13
].
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack2 := 'aLabel5'.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack2 := 'aLabel6'.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack3 := [:block2812b794Arg1 | 
    | block2812b794Value0 block2812b794Value1 block2812b794Value2 block2812b794Value3 block2812b794Value4 block2812b794Value5 block2812b794Value6 block2812b794Value7 block2812b794Value8 block2812b794Value9 block2812b794Value10 block2812b794Value11 |
    block2812b794Value0 := block2812b794Arg1.
    block2812b794Value1 := block2812b794Value0.
    (block2812b794Value1) x: (35).
    block2812b794Value2 := block2812b794Value0.
    (block2812b794Value2) marginRight: (10).
    block2812b794Value3 := block2812b794Value0.
    block2812b794Value4 := XmALIGNMENTBEGINNING.
    (block2812b794Value3) alignment: (block2812b794Value4).
    block2812b794Value5 := block2812b794Value0.
    (block2812b794Value5) labelString: ('Time').
    block2812b794Value6 := block2812b794Value0.
    (block2812b794Value6) marginWidth: (0).
    block2812b794Value7 := block2812b794Value0.
    (block2812b794Value7) marginHeight: (0).
    block2812b794Value8 := block2812b794Value0.
    (block2812b794Value8) y: (175).
    block2812b794Value9 := block2812b794Value0.
    (block2812b794Value9) height: (20).
    block2812b794Value10 := block2812b794Value0.
    (block2812b794Value10) marginBottom: (10).
    block2812b794Value11 := (block2812b794Value0) width: (36).
    block2812b794Value11
].
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredStack2 := 'aLabel6'.
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 524.
        ].
        recoveredStep = 524 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredStack2 := 'aLabel7'.
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            recoveredStack3 := [:block2812b7b8Arg1 | 
    | block2812b7b8Value0 block2812b7b8Value1 block2812b7b8Value2 block2812b7b8Value3 block2812b7b8Value4 block2812b7b8Value5 block2812b7b8Value6 block2812b7b8Value7 block2812b7b8Value8 block2812b7b8Value9 block2812b7b8Value10 block2812b7b8Value11 |
    block2812b7b8Value0 := block2812b7b8Arg1.
    block2812b7b8Value1 := block2812b7b8Value0.
    (block2812b7b8Value1) x: (180).
    block2812b7b8Value2 := block2812b7b8Value0.
    (block2812b7b8Value2) marginRight: (10).
    block2812b7b8Value3 := block2812b7b8Value0.
    block2812b7b8Value4 := XmALIGNMENTBEGINNING.
    (block2812b7b8Value3) alignment: (block2812b7b8Value4).
    block2812b7b8Value5 := block2812b7b8Value0.
    (block2812b7b8Value5) labelString: ('Values').
    block2812b7b8Value6 := block2812b7b8Value0.
    (block2812b7b8Value6) marginWidth: (0).
    block2812b7b8Value7 := block2812b7b8Value0.
    (block2812b7b8Value7) marginHeight: (0).
    block2812b7b8Value8 := block2812b7b8Value0.
    (block2812b7b8Value8) y: (175).
    block2812b7b8Value9 := block2812b7b8Value0.
    (block2812b7b8Value9) height: (20).
    block2812b7b8Value10 := block2812b7b8Value0.
    (block2812b7b8Value10) marginBottom: (10).
    block2812b7b8Value11 := (block2812b7b8Value0) width: (48).
    block2812b7b8Value11
].
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredPC := 591.
        ].
        recoveredStep = 591 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 598.
        ].
        recoveredStep = 598 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            recoveredStack2 := 'aLabel7'.
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 606.
        ].
        recoveredStep = 606 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 608.
        ].
        recoveredStep = 608 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            recoveredStack2 := 'aLabel2'.
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            recoveredStack3 := [:block2812b7dcArg1 | 
    | block2812b7dcValue0 block2812b7dcValue1 block2812b7dcValue2 block2812b7dcValue3 block2812b7dcValue4 block2812b7dcValue5 block2812b7dcValue6 block2812b7dcValue7 block2812b7dcValue8 block2812b7dcValue9 block2812b7dcValue10 block2812b7dcValue11 |
    block2812b7dcValue0 := block2812b7dcArg1.
    block2812b7dcValue1 := block2812b7dcValue0.
    (block2812b7dcValue1) x: (325).
    block2812b7dcValue2 := block2812b7dcValue0.
    (block2812b7dcValue2) marginRight: (10).
    block2812b7dcValue3 := block2812b7dcValue0.
    block2812b7dcValue4 := XmALIGNMENTBEGINNING.
    (block2812b7dcValue3) alignment: (block2812b7dcValue4).
    block2812b7dcValue5 := block2812b7dcValue0.
    (block2812b7dcValue5) labelString: ('s').
    block2812b7dcValue6 := block2812b7dcValue0.
    (block2812b7dcValue6) marginWidth: (0).
    block2812b7dcValue7 := block2812b7dcValue0.
    (block2812b7dcValue7) marginHeight: (0).
    block2812b7dcValue8 := block2812b7dcValue0.
    (block2812b7dcValue8) y: (60).
    block2812b7dcValue9 := block2812b7dcValue0.
    (block2812b7dcValue9) height: (20).
    block2812b7dcValue10 := block2812b7dcValue0.
    (block2812b7dcValue10) marginBottom: (10).
    block2812b7dcValue11 := (block2812b7dcValue0) width: (10).
    block2812b7dcValue11
].
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            recoveredPC := 671.
        ].
        recoveredStep = 671 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 673.
        ].
        recoveredStep = 673 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 675.
        ].
        recoveredStep = 675 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 678.
        ].
        recoveredStep = 678 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 681.
        ].
        recoveredStep = 681 ifTrue: [
            recoveredStack2 := 'aLabel2'.
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 686.
        ].
        recoveredStep = 686 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 688.
        ].
        recoveredStep = 688 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 691.
        ].
        recoveredStep = 691 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 694.
        ].
        recoveredStep = 694 ifTrue: [
            recoveredStack3 := [:block2812b800Arg1 | 
    | block2812b800Value0 block2812b800Value1 block2812b800Value2 block2812b800Value3 block2812b800Value4 block2812b800Value5 block2812b800Value6 block2812b800Value7 |
    block2812b800Value0 := block2812b800Arg1.
    block2812b800Value1 := block2812b800Value0.
    (block2812b800Value1) x: (345).
    block2812b800Value2 := block2812b800Value0.
    block2812b800Value3 := XmSINGLELINE.
    (block2812b800Value2) separatorType: (block2812b800Value3).
    block2812b800Value4 := block2812b800Value0.
    block2812b800Value5 := XmVERTICAL.
    (block2812b800Value4) orientation: (block2812b800Value5).
    block2812b800Value6 := block2812b800Value0.
    (block2812b800Value6) height: (206).
    block2812b800Value7 := (block2812b800Value0) width: (1).
    block2812b800Value7
].
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            recoveredPC := 737.
        ].
        recoveredStep = 737 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 741.
        ].
        recoveredStep = 741 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 743.
        ].
        recoveredStep = 743 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 746.
        ].
        recoveredStep = 746 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 749.
        ].
        recoveredStep = 749 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 752.
        ].
        recoveredStep = 752 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 755.
        ].
        recoveredStep = 755 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 757.
        ].
        recoveredStep = 757 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 760.
        ].
        recoveredStep = 760 ifTrue: [
            recoveredStack2 := 'jumpNextTToggle'.
            recoveredPC := 764.
        ].
        recoveredStep = 764 ifTrue: [
            recoveredStack3 := [:block2812b824Arg1 | 
    | block2812b824Value0 block2812b824Value1 block2812b824Value2 block2812b824Value3 block2812b824Value4 block2812b824Value5 block2812b824Value6 block2812b824Value7 block2812b824Value8 block2812b824Value9 block2812b824Value10 |
    block2812b824Value0 := block2812b824Arg1.
    block2812b824Value1 := block2812b824Value0.
    (block2812b824Value1) marginRight: (10).
    block2812b824Value2 := block2812b824Value0.
    (block2812b824Value2) marginWidth: (0).
    block2812b824Value3 := block2812b824Value0.
    (block2812b824Value3) marginHeight: (0).
    block2812b824Value4 := block2812b824Value0.
    (block2812b824Value4) y: (30).
    block2812b824Value5 := block2812b824Value0.
    block2812b824Value6 := XmONEOFMANY.
    (block2812b824Value5) indicatorType: (block2812b824Value6).
    block2812b824Value7 := block2812b824Value0.
    (block2812b824Value7) marginBottom: (10).
    block2812b824Value8 := block2812b824Value0.
    (block2812b824Value8) x: (20).
    block2812b824Value9 := block2812b824Value0.
    (block2812b824Value9) labelString: ('jump between time stamps ').
    block2812b824Value10 := (block2812b824Value0) height: (20).
    block2812b824Value10
].
            recoveredPC := 768.
        ].
        recoveredStep = 768 ifTrue: [
            recoveredPC := 823.
        ].
        recoveredStep = 823 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 827.
        ].
        recoveredStep = 827 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 829.
        ].
        recoveredStep = 829 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 832.
        ].
        recoveredStep = 832 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 835.
        ].
        recoveredStep = 835 ifTrue: [
            recoveredStack2 := 'jumpNextTToggle'.
            recoveredPC := 838.
        ].
        recoveredStep = 838 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 841.
        ].
        recoveredStep = 841 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 843.
        ].
        recoveredStep = 843 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 846.
        ].
        recoveredStep = 846 ifTrue: [
            recoveredStack2 := 'jumpDtToggle'.
            recoveredPC := 850.
        ].
        recoveredStep = 850 ifTrue: [
            recoveredStack3 := [:block2812b848Arg1 | 
    | block2812b848Value0 block2812b848Value1 block2812b848Value2 block2812b848Value3 block2812b848Value4 block2812b848Value5 block2812b848Value6 block2812b848Value7 block2812b848Value8 block2812b848Value9 block2812b848Value10 block2812b848Value11 |
    block2812b848Value0 := block2812b848Arg1.
    block2812b848Value1 := block2812b848Value0.
    (block2812b848Value1) marginRight: (10).
    block2812b848Value2 := block2812b848Value0.
    (block2812b848Value2) marginWidth: (0).
    block2812b848Value3 := block2812b848Value0.
    (block2812b848Value3) marginHeight: (0).
    block2812b848Value4 := block2812b848Value0.
    (block2812b848Value4) y: (55).
    block2812b848Value5 := block2812b848Value0.
    block2812b848Value6 := XmONEOFMANY.
    (block2812b848Value5) indicatorType: (block2812b848Value6).
    block2812b848Value7 := block2812b848Value0.
    (block2812b848Value7) marginBottom: (10).
    block2812b848Value8 := block2812b848Value0.
    (block2812b848Value8) x: (20).
    block2812b848Value9 := block2812b848Value0.
    (block2812b848Value9) labelString: ('jump for a constant time distance of').
    block2812b848Value10 := block2812b848Value0.
    (block2812b848Value10) height: (20).
    block2812b848Value11 := (block2812b848Value0) width: (260).
    block2812b848Value11
].
            recoveredPC := 854.
        ].
        recoveredStep = 854 ifTrue: [
            recoveredPC := 915.
        ].
        recoveredStep = 915 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 919.
        ].
        recoveredStep = 919 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 921.
        ].
        recoveredStep = 921 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 924.
        ].
        recoveredStep = 924 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 927.
        ].
        recoveredStep = 927 ifTrue: [
            recoveredStack2 := 'jumpDtToggle'.
            recoveredPC := 930.
        ].
        recoveredStep = 930 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 933.
        ].
        recoveredStep = 933 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 935.
        ].
        recoveredStep = 935 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 938.
        ].
        recoveredStep = 938 ifTrue: [
            recoveredStack2 := 'jumpDistanceEditor'.
            recoveredPC := 942.
        ].
        recoveredStep = 942 ifTrue: [
            recoveredStack3 := [:block2812b86cArg1 | 
    | block2812b86cValue0 block2812b86cValue1 block2812b86cValue2 block2812b86cValue3 block2812b86cValue4 block2812b86cValue5 |
    block2812b86cValue0 := block2812b86cArg1.
    block2812b86cValue1 := block2812b86cValue0.
    (block2812b86cValue1) y: (55).
    block2812b86cValue2 := block2812b86cValue0.
    (block2812b86cValue2) x: (280).
    block2812b86cValue3 := block2812b86cValue0.
    (block2812b86cValue3) value: ('').
    block2812b86cValue4 := block2812b86cValue0.
    (block2812b86cValue4) height: (25).
    block2812b86cValue5 := (block2812b86cValue0) width: (40).
    block2812b86cValue5
].
            recoveredPC := 946.
        ].
        recoveredStep = 946 ifTrue: [
            recoveredPC := 980.
        ].
        recoveredStep = 980 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 985.
        ].
        recoveredStep = 985 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 987.
        ].
        recoveredStep = 987 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 990.
        ].
        recoveredStep = 990 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 993.
        ].
        recoveredStep = 993 ifTrue: [
            recoveredStack2 := 'jumpDistanceEditor'.
            recoveredPC := 996.
        ].
        recoveredStep = 996 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 999.
        ].
        recoveredStep = 999 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1001.
        ].
        recoveredStep = 1001 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 1004.
        ].
        recoveredStep = 1004 ifTrue: [
            recoveredStack2 := 'bigJumpDistanceEditor'.
            recoveredPC := 1008.
        ].
        recoveredStep = 1008 ifTrue: [
            recoveredStack3 := [:block2812b890Arg1 | 
    | block2812b890Value0 block2812b890Value1 block2812b890Value2 block2812b890Value3 block2812b890Value4 |
    block2812b890Value0 := block2812b890Arg1.
    block2812b890Value1 := block2812b890Value0.
    (block2812b890Value1) x: (35).
    block2812b890Value2 := block2812b890Value0.
    (block2812b890Value2) y: (110).
    block2812b890Value3 := block2812b890Value0.
    (block2812b890Value3) height: (25).
    block2812b890Value4 := (block2812b890Value0) width: (55).
    block2812b890Value4
].
            recoveredPC := 1012.
        ].
        recoveredStep = 1012 ifTrue: [
            recoveredPC := 1038.
        ].
        recoveredStep = 1038 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSpinButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1043.
        ].
        recoveredStep = 1043 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1045.
        ].
        recoveredStep = 1045 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 1048.
        ].
        recoveredStep = 1048 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 1051.
        ].
        recoveredStep = 1051 ifTrue: [
            recoveredStack2 := 'bigJumpDistanceEditor'.
            recoveredPC := 1054.
        ].
        recoveredStep = 1054 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 1057.
        ].
        recoveredStep = 1057 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1059.
        ].
        recoveredStep = 1059 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 1062.
        ].
        recoveredStep = 1062 ifTrue: [
            recoveredStack2 := 'timePrecisionEditor'.
            recoveredPC := 1066.
        ].
        recoveredStep = 1066 ifTrue: [
            recoveredStack3 := [:block2812b8b4Arg1 | 
    | block2812b8b4Value0 block2812b8b4Value1 block2812b8b4Value2 block2812b8b4Value3 block2812b8b4Value4 |
    block2812b8b4Value0 := block2812b8b4Arg1.
    block2812b8b4Value1 := block2812b8b4Value0.
    (block2812b8b4Value1) x: (80).
    block2812b8b4Value2 := block2812b8b4Value0.
    (block2812b8b4Value2) y: (170).
    block2812b8b4Value3 := block2812b8b4Value0.
    (block2812b8b4Value3) height: (25).
    block2812b8b4Value4 := (block2812b8b4Value0) width: (55).
    block2812b8b4Value4
].
            recoveredPC := 1070.
        ].
        recoveredStep = 1070 ifTrue: [
            recoveredPC := 1098.
        ].
        recoveredStep = 1098 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSpinButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1103.
        ].
        recoveredStep = 1103 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1105.
        ].
        recoveredStep = 1105 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 1108.
        ].
        recoveredStep = 1108 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 1111.
        ].
        recoveredStep = 1111 ifTrue: [
            recoveredStack2 := 'timePrecisionEditor'.
            recoveredPC := 1114.
        ].
        recoveredStep = 1114 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 1117.
        ].
        recoveredStep = 1117 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1119.
        ].
        recoveredStep = 1119 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 1122.
        ].
        recoveredStep = 1122 ifTrue: [
            recoveredStack2 := 'valPrecisionEditor'.
            recoveredPC := 1126.
        ].
        recoveredStep = 1126 ifTrue: [
            recoveredStack3 := [:block2812b8d8Arg1 | 
    | block2812b8d8Value0 block2812b8d8Value1 block2812b8d8Value2 block2812b8d8Value3 block2812b8d8Value4 |
    block2812b8d8Value0 := block2812b8d8Arg1.
    block2812b8d8Value1 := block2812b8d8Value0.
    (block2812b8d8Value1) x: (240).
    block2812b8d8Value2 := block2812b8d8Value0.
    (block2812b8d8Value2) y: (170).
    block2812b8d8Value3 := block2812b8d8Value0.
    (block2812b8d8Value3) height: (25).
    block2812b8d8Value4 := (block2812b8d8Value0) width: (55).
    block2812b8d8Value4
].
            recoveredPC := 1130.
        ].
        recoveredStep = 1130 ifTrue: [
            recoveredPC := 1158.
        ].
        recoveredStep = 1158 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSpinButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1163.
        ].
        recoveredStep = 1163 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1165.
        ].
        recoveredStep = 1165 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 1168.
        ].
        recoveredStep = 1168 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 1171.
        ].
        recoveredStep = 1171 ifTrue: [
            recoveredStack2 := 'valPrecisionEditor'.
            recoveredPC := 1174.
        ].
        recoveredStep = 1174 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 1177.
        ].
        recoveredStep = 1177 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1179.
        ].
        recoveredStep = 1179 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 1182.
        ].
        recoveredStep = 1182 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 1186.
        ].
        recoveredStep = 1186 ifTrue: [
            recoveredStack3 := [:block2812b8fcArg1 | 
    | block2812b8fcValue0 block2812b8fcValue1 block2812b8fcValue2 block2812b8fcValue3 block2812b8fcValue4 block2812b8fcValue5 block2812b8fcValue6 |
    block2812b8fcValue0 := block2812b8fcArg1.
    block2812b8fcValue1 := block2812b8fcValue0.
    (block2812b8fcValue1) x: (355).
    block2812b8fcValue2 := block2812b8fcValue0.
    (block2812b8fcValue2) showAsDefault: (1).
    block2812b8fcValue3 := block2812b8fcValue0.
    (block2812b8fcValue3) labelString: ('Ok').
    block2812b8fcValue4 := block2812b8fcValue0.
    (block2812b8fcValue4) y: (10).
    block2812b8fcValue5 := block2812b8fcValue0.
    (block2812b8fcValue5) height: (30).
    block2812b8fcValue6 := (block2812b8fcValue0) width: (110).
    block2812b8fcValue6
].
            recoveredPC := 1190.
        ].
        recoveredStep = 1190 ifTrue: [
            recoveredPC := 1231.
        ].
        recoveredStep = 1231 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1235.
        ].
        recoveredStep = 1235 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1237.
        ].
        recoveredStep = 1237 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 1240.
        ].
        recoveredStep = 1240 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 1243.
        ].
        recoveredStep = 1243 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 1246.
        ].
        recoveredStep = 1246 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 1249.
        ].
        recoveredStep = 1249 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1251.
        ].
        recoveredStep = 1251 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 1254.
        ].
        recoveredStep = 1254 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 1258.
        ].
        recoveredStep = 1258 ifTrue: [
            recoveredStack3 := [:block2812b920Arg1 | 
    | block2812b920Value0 block2812b920Value1 block2812b920Value2 block2812b920Value3 block2812b920Value4 block2812b920Value5 |
    block2812b920Value0 := block2812b920Arg1.
    block2812b920Value1 := block2812b920Value0.
    (block2812b920Value1) x: (355).
    block2812b920Value2 := block2812b920Value0.
    (block2812b920Value2) labelString: ('Cancel').
    block2812b920Value3 := block2812b920Value0.
    (block2812b920Value3) y: (45).
    block2812b920Value4 := block2812b920Value0.
    (block2812b920Value4) height: (30).
    block2812b920Value5 := (block2812b920Value0) width: (110).
    block2812b920Value5
].
            recoveredPC := 1262.
        ].
        recoveredStep = 1262 ifTrue: [
            recoveredPC := 1297.
        ].
        recoveredStep = 1297 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1301.
        ].
        recoveredStep = 1301 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1303.
        ].
        recoveredStep = 1303 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 1306.
        ].
        recoveredStep = 1306 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 1309.
        ].
        recoveredStep = 1309 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 1312.
        ].
        recoveredStep = 1312 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 1315.
        ].
        recoveredStep = 1315 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1317.
        ].
        recoveredStep = 1317 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 1320.
        ].
        recoveredStep = 1320 ifTrue: [
            recoveredStack2 := 'helpButton'.
            recoveredPC := 1324.
        ].
        recoveredStep = 1324 ifTrue: [
            recoveredStack3 := [:block2812b944Arg1 | 
    | block2812b944Value0 block2812b944Value1 block2812b944Value2 block2812b944Value3 block2812b944Value4 block2812b944Value5 |
    block2812b944Value0 := block2812b944Arg1.
    block2812b944Value1 := block2812b944Value0.
    (block2812b944Value1) x: (355).
    block2812b944Value2 := block2812b944Value0.
    (block2812b944Value2) labelString: ('Help').
    block2812b944Value3 := block2812b944Value0.
    (block2812b944Value3) y: (80).
    block2812b944Value4 := block2812b944Value0.
    (block2812b944Value4) height: (30).
    block2812b944Value5 := (block2812b944Value0) width: (110).
    block2812b944Value5
].
            recoveredPC := 1328.
        ].
        recoveredStep = 1328 ifTrue: [
            recoveredPC := 1363.
        ].
        recoveredStep = 1363 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1367.
        ].
        recoveredStep = 1367 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1369.
        ].
        recoveredStep = 1369 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 1372.
        ].
        recoveredStep = 1372 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 1375.
        ].
        recoveredStep = 1375 ifTrue: [
            recoveredStack2 := 'helpButton'.
            recoveredPC := 1378.
        ].
        recoveredStep = 1378 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 1381.
        ].
        recoveredStep = 1381 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1383.
        ].
        recoveredStep = 1383 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 1386.
        ].
        recoveredStep = 1386 ifTrue: [
            recoveredStack2 := [:recoveredBlock1386Arg1 | 
    | recoveredBlock1386Value0 recoveredBlock1386Value1 recoveredBlock1386Value2 |
    recoveredBlock1386Value0 := recoveredBlock1386Arg1.
    recoveredBlock1386Value1 := recoveredLocal18.
    recoveredBlock1386Value2 := (recoveredBlock1386Value0) workWindow: (recoveredBlock1386Value1).
    recoveredBlock1386Value2
].
            recoveredPC := 1402.
        ].
        recoveredStep = 1402 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1407.
        ].
        recoveredStep = 1407 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 1410.
        ].
        recoveredStep = 1410 ifTrue: [
            recoveredStack2 := XmNdestroyCallback.
            recoveredPC := 1414.
        ].
        recoveredStep = 1414 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1415.
        ].
        recoveredStep = 1415 ifTrue: [
            recoveredStack4 := 'aForm1Destroy:clientData:callData:'.
            recoveredPC := 1418.
        ].
        recoveredStep = 1418 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1419.
        ].
        recoveredStep = 1419 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1423.
        ].
        recoveredStep = 1423 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1426.
        ].
        recoveredStep = 1426 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 1430.
        ].
        recoveredStep = 1430 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1431.
        ].
        recoveredStep = 1431 ifTrue: [
            recoveredStack4 := 'jumpNextTToggleValue:clientData:callData:'.
            recoveredPC := 1434.
        ].
        recoveredStep = 1434 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1435.
        ].
        recoveredStep = 1435 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1439.
        ].
        recoveredStep = 1439 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1442.
        ].
        recoveredStep = 1442 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 1446.
        ].
        recoveredStep = 1446 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1447.
        ].
        recoveredStep = 1447 ifTrue: [
            recoveredStack4 := 'jumpDtToggleValue:clientData:callData:'.
            recoveredPC := 1450.
        ].
        recoveredStep = 1450 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1451.
        ].
        recoveredStep = 1451 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1455.
        ].
        recoveredStep = 1455 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1458.
        ].
        recoveredStep = 1458 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1462.
        ].
        recoveredStep = 1462 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1463.
        ].
        recoveredStep = 1463 ifTrue: [
            recoveredStack4 := 'okButtonActivate:clientData:callData:'.
            recoveredPC := 1466.
        ].
        recoveredStep = 1466 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1467.
        ].
        recoveredStep = 1467 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1471.
        ].
        recoveredStep = 1471 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1474.
        ].
        recoveredStep = 1474 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1478.
        ].
        recoveredStep = 1478 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1479.
        ].
        recoveredStep = 1479 ifTrue: [
            recoveredStack4 := 'cancelButtonActivate:clientData:callData:'.
            recoveredPC := 1482.
        ].
        recoveredStep = 1482 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1483.
        ].
        recoveredStep = 1483 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1487.
        ].
        recoveredStep = 1487 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1490.
        ].
        recoveredStep = 1490 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1494.
        ].
        recoveredStep = 1494 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1495.
        ].
        recoveredStep = 1495 ifTrue: [
            recoveredStack4 := 'helpButtonActivate:clientData:callData:'.
            recoveredPC := 1498.
        ].
        recoveredStep = 1498 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1499.
        ].
        recoveredStep = 1499 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1503.
        ].
        recoveredStep = 1503 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1506.
        ].
        recoveredStep = 1506 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1511.
        ].
        recoveredStep = 1511 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1514.
        ].
        recoveredStep = 1514 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1519.
        ].
        recoveredStep = 1519 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1522.
        ].
        recoveredStep = 1522 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1527.
        ].
        recoveredStep = 1527 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1530.
        ].
        recoveredStep = 1530 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1535.
        ].
        recoveredStep = 1535 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1538.
        ].
        recoveredStep = 1538 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1543.
        ].
        recoveredStep = 1543 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1546.
        ].
        recoveredStep = 1546 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1551.
        ].
        recoveredStep = 1551 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1554.
        ].
        recoveredStep = 1554 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1559.
        ].
        recoveredStep = 1559 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1562.
        ].
        recoveredStep = 1562 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1567.
        ].
        recoveredStep = 1567 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1570.
        ].
        recoveredStep = 1570 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1575.
        ].
        recoveredStep = 1575 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 1578.
        ].
        recoveredStep = 1578 ifTrue: [
            recoveredStack2 := recoveredLocal21.
            recoveredPC := 1581.
        ].
        recoveredStep = 1581 ifTrue: [
            recoveredStack3 := recoveredLocal19.
            recoveredPC := 1584.
        ].
        recoveredStep = 1584 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 1589.
        ].
        recoveredStep = 1589 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

