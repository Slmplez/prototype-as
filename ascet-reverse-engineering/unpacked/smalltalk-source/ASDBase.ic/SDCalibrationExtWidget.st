"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002bf0; bytecode file offset 0x8ffcfc"
!SDCalibrationExtWidget methodsFor: 'recovered'!
updateDataElement
    ^self
! !

"ASDBase.ic method 0x20034b74; bytecode file offset 0x934580"
!SDCalibrationExtWidget methodsFor: 'recovered'!
isDataElementADataMatrix
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dataElement.
    recoveredValue1 := (recoveredValue0) isRBDataMatrix.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200429ac; bytecode file offset 0x9451f8"
!SDCalibrationExtWidget methodsFor: 'recovered'!
ySizeLabel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('ySizeLabel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20043d1c; bytecode file offset 0x9451f8"
!SDCalibrationExtWidget methodsFor: 'recovered'!
yMaxSizeSpinButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('yMaxSizeSpinButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20044a3c; bytecode file offset 0x9451f8"
!SDCalibrationExtWidget methodsFor: 'recovered'!
ySizeSpinButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('ySizeSpinButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20044bcc; bytecode file offset 0x9451f8"
!SDCalibrationExtWidget methodsFor: 'recovered'!
xMaxSizeLabel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('xMaxSizeLabel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20044e9c; bytecode file offset 0x9451f8"
!SDCalibrationExtWidget methodsFor: 'recovered'!
xSizeSpinButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('xSizeSpinButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200451fc; bytecode file offset 0x9451f8"
!SDCalibrationExtWidget methodsFor: 'recovered'!
interpolComboBox
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('interpolComboBox').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004530c; bytecode file offset 0x9451f8"
!SDCalibrationExtWidget methodsFor: 'recovered'!
interpolLabel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('interpolLabel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200456bc; bytecode file offset 0x9451f8"
!SDCalibrationExtWidget methodsFor: 'recovered'!
extrapolLabel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('extrapolLabel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20046ecc; bytecode file offset 0x9451f8"
!SDCalibrationExtWidget methodsFor: 'recovered'!
yMaxSizeLabel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('yMaxSizeLabel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004752c; bytecode file offset 0x9451f8"
!SDCalibrationExtWidget methodsFor: 'recovered'!
xSizeLabel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('xSizeLabel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004769c; bytecode file offset 0x9451f8"
!SDCalibrationExtWidget methodsFor: 'recovered'!
extrapolComboBox
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('extrapolComboBox').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20047a5c; bytecode file offset 0x9451f8"
!SDCalibrationExtWidget methodsFor: 'recovered'!
xMaxSizeSpinButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('xMaxSizeSpinButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004884c; bytecode file offset 0x9451f8"
!SDCalibrationExtWidget methodsFor: 'recovered'!
mainForm
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('mainForm').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20051740; bytecode file offset 0x94f0e0"
!SDCalibrationExtWidget methodsFor: 'recovered'!
simEnvironment
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getUserInterface.
    recoveredValue1 := (recoveredValue0) applicationController.
    recoveredValue2 := (recoveredValue1) simEnvironment.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005a614; bytecode file offset 0x957a6c"
!SDCalibrationExtWidget methodsFor: 'recovered'!
yMaxSizeSpinButtonActivateCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) checkYMaxSizeChange.
    ^self
! !

"ASDBase.ic method 0x2005a764; bytecode file offset 0x957a6c"
!SDCalibrationExtWidget methodsFor: 'recovered'!
yMaxSizeSpinButtonLosingFocusCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) checkYMaxSizeChange.
    ^self
! !

"ASDBase.ic method 0x2005abe4; bytecode file offset 0x957a6c"
!SDCalibrationExtWidget methodsFor: 'recovered'!
ySizeSpinButtonLosingFocusCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) updateYSize.
    ^self
! !

"ASDBase.ic method 0x2005ada0; bytecode file offset 0x957a6c"
!SDCalibrationExtWidget methodsFor: 'recovered'!
xSizeSpinButtonActivateCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) updateXSize.
    ^self
! !

"ASDBase.ic method 0x2005ae48; bytecode file offset 0x957a6c"
!SDCalibrationExtWidget methodsFor: 'recovered'!
xMaxSizeSpinButtonLosingFocusCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) checkXMaxSizeChange.
    ^self
! !

"ASDBase.ic method 0x2005af2c; bytecode file offset 0x957a6c"
!SDCalibrationExtWidget methodsFor: 'recovered'!
xSizeSpinButtonLosingFocusCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) updateXSize.
    ^self
! !

"ASDBase.ic method 0x2005b070; bytecode file offset 0x957a6c"
!SDCalibrationExtWidget methodsFor: 'recovered'!
xMaxSizeSpinButtonActivateCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) checkXMaxSizeChange.
    ^self
! !

"ASDBase.ic method 0x2005b0b8; bytecode file offset 0x957a6c"
!SDCalibrationExtWidget methodsFor: 'recovered'!
ySizeSpinButtonActivateCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) updateYSize.
    ^self
! !

"ASDBase.ic method 0x2006db28; bytecode file offset 0x96a9dc"
!SDCalibrationExtWidget methodsFor: 'recovered'!
dataElement
    | recoveredValue0 |
    recoveredValue0 := dataElement.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e284; bytecode file offset 0x96af48"
!SDCalibrationExtWidget methodsFor: 'recovered'!
specificationMode
    | recoveredValue0 |
    recoveredValue0 := specificationMode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006eb68; bytecode file offset 0x96b41c"
!SDCalibrationExtWidget methodsFor: 'recovered'!
changedBySpinning
    | recoveredValue0 |
    recoveredValue0 := changedBySpinning.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ec34; bytecode file offset 0x96b8a0"
!SDCalibrationExtWidget methodsFor: 'recovered'!
preferredWidth
    | recoveredValue0 |
    recoveredValue0 := preferredWidth.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f078; bytecode file offset 0x96bc1c"
!SDCalibrationExtWidget methodsFor: 'recovered'!
writeProtection
    | recoveredValue0 |
    recoveredValue0 := writeProtection.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20071e88; bytecode file offset 0x96e784"
!SDCalibrationExtWidget methodsFor: 'recovered'!
maxVecSize
    ^2048
! !

"ASDBase.ic method 0x20071ec8; bytecode file offset 0x96e784"
!SDCalibrationExtWidget methodsFor: 'recovered'!
maxKLSize
    ^2048
! !

"ASDBase.ic method 0x20080584; bytecode file offset 0x97ce48"
!SDCalibrationExtWidget methodsFor: 'recovered'!
maxMatrixSize
    ^63
! !

"ASDBase.ic method 0x2008058c; bytecode file offset 0x97ce48"
!SDCalibrationExtWidget methodsFor: 'recovered'!
maxKFSize
    ^63
! !

"ASDBase.ic method 0x2009dfbc; bytecode file offset 0x99a870"
!SDCalibrationExtWidget methodsFor: 'recovered'!
initialize
    changedBySpinning := false.
    writeProtection := false.
    ^self
! !

"ASDBase.ic method 0x200c4fa8; bytecode file offset 0x9c1afc"
!SDCalibrationExtWidget methodsFor: 'recovered'!
changedBySpinning: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    changedBySpinning := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5618; bytecode file offset 0x9c1f64"
!SDCalibrationExtWidget methodsFor: 'recovered'!
preferredWidth: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    preferredWidth := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ddc30; bytecode file offset 0x9da4f0"
!SDCalibrationExtWidget methodsFor: 'recovered'!
createPrimaryWidget: recoveredArg1 parent: recoveredArg2 argBlock: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) , ('_Form').
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) createForm: (recoveredValue2) argBlock: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200deaf0; bytecode file offset 0x9db3d4"
!SDCalibrationExtWidget methodsFor: 'recovered'!
extrapolCombpBpxSingleSelectionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) dataElement.
    recoveredValue1 := (recoveredValue0) extrapolation.
    recoveredValue2 := (self) extrapolComboBox.
    recoveredValue3 := (recoveredValue2) getString.
    (recoveredValue1) set: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200deb0c; bytecode file offset 0x9db3d4"
!SDCalibrationExtWidget methodsFor: 'recovered'!
interpolCombpBpxSingleSelectionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) dataElement.
    recoveredValue1 := (recoveredValue0) interpolation.
    recoveredValue2 := (self) interpolComboBox.
    recoveredValue3 := (recoveredValue2) getObject.
    (recoveredValue1) setAndWrite: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20161d68; bytecode file offset 0xa5e634"
!SDCalibrationExtWidget methodsFor: 'recovered'!
hasSpinButtonFocus
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) xMaxSizeSpinButton.
    recoveredValue1 := (recoveredValue0) hasFocus.
    recoveredValue2 := (self) xSizeSpinButton.
    recoveredValue3 := (recoveredValue2) hasFocus.
    recoveredValue4 := (recoveredValue1) | (recoveredValue3).
    recoveredValue5 := (self) yMaxSizeSpinButton.
    recoveredValue6 := (recoveredValue5) hasFocus.
    recoveredValue7 := (recoveredValue4) | (recoveredValue6).
    recoveredValue8 := (self) ySizeSpinButton.
    recoveredValue9 := (recoveredValue8) hasFocus.
    recoveredValue10 := (recoveredValue7) | (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x20184b94; bytecode file offset 0xa81454"
!SDCalibrationExtWidget methodsFor: 'recovered'!
specificationMode: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            specificationMode := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) xSizeSpinButton.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) ySizeSpinButton.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ad39c; bytecode file offset 0xaa9c70"
!SDCalibrationExtWidget methodsFor: 'recovered'!
canEditInterpolation
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationController.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) canEditInterpolation.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ad3b0; bytecode file offset 0xaa9c70"
!SDCalibrationExtWidget methodsFor: 'recovered'!
canEditMaxSize
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationController.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) canEditMaxSize.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020cde4; bytecode file offset 0xb096ac"
!SDCalibrationExtWidget methodsFor: 'recovered'!
canEditSizeInExperiment
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) simEnvironment.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (self) dataElement.
    recoveredBlock5Value2 := (recoveredBlock5Value0) getSimNodeForDataElementByLabel: (recoveredBlock5Value1).
    recoveredBlock5Value3 := [:recoveredBlock5Block16Arg1 | 
    | recoveredBlock5Block16Value0 recoveredBlock5Block16Value1 |
    recoveredBlock5Block16Value0 := recoveredBlock5Block16Arg1.
    recoveredBlock5Block16Value1 := (recoveredBlock5Block16Value0) canEditSizeInExperiment.
    ^recoveredBlock5Block16Value1
].
    recoveredBlock5Value4 := (recoveredBlock5Value2) ifNotNil: (recoveredBlock5Value3).
    recoveredBlock5Value4
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^true
! !

"ASDBase.ic method 0x20210ca4; bytecode file offset 0xb0d5b0"
!SDCalibrationExtWidget methodsFor: 'recovered'!
ySizeSpinButtonValueChangedCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSpinning.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) changedBySpinning: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) changedBySpinning.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) updateYSize.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) changedBySpinning: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20210cbc; bytecode file offset 0xb0d5b0"
!SDCalibrationExtWidget methodsFor: 'recovered'!
yMaxSizeSpinButtonValueChangedCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSpinning.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) changedBySpinning: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) changedBySpinning.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) checkYMaxSizeChange.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) changedBySpinning: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20210cd4; bytecode file offset 0xb0d5b0"
!SDCalibrationExtWidget methodsFor: 'recovered'!
xSizeSpinButtonValueChangedCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSpinning.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) changedBySpinning: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) changedBySpinning.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) updateXSize.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) changedBySpinning: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20210cec; bytecode file offset 0xb0d5b0"
!SDCalibrationExtWidget methodsFor: 'recovered'!
xMaxSizeSpinButtonValueChangedCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSpinning.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) changedBySpinning: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) changedBySpinning.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) checkXMaxSizeChange.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) changedBySpinning: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202cf040; bytecode file offset 0xbcb918"
!SDCalibrationExtWidget methodsFor: 'recovered'!
checkYMaxSizeChange
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := System.
    recoveredValue1 := [
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) yMaxSizeSpinButton.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) value.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack1 := self.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) dataElement.
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) maxYSize.
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) = (recoveredBlock6Stack1).
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            (recoveredBlock6Stack0) ifTrue: [recoveredBlock6PC := 22] ifFalse: [recoveredBlock6PC := 24].
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            ^recoveredBlock6Stack0
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) yMaxSizeSpinButton.
            recoveredBlock6PC := 26.
        ].
        recoveredBlock6Step = 26 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) value.
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Stack1 := self.
            recoveredBlock6PC := 28.
        ].
        recoveredBlock6Step = 28 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) ySizeSpinButton.
            recoveredBlock6PC := 30.
        ].
        recoveredBlock6Step = 30 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) value.
            recoveredBlock6PC := 31.
        ].
        recoveredBlock6Step = 31 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) < (recoveredBlock6Stack1).
            recoveredBlock6PC := 32.
        ].
        recoveredBlock6Step = 32 ifTrue: [
            (recoveredBlock6Stack0) ifTrue: [recoveredBlock6PC := 36] ifFalse: [recoveredBlock6PC := 42].
        ].
        recoveredBlock6Step = 36 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 37.
        ].
        recoveredBlock6Step = 37 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) doYMaxSizeAndYSizeChange.
            recoveredBlock6PC := 39.
        ].
        recoveredBlock6Step = 39 ifTrue: [
            recoveredBlock6PC := 45.
        ].
        recoveredBlock6Step = 42 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 43.
        ].
        recoveredBlock6Step = 43 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) doYMaxSizeNoYSizeChange.
            recoveredBlock6PC := 45.
        ].
        recoveredBlock6Step = 45 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack0.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) showBusyCursorWhile: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202d1f80; bytecode file offset 0xbce858"
!SDCalibrationExtWidget methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) master.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := RBGraphicalCalibrationWindow.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isKindOf: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := 2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) minimum: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) minimum: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) yMaxSizeSpinButton.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) minimum: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) ySizeSpinButton.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) minimum: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) initializeFocusCallbacks.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2031c2f0; bytecode file offset 0xc18bd0"
!SDCalibrationExtWidget methodsFor: 'recovered'!
dataElement: recoveredArg1
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
            dataElement := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) setTabbingOrder.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBDataVector.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) displayDataVectorInformation.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBDataMatrix.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) displayDataMatrixInformation.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBDiscreteDistribution.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) displayDiscreteDistributionInformation.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBOneDCharTable.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) displayOneDCharTableInformation.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBTwoDCharTable.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) displayTwoDCharTableInformation.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203445d8; bytecode file offset 0xc40eb8"
!SDCalibrationExtWidget methodsFor: 'recovered'!
checkXMaxSizeChange
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := System.
    recoveredValue1 := [
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) xMaxSizeSpinButton.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) value.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack1 := self.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) dataElement.
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) maxXSize.
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) = (recoveredBlock6Stack1).
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            (recoveredBlock6Stack0) ifTrue: [recoveredBlock6PC := 22] ifFalse: [recoveredBlock6PC := 24].
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            ^recoveredBlock6Stack0
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) dataElement.
            recoveredBlock6PC := 26.
        ].
        recoveredBlock6Step = 26 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) type.
            recoveredBlock6PC := 28.
        ].
        recoveredBlock6Step = 28 ifTrue: [
            recoveredBlock6Stack1 := 'GSt'.
            recoveredBlock6PC := 30.
        ].
        recoveredBlock6Step = 30 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) = (recoveredBlock6Stack1).
            recoveredBlock6PC := 31.
        ].
        recoveredBlock6Step = 31 ifTrue: [
            (recoveredBlock6Stack0) ifTrue: [recoveredBlock6PC := 34] ifFalse: [recoveredBlock6PC := 38].
        ].
        recoveredBlock6Step = 34 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 35.
        ].
        recoveredBlock6Step = 35 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) doXMaxSizeAndXSizeChange.
            recoveredBlock6PC := 37.
        ].
        recoveredBlock6Step = 37 ifTrue: [
            ^recoveredBlock6Stack0
        ].
        recoveredBlock6Step = 38 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 39.
        ].
        recoveredBlock6Step = 39 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) xMaxSizeSpinButton.
            recoveredBlock6PC := 40.
        ].
        recoveredBlock6Step = 40 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) value.
            recoveredBlock6PC := 41.
        ].
        recoveredBlock6Step = 41 ifTrue: [
            recoveredBlock6Stack1 := self.
            recoveredBlock6PC := 42.
        ].
        recoveredBlock6Step = 42 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) xSizeSpinButton.
            recoveredBlock6PC := 44.
        ].
        recoveredBlock6Step = 44 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) value.
            recoveredBlock6PC := 45.
        ].
        recoveredBlock6Step = 45 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) < (recoveredBlock6Stack1).
            recoveredBlock6PC := 46.
        ].
        recoveredBlock6Step = 46 ifTrue: [
            (recoveredBlock6Stack0) ifTrue: [recoveredBlock6PC := 50] ifFalse: [recoveredBlock6PC := 56].
        ].
        recoveredBlock6Step = 50 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 51.
        ].
        recoveredBlock6Step = 51 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) doXMaxSizeAndXSizeChange.
            recoveredBlock6PC := 53.
        ].
        recoveredBlock6Step = 53 ifTrue: [
            recoveredBlock6PC := 59.
        ].
        recoveredBlock6Step = 56 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 57.
        ].
        recoveredBlock6Step = 57 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) doXMaxSizeNoXSizeChange.
            recoveredBlock6PC := 59.
        ].
        recoveredBlock6Step = 59 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack0.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) showBusyCursorWhile: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2038f4c8; bytecode file offset 0xc8bdb0"
!SDCalibrationExtWidget methodsFor: 'recovered'!
font: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := (self) extrapolComboBox.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) fontList: (recoveredValue1).
    recoveredValue2 := (self) extrapolLabel.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) fontList: (recoveredValue3).
    recoveredValue4 := (self) interpolComboBox.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) fontList: (recoveredValue5).
    recoveredValue6 := (self) interpolLabel.
    recoveredValue7 := recoveredArg1.
    (recoveredValue6) fontList: (recoveredValue7).
    recoveredValue8 := (self) xMaxSizeLabel.
    recoveredValue9 := recoveredArg1.
    (recoveredValue8) fontList: (recoveredValue9).
    recoveredValue10 := (self) xSizeLabel.
    recoveredValue11 := recoveredArg1.
    (recoveredValue10) fontList: (recoveredValue11).
    recoveredValue12 := (self) yMaxSizeLabel.
    recoveredValue13 := recoveredArg1.
    (recoveredValue12) fontList: (recoveredValue13).
    recoveredValue14 := (self) ySizeLabel.
    recoveredValue15 := recoveredArg1.
    (recoveredValue14) fontList: (recoveredValue15).
    recoveredValue16 := (self) xMaxSizeSpinButton.
    recoveredValue17 := recoveredArg1.
    (recoveredValue16) fontList: (recoveredValue17).
    recoveredValue18 := (self) xSizeSpinButton.
    recoveredValue19 := recoveredArg1.
    (recoveredValue18) fontList: (recoveredValue19).
    recoveredValue20 := (self) yMaxSizeSpinButton.
    recoveredValue21 := recoveredArg1.
    (recoveredValue20) fontList: (recoveredValue21).
    recoveredValue22 := (self) ySizeSpinButton.
    recoveredValue23 := recoveredArg1.
    (recoveredValue22) fontList: (recoveredValue23).
    ^self
! !

"ASDBase.ic method 0x20390ad4; bytecode file offset 0xc8d3b4"
!SDCalibrationExtWidget methodsFor: 'recovered'!
writeProtection: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            writeProtection := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'Muzaffar'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'EHI_36284'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) interpolComboBox.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) canEditInterpolation.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) extrapolComboBox.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) editable: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) ySizeSpinButton.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) editable: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) editable: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) yMaxSizeSpinButton.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) editable: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203fb530; bytecode file offset 0xcf7e18"
!SDCalibrationExtWidget methodsFor: 'recovered'!
initializeWidgetsForDataVector
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) maxSize.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxVecSize.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) maximum: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) maximum: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeProtection.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) canEditMaxSize.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) editable: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 77.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) editable: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) canEditSizeInExperiment.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) editable: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204542e0; bytecode file offset 0xd50bc8"
!SDCalibrationExtWidget methodsFor: 'recovered'!
setTabbingOrder
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBDataVector.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBDiscreteDistribution.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBDataMatrix.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) yMaxSizeSpinButton.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) ySizeSpinButton.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBOneDCharTable.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) interpolComboBox.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) extrapolComboBox.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBTwoDCharTable.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 113].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) yMaxSizeSpinButton.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) ySizeSpinButton.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) interpolComboBox.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) extrapolComboBox.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) addTabGroup.
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

"ASDBase.ic method 0x20474c8c; bytecode file offset 0xd7157c"
!SDCalibrationExtWidget methodsFor: 'recovered'!
initializeWidgetsForDiscreteDistribution
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) maxSize.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) maxVecSize.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxVecSize.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) maximum: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) maximum: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeProtection.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) canEditMaxSize.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) editable: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredPC := 82.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) editable: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := 'GSt'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) specificationMode.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) editable: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredPC := 122.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) editable: (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20492874; bytecode file offset 0xd8f1b8"
!SDCalibrationExtWidget methodsFor: 'recovered'!
doXMaxSizeNoXSizeChange
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) maximum.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) master.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) undoBuffer.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) maxXSize: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) maximum: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := RBBlockContextEditOperation.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := 'Update x-size'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack2) operationName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := [:recoveredBlock73Arg1 | 
    | recoveredBlock73Value0 recoveredBlock73Value1 recoveredBlock73Value2 recoveredBlock73Value3 recoveredBlock73Value4 recoveredBlock73Value5 recoveredBlock73Value6 |
    recoveredBlock73Value0 := recoveredBlock73Arg1.
    recoveredBlock73Value1 := recoveredLocal2.
    (recoveredBlock73Value0) maxXSize: (recoveredBlock73Value1).
    recoveredBlock73Value2 := (self) xSizeSpinButton.
    recoveredBlock73Value3 := recoveredLocal2.
    (recoveredBlock73Value2) maximum: (recoveredBlock73Value3).
    recoveredBlock73Value4 := (self) xMaxSizeSpinButton.
    recoveredBlock73Value5 := recoveredLocal2.
    recoveredBlock73Value6 := (recoveredBlock73Value4) value: (recoveredBlock73Value5).
    recoveredBlock73Value6
].
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack2) redoBlock: (recoveredStack3).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := [:recoveredBlock101Arg1 | 
    | recoveredBlock101Value0 recoveredBlock101Value1 recoveredBlock101Value2 recoveredBlock101Value3 recoveredBlock101Value4 recoveredBlock101Value5 recoveredBlock101Value6 |
    recoveredBlock101Value0 := recoveredBlock101Arg1.
    recoveredBlock101Value1 := recoveredLocal3.
    (recoveredBlock101Value0) maxXSize: (recoveredBlock101Value1).
    recoveredBlock101Value2 := (self) xSizeSpinButton.
    recoveredBlock101Value3 := recoveredLocal3.
    (recoveredBlock101Value2) maximum: (recoveredBlock101Value3).
    recoveredBlock101Value4 := (self) xMaxSizeSpinButton.
    recoveredBlock101Value5 := recoveredLocal3.
    recoveredBlock101Value6 := (recoveredBlock101Value4) value: (recoveredBlock101Value5).
    recoveredBlock101Value6
].
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) undoBlock: (recoveredStack2).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204928c0; bytecode file offset 0xd8f1b8"
!SDCalibrationExtWidget methodsFor: 'recovered'!
doYMaxSizeNoYSizeChange
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) yMaxSizeSpinButton.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) yMaxSizeSpinButton.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) ySizeSpinButton.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) maximum.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) master.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) undoBuffer.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) maxYSize: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) ySizeSpinButton.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) maximum: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := RBBlockContextEditOperation.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := 'Update x-size'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack2) operationName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := [:recoveredBlock73Arg1 | 
    | recoveredBlock73Value0 recoveredBlock73Value1 recoveredBlock73Value2 recoveredBlock73Value3 recoveredBlock73Value4 recoveredBlock73Value5 recoveredBlock73Value6 |
    recoveredBlock73Value0 := recoveredBlock73Arg1.
    recoveredBlock73Value1 := recoveredLocal2.
    (recoveredBlock73Value0) maxYSize: (recoveredBlock73Value1).
    recoveredBlock73Value2 := (self) ySizeSpinButton.
    recoveredBlock73Value3 := recoveredLocal2.
    (recoveredBlock73Value2) maximum: (recoveredBlock73Value3).
    recoveredBlock73Value4 := (self) yMaxSizeSpinButton.
    recoveredBlock73Value5 := recoveredLocal2.
    recoveredBlock73Value6 := (recoveredBlock73Value4) value: (recoveredBlock73Value5).
    recoveredBlock73Value6
].
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack2) redoBlock: (recoveredStack3).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := [:recoveredBlock101Arg1 | 
    | recoveredBlock101Value0 recoveredBlock101Value1 recoveredBlock101Value2 recoveredBlock101Value3 recoveredBlock101Value4 recoveredBlock101Value5 recoveredBlock101Value6 |
    recoveredBlock101Value0 := recoveredBlock101Arg1.
    recoveredBlock101Value1 := recoveredLocal3.
    (recoveredBlock101Value0) maxYSize: (recoveredBlock101Value1).
    recoveredBlock101Value2 := (self) ySizeSpinButton.
    recoveredBlock101Value3 := recoveredLocal3.
    (recoveredBlock101Value2) maximum: (recoveredBlock101Value3).
    recoveredBlock101Value4 := (self) yMaxSizeSpinButton.
    recoveredBlock101Value5 := recoveredLocal3.
    recoveredBlock101Value6 := (recoveredBlock101Value4) value: (recoveredBlock101Value5).
    recoveredBlock101Value6
].
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) undoBlock: (recoveredStack2).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2049591c; bytecode file offset 0xd92214"
!SDCalibrationExtWidget methodsFor: 'recovered'!
initializeWidgetsForOneDCharTable
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getMaxXSize.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) maxKLSize.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxKLSize.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) maximum: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) maximum: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) initializeExtrapolationAndInterpolation.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeProtection.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) canEditMaxSize.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) editable: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredPC := 86.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) editable: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := 'KL'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) specificationMode.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := 'FKl'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) editable: (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredPC := 132.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204d310c; bytecode file offset 0xdcfa10"
!SDCalibrationExtWidget methodsFor: 'recovered'!
updateXSizeForDataVector
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSize.
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
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) master.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableEditor.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) undoBuffer.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSize.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) deepCopy.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPhysValue.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) deepCopy.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) dim: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) master.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) updateContents.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := RBBlockContextEditOperation.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := 'Update x-size'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack2) operationName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := [:recoveredBlock102Arg1 | 
    | recoveredBlock102Value0 recoveredBlock102Value1 recoveredBlock102Value2 recoveredBlock102Value3 recoveredBlock102Value4 |
    recoveredBlock102Value0 := recoveredBlock102Arg1.
    recoveredBlock102Value1 := recoveredLocal4.
    (recoveredBlock102Value0) dim: (recoveredBlock102Value1).
    recoveredBlock102Value2 := (self) xSizeSpinButton.
    recoveredBlock102Value3 := recoveredLocal4.
    recoveredBlock102Value4 := (recoveredBlock102Value2) value: (recoveredBlock102Value3).
    recoveredBlock102Value4
].
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack2) redoBlock: (recoveredStack3).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := [:recoveredBlock123Arg1 | 
    | recoveredBlock123Value0 recoveredBlock123Value1 recoveredBlock123Value2 recoveredBlock123Value3 recoveredBlock123Value4 recoveredBlock123Value5 recoveredBlock123Value6 recoveredBlock123Value7 recoveredBlock123Value8 |
    recoveredBlock123Value0 := recoveredBlock123Arg1.
    recoveredBlock123Value1 := recoveredLocal2.
    (recoveredBlock123Value0) dim: (recoveredBlock123Value1).
    recoveredBlock123Value2 := recoveredBlock123Arg1.
    recoveredBlock123Value3 := recoveredLocal1.
    recoveredBlock123Value4 := (recoveredBlock123Value3) deepCopy.
    (recoveredBlock123Value2) setPhysValue: (recoveredBlock123Value4).
    recoveredBlock123Value5 := (self) xSizeSpinButton.
    recoveredBlock123Value6 := recoveredBlock123Arg1.
    recoveredBlock123Value7 := (recoveredBlock123Value6) xSize.
    recoveredBlock123Value8 := (recoveredBlock123Value5) value: (recoveredBlock123Value7).
    recoveredBlock123Value8
].
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) undoBlock: (recoveredStack2).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
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

"ASDBase.ic method 0x204d5d84; bytecode file offset 0xdd267c"
!SDCalibrationExtWidget methodsFor: 'recovered'!
initializeFocusCallbacks
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 |
    recoveredValue0 := (self) xMaxSizeSpinButton.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := XmNfocusCallback.
    recoveredValue3 := (self) xMaxSizeLabel.
    (recoveredValue1) addCallback: (recoveredValue2) receiver: (self) selector: ('gettingFocus:clientData:callData:') clientData: (recoveredValue3).
    recoveredValue4 := XmNlosingFocusCallback.
    recoveredValue5 := (self) xMaxSizeLabel.
    (recoveredValue0) addCallback: (recoveredValue4) receiver: (self) selector: ('losingFocus:clientData:callData:') clientData: (recoveredValue5).
    recoveredValue6 := (self) xSizeSpinButton.
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := XmNfocusCallback.
    recoveredValue9 := (self) xSizeLabel.
    (recoveredValue7) addCallback: (recoveredValue8) receiver: (self) selector: ('gettingFocus:clientData:callData:') clientData: (recoveredValue9).
    recoveredValue10 := XmNlosingFocusCallback.
    recoveredValue11 := (self) xSizeLabel.
    (recoveredValue6) addCallback: (recoveredValue10) receiver: (self) selector: ('losingFocus:clientData:callData:') clientData: (recoveredValue11).
    recoveredValue12 := (self) yMaxSizeSpinButton.
    recoveredValue13 := recoveredValue12.
    recoveredValue14 := XmNfocusCallback.
    recoveredValue15 := (self) yMaxSizeLabel.
    (recoveredValue13) addCallback: (recoveredValue14) receiver: (self) selector: ('gettingFocus:clientData:callData:') clientData: (recoveredValue15).
    recoveredValue16 := XmNlosingFocusCallback.
    recoveredValue17 := (self) yMaxSizeLabel.
    (recoveredValue12) addCallback: (recoveredValue16) receiver: (self) selector: ('losingFocus:clientData:callData:') clientData: (recoveredValue17).
    recoveredValue18 := (self) ySizeSpinButton.
    recoveredValue19 := recoveredValue18.
    recoveredValue20 := XmNfocusCallback.
    recoveredValue21 := (self) ySizeLabel.
    (recoveredValue19) addCallback: (recoveredValue20) receiver: (self) selector: ('gettingFocus:clientData:callData:') clientData: (recoveredValue21).
    recoveredValue22 := XmNlosingFocusCallback.
    recoveredValue23 := (self) ySizeLabel.
    (recoveredValue18) addCallback: (recoveredValue22) receiver: (self) selector: ('losingFocus:clientData:callData:') clientData: (recoveredValue23).
    recoveredValue24 := (self) interpolComboBox.
    recoveredValue25 := recoveredValue24.
    recoveredValue26 := XmNfocusCallback.
    recoveredValue27 := (self) interpolLabel.
    (recoveredValue25) addCallback: (recoveredValue26) receiver: (self) selector: ('gettingFocus:clientData:callData:') clientData: (recoveredValue27).
    recoveredValue28 := XmNlosingFocusCallback.
    recoveredValue29 := (self) interpolLabel.
    (recoveredValue24) addCallback: (recoveredValue28) receiver: (self) selector: ('losingFocus:clientData:callData:') clientData: (recoveredValue29).
    recoveredValue30 := (self) extrapolComboBox.
    recoveredValue31 := recoveredValue30.
    recoveredValue32 := XmNfocusCallback.
    recoveredValue33 := (self) extrapolLabel.
    (recoveredValue31) addCallback: (recoveredValue32) receiver: (self) selector: ('gettingFocus:clientData:callData:') clientData: (recoveredValue33).
    recoveredValue34 := XmNlosingFocusCallback.
    recoveredValue35 := (self) extrapolLabel.
    (recoveredValue30) addCallback: (recoveredValue34) receiver: (self) selector: ('losingFocus:clientData:callData:') clientData: (recoveredValue35).
    ^self
! !

"ASDBase.ic method 0x20505df8; bytecode file offset 0xe02704"
!SDCalibrationExtWidget methodsFor: 'recovered'!
updateYSizeForDataMatrix
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPhysValue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) rows.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) ySizeSpinButton.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) ySizeSpinButton.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) master.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableEditor.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) undoBuffer.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPhysValue.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) columns.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataElement.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPhysValue.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) rows.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) deepCopy.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPhysValue.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) deepCopy.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataElement.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPhysValue.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) columns.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) dim: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) master.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) updateContents.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := RBBlockContextEditOperation.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := 'Update y-size'.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack2) operationName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack3 := [:recoveredBlock118Arg1 | 
    | recoveredBlock118Value0 recoveredBlock118Value1 recoveredBlock118Value2 recoveredBlock118Value3 recoveredBlock118Value4 recoveredBlock118Value5 recoveredBlock118Value6 recoveredBlock118Value7 recoveredBlock118Value8 |
    recoveredBlock118Value0 := recoveredBlock118Arg1.
    recoveredBlock118Value1 := (self) dataElement.
    recoveredBlock118Value2 := (recoveredBlock118Value1) getPhysValue.
    recoveredBlock118Value3 := (recoveredBlock118Value2) columns.
    recoveredBlock118Value4 := recoveredLocal4.
    recoveredBlock118Value5 := (recoveredBlock118Value3) @ (recoveredBlock118Value4).
    (recoveredBlock118Value0) dim: (recoveredBlock118Value5).
    recoveredBlock118Value6 := (self) ySizeSpinButton.
    recoveredBlock118Value7 := recoveredLocal4.
    recoveredBlock118Value8 := (recoveredBlock118Value6) value: (recoveredBlock118Value7).
    recoveredBlock118Value8
].
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack2) redoBlock: (recoveredStack3).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := [:recoveredBlock146Arg1 | 
    | recoveredBlock146Value0 recoveredBlock146Value1 recoveredBlock146Value2 recoveredBlock146Value3 recoveredBlock146Value4 recoveredBlock146Value5 recoveredBlock146Value6 recoveredBlock146Value7 recoveredBlock146Value8 recoveredBlock146Value9 |
    recoveredBlock146Value0 := recoveredBlock146Arg1.
    recoveredBlock146Value1 := recoveredLocal2.
    (recoveredBlock146Value0) dim: (recoveredBlock146Value1).
    recoveredBlock146Value2 := recoveredBlock146Arg1.
    recoveredBlock146Value3 := recoveredLocal1.
    recoveredBlock146Value4 := (recoveredBlock146Value3) deepCopy.
    (recoveredBlock146Value2) setPhysValue: (recoveredBlock146Value4).
    recoveredBlock146Value5 := (self) ySizeSpinButton.
    recoveredBlock146Value6 := recoveredBlock146Arg1.
    recoveredBlock146Value7 := (recoveredBlock146Value6) getPhysValue.
    recoveredBlock146Value8 := (recoveredBlock146Value7) rows.
    recoveredBlock146Value9 := (recoveredBlock146Value5) value: (recoveredBlock146Value8).
    recoveredBlock146Value9
].
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := (recoveredStack1) undoBlock: (recoveredStack2).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2050edc8; bytecode file offset 0xe0b6d8"
!SDCalibrationExtWidget methodsFor: 'recovered'!
updateXSizeForDataMatrix
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSize.
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
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) master.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableEditor.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) undoBuffer.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPhysValue.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) columns.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataElement.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPhysValue.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) rows.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) deepCopy.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPhysValue.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) deepCopy.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := (recoveredStack2) dataElement.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := (recoveredStack2) getPhysValue.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (recoveredStack2) rows.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) dim: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) master.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) updateContents.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := RBBlockContextEditOperation.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := 'Update x-size'.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack2) operationName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := [:recoveredBlock121Arg1 | 
    | recoveredBlock121Value0 recoveredBlock121Value1 recoveredBlock121Value2 recoveredBlock121Value3 recoveredBlock121Value4 recoveredBlock121Value5 recoveredBlock121Value6 recoveredBlock121Value7 recoveredBlock121Value8 |
    recoveredBlock121Value0 := recoveredBlock121Arg1.
    recoveredBlock121Value1 := recoveredLocal4.
    recoveredBlock121Value2 := (self) dataElement.
    recoveredBlock121Value3 := (recoveredBlock121Value2) getPhysValue.
    recoveredBlock121Value4 := (recoveredBlock121Value3) rows.
    recoveredBlock121Value5 := (recoveredBlock121Value1) @ (recoveredBlock121Value4).
    (recoveredBlock121Value0) dim: (recoveredBlock121Value5).
    recoveredBlock121Value6 := (self) xSizeSpinButton.
    recoveredBlock121Value7 := recoveredLocal4.
    recoveredBlock121Value8 := (recoveredBlock121Value6) value: (recoveredBlock121Value7).
    recoveredBlock121Value8
].
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack2) redoBlock: (recoveredStack3).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := [:recoveredBlock151Arg1 | 
    | recoveredBlock151Value0 recoveredBlock151Value1 recoveredBlock151Value2 recoveredBlock151Value3 recoveredBlock151Value4 recoveredBlock151Value5 recoveredBlock151Value6 recoveredBlock151Value7 recoveredBlock151Value8 |
    recoveredBlock151Value0 := recoveredBlock151Arg1.
    recoveredBlock151Value1 := recoveredLocal2.
    (recoveredBlock151Value0) dim: (recoveredBlock151Value1).
    recoveredBlock151Value2 := recoveredBlock151Arg1.
    recoveredBlock151Value3 := recoveredLocal1.
    recoveredBlock151Value4 := (recoveredBlock151Value3) deepCopy.
    (recoveredBlock151Value2) setPhysValue: (recoveredBlock151Value4).
    recoveredBlock151Value5 := (self) xSizeSpinButton.
    recoveredBlock151Value6 := recoveredBlock151Arg1.
    recoveredBlock151Value7 := (recoveredBlock151Value6) xSize.
    recoveredBlock151Value8 := (recoveredBlock151Value5) value: (recoveredBlock151Value7).
    recoveredBlock151Value8
].
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := (recoveredStack1) undoBlock: (recoveredStack2).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2051e1b4; bytecode file offset 0xe1aafc"
!SDCalibrationExtWidget methodsFor: 'recovered'!
initializeExtrapolationAndInterpolation
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) extrapolation.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBDataEnumeration.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := RBDataEnumeration.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDefault.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'Constant'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) valueTable: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 'Constant'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) setPhysValue: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) extrapolation: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) extrapolComboBox.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataElement.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) extrapolation.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) valueTable.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) extrapolComboBox.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataElement.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) extrapolation.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPhysValue.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) interpolation.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPhysValue.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) canEditInterpolation.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) interpolation.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) valueTable.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredPC := 178.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) interpolation.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBDataEnumeration.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 137] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := RBDataEnumeration.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDefault.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := 'Rounded'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := 'Linear'.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) valueTable: (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataElement.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBOneDCharTable.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := ASDInterpolationDefaultOptions.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionDefaultsInterpolation1DValue.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredPC := 128.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := ASDInterpolationDefaultOptions.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionDefaultsInterpolation2DValue.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack0) setPhysValue: (recoveredStack1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) interpolation: (recoveredStack1).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) interpolComboBox.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := [:block2810c21cArg1 | 
    | block2810c21cValue0 block2810c21cValue1 block2810c21cValue2 block2810c21cValue3 |
    block2810c21cValue0 := ASDInterpolationDefaultOptions.
    block2810c21cValue1 := block2810c21cArg1.
    block2810c21cValue2 := (block2810c21cValue0) availableInterpolationSet: (block2810c21cValue1).
    block2810c21cValue3 := (block2810c21cValue2) label.
    block2810c21cValue3
].
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack0) printBlock: (recoveredStack1).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := ASDInterpolationDefaultOptions.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := (recoveredStack0) availableInterpolationRoutineIdentifiers.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 178] ifFalse: [recoveredPC := 174].
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack0) addFirst: (recoveredStack1).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := (recoveredStack0) interpolComboBox.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := (recoveredStack0) interpolComboBox.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack0) setObject: (recoveredStack1).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2051e9d4; bytecode file offset 0xe1b2dc"
!SDCalibrationExtWidget methodsFor: 'recovered'!
initializeWidgetsForDataMatrix
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPhysValue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) columns.
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
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPhysValue.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) rows.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) maxSize.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := Point.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) maxSize.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) maxSize.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) maxMatrixSize.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) maxMatrixSize.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxMatrixSize.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) maximum: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) yMaxSizeSpinButton.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxMatrixSize.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) maximum: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) yMaxSizeSpinButton.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) maximum: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) ySizeSpinButton.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) maximum: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) ySizeSpinButton.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeProtection.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) canEditMaxSize.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) editable: (recoveredStack1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) yMaxSizeSpinButton.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack0) editable: (recoveredStack1).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredPC := 166.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack0) editable: (recoveredStack1).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := (recoveredStack0) yMaxSizeSpinButton.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack0) editable: (recoveredStack1).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := (recoveredStack0) canEditSizeInExperiment.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack0) editable: (recoveredStack1).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := (recoveredStack0) ySizeSpinButton.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack0) editable: (recoveredStack1).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205493d0; bytecode file offset 0xe45cdc"
!SDCalibrationExtWidget methodsFor: 'recovered'!
initializeWidgetsForTwoDCharTable
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) xDistribution.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) yDistribution.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) getMaxXSize.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) getMaxYSize.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) maxKFSize.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) maxKFSize.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxKFSize.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) maximum: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) yMaxSizeSpinButton.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxKFSize.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) maximum: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) yMaxSizeSpinButton.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) maximum: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) ySizeSpinButton.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) maximum: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) ySizeSpinButton.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) initializeExtrapolationAndInterpolation.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeProtection.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) canEditMaxSize.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) editable: (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) yMaxSizeSpinButton.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack0) editable: (recoveredStack1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredPC := 154.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack0) editable: (recoveredStack1).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) yMaxSizeSpinButton.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0) editable: (recoveredStack1).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := 'KF'.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 180] ifFalse: [recoveredPC := 164].
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := (recoveredStack0) specificationMode.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 204].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := 'FKf'.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 180] ifFalse: [recoveredPC := 204].
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack0) editable: (recoveredStack1).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := (recoveredStack0) ySizeSpinButton.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack0) editable: (recoveredStack1).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredPC := 216.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := (recoveredStack0) ySizeSpinButton.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20549a1c; bytecode file offset 0xe46328"
!SDCalibrationExtWidget methodsFor: 'recovered'!
doXMaxSizeAndXSizeChangeForDataVector
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) maximum.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) master.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableEditor.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) undoBuffer.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSize.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) deepCopy.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) dim: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) maxXSize: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) master.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) updateContents.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) maximum: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := RBBlockContextEditOperation.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := 'Update x-size'.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack2) operationName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := [:recoveredBlock125Arg1 | 
    | recoveredBlock125Value0 recoveredBlock125Value1 recoveredBlock125Value2 recoveredBlock125Value3 recoveredBlock125Value4 recoveredBlock125Value5 recoveredBlock125Value6 recoveredBlock125Value7 recoveredBlock125Value8 recoveredBlock125Value9 recoveredBlock125Value10 recoveredBlock125Value11 |
    recoveredBlock125Value0 := recoveredBlock125Arg1.
    recoveredBlock125Value1 := recoveredLocal4.
    (recoveredBlock125Value0) dim: (recoveredBlock125Value1).
    recoveredBlock125Value2 := recoveredBlock125Arg1.
    recoveredBlock125Value3 := recoveredLocal5.
    (recoveredBlock125Value2) maxXSize: (recoveredBlock125Value3).
    recoveredBlock125Value4 := (self) xSizeSpinButton.
    recoveredBlock125Value5 := recoveredBlock125Arg1.
    recoveredBlock125Value6 := (recoveredBlock125Value5) xSize.
    (recoveredBlock125Value4) value: (recoveredBlock125Value6).
    recoveredBlock125Value7 := (self) xSizeSpinButton.
    recoveredBlock125Value8 := recoveredLocal5.
    (recoveredBlock125Value7) maximum: (recoveredBlock125Value8).
    recoveredBlock125Value9 := (self) xMaxSizeSpinButton.
    recoveredBlock125Value10 := recoveredLocal5.
    recoveredBlock125Value11 := (recoveredBlock125Value9) value: (recoveredBlock125Value10).
    recoveredBlock125Value11
].
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack2) redoBlock: (recoveredStack3).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := [:recoveredBlock166Arg1 | 
    | recoveredBlock166Value0 recoveredBlock166Value1 recoveredBlock166Value2 recoveredBlock166Value3 recoveredBlock166Value4 recoveredBlock166Value5 recoveredBlock166Value6 recoveredBlock166Value7 recoveredBlock166Value8 recoveredBlock166Value9 recoveredBlock166Value10 recoveredBlock166Value11 recoveredBlock166Value12 recoveredBlock166Value13 recoveredBlock166Value14 |
    recoveredBlock166Value0 := recoveredBlock166Arg1.
    recoveredBlock166Value1 := recoveredLocal2.
    (recoveredBlock166Value0) dim: (recoveredBlock166Value1).
    recoveredBlock166Value2 := recoveredBlock166Arg1.
    recoveredBlock166Value3 := recoveredLocal1.
    recoveredBlock166Value4 := (recoveredBlock166Value3) deepCopy.
    (recoveredBlock166Value2) value: (recoveredBlock166Value4).
    recoveredBlock166Value5 := recoveredBlock166Arg1.
    recoveredBlock166Value6 := recoveredLocal6.
    (recoveredBlock166Value5) maxXSize: (recoveredBlock166Value6).
    recoveredBlock166Value7 := (self) xSizeSpinButton.
    recoveredBlock166Value8 := recoveredLocal6.
    (recoveredBlock166Value7) maximum: (recoveredBlock166Value8).
    recoveredBlock166Value9 := (self) xSizeSpinButton.
    recoveredBlock166Value10 := recoveredBlock166Arg1.
    recoveredBlock166Value11 := (recoveredBlock166Value10) xSize.
    (recoveredBlock166Value9) value: (recoveredBlock166Value11).
    recoveredBlock166Value12 := (self) xMaxSizeSpinButton.
    recoveredBlock166Value13 := recoveredLocal6.
    recoveredBlock166Value14 := (recoveredBlock166Value12) value: (recoveredBlock166Value13).
    recoveredBlock166Value14
].
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := (recoveredStack1) undoBlock: (recoveredStack2).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2055e1b0; bytecode file offset 0xe5aac4"
!SDCalibrationExtWidget methodsFor: 'recovered'!
doXMaxSizeAndXSizeChangeForDataMatrix
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) maximum.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) master.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableEditor.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) undoBuffer.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSize.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataElement.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) ySize.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) deepCopy.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) dataElement.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) ySize.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) dim: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) maxXSize: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) master.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) updateContents.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) maximum: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := RBBlockContextEditOperation.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := 'Update x-size'.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack2) operationName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := [:recoveredBlock132Arg1 | 
    | recoveredBlock132Value0 recoveredBlock132Value1 recoveredBlock132Value2 recoveredBlock132Value3 recoveredBlock132Value4 recoveredBlock132Value5 recoveredBlock132Value6 recoveredBlock132Value7 recoveredBlock132Value8 recoveredBlock132Value9 recoveredBlock132Value10 recoveredBlock132Value11 recoveredBlock132Value12 recoveredBlock132Value13 recoveredBlock132Value14 |
    recoveredBlock132Value0 := recoveredBlock132Arg1.
    recoveredBlock132Value1 := recoveredLocal4.
    recoveredBlock132Value2 := (self) dataElement.
    recoveredBlock132Value3 := (recoveredBlock132Value2) ySize.
    recoveredBlock132Value4 := (recoveredBlock132Value1) @ (recoveredBlock132Value3).
    (recoveredBlock132Value0) dim: (recoveredBlock132Value4).
    recoveredBlock132Value5 := recoveredBlock132Arg1.
    recoveredBlock132Value6 := recoveredLocal5.
    (recoveredBlock132Value5) maxXSize: (recoveredBlock132Value6).
    recoveredBlock132Value7 := (self) xSizeSpinButton.
    recoveredBlock132Value8 := recoveredBlock132Arg1.
    recoveredBlock132Value9 := (recoveredBlock132Value8) xSize.
    (recoveredBlock132Value7) value: (recoveredBlock132Value9).
    recoveredBlock132Value10 := (self) xSizeSpinButton.
    recoveredBlock132Value11 := recoveredLocal5.
    (recoveredBlock132Value10) maximum: (recoveredBlock132Value11).
    recoveredBlock132Value12 := (self) xMaxSizeSpinButton.
    recoveredBlock132Value13 := recoveredLocal5.
    recoveredBlock132Value14 := (recoveredBlock132Value12) value: (recoveredBlock132Value13).
    recoveredBlock132Value14
].
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack2) redoBlock: (recoveredStack3).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := [:recoveredBlock179Arg1 | 
    | recoveredBlock179Value0 recoveredBlock179Value1 recoveredBlock179Value2 recoveredBlock179Value3 recoveredBlock179Value4 recoveredBlock179Value5 recoveredBlock179Value6 recoveredBlock179Value7 recoveredBlock179Value8 recoveredBlock179Value9 recoveredBlock179Value10 recoveredBlock179Value11 recoveredBlock179Value12 recoveredBlock179Value13 recoveredBlock179Value14 |
    recoveredBlock179Value0 := recoveredBlock179Arg1.
    recoveredBlock179Value1 := recoveredLocal2.
    (recoveredBlock179Value0) dim: (recoveredBlock179Value1).
    recoveredBlock179Value2 := recoveredBlock179Arg1.
    recoveredBlock179Value3 := recoveredLocal1.
    recoveredBlock179Value4 := (recoveredBlock179Value3) deepCopy.
    (recoveredBlock179Value2) value: (recoveredBlock179Value4).
    recoveredBlock179Value5 := recoveredBlock179Arg1.
    recoveredBlock179Value6 := recoveredLocal6.
    (recoveredBlock179Value5) maxXSize: (recoveredBlock179Value6).
    recoveredBlock179Value7 := (self) xSizeSpinButton.
    recoveredBlock179Value8 := recoveredLocal6.
    (recoveredBlock179Value7) maximum: (recoveredBlock179Value8).
    recoveredBlock179Value9 := (self) xSizeSpinButton.
    recoveredBlock179Value10 := recoveredBlock179Arg1.
    recoveredBlock179Value11 := (recoveredBlock179Value10) xSize.
    (recoveredBlock179Value9) value: (recoveredBlock179Value11).
    recoveredBlock179Value12 := (self) xMaxSizeSpinButton.
    recoveredBlock179Value13 := recoveredLocal6.
    recoveredBlock179Value14 := (recoveredBlock179Value12) value: (recoveredBlock179Value13).
    recoveredBlock179Value14
].
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := (recoveredStack1) undoBlock: (recoveredStack2).
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2055e300; bytecode file offset 0xe5ac14"
!SDCalibrationExtWidget methodsFor: 'recovered'!
doYMaxSizeAndYSizeChangeForDataMatrix
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) yMaxSizeSpinButton.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) yMaxSizeSpinButton.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) ySizeSpinButton.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) maximum.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) master.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableEditor.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) undoBuffer.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSize.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataElement.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) ySize.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) deepCopy.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataElement.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) xSize.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) dim: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) maxYSize: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) master.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) updateContents.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) ySizeSpinButton.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) maximum: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) yMaxSizeSpinButton.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := RBBlockContextEditOperation.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := 'Update x-size'.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack2) operationName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := [:recoveredBlock132Arg1 | 
    | recoveredBlock132Value0 recoveredBlock132Value1 recoveredBlock132Value2 recoveredBlock132Value3 recoveredBlock132Value4 recoveredBlock132Value5 recoveredBlock132Value6 recoveredBlock132Value7 recoveredBlock132Value8 recoveredBlock132Value9 recoveredBlock132Value10 recoveredBlock132Value11 recoveredBlock132Value12 recoveredBlock132Value13 recoveredBlock132Value14 |
    recoveredBlock132Value0 := recoveredBlock132Arg1.
    recoveredBlock132Value1 := (self) dataElement.
    recoveredBlock132Value2 := (recoveredBlock132Value1) xSize.
    recoveredBlock132Value3 := recoveredLocal4.
    recoveredBlock132Value4 := (recoveredBlock132Value2) @ (recoveredBlock132Value3).
    (recoveredBlock132Value0) dim: (recoveredBlock132Value4).
    recoveredBlock132Value5 := recoveredBlock132Arg1.
    recoveredBlock132Value6 := recoveredLocal5.
    (recoveredBlock132Value5) maxYSize: (recoveredBlock132Value6).
    recoveredBlock132Value7 := (self) ySizeSpinButton.
    recoveredBlock132Value8 := recoveredBlock132Arg1.
    recoveredBlock132Value9 := (recoveredBlock132Value8) ySize.
    (recoveredBlock132Value7) value: (recoveredBlock132Value9).
    recoveredBlock132Value10 := (self) ySizeSpinButton.
    recoveredBlock132Value11 := recoveredLocal5.
    (recoveredBlock132Value10) maximum: (recoveredBlock132Value11).
    recoveredBlock132Value12 := (self) yMaxSizeSpinButton.
    recoveredBlock132Value13 := recoveredLocal5.
    recoveredBlock132Value14 := (recoveredBlock132Value12) value: (recoveredBlock132Value13).
    recoveredBlock132Value14
].
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack2) redoBlock: (recoveredStack3).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := [:recoveredBlock179Arg1 | 
    | recoveredBlock179Value0 recoveredBlock179Value1 recoveredBlock179Value2 recoveredBlock179Value3 recoveredBlock179Value4 recoveredBlock179Value5 recoveredBlock179Value6 recoveredBlock179Value7 recoveredBlock179Value8 recoveredBlock179Value9 recoveredBlock179Value10 recoveredBlock179Value11 recoveredBlock179Value12 recoveredBlock179Value13 recoveredBlock179Value14 |
    recoveredBlock179Value0 := recoveredBlock179Arg1.
    recoveredBlock179Value1 := recoveredLocal2.
    (recoveredBlock179Value0) dim: (recoveredBlock179Value1).
    recoveredBlock179Value2 := recoveredBlock179Arg1.
    recoveredBlock179Value3 := recoveredLocal1.
    recoveredBlock179Value4 := (recoveredBlock179Value3) deepCopy.
    (recoveredBlock179Value2) value: (recoveredBlock179Value4).
    recoveredBlock179Value5 := recoveredBlock179Arg1.
    recoveredBlock179Value6 := recoveredLocal6.
    (recoveredBlock179Value5) maxYSize: (recoveredBlock179Value6).
    recoveredBlock179Value7 := (self) ySizeSpinButton.
    recoveredBlock179Value8 := recoveredLocal6.
    (recoveredBlock179Value7) maximum: (recoveredBlock179Value8).
    recoveredBlock179Value9 := (self) ySizeSpinButton.
    recoveredBlock179Value10 := recoveredBlock179Arg1.
    recoveredBlock179Value11 := (recoveredBlock179Value10) ySize.
    (recoveredBlock179Value9) value: (recoveredBlock179Value11).
    recoveredBlock179Value12 := (self) yMaxSizeSpinButton.
    recoveredBlock179Value13 := recoveredLocal6.
    recoveredBlock179Value14 := (recoveredBlock179Value12) value: (recoveredBlock179Value13).
    recoveredBlock179Value14
].
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := (recoveredStack1) undoBlock: (recoveredStack2).
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2056dc84; bytecode file offset 0xe6a628"
!SDCalibrationExtWidget methodsFor: 'recovered'!
displayDataVectorInformation
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) extrapolLabel.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) interpolLabel.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) extrapolComboBox.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) interpolComboBox.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) ySizeLabel.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) yMaxSizeLabel.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) ySizeSpinButton.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) yMaxSizeSpinButton.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) initializeWidgetsForDataVector.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeLabel.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := [:block28111850Arg1 | 
    | block28111850Value0 block28111850Value1 block28111850Value2 block28111850Value3 block28111850Value4 block28111850Value5 block28111850Value6 block28111850Value7 block28111850Value8 block28111850Value9 |
    block28111850Value0 := block28111850Arg1.
    block28111850Value1 := block28111850Value0.
    block28111850Value2 := XmATTACHFORM.
    (block28111850Value1) topAttachment: (block28111850Value2).
    block28111850Value3 := block28111850Value0.
    (block28111850Value3) topOffset: (5).
    block28111850Value4 := block28111850Value0.
    block28111850Value5 := XmATTACHPOSITION.
    (block28111850Value4) leftAttachment: (block28111850Value5).
    block28111850Value6 := block28111850Value0.
    (block28111850Value6) leftPosition: (2).
    block28111850Value7 := block28111850Value0.
    block28111850Value8 := XmATTACHPOSITION.
    (block28111850Value7) rightAttachment: (block28111850Value8).
    block28111850Value9 := (block28111850Value0) rightPosition: (25).
    block28111850Value9
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := [:recoveredBlock88Arg1 | 
    | recoveredBlock88Value0 recoveredBlock88Value1 recoveredBlock88Value2 recoveredBlock88Value3 recoveredBlock88Value4 recoveredBlock88Value5 recoveredBlock88Value6 recoveredBlock88Value7 recoveredBlock88Value8 recoveredBlock88Value9 recoveredBlock88Value10 recoveredBlock88Value11 recoveredBlock88Value12 recoveredBlock88Value13 recoveredBlock88Value14 |
    recoveredBlock88Value0 := recoveredBlock88Arg1.
    recoveredBlock88Value1 := recoveredBlock88Value0.
    recoveredBlock88Value2 := XmATTACHWIDGET.
    (recoveredBlock88Value1) topAttachment: (recoveredBlock88Value2).
    recoveredBlock88Value3 := recoveredBlock88Value0.
    recoveredBlock88Value4 := (self) xMaxSizeLabel.
    (recoveredBlock88Value3) topWidget: (recoveredBlock88Value4).
    recoveredBlock88Value5 := recoveredBlock88Value0.
    (recoveredBlock88Value5) topOffset: (2).
    recoveredBlock88Value6 := recoveredBlock88Value0.
    recoveredBlock88Value7 := XmATTACHFORM.
    (recoveredBlock88Value6) bottomAttachment: (recoveredBlock88Value7).
    recoveredBlock88Value8 := recoveredBlock88Value0.
    (recoveredBlock88Value8) bottomOffset: (5).
    recoveredBlock88Value9 := recoveredBlock88Value0.
    recoveredBlock88Value10 := XmATTACHPOSITION.
    (recoveredBlock88Value9) leftAttachment: (recoveredBlock88Value10).
    recoveredBlock88Value11 := recoveredBlock88Value0.
    (recoveredBlock88Value11) leftPosition: (2).
    recoveredBlock88Value12 := recoveredBlock88Value0.
    recoveredBlock88Value13 := XmATTACHPOSITION.
    (recoveredBlock88Value12) rightAttachment: (recoveredBlock88Value13).
    recoveredBlock88Value14 := (recoveredBlock88Value0) rightPosition: (25).
    recoveredBlock88Value14
].
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeLabel.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := [:block28111874Arg1 | 
    | block28111874Value0 block28111874Value1 block28111874Value2 block28111874Value3 block28111874Value4 block28111874Value5 block28111874Value6 block28111874Value7 block28111874Value8 block28111874Value9 |
    block28111874Value0 := block28111874Arg1.
    block28111874Value1 := block28111874Value0.
    block28111874Value2 := XmATTACHFORM.
    (block28111874Value1) topAttachment: (block28111874Value2).
    block28111874Value3 := block28111874Value0.
    (block28111874Value3) topOffset: (5).
    block28111874Value4 := block28111874Value0.
    block28111874Value5 := XmATTACHPOSITION.
    (block28111874Value4) leftAttachment: (block28111874Value5).
    block28111874Value6 := block28111874Value0.
    (block28111874Value6) leftPosition: (26).
    block28111874Value7 := block28111874Value0.
    block28111874Value8 := XmATTACHPOSITION.
    (block28111874Value7) rightAttachment: (block28111874Value8).
    block28111874Value9 := (block28111874Value0) rightPosition: (49).
    block28111874Value9
].
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := [:recoveredBlock188Arg1 | 
    | recoveredBlock188Value0 recoveredBlock188Value1 recoveredBlock188Value2 recoveredBlock188Value3 recoveredBlock188Value4 recoveredBlock188Value5 recoveredBlock188Value6 recoveredBlock188Value7 recoveredBlock188Value8 recoveredBlock188Value9 recoveredBlock188Value10 recoveredBlock188Value11 recoveredBlock188Value12 recoveredBlock188Value13 recoveredBlock188Value14 |
    recoveredBlock188Value0 := recoveredBlock188Arg1.
    recoveredBlock188Value1 := recoveredBlock188Value0.
    recoveredBlock188Value2 := XmATTACHWIDGET.
    (recoveredBlock188Value1) topAttachment: (recoveredBlock188Value2).
    recoveredBlock188Value3 := recoveredBlock188Value0.
    recoveredBlock188Value4 := (self) xMaxSizeLabel.
    (recoveredBlock188Value3) topWidget: (recoveredBlock188Value4).
    recoveredBlock188Value5 := recoveredBlock188Value0.
    (recoveredBlock188Value5) topOffset: (2).
    recoveredBlock188Value6 := recoveredBlock188Value0.
    recoveredBlock188Value7 := XmATTACHFORM.
    (recoveredBlock188Value6) bottomAttachment: (recoveredBlock188Value7).
    recoveredBlock188Value8 := recoveredBlock188Value0.
    (recoveredBlock188Value8) bottomOffset: (5).
    recoveredBlock188Value9 := recoveredBlock188Value0.
    recoveredBlock188Value10 := XmATTACHPOSITION.
    (recoveredBlock188Value9) leftAttachment: (recoveredBlock188Value10).
    recoveredBlock188Value11 := recoveredBlock188Value0.
    (recoveredBlock188Value11) leftPosition: (26).
    recoveredBlock188Value12 := recoveredBlock188Value0.
    recoveredBlock188Value13 := XmATTACHPOSITION.
    (recoveredBlock188Value12) rightAttachment: (recoveredBlock188Value13).
    recoveredBlock188Value14 := (recoveredBlock188Value0) rightPosition: (49).
    recoveredBlock188Value14
].
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2056dd00; bytecode file offset 0xe6a628"
!SDCalibrationExtWidget methodsFor: 'recovered'!
displayDiscreteDistributionInformation
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) extrapolLabel.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) interpolLabel.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) extrapolComboBox.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) interpolComboBox.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) ySizeLabel.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) yMaxSizeLabel.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) ySizeSpinButton.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) yMaxSizeSpinButton.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) initializeWidgetsForDiscreteDistribution.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeLabel.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := [:block28111898Arg1 | 
    | block28111898Value0 block28111898Value1 block28111898Value2 block28111898Value3 block28111898Value4 block28111898Value5 block28111898Value6 block28111898Value7 block28111898Value8 block28111898Value9 |
    block28111898Value0 := block28111898Arg1.
    block28111898Value1 := block28111898Value0.
    block28111898Value2 := XmATTACHFORM.
    (block28111898Value1) topAttachment: (block28111898Value2).
    block28111898Value3 := block28111898Value0.
    (block28111898Value3) topOffset: (5).
    block28111898Value4 := block28111898Value0.
    block28111898Value5 := XmATTACHPOSITION.
    (block28111898Value4) leftAttachment: (block28111898Value5).
    block28111898Value6 := block28111898Value0.
    (block28111898Value6) leftPosition: (2).
    block28111898Value7 := block28111898Value0.
    block28111898Value8 := XmATTACHPOSITION.
    (block28111898Value7) rightAttachment: (block28111898Value8).
    block28111898Value9 := (block28111898Value0) rightPosition: (25).
    block28111898Value9
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := [:recoveredBlock88Arg1 | 
    | recoveredBlock88Value0 recoveredBlock88Value1 recoveredBlock88Value2 recoveredBlock88Value3 recoveredBlock88Value4 recoveredBlock88Value5 recoveredBlock88Value6 recoveredBlock88Value7 recoveredBlock88Value8 recoveredBlock88Value9 recoveredBlock88Value10 recoveredBlock88Value11 recoveredBlock88Value12 recoveredBlock88Value13 recoveredBlock88Value14 |
    recoveredBlock88Value0 := recoveredBlock88Arg1.
    recoveredBlock88Value1 := recoveredBlock88Value0.
    recoveredBlock88Value2 := XmATTACHWIDGET.
    (recoveredBlock88Value1) topAttachment: (recoveredBlock88Value2).
    recoveredBlock88Value3 := recoveredBlock88Value0.
    recoveredBlock88Value4 := (self) xMaxSizeLabel.
    (recoveredBlock88Value3) topWidget: (recoveredBlock88Value4).
    recoveredBlock88Value5 := recoveredBlock88Value0.
    (recoveredBlock88Value5) topOffset: (2).
    recoveredBlock88Value6 := recoveredBlock88Value0.
    recoveredBlock88Value7 := XmATTACHFORM.
    (recoveredBlock88Value6) bottomAttachment: (recoveredBlock88Value7).
    recoveredBlock88Value8 := recoveredBlock88Value0.
    (recoveredBlock88Value8) bottomOffset: (5).
    recoveredBlock88Value9 := recoveredBlock88Value0.
    recoveredBlock88Value10 := XmATTACHPOSITION.
    (recoveredBlock88Value9) leftAttachment: (recoveredBlock88Value10).
    recoveredBlock88Value11 := recoveredBlock88Value0.
    (recoveredBlock88Value11) leftPosition: (2).
    recoveredBlock88Value12 := recoveredBlock88Value0.
    recoveredBlock88Value13 := XmATTACHPOSITION.
    (recoveredBlock88Value12) rightAttachment: (recoveredBlock88Value13).
    recoveredBlock88Value14 := (recoveredBlock88Value0) rightPosition: (25).
    recoveredBlock88Value14
].
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeLabel.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := [:block281118bcArg1 | 
    | block281118bcValue0 block281118bcValue1 block281118bcValue2 block281118bcValue3 block281118bcValue4 block281118bcValue5 block281118bcValue6 block281118bcValue7 block281118bcValue8 block281118bcValue9 |
    block281118bcValue0 := block281118bcArg1.
    block281118bcValue1 := block281118bcValue0.
    block281118bcValue2 := XmATTACHFORM.
    (block281118bcValue1) topAttachment: (block281118bcValue2).
    block281118bcValue3 := block281118bcValue0.
    (block281118bcValue3) topOffset: (5).
    block281118bcValue4 := block281118bcValue0.
    block281118bcValue5 := XmATTACHPOSITION.
    (block281118bcValue4) leftAttachment: (block281118bcValue5).
    block281118bcValue6 := block281118bcValue0.
    (block281118bcValue6) leftPosition: (26).
    block281118bcValue7 := block281118bcValue0.
    block281118bcValue8 := XmATTACHPOSITION.
    (block281118bcValue7) rightAttachment: (block281118bcValue8).
    block281118bcValue9 := (block281118bcValue0) rightPosition: (49).
    block281118bcValue9
].
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := [:recoveredBlock188Arg1 | 
    | recoveredBlock188Value0 recoveredBlock188Value1 recoveredBlock188Value2 recoveredBlock188Value3 recoveredBlock188Value4 recoveredBlock188Value5 recoveredBlock188Value6 recoveredBlock188Value7 recoveredBlock188Value8 recoveredBlock188Value9 recoveredBlock188Value10 recoveredBlock188Value11 recoveredBlock188Value12 recoveredBlock188Value13 recoveredBlock188Value14 |
    recoveredBlock188Value0 := recoveredBlock188Arg1.
    recoveredBlock188Value1 := recoveredBlock188Value0.
    recoveredBlock188Value2 := XmATTACHWIDGET.
    (recoveredBlock188Value1) topAttachment: (recoveredBlock188Value2).
    recoveredBlock188Value3 := recoveredBlock188Value0.
    recoveredBlock188Value4 := (self) xMaxSizeLabel.
    (recoveredBlock188Value3) topWidget: (recoveredBlock188Value4).
    recoveredBlock188Value5 := recoveredBlock188Value0.
    (recoveredBlock188Value5) topOffset: (2).
    recoveredBlock188Value6 := recoveredBlock188Value0.
    recoveredBlock188Value7 := XmATTACHFORM.
    (recoveredBlock188Value6) bottomAttachment: (recoveredBlock188Value7).
    recoveredBlock188Value8 := recoveredBlock188Value0.
    (recoveredBlock188Value8) bottomOffset: (5).
    recoveredBlock188Value9 := recoveredBlock188Value0.
    recoveredBlock188Value10 := XmATTACHPOSITION.
    (recoveredBlock188Value9) leftAttachment: (recoveredBlock188Value10).
    recoveredBlock188Value11 := recoveredBlock188Value0.
    (recoveredBlock188Value11) leftPosition: (26).
    recoveredBlock188Value12 := recoveredBlock188Value0.
    recoveredBlock188Value13 := XmATTACHPOSITION.
    (recoveredBlock188Value12) rightAttachment: (recoveredBlock188Value13).
    recoveredBlock188Value14 := (recoveredBlock188Value0) rightPosition: (49).
    recoveredBlock188Value14
].
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2057fe10; bytecode file offset 0xe7c73c"
!SDCalibrationExtWidget methodsFor: 'recovered'!
updateYSize
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) master.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            (recoveredBlock12Stack0) cancelEdit.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) isDataElementADataMatrix.
            recoveredBlock12PC := 24.
        ].
        recoveredBlock12Step = 24 ifTrue: [
            (recoveredBlock12Stack0) ifTrue: [recoveredBlock12PC := 28] ifFalse: [recoveredBlock12PC := 32].
        ].
        recoveredBlock12Step = 28 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) updateYSizeForDataMatrix.
            recoveredBlock12PC := 31.
        ].
        recoveredBlock12Step = 31 ifTrue: [
            ^recoveredBlock12Stack0
        ].
        recoveredBlock12Step = 32 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 33.
        ].
        recoveredBlock12Step = 33 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) dataElement.
            recoveredBlock12PC := 35.
        ].
        recoveredBlock12Step = 35 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) yDistribution.
            recoveredBlock12PC := 37.
        ].
        recoveredBlock12Step = 37 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) size.
            recoveredBlock12PC := 39.
        ].
        recoveredBlock12Step = 39 ifTrue: [
            recoveredLocal6 := recoveredBlock12Stack0.
            recoveredBlock12PC := 42.
        ].
        recoveredBlock12Step = 42 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 43.
        ].
        recoveredBlock12Step = 43 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) ySizeSpinButton.
            recoveredBlock12PC := 45.
        ].
        recoveredBlock12Step = 45 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) value.
            recoveredBlock12PC := 47.
        ].
        recoveredBlock12Step = 47 ifTrue: [
            recoveredLocal5 := recoveredBlock12Stack0.
            recoveredBlock12PC := 50.
        ].
        recoveredBlock12Step = 50 ifTrue: [
            recoveredBlock12Stack0 := recoveredLocal5.
            recoveredBlock12PC := 53.
        ].
        recoveredBlock12Step = 53 ifTrue: [
            recoveredBlock12Stack1 := 0.
            recoveredBlock12PC := 55.
        ].
        recoveredBlock12Step = 55 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) = (recoveredBlock12Stack1).
            recoveredBlock12PC := 56.
        ].
        recoveredBlock12Step = 56 ifTrue: [
            (recoveredBlock12Stack0) ifTrue: [recoveredBlock12PC := 60] ifFalse: [recoveredBlock12PC := 73].
        ].
        recoveredBlock12Step = 60 ifTrue: [
            recoveredBlock12Stack0 := 1.
            recoveredBlock12PC := 62.
        ].
        recoveredBlock12Step = 62 ifTrue: [
            recoveredLocal5 := recoveredBlock12Stack0.
            recoveredBlock12PC := 65.
        ].
        recoveredBlock12Step = 65 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 66.
        ].
        recoveredBlock12Step = 66 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) ySizeSpinButton.
            recoveredBlock12PC := 68.
        ].
        recoveredBlock12Step = 68 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal5.
            recoveredBlock12PC := 71.
        ].
        recoveredBlock12Step = 71 ifTrue: [
            (recoveredBlock12Stack0) value: (recoveredBlock12Stack1).
            recoveredBlock12PC := 73.
        ].
        recoveredBlock12Step = 73 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 74.
        ].
        recoveredBlock12Step = 74 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) master.
            recoveredBlock12PC := 75.
        ].
        recoveredBlock12Step = 75 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) undoBuffer.
            recoveredBlock12PC := 77.
        ].
        recoveredBlock12Step = 77 ifTrue: [
            recoveredLocal4 := recoveredBlock12Stack0.
            recoveredBlock12PC := 80.
        ].
        recoveredBlock12Step = 80 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 81.
        ].
        recoveredBlock12Step = 81 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) dataElement.
            recoveredBlock12PC := 83.
        ].
        recoveredBlock12Step = 83 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) ySize.
            recoveredBlock12PC := 85.
        ].
        recoveredBlock12Step = 85 ifTrue: [
            recoveredLocal3 := recoveredBlock12Stack0.
            recoveredBlock12PC := 88.
        ].
        recoveredBlock12Step = 88 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 89.
        ].
        recoveredBlock12Step = 89 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) dataElement.
            recoveredBlock12PC := 91.
        ].
        recoveredBlock12Step = 91 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) values.
            recoveredBlock12PC := 93.
        ].
        recoveredBlock12Step = 93 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) deepCopy.
            recoveredBlock12PC := 95.
        ].
        recoveredBlock12Step = 95 ifTrue: [
            recoveredLocal2 := recoveredBlock12Stack0.
            recoveredBlock12PC := 98.
        ].
        recoveredBlock12Step = 98 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 99.
        ].
        recoveredBlock12Step = 99 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) dataElement.
            recoveredBlock12PC := 101.
        ].
        recoveredBlock12Step = 101 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) yDistribution.
            recoveredBlock12PC := 103.
        ].
        recoveredBlock12Step = 103 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) deepCopy.
            recoveredBlock12PC := 105.
        ].
        recoveredBlock12Step = 105 ifTrue: [
            recoveredLocal1 := recoveredBlock12Stack0.
            recoveredBlock12PC := 108.
        ].
        recoveredBlock12Step = 108 ifTrue: [
            recoveredBlock12Stack0 := recoveredLocal6.
            recoveredBlock12PC := 111.
        ].
        recoveredBlock12Step = 111 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal5.
            recoveredBlock12PC := 114.
        ].
        recoveredBlock12Step = 114 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) = (recoveredBlock12Stack1).
            recoveredBlock12PC := 115.
        ].
        recoveredBlock12Step = 115 ifTrue: [
            (recoveredBlock12Stack0) ifTrue: [recoveredBlock12PC := 118] ifFalse: [recoveredBlock12PC := 120].
        ].
        recoveredBlock12Step = 118 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 119.
        ].
        recoveredBlock12Step = 119 ifTrue: [
            ^recoveredBlock12Stack0
        ].
        recoveredBlock12Step = 120 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 121.
        ].
        recoveredBlock12Step = 121 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) dataElement.
            recoveredBlock12PC := 123.
        ].
        recoveredBlock12Step = 123 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal5.
            recoveredBlock12PC := 126.
        ].
        recoveredBlock12Step = 126 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) changeYSizeTo: (recoveredBlock12Stack1).
            recoveredBlock12PC := 128.
        ].
        recoveredBlock12Step = 128 ifTrue: [
            (recoveredBlock12Stack0) ifTrue: [recoveredBlock12PC := 175] ifFalse: [recoveredBlock12PC := 132].
        ].
        recoveredBlock12Step = 132 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 133.
        ].
        recoveredBlock12Step = 133 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) dataElement.
            recoveredBlock12PC := 135.
        ].
        recoveredBlock12Step = 135 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal3.
            recoveredBlock12PC := 138.
        ].
        recoveredBlock12Step = 138 ifTrue: [
            (recoveredBlock12Stack0) changeYSizeTo: (recoveredBlock12Stack1).
            recoveredBlock12PC := 140.
        ].
        recoveredBlock12Step = 140 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 141.
        ].
        recoveredBlock12Step = 141 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) dataElement.
            recoveredBlock12PC := 143.
        ].
        recoveredBlock12Step = 143 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal1.
            recoveredBlock12PC := 146.
        ].
        recoveredBlock12Step = 146 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) deepCopy.
            recoveredBlock12PC := 148.
        ].
        recoveredBlock12Step = 148 ifTrue: [
            (recoveredBlock12Stack0) yDistribution: (recoveredBlock12Stack1).
            recoveredBlock12PC := 150.
        ].
        recoveredBlock12Step = 150 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 151.
        ].
        recoveredBlock12Step = 151 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) dataElement.
            recoveredBlock12PC := 153.
        ].
        recoveredBlock12Step = 153 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal2.
            recoveredBlock12PC := 156.
        ].
        recoveredBlock12Step = 156 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) deepCopy.
            recoveredBlock12PC := 158.
        ].
        recoveredBlock12Step = 158 ifTrue: [
            (recoveredBlock12Stack0) values: (recoveredBlock12Stack1).
            recoveredBlock12PC := 160.
        ].
        recoveredBlock12Step = 160 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 161.
        ].
        recoveredBlock12Step = 161 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) ySizeSpinButton.
            recoveredBlock12PC := 163.
        ].
        recoveredBlock12Step = 163 ifTrue: [
            recoveredBlock12Stack1 := self.
            recoveredBlock12PC := 164.
        ].
        recoveredBlock12Step = 164 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) dataElement.
            recoveredBlock12PC := 166.
        ].
        recoveredBlock12Step = 166 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) ySize.
            recoveredBlock12PC := 168.
        ].
        recoveredBlock12Step = 168 ifTrue: [
            (recoveredBlock12Stack0) value: (recoveredBlock12Stack1).
            recoveredBlock12PC := 170.
        ].
        recoveredBlock12Step = 170 ifTrue: [
            recoveredBlock12Stack0 := RBCalibrationWindow.
            recoveredBlock12PC := 172.
        ].
        recoveredBlock12Step = 172 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) errorRightBoundsExceeded.
            recoveredBlock12PC := 174.
        ].
        recoveredBlock12Step = 174 ifTrue: [
            ^recoveredBlock12Stack0
        ].
        recoveredBlock12Step = 175 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 176.
        ].
        recoveredBlock12Step = 176 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) master.
            recoveredBlock12PC := 177.
        ].
        recoveredBlock12Step = 177 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) updateContents.
            recoveredBlock12PC := 179.
        ].
        recoveredBlock12Step = 179 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack0.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack0) showBusyCursorWhile: (recoveredStack1).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := RBBlockContextEditOperation.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack3 := 'Update Y-size'.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack2) operationName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack3 := [:recoveredBlock195Arg1 | 
    | recoveredBlock195Value0 recoveredBlock195Value1 recoveredBlock195Value2 recoveredBlock195Value3 recoveredBlock195Value4 recoveredBlock195Value5 |
    recoveredBlock195Value0 := recoveredBlock195Arg1.
    recoveredBlock195Value1 := recoveredLocal5.
    (recoveredBlock195Value0) changeYSizeTo: (recoveredBlock195Value1).
    recoveredBlock195Value2 := (self) ySizeSpinButton.
    recoveredBlock195Value3 := recoveredBlock195Arg1.
    recoveredBlock195Value4 := (recoveredBlock195Value3) ySize.
    recoveredBlock195Value5 := (recoveredBlock195Value2) value: (recoveredBlock195Value4).
    recoveredBlock195Value5
].
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack2) redoBlock: (recoveredStack3).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack2 := [:recoveredBlock218Arg1 | 
    | recoveredBlock218Value0 recoveredBlock218Value1 recoveredBlock218Value2 recoveredBlock218Value3 recoveredBlock218Value4 recoveredBlock218Value5 recoveredBlock218Value6 recoveredBlock218Value7 recoveredBlock218Value8 recoveredBlock218Value9 recoveredBlock218Value10 recoveredBlock218Value11 |
    recoveredBlock218Value0 := recoveredBlock218Arg1.
    recoveredBlock218Value1 := recoveredLocal3.
    (recoveredBlock218Value0) changeYSizeTo: (recoveredBlock218Value1).
    recoveredBlock218Value2 := recoveredBlock218Arg1.
    recoveredBlock218Value3 := recoveredLocal1.
    recoveredBlock218Value4 := (recoveredBlock218Value3) deepCopy.
    (recoveredBlock218Value2) yDistribution: (recoveredBlock218Value4).
    recoveredBlock218Value5 := recoveredBlock218Arg1.
    recoveredBlock218Value6 := recoveredLocal2.
    recoveredBlock218Value7 := (recoveredBlock218Value6) deepCopy.
    (recoveredBlock218Value5) values: (recoveredBlock218Value7).
    recoveredBlock218Value8 := (self) ySizeSpinButton.
    recoveredBlock218Value9 := recoveredBlock218Arg1.
    recoveredBlock218Value10 := (recoveredBlock218Value9) ySize.
    recoveredBlock218Value11 := (recoveredBlock218Value8) value: (recoveredBlock218Value10).
    recoveredBlock218Value11
].
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := (recoveredStack1) undoBlock: (recoveredStack2).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20591720; bytecode file offset 0xe8e054"
!SDCalibrationExtWidget methodsFor: 'recovered'!
updateXSize
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) master.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            (recoveredBlock12Stack0) cancelEdit.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) dataElement.
            recoveredBlock12PC := 24.
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) isRBDataVector.
            recoveredBlock12PC := 26.
        ].
        recoveredBlock12Step = 26 ifTrue: [
            (recoveredBlock12Stack0) ifTrue: [recoveredBlock12PC := 38] ifFalse: [recoveredBlock12PC := 30].
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 31.
        ].
        recoveredBlock12Step = 31 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) dataElement.
            recoveredBlock12PC := 33.
        ].
        recoveredBlock12Step = 33 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) isRBDiscreteDistribution.
            recoveredBlock12PC := 35.
        ].
        recoveredBlock12Step = 35 ifTrue: [
            (recoveredBlock12Stack0) ifTrue: [recoveredBlock12PC := 38] ifFalse: [recoveredBlock12PC := 42].
        ].
        recoveredBlock12Step = 38 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 39.
        ].
        recoveredBlock12Step = 39 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) updateXSizeForDataVector.
            recoveredBlock12PC := 41.
        ].
        recoveredBlock12Step = 41 ifTrue: [
            ^recoveredBlock12Stack0
        ].
        recoveredBlock12Step = 42 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 43.
        ].
        recoveredBlock12Step = 43 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) isDataElementADataMatrix.
            recoveredBlock12PC := 45.
        ].
        recoveredBlock12Step = 45 ifTrue: [
            (recoveredBlock12Stack0) ifTrue: [recoveredBlock12PC := 48] ifFalse: [recoveredBlock12PC := 52].
        ].
        recoveredBlock12Step = 48 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 49.
        ].
        recoveredBlock12Step = 49 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) updateXSizeForDataMatrix.
            recoveredBlock12PC := 51.
        ].
        recoveredBlock12Step = 51 ifTrue: [
            ^recoveredBlock12Stack0
        ].
        recoveredBlock12Step = 52 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 53.
        ].
        recoveredBlock12Step = 53 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) dataElement.
            recoveredBlock12PC := 55.
        ].
        recoveredBlock12Step = 55 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) xSize.
            recoveredBlock12PC := 57.
        ].
        recoveredBlock12Step = 57 ifTrue: [
            recoveredLocal6 := recoveredBlock12Stack0.
            recoveredBlock12PC := 60.
        ].
        recoveredBlock12Step = 60 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 61.
        ].
        recoveredBlock12Step = 61 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) xSizeSpinButton.
            recoveredBlock12PC := 63.
        ].
        recoveredBlock12Step = 63 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) value.
            recoveredBlock12PC := 65.
        ].
        recoveredBlock12Step = 65 ifTrue: [
            recoveredLocal5 := recoveredBlock12Stack0.
            recoveredBlock12PC := 68.
        ].
        recoveredBlock12Step = 68 ifTrue: [
            recoveredBlock12Stack0 := recoveredLocal5.
            recoveredBlock12PC := 71.
        ].
        recoveredBlock12Step = 71 ifTrue: [
            recoveredBlock12Stack1 := 0.
            recoveredBlock12PC := 73.
        ].
        recoveredBlock12Step = 73 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) = (recoveredBlock12Stack1).
            recoveredBlock12PC := 74.
        ].
        recoveredBlock12Step = 74 ifTrue: [
            (recoveredBlock12Stack0) ifTrue: [recoveredBlock12PC := 78] ifFalse: [recoveredBlock12PC := 91].
        ].
        recoveredBlock12Step = 78 ifTrue: [
            recoveredBlock12Stack0 := 1.
            recoveredBlock12PC := 80.
        ].
        recoveredBlock12Step = 80 ifTrue: [
            recoveredLocal5 := recoveredBlock12Stack0.
            recoveredBlock12PC := 83.
        ].
        recoveredBlock12Step = 83 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 84.
        ].
        recoveredBlock12Step = 84 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) xSizeSpinButton.
            recoveredBlock12PC := 86.
        ].
        recoveredBlock12Step = 86 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal5.
            recoveredBlock12PC := 89.
        ].
        recoveredBlock12Step = 89 ifTrue: [
            (recoveredBlock12Stack0) value: (recoveredBlock12Stack1).
            recoveredBlock12PC := 91.
        ].
        recoveredBlock12Step = 91 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 92.
        ].
        recoveredBlock12Step = 92 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) master.
            recoveredBlock12PC := 93.
        ].
        recoveredBlock12Step = 93 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) undoBuffer.
            recoveredBlock12PC := 95.
        ].
        recoveredBlock12Step = 95 ifTrue: [
            recoveredLocal4 := recoveredBlock12Stack0.
            recoveredBlock12PC := 98.
        ].
        recoveredBlock12Step = 98 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 99.
        ].
        recoveredBlock12Step = 99 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) dataElement.
            recoveredBlock12PC := 101.
        ].
        recoveredBlock12Step = 101 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) xSize.
            recoveredBlock12PC := 103.
        ].
        recoveredBlock12Step = 103 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) deepCopy.
            recoveredBlock12PC := 105.
        ].
        recoveredBlock12Step = 105 ifTrue: [
            recoveredLocal3 := recoveredBlock12Stack0.
            recoveredBlock12PC := 108.
        ].
        recoveredBlock12Step = 108 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 109.
        ].
        recoveredBlock12Step = 109 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) dataElement.
            recoveredBlock12PC := 111.
        ].
        recoveredBlock12Step = 111 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) values.
            recoveredBlock12PC := 113.
        ].
        recoveredBlock12Step = 113 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) deepCopy.
            recoveredBlock12PC := 115.
        ].
        recoveredBlock12Step = 115 ifTrue: [
            recoveredLocal2 := recoveredBlock12Stack0.
            recoveredBlock12PC := 118.
        ].
        recoveredBlock12Step = 118 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 119.
        ].
        recoveredBlock12Step = 119 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) dataElement.
            recoveredBlock12PC := 121.
        ].
        recoveredBlock12Step = 121 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) xDistribution.
            recoveredBlock12PC := 123.
        ].
        recoveredBlock12Step = 123 ifTrue: [
            recoveredLocal1 := recoveredBlock12Stack0.
            recoveredBlock12PC := 126.
        ].
        recoveredBlock12Step = 126 ifTrue: [
            recoveredBlock12Stack0 := recoveredLocal6.
            recoveredBlock12PC := 129.
        ].
        recoveredBlock12Step = 129 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal5.
            recoveredBlock12PC := 132.
        ].
        recoveredBlock12Step = 132 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) = (recoveredBlock12Stack1).
            recoveredBlock12PC := 133.
        ].
        recoveredBlock12Step = 133 ifTrue: [
            (recoveredBlock12Stack0) ifTrue: [recoveredBlock12PC := 136] ifFalse: [recoveredBlock12PC := 138].
        ].
        recoveredBlock12Step = 136 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 137.
        ].
        recoveredBlock12Step = 137 ifTrue: [
            ^recoveredBlock12Stack0
        ].
        recoveredBlock12Step = 138 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 139.
        ].
        recoveredBlock12Step = 139 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) dataElement.
            recoveredBlock12PC := 141.
        ].
        recoveredBlock12Step = 141 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal5.
            recoveredBlock12PC := 144.
        ].
        recoveredBlock12Step = 144 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) changeXSizeTo: (recoveredBlock12Stack1).
            recoveredBlock12PC := 146.
        ].
        recoveredBlock12Step = 146 ifTrue: [
            (recoveredBlock12Stack0) ifTrue: [recoveredBlock12PC := 193] ifFalse: [recoveredBlock12PC := 150].
        ].
        recoveredBlock12Step = 150 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 151.
        ].
        recoveredBlock12Step = 151 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) dataElement.
            recoveredBlock12PC := 153.
        ].
        recoveredBlock12Step = 153 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal3.
            recoveredBlock12PC := 156.
        ].
        recoveredBlock12Step = 156 ifTrue: [
            (recoveredBlock12Stack0) changeXSizeTo: (recoveredBlock12Stack1).
            recoveredBlock12PC := 158.
        ].
        recoveredBlock12Step = 158 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 159.
        ].
        recoveredBlock12Step = 159 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) dataElement.
            recoveredBlock12PC := 161.
        ].
        recoveredBlock12Step = 161 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal1.
            recoveredBlock12PC := 164.
        ].
        recoveredBlock12Step = 164 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) deepCopy.
            recoveredBlock12PC := 166.
        ].
        recoveredBlock12Step = 166 ifTrue: [
            (recoveredBlock12Stack0) xDistribution: (recoveredBlock12Stack1).
            recoveredBlock12PC := 168.
        ].
        recoveredBlock12Step = 168 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 169.
        ].
        recoveredBlock12Step = 169 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) dataElement.
            recoveredBlock12PC := 171.
        ].
        recoveredBlock12Step = 171 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal2.
            recoveredBlock12PC := 174.
        ].
        recoveredBlock12Step = 174 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) deepCopy.
            recoveredBlock12PC := 176.
        ].
        recoveredBlock12Step = 176 ifTrue: [
            (recoveredBlock12Stack0) values: (recoveredBlock12Stack1).
            recoveredBlock12PC := 178.
        ].
        recoveredBlock12Step = 178 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 179.
        ].
        recoveredBlock12Step = 179 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) xSizeSpinButton.
            recoveredBlock12PC := 181.
        ].
        recoveredBlock12Step = 181 ifTrue: [
            recoveredBlock12Stack1 := self.
            recoveredBlock12PC := 182.
        ].
        recoveredBlock12Step = 182 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) dataElement.
            recoveredBlock12PC := 184.
        ].
        recoveredBlock12Step = 184 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) xSize.
            recoveredBlock12PC := 186.
        ].
        recoveredBlock12Step = 186 ifTrue: [
            (recoveredBlock12Stack0) value: (recoveredBlock12Stack1).
            recoveredBlock12PC := 188.
        ].
        recoveredBlock12Step = 188 ifTrue: [
            recoveredBlock12Stack0 := RBCalibrationWindow.
            recoveredBlock12PC := 190.
        ].
        recoveredBlock12Step = 190 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) errorRightBoundsExceeded.
            recoveredBlock12PC := 192.
        ].
        recoveredBlock12Step = 192 ifTrue: [
            ^recoveredBlock12Stack0
        ].
        recoveredBlock12Step = 193 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 194.
        ].
        recoveredBlock12Step = 194 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) master.
            recoveredBlock12PC := 195.
        ].
        recoveredBlock12Step = 195 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) updateContents.
            recoveredBlock12PC := 197.
        ].
        recoveredBlock12Step = 197 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack0.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack0) showBusyCursorWhile: (recoveredStack1).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := RBBlockContextEditOperation.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := 'Update x-size'.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack2) operationName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack3 := [:recoveredBlock213Arg1 | 
    | recoveredBlock213Value0 recoveredBlock213Value1 recoveredBlock213Value2 recoveredBlock213Value3 recoveredBlock213Value4 |
    recoveredBlock213Value0 := recoveredBlock213Arg1.
    recoveredBlock213Value1 := recoveredLocal5.
    (recoveredBlock213Value0) changeXSizeTo: (recoveredBlock213Value1).
    recoveredBlock213Value2 := (self) xSizeSpinButton.
    recoveredBlock213Value3 := recoveredLocal5.
    recoveredBlock213Value4 := (recoveredBlock213Value2) value: (recoveredBlock213Value3).
    recoveredBlock213Value4
].
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            (recoveredStack2) redoBlock: (recoveredStack3).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack2 := [:recoveredBlock236Arg1 | 
    | recoveredBlock236Value0 recoveredBlock236Value1 recoveredBlock236Value2 recoveredBlock236Value3 recoveredBlock236Value4 recoveredBlock236Value5 recoveredBlock236Value6 recoveredBlock236Value7 recoveredBlock236Value8 recoveredBlock236Value9 recoveredBlock236Value10 recoveredBlock236Value11 |
    recoveredBlock236Value0 := recoveredBlock236Arg1.
    recoveredBlock236Value1 := recoveredLocal3.
    (recoveredBlock236Value0) changeXSizeTo: (recoveredBlock236Value1).
    recoveredBlock236Value2 := recoveredBlock236Arg1.
    recoveredBlock236Value3 := recoveredLocal1.
    recoveredBlock236Value4 := (recoveredBlock236Value3) deepCopy.
    (recoveredBlock236Value2) xDistribution: (recoveredBlock236Value4).
    recoveredBlock236Value5 := recoveredBlock236Arg1.
    recoveredBlock236Value6 := recoveredLocal2.
    recoveredBlock236Value7 := (recoveredBlock236Value6) deepCopy.
    (recoveredBlock236Value5) values: (recoveredBlock236Value7).
    recoveredBlock236Value8 := (self) xSizeSpinButton.
    recoveredBlock236Value9 := recoveredBlock236Arg1.
    recoveredBlock236Value10 := (recoveredBlock236Value9) xSize.
    recoveredBlock236Value11 := (recoveredBlock236Value8) value: (recoveredBlock236Value10).
    recoveredBlock236Value11
].
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := (recoveredStack1) undoBlock: (recoveredStack2).
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205b8ce4; bytecode file offset 0xeb5614"
!SDCalibrationExtWidget methodsFor: 'recovered'!
doYMaxSizeAndYSizeChange
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) master.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableEditor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) cancelEdit.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBDataMatrix.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) doYMaxSizeAndYSizeChangeForDataMatrix.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) yMaxSizeSpinButton.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) yMaxSizeSpinButton.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) ySizeSpinButton.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) maximum.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) master.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableEditor.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) undoBuffer.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) ySize.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) deepCopy.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) yDistribution.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) deepCopy.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) changeYSizeTo: (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) changeYSizeTo: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) deepCopy.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) yDistribution: (recoveredStack1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) deepCopy.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack0) values: (recoveredStack1).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) maxYSize: (recoveredStack1).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) ySizeSpinButton.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0) maximum: (recoveredStack1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) ySizeSpinButton.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataElement.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) ySize.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := (recoveredStack0) yMaxSizeSpinButton.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := RBCalibrationWindow.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorRightBoundsExceeded.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack0) maxYSize: (recoveredStack1).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := (recoveredStack0) master.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack0) updateContents.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := (recoveredStack0) ySizeSpinButton.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack0) maximum: (recoveredStack1).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := (recoveredStack0) yMaxSizeSpinButton.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := RBBlockContextEditOperation.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack3 := 'Update x-size'.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack2) operationName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack3 := [:recoveredBlock210Arg1 | 
    | recoveredBlock210Value0 recoveredBlock210Value1 recoveredBlock210Value2 recoveredBlock210Value3 recoveredBlock210Value4 recoveredBlock210Value5 recoveredBlock210Value6 recoveredBlock210Value7 recoveredBlock210Value8 recoveredBlock210Value9 recoveredBlock210Value10 recoveredBlock210Value11 |
    recoveredBlock210Value0 := recoveredBlock210Arg1.
    recoveredBlock210Value1 := recoveredLocal5.
    (recoveredBlock210Value0) changeYSizeTo: (recoveredBlock210Value1).
    recoveredBlock210Value2 := recoveredBlock210Arg1.
    recoveredBlock210Value3 := recoveredLocal6.
    (recoveredBlock210Value2) maxYSize: (recoveredBlock210Value3).
    recoveredBlock210Value4 := (self) ySizeSpinButton.
    recoveredBlock210Value5 := recoveredBlock210Arg1.
    recoveredBlock210Value6 := (recoveredBlock210Value5) ySize.
    (recoveredBlock210Value4) value: (recoveredBlock210Value6).
    recoveredBlock210Value7 := (self) ySizeSpinButton.
    recoveredBlock210Value8 := recoveredLocal6.
    (recoveredBlock210Value7) maximum: (recoveredBlock210Value8).
    recoveredBlock210Value9 := (self) yMaxSizeSpinButton.
    recoveredBlock210Value10 := recoveredLocal6.
    recoveredBlock210Value11 := (recoveredBlock210Value9) value: (recoveredBlock210Value10).
    recoveredBlock210Value11
].
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            (recoveredStack2) redoBlock: (recoveredStack3).
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack2 := [:recoveredBlock254Arg1 | 
    | recoveredBlock254Value0 recoveredBlock254Value1 recoveredBlock254Value2 recoveredBlock254Value3 recoveredBlock254Value4 recoveredBlock254Value5 recoveredBlock254Value6 recoveredBlock254Value7 recoveredBlock254Value8 recoveredBlock254Value9 recoveredBlock254Value10 recoveredBlock254Value11 recoveredBlock254Value12 recoveredBlock254Value13 recoveredBlock254Value14 recoveredBlock254Value15 recoveredBlock254Value16 recoveredBlock254Value17 |
    recoveredBlock254Value0 := recoveredBlock254Arg1.
    recoveredBlock254Value1 := recoveredLocal3.
    (recoveredBlock254Value0) changeYSizeTo: (recoveredBlock254Value1).
    recoveredBlock254Value2 := recoveredBlock254Arg1.
    recoveredBlock254Value3 := recoveredLocal1.
    recoveredBlock254Value4 := (recoveredBlock254Value3) deepCopy.
    (recoveredBlock254Value2) yDistribution: (recoveredBlock254Value4).
    recoveredBlock254Value5 := recoveredBlock254Arg1.
    recoveredBlock254Value6 := recoveredLocal2.
    recoveredBlock254Value7 := (recoveredBlock254Value6) deepCopy.
    (recoveredBlock254Value5) values: (recoveredBlock254Value7).
    recoveredBlock254Value8 := recoveredBlock254Arg1.
    recoveredBlock254Value9 := recoveredLocal7.
    (recoveredBlock254Value8) maxYSize: (recoveredBlock254Value9).
    recoveredBlock254Value10 := (self) ySizeSpinButton.
    recoveredBlock254Value11 := recoveredLocal7.
    (recoveredBlock254Value10) maximum: (recoveredBlock254Value11).
    recoveredBlock254Value12 := (self) ySizeSpinButton.
    recoveredBlock254Value13 := recoveredBlock254Arg1.
    recoveredBlock254Value14 := (recoveredBlock254Value13) ySize.
    (recoveredBlock254Value12) value: (recoveredBlock254Value14).
    recoveredBlock254Value15 := (self) yMaxSizeSpinButton.
    recoveredBlock254Value16 := recoveredLocal7.
    recoveredBlock254Value17 := (recoveredBlock254Value15) value: (recoveredBlock254Value16).
    recoveredBlock254Value17
].
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := (recoveredStack1) undoBlock: (recoveredStack2).
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205c7824; bytecode file offset 0xec4160"
!SDCalibrationExtWidget methodsFor: 'recovered'!
doXMaxSizeAndXSizeChange
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) master.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableEditor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) cancelEdit.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBDataVector.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBDiscreteDistribution.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) doXMaxSizeAndXSizeChangeForDataVector.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBDataMatrix.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) doXMaxSizeAndXSizeChangeForDataMatrix.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 71].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) maximum.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) master.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableEditor.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) undoBuffer.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSize.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) deepCopy.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) xDistribution.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) deepCopy.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) changeXSizeTo: (recoveredStack1).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 190] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) changeXSizeTo: (recoveredStack1).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) deepCopy.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack0) xDistribution: (recoveredStack1).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) deepCopy.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0) values: (recoveredStack1).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack0) maxXSize: (recoveredStack1).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack0) maximum: (recoveredStack1).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataElement.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := (recoveredStack1) xSize.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := RBCalibrationWindow.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorRightBoundsExceeded.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack0) maxXSize: (recoveredStack1).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := (recoveredStack0) master.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack0) updateContents.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack0) maximum: (recoveredStack1).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := RBBlockContextEditOperation.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack3 := 'Update x-size'.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack2) operationName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack3 := [:recoveredBlock230Arg1 | 
    | recoveredBlock230Value0 recoveredBlock230Value1 recoveredBlock230Value2 recoveredBlock230Value3 recoveredBlock230Value4 recoveredBlock230Value5 recoveredBlock230Value6 recoveredBlock230Value7 recoveredBlock230Value8 recoveredBlock230Value9 recoveredBlock230Value10 recoveredBlock230Value11 |
    recoveredBlock230Value0 := recoveredBlock230Arg1.
    recoveredBlock230Value1 := recoveredLocal5.
    (recoveredBlock230Value0) changeXSizeTo: (recoveredBlock230Value1).
    recoveredBlock230Value2 := recoveredBlock230Arg1.
    recoveredBlock230Value3 := recoveredLocal6.
    (recoveredBlock230Value2) maxXSize: (recoveredBlock230Value3).
    recoveredBlock230Value4 := (self) xSizeSpinButton.
    recoveredBlock230Value5 := recoveredBlock230Arg1.
    recoveredBlock230Value6 := (recoveredBlock230Value5) xSize.
    (recoveredBlock230Value4) value: (recoveredBlock230Value6).
    recoveredBlock230Value7 := (self) xSizeSpinButton.
    recoveredBlock230Value8 := recoveredLocal6.
    (recoveredBlock230Value7) maximum: (recoveredBlock230Value8).
    recoveredBlock230Value9 := (self) xMaxSizeSpinButton.
    recoveredBlock230Value10 := recoveredLocal6.
    recoveredBlock230Value11 := (recoveredBlock230Value9) value: (recoveredBlock230Value10).
    recoveredBlock230Value11
].
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            (recoveredStack2) redoBlock: (recoveredStack3).
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack2 := [:recoveredBlock274Arg1 | 
    | recoveredBlock274Value0 recoveredBlock274Value1 recoveredBlock274Value2 recoveredBlock274Value3 recoveredBlock274Value4 recoveredBlock274Value5 recoveredBlock274Value6 recoveredBlock274Value7 recoveredBlock274Value8 recoveredBlock274Value9 recoveredBlock274Value10 recoveredBlock274Value11 recoveredBlock274Value12 recoveredBlock274Value13 recoveredBlock274Value14 recoveredBlock274Value15 recoveredBlock274Value16 recoveredBlock274Value17 |
    recoveredBlock274Value0 := recoveredBlock274Arg1.
    recoveredBlock274Value1 := recoveredLocal3.
    (recoveredBlock274Value0) changeXSizeTo: (recoveredBlock274Value1).
    recoveredBlock274Value2 := recoveredBlock274Arg1.
    recoveredBlock274Value3 := recoveredLocal1.
    recoveredBlock274Value4 := (recoveredBlock274Value3) deepCopy.
    (recoveredBlock274Value2) xDistribution: (recoveredBlock274Value4).
    recoveredBlock274Value5 := recoveredBlock274Arg1.
    recoveredBlock274Value6 := recoveredLocal2.
    recoveredBlock274Value7 := (recoveredBlock274Value6) deepCopy.
    (recoveredBlock274Value5) values: (recoveredBlock274Value7).
    recoveredBlock274Value8 := recoveredBlock274Arg1.
    recoveredBlock274Value9 := recoveredLocal7.
    (recoveredBlock274Value8) maxXSize: (recoveredBlock274Value9).
    recoveredBlock274Value10 := (self) xSizeSpinButton.
    recoveredBlock274Value11 := recoveredLocal7.
    (recoveredBlock274Value10) maximum: (recoveredBlock274Value11).
    recoveredBlock274Value12 := (self) xSizeSpinButton.
    recoveredBlock274Value13 := recoveredBlock274Arg1.
    recoveredBlock274Value14 := (recoveredBlock274Value13) xSize.
    (recoveredBlock274Value12) value: (recoveredBlock274Value14).
    recoveredBlock274Value15 := (self) xMaxSizeSpinButton.
    recoveredBlock274Value16 := recoveredLocal7.
    recoveredBlock274Value17 := (recoveredBlock274Value15) value: (recoveredBlock274Value16).
    recoveredBlock274Value17
].
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack1 := (recoveredStack1) undoBlock: (recoveredStack2).
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20603f04; bytecode file offset 0xf008c0"
!SDCalibrationExtWidget methodsFor: 'recovered'!
displayOneDCharTableInformation
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) ySizeLabel.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) yMaxSizeLabel.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) ySizeSpinButton.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) yMaxSizeSpinButton.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) extrapolLabel.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) interpolLabel.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) extrapolComboBox.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) interpolComboBox.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) initializeWidgetsForOneDCharTable.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeLabel.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := [:block2811cc50Arg1 | 
    | block2811cc50Value0 block2811cc50Value1 block2811cc50Value2 block2811cc50Value3 block2811cc50Value4 block2811cc50Value5 block2811cc50Value6 block2811cc50Value7 block2811cc50Value8 block2811cc50Value9 |
    block2811cc50Value0 := block2811cc50Arg1.
    block2811cc50Value1 := block2811cc50Value0.
    block2811cc50Value2 := XmATTACHFORM.
    (block2811cc50Value1) topAttachment: (block2811cc50Value2).
    block2811cc50Value3 := block2811cc50Value0.
    (block2811cc50Value3) topOffset: (5).
    block2811cc50Value4 := block2811cc50Value0.
    block2811cc50Value5 := XmATTACHPOSITION.
    (block2811cc50Value4) leftAttachment: (block2811cc50Value5).
    block2811cc50Value6 := block2811cc50Value0.
    (block2811cc50Value6) leftPosition: (2).
    block2811cc50Value7 := block2811cc50Value0.
    block2811cc50Value8 := XmATTACHPOSITION.
    (block2811cc50Value7) rightAttachment: (block2811cc50Value8).
    block2811cc50Value9 := (block2811cc50Value0) rightPosition: (25).
    block2811cc50Value9
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := [:recoveredBlock88Arg1 | 
    | recoveredBlock88Value0 recoveredBlock88Value1 recoveredBlock88Value2 recoveredBlock88Value3 recoveredBlock88Value4 recoveredBlock88Value5 recoveredBlock88Value6 recoveredBlock88Value7 recoveredBlock88Value8 recoveredBlock88Value9 recoveredBlock88Value10 recoveredBlock88Value11 recoveredBlock88Value12 recoveredBlock88Value13 recoveredBlock88Value14 |
    recoveredBlock88Value0 := recoveredBlock88Arg1.
    recoveredBlock88Value1 := recoveredBlock88Value0.
    recoveredBlock88Value2 := XmATTACHWIDGET.
    (recoveredBlock88Value1) topAttachment: (recoveredBlock88Value2).
    recoveredBlock88Value3 := recoveredBlock88Value0.
    recoveredBlock88Value4 := (self) xMaxSizeLabel.
    (recoveredBlock88Value3) topWidget: (recoveredBlock88Value4).
    recoveredBlock88Value5 := recoveredBlock88Value0.
    (recoveredBlock88Value5) topOffset: (2).
    recoveredBlock88Value6 := recoveredBlock88Value0.
    recoveredBlock88Value7 := XmATTACHFORM.
    (recoveredBlock88Value6) bottomAttachment: (recoveredBlock88Value7).
    recoveredBlock88Value8 := recoveredBlock88Value0.
    (recoveredBlock88Value8) bottomOffset: (5).
    recoveredBlock88Value9 := recoveredBlock88Value0.
    recoveredBlock88Value10 := XmATTACHPOSITION.
    (recoveredBlock88Value9) leftAttachment: (recoveredBlock88Value10).
    recoveredBlock88Value11 := recoveredBlock88Value0.
    (recoveredBlock88Value11) leftPosition: (2).
    recoveredBlock88Value12 := recoveredBlock88Value0.
    recoveredBlock88Value13 := XmATTACHPOSITION.
    (recoveredBlock88Value12) rightAttachment: (recoveredBlock88Value13).
    recoveredBlock88Value14 := (recoveredBlock88Value0) rightPosition: (25).
    recoveredBlock88Value14
].
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeLabel.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := [:block2811cc74Arg1 | 
    | block2811cc74Value0 block2811cc74Value1 block2811cc74Value2 block2811cc74Value3 block2811cc74Value4 block2811cc74Value5 block2811cc74Value6 block2811cc74Value7 block2811cc74Value8 block2811cc74Value9 |
    block2811cc74Value0 := block2811cc74Arg1.
    block2811cc74Value1 := block2811cc74Value0.
    block2811cc74Value2 := XmATTACHFORM.
    (block2811cc74Value1) topAttachment: (block2811cc74Value2).
    block2811cc74Value3 := block2811cc74Value0.
    (block2811cc74Value3) topOffset: (5).
    block2811cc74Value4 := block2811cc74Value0.
    block2811cc74Value5 := XmATTACHPOSITION.
    (block2811cc74Value4) leftAttachment: (block2811cc74Value5).
    block2811cc74Value6 := block2811cc74Value0.
    (block2811cc74Value6) leftPosition: (26).
    block2811cc74Value7 := block2811cc74Value0.
    block2811cc74Value8 := XmATTACHPOSITION.
    (block2811cc74Value7) rightAttachment: (block2811cc74Value8).
    block2811cc74Value9 := (block2811cc74Value0) rightPosition: (49).
    block2811cc74Value9
].
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := [:recoveredBlock188Arg1 | 
    | recoveredBlock188Value0 recoveredBlock188Value1 recoveredBlock188Value2 recoveredBlock188Value3 recoveredBlock188Value4 recoveredBlock188Value5 recoveredBlock188Value6 recoveredBlock188Value7 recoveredBlock188Value8 recoveredBlock188Value9 recoveredBlock188Value10 recoveredBlock188Value11 recoveredBlock188Value12 recoveredBlock188Value13 recoveredBlock188Value14 |
    recoveredBlock188Value0 := recoveredBlock188Arg1.
    recoveredBlock188Value1 := recoveredBlock188Value0.
    recoveredBlock188Value2 := XmATTACHWIDGET.
    (recoveredBlock188Value1) topAttachment: (recoveredBlock188Value2).
    recoveredBlock188Value3 := recoveredBlock188Value0.
    recoveredBlock188Value4 := (self) xMaxSizeLabel.
    (recoveredBlock188Value3) topWidget: (recoveredBlock188Value4).
    recoveredBlock188Value5 := recoveredBlock188Value0.
    (recoveredBlock188Value5) topOffset: (2).
    recoveredBlock188Value6 := recoveredBlock188Value0.
    recoveredBlock188Value7 := XmATTACHFORM.
    (recoveredBlock188Value6) bottomAttachment: (recoveredBlock188Value7).
    recoveredBlock188Value8 := recoveredBlock188Value0.
    (recoveredBlock188Value8) bottomOffset: (5).
    recoveredBlock188Value9 := recoveredBlock188Value0.
    recoveredBlock188Value10 := XmATTACHPOSITION.
    (recoveredBlock188Value9) leftAttachment: (recoveredBlock188Value10).
    recoveredBlock188Value11 := recoveredBlock188Value0.
    (recoveredBlock188Value11) leftPosition: (26).
    recoveredBlock188Value12 := recoveredBlock188Value0.
    recoveredBlock188Value13 := XmATTACHPOSITION.
    (recoveredBlock188Value12) rightAttachment: (recoveredBlock188Value13).
    recoveredBlock188Value14 := (recoveredBlock188Value0) rightPosition: (49).
    recoveredBlock188Value14
].
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack0 := (recoveredStack0) interpolLabel.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := [:block2811cc98Arg1 | 
    | block2811cc98Value0 block2811cc98Value1 block2811cc98Value2 block2811cc98Value3 block2811cc98Value4 block2811cc98Value5 block2811cc98Value6 block2811cc98Value7 block2811cc98Value8 block2811cc98Value9 |
    block2811cc98Value0 := block2811cc98Arg1.
    block2811cc98Value1 := block2811cc98Value0.
    block2811cc98Value2 := XmATTACHFORM.
    (block2811cc98Value1) topAttachment: (block2811cc98Value2).
    block2811cc98Value3 := block2811cc98Value0.
    (block2811cc98Value3) topOffset: (5).
    block2811cc98Value4 := block2811cc98Value0.
    block2811cc98Value5 := XmATTACHPOSITION.
    (block2811cc98Value4) leftAttachment: (block2811cc98Value5).
    block2811cc98Value6 := block2811cc98Value0.
    (block2811cc98Value6) leftPosition: (51).
    block2811cc98Value7 := block2811cc98Value0.
    block2811cc98Value8 := XmATTACHPOSITION.
    (block2811cc98Value7) rightAttachment: (block2811cc98Value8).
    block2811cc98Value9 := (block2811cc98Value0) rightPosition: (74).
    block2811cc98Value9
].
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack0 := (recoveredStack0) interpolComboBox.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack1 := [:recoveredBlock290Arg1 | 
    | recoveredBlock290Value0 recoveredBlock290Value1 recoveredBlock290Value2 recoveredBlock290Value3 recoveredBlock290Value4 recoveredBlock290Value5 recoveredBlock290Value6 recoveredBlock290Value7 recoveredBlock290Value8 recoveredBlock290Value9 recoveredBlock290Value10 recoveredBlock290Value11 recoveredBlock290Value12 recoveredBlock290Value13 recoveredBlock290Value14 |
    recoveredBlock290Value0 := recoveredBlock290Arg1.
    recoveredBlock290Value1 := recoveredBlock290Value0.
    recoveredBlock290Value2 := XmATTACHWIDGET.
    (recoveredBlock290Value1) topAttachment: (recoveredBlock290Value2).
    recoveredBlock290Value3 := recoveredBlock290Value0.
    recoveredBlock290Value4 := (self) xMaxSizeLabel.
    (recoveredBlock290Value3) topWidget: (recoveredBlock290Value4).
    recoveredBlock290Value5 := recoveredBlock290Value0.
    (recoveredBlock290Value5) topOffset: (2).
    recoveredBlock290Value6 := recoveredBlock290Value0.
    recoveredBlock290Value7 := XmATTACHFORM.
    (recoveredBlock290Value6) bottomAttachment: (recoveredBlock290Value7).
    recoveredBlock290Value8 := recoveredBlock290Value0.
    (recoveredBlock290Value8) bottomOffset: (5).
    recoveredBlock290Value9 := recoveredBlock290Value0.
    recoveredBlock290Value10 := XmATTACHPOSITION.
    (recoveredBlock290Value9) leftAttachment: (recoveredBlock290Value10).
    recoveredBlock290Value11 := recoveredBlock290Value0.
    (recoveredBlock290Value11) leftPosition: (51).
    recoveredBlock290Value12 := recoveredBlock290Value0.
    recoveredBlock290Value13 := XmATTACHPOSITION.
    (recoveredBlock290Value12) rightAttachment: (recoveredBlock290Value13).
    recoveredBlock290Value14 := (recoveredBlock290Value0) rightPosition: (74).
    recoveredBlock290Value14
].
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack0 := (recoveredStack0) extrapolLabel.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack1 := [:block2811ccbcArg1 | 
    | block2811ccbcValue0 block2811ccbcValue1 block2811ccbcValue2 block2811ccbcValue3 block2811ccbcValue4 block2811ccbcValue5 block2811ccbcValue6 block2811ccbcValue7 block2811ccbcValue8 block2811ccbcValue9 |
    block2811ccbcValue0 := block2811ccbcArg1.
    block2811ccbcValue1 := block2811ccbcValue0.
    block2811ccbcValue2 := XmATTACHFORM.
    (block2811ccbcValue1) topAttachment: (block2811ccbcValue2).
    block2811ccbcValue3 := block2811ccbcValue0.
    (block2811ccbcValue3) topOffset: (5).
    block2811ccbcValue4 := block2811ccbcValue0.
    block2811ccbcValue5 := XmATTACHPOSITION.
    (block2811ccbcValue4) leftAttachment: (block2811ccbcValue5).
    block2811ccbcValue6 := block2811ccbcValue0.
    (block2811ccbcValue6) leftPosition: (75).
    block2811ccbcValue7 := block2811ccbcValue0.
    block2811ccbcValue8 := XmATTACHPOSITION.
    (block2811ccbcValue7) rightAttachment: (block2811ccbcValue8).
    block2811ccbcValue9 := (block2811ccbcValue0) rightPosition: (98).
    block2811ccbcValue9
].
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack0 := (recoveredStack0) extrapolComboBox.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack1 := [:recoveredBlock394Arg1 | 
    | recoveredBlock394Value0 recoveredBlock394Value1 recoveredBlock394Value2 recoveredBlock394Value3 recoveredBlock394Value4 recoveredBlock394Value5 recoveredBlock394Value6 recoveredBlock394Value7 recoveredBlock394Value8 recoveredBlock394Value9 recoveredBlock394Value10 recoveredBlock394Value11 recoveredBlock394Value12 recoveredBlock394Value13 recoveredBlock394Value14 |
    recoveredBlock394Value0 := recoveredBlock394Arg1.
    recoveredBlock394Value1 := recoveredBlock394Value0.
    recoveredBlock394Value2 := XmATTACHWIDGET.
    (recoveredBlock394Value1) topAttachment: (recoveredBlock394Value2).
    recoveredBlock394Value3 := recoveredBlock394Value0.
    recoveredBlock394Value4 := (self) xMaxSizeLabel.
    (recoveredBlock394Value3) topWidget: (recoveredBlock394Value4).
    recoveredBlock394Value5 := recoveredBlock394Value0.
    (recoveredBlock394Value5) topOffset: (2).
    recoveredBlock394Value6 := recoveredBlock394Value0.
    recoveredBlock394Value7 := XmATTACHFORM.
    (recoveredBlock394Value6) bottomAttachment: (recoveredBlock394Value7).
    recoveredBlock394Value8 := recoveredBlock394Value0.
    (recoveredBlock394Value8) bottomOffset: (5).
    recoveredBlock394Value9 := recoveredBlock394Value0.
    recoveredBlock394Value10 := XmATTACHPOSITION.
    (recoveredBlock394Value9) leftAttachment: (recoveredBlock394Value10).
    recoveredBlock394Value11 := recoveredBlock394Value0.
    (recoveredBlock394Value11) leftPosition: (75).
    recoveredBlock394Value12 := recoveredBlock394Value0.
    recoveredBlock394Value13 := XmATTACHPOSITION.
    (recoveredBlock394Value12) rightAttachment: (recoveredBlock394Value13).
    recoveredBlock394Value14 := (recoveredBlock394Value0) rightPosition: (98).
    recoveredBlock394Value14
].
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20603f8c; bytecode file offset 0xf008c0"
!SDCalibrationExtWidget methodsFor: 'recovered'!
displayDataMatrixInformation
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) extrapolLabel.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) interpolLabel.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) extrapolComboBox.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) interpolComboBox.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) ySizeLabel.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) yMaxSizeLabel.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) ySizeSpinButton.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) yMaxSizeSpinButton.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) initializeWidgetsForDataMatrix.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeLabel.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := [:block2811cce0Arg1 | 
    | block2811cce0Value0 block2811cce0Value1 block2811cce0Value2 block2811cce0Value3 block2811cce0Value4 block2811cce0Value5 block2811cce0Value6 block2811cce0Value7 block2811cce0Value8 block2811cce0Value9 |
    block2811cce0Value0 := block2811cce0Arg1.
    block2811cce0Value1 := block2811cce0Value0.
    block2811cce0Value2 := XmATTACHFORM.
    (block2811cce0Value1) topAttachment: (block2811cce0Value2).
    block2811cce0Value3 := block2811cce0Value0.
    (block2811cce0Value3) topOffset: (5).
    block2811cce0Value4 := block2811cce0Value0.
    block2811cce0Value5 := XmATTACHPOSITION.
    (block2811cce0Value4) leftAttachment: (block2811cce0Value5).
    block2811cce0Value6 := block2811cce0Value0.
    (block2811cce0Value6) leftPosition: (2).
    block2811cce0Value7 := block2811cce0Value0.
    block2811cce0Value8 := XmATTACHPOSITION.
    (block2811cce0Value7) rightAttachment: (block2811cce0Value8).
    block2811cce0Value9 := (block2811cce0Value0) rightPosition: (25).
    block2811cce0Value9
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := [:recoveredBlock88Arg1 | 
    | recoveredBlock88Value0 recoveredBlock88Value1 recoveredBlock88Value2 recoveredBlock88Value3 recoveredBlock88Value4 recoveredBlock88Value5 recoveredBlock88Value6 recoveredBlock88Value7 recoveredBlock88Value8 recoveredBlock88Value9 recoveredBlock88Value10 recoveredBlock88Value11 recoveredBlock88Value12 recoveredBlock88Value13 recoveredBlock88Value14 |
    recoveredBlock88Value0 := recoveredBlock88Arg1.
    recoveredBlock88Value1 := recoveredBlock88Value0.
    recoveredBlock88Value2 := XmATTACHWIDGET.
    (recoveredBlock88Value1) topAttachment: (recoveredBlock88Value2).
    recoveredBlock88Value3 := recoveredBlock88Value0.
    recoveredBlock88Value4 := (self) xMaxSizeLabel.
    (recoveredBlock88Value3) topWidget: (recoveredBlock88Value4).
    recoveredBlock88Value5 := recoveredBlock88Value0.
    (recoveredBlock88Value5) topOffset: (2).
    recoveredBlock88Value6 := recoveredBlock88Value0.
    recoveredBlock88Value7 := XmATTACHFORM.
    (recoveredBlock88Value6) bottomAttachment: (recoveredBlock88Value7).
    recoveredBlock88Value8 := recoveredBlock88Value0.
    (recoveredBlock88Value8) bottomOffset: (5).
    recoveredBlock88Value9 := recoveredBlock88Value0.
    recoveredBlock88Value10 := XmATTACHPOSITION.
    (recoveredBlock88Value9) leftAttachment: (recoveredBlock88Value10).
    recoveredBlock88Value11 := recoveredBlock88Value0.
    (recoveredBlock88Value11) leftPosition: (2).
    recoveredBlock88Value12 := recoveredBlock88Value0.
    recoveredBlock88Value13 := XmATTACHPOSITION.
    (recoveredBlock88Value12) rightAttachment: (recoveredBlock88Value13).
    recoveredBlock88Value14 := (recoveredBlock88Value0) rightPosition: (25).
    recoveredBlock88Value14
].
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeLabel.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := [:block2811cd04Arg1 | 
    | block2811cd04Value0 block2811cd04Value1 block2811cd04Value2 block2811cd04Value3 block2811cd04Value4 block2811cd04Value5 block2811cd04Value6 block2811cd04Value7 block2811cd04Value8 block2811cd04Value9 |
    block2811cd04Value0 := block2811cd04Arg1.
    block2811cd04Value1 := block2811cd04Value0.
    block2811cd04Value2 := XmATTACHFORM.
    (block2811cd04Value1) topAttachment: (block2811cd04Value2).
    block2811cd04Value3 := block2811cd04Value0.
    (block2811cd04Value3) topOffset: (5).
    block2811cd04Value4 := block2811cd04Value0.
    block2811cd04Value5 := XmATTACHPOSITION.
    (block2811cd04Value4) leftAttachment: (block2811cd04Value5).
    block2811cd04Value6 := block2811cd04Value0.
    (block2811cd04Value6) leftPosition: (26).
    block2811cd04Value7 := block2811cd04Value0.
    block2811cd04Value8 := XmATTACHPOSITION.
    (block2811cd04Value7) rightAttachment: (block2811cd04Value8).
    block2811cd04Value9 := (block2811cd04Value0) rightPosition: (49).
    block2811cd04Value9
].
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := [:recoveredBlock188Arg1 | 
    | recoveredBlock188Value0 recoveredBlock188Value1 recoveredBlock188Value2 recoveredBlock188Value3 recoveredBlock188Value4 recoveredBlock188Value5 recoveredBlock188Value6 recoveredBlock188Value7 recoveredBlock188Value8 recoveredBlock188Value9 recoveredBlock188Value10 recoveredBlock188Value11 recoveredBlock188Value12 recoveredBlock188Value13 recoveredBlock188Value14 |
    recoveredBlock188Value0 := recoveredBlock188Arg1.
    recoveredBlock188Value1 := recoveredBlock188Value0.
    recoveredBlock188Value2 := XmATTACHWIDGET.
    (recoveredBlock188Value1) topAttachment: (recoveredBlock188Value2).
    recoveredBlock188Value3 := recoveredBlock188Value0.
    recoveredBlock188Value4 := (self) xMaxSizeLabel.
    (recoveredBlock188Value3) topWidget: (recoveredBlock188Value4).
    recoveredBlock188Value5 := recoveredBlock188Value0.
    (recoveredBlock188Value5) topOffset: (2).
    recoveredBlock188Value6 := recoveredBlock188Value0.
    recoveredBlock188Value7 := XmATTACHFORM.
    (recoveredBlock188Value6) bottomAttachment: (recoveredBlock188Value7).
    recoveredBlock188Value8 := recoveredBlock188Value0.
    (recoveredBlock188Value8) bottomOffset: (5).
    recoveredBlock188Value9 := recoveredBlock188Value0.
    recoveredBlock188Value10 := XmATTACHPOSITION.
    (recoveredBlock188Value9) leftAttachment: (recoveredBlock188Value10).
    recoveredBlock188Value11 := recoveredBlock188Value0.
    (recoveredBlock188Value11) leftPosition: (26).
    recoveredBlock188Value12 := recoveredBlock188Value0.
    recoveredBlock188Value13 := XmATTACHPOSITION.
    (recoveredBlock188Value12) rightAttachment: (recoveredBlock188Value13).
    recoveredBlock188Value14 := (recoveredBlock188Value0) rightPosition: (49).
    recoveredBlock188Value14
].
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack0 := (recoveredStack0) yMaxSizeLabel.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := [:block2811cd28Arg1 | 
    | block2811cd28Value0 block2811cd28Value1 block2811cd28Value2 block2811cd28Value3 block2811cd28Value4 block2811cd28Value5 block2811cd28Value6 block2811cd28Value7 block2811cd28Value8 block2811cd28Value9 |
    block2811cd28Value0 := block2811cd28Arg1.
    block2811cd28Value1 := block2811cd28Value0.
    block2811cd28Value2 := XmATTACHFORM.
    (block2811cd28Value1) topAttachment: (block2811cd28Value2).
    block2811cd28Value3 := block2811cd28Value0.
    (block2811cd28Value3) topOffset: (5).
    block2811cd28Value4 := block2811cd28Value0.
    block2811cd28Value5 := XmATTACHPOSITION.
    (block2811cd28Value4) leftAttachment: (block2811cd28Value5).
    block2811cd28Value6 := block2811cd28Value0.
    (block2811cd28Value6) leftPosition: (51).
    block2811cd28Value7 := block2811cd28Value0.
    block2811cd28Value8 := XmATTACHPOSITION.
    (block2811cd28Value7) rightAttachment: (block2811cd28Value8).
    block2811cd28Value9 := (block2811cd28Value0) rightPosition: (74).
    block2811cd28Value9
].
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack0 := (recoveredStack0) yMaxSizeSpinButton.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack1 := [:recoveredBlock290Arg1 | 
    | recoveredBlock290Value0 recoveredBlock290Value1 recoveredBlock290Value2 recoveredBlock290Value3 recoveredBlock290Value4 recoveredBlock290Value5 recoveredBlock290Value6 recoveredBlock290Value7 recoveredBlock290Value8 recoveredBlock290Value9 recoveredBlock290Value10 recoveredBlock290Value11 recoveredBlock290Value12 recoveredBlock290Value13 recoveredBlock290Value14 |
    recoveredBlock290Value0 := recoveredBlock290Arg1.
    recoveredBlock290Value1 := recoveredBlock290Value0.
    recoveredBlock290Value2 := XmATTACHWIDGET.
    (recoveredBlock290Value1) topAttachment: (recoveredBlock290Value2).
    recoveredBlock290Value3 := recoveredBlock290Value0.
    recoveredBlock290Value4 := (self) xMaxSizeLabel.
    (recoveredBlock290Value3) topWidget: (recoveredBlock290Value4).
    recoveredBlock290Value5 := recoveredBlock290Value0.
    (recoveredBlock290Value5) topOffset: (2).
    recoveredBlock290Value6 := recoveredBlock290Value0.
    recoveredBlock290Value7 := XmATTACHFORM.
    (recoveredBlock290Value6) bottomAttachment: (recoveredBlock290Value7).
    recoveredBlock290Value8 := recoveredBlock290Value0.
    (recoveredBlock290Value8) bottomOffset: (5).
    recoveredBlock290Value9 := recoveredBlock290Value0.
    recoveredBlock290Value10 := XmATTACHPOSITION.
    (recoveredBlock290Value9) leftAttachment: (recoveredBlock290Value10).
    recoveredBlock290Value11 := recoveredBlock290Value0.
    (recoveredBlock290Value11) leftPosition: (51).
    recoveredBlock290Value12 := recoveredBlock290Value0.
    recoveredBlock290Value13 := XmATTACHPOSITION.
    (recoveredBlock290Value12) rightAttachment: (recoveredBlock290Value13).
    recoveredBlock290Value14 := (recoveredBlock290Value0) rightPosition: (74).
    recoveredBlock290Value14
].
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack0 := (recoveredStack0) ySizeLabel.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack1 := [:block2811cd4cArg1 | 
    | block2811cd4cValue0 block2811cd4cValue1 block2811cd4cValue2 block2811cd4cValue3 block2811cd4cValue4 block2811cd4cValue5 block2811cd4cValue6 block2811cd4cValue7 block2811cd4cValue8 block2811cd4cValue9 |
    block2811cd4cValue0 := block2811cd4cArg1.
    block2811cd4cValue1 := block2811cd4cValue0.
    block2811cd4cValue2 := XmATTACHFORM.
    (block2811cd4cValue1) topAttachment: (block2811cd4cValue2).
    block2811cd4cValue3 := block2811cd4cValue0.
    (block2811cd4cValue3) topOffset: (5).
    block2811cd4cValue4 := block2811cd4cValue0.
    block2811cd4cValue5 := XmATTACHPOSITION.
    (block2811cd4cValue4) leftAttachment: (block2811cd4cValue5).
    block2811cd4cValue6 := block2811cd4cValue0.
    (block2811cd4cValue6) leftPosition: (75).
    block2811cd4cValue7 := block2811cd4cValue0.
    block2811cd4cValue8 := XmATTACHPOSITION.
    (block2811cd4cValue7) rightAttachment: (block2811cd4cValue8).
    block2811cd4cValue9 := (block2811cd4cValue0) rightPosition: (98).
    block2811cd4cValue9
].
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack0 := (recoveredStack0) ySizeSpinButton.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack1 := [:recoveredBlock394Arg1 | 
    | recoveredBlock394Value0 recoveredBlock394Value1 recoveredBlock394Value2 recoveredBlock394Value3 recoveredBlock394Value4 recoveredBlock394Value5 recoveredBlock394Value6 recoveredBlock394Value7 recoveredBlock394Value8 recoveredBlock394Value9 recoveredBlock394Value10 recoveredBlock394Value11 recoveredBlock394Value12 recoveredBlock394Value13 recoveredBlock394Value14 |
    recoveredBlock394Value0 := recoveredBlock394Arg1.
    recoveredBlock394Value1 := recoveredBlock394Value0.
    recoveredBlock394Value2 := XmATTACHWIDGET.
    (recoveredBlock394Value1) topAttachment: (recoveredBlock394Value2).
    recoveredBlock394Value3 := recoveredBlock394Value0.
    recoveredBlock394Value4 := (self) xMaxSizeLabel.
    (recoveredBlock394Value3) topWidget: (recoveredBlock394Value4).
    recoveredBlock394Value5 := recoveredBlock394Value0.
    (recoveredBlock394Value5) topOffset: (2).
    recoveredBlock394Value6 := recoveredBlock394Value0.
    recoveredBlock394Value7 := XmATTACHFORM.
    (recoveredBlock394Value6) bottomAttachment: (recoveredBlock394Value7).
    recoveredBlock394Value8 := recoveredBlock394Value0.
    (recoveredBlock394Value8) bottomOffset: (5).
    recoveredBlock394Value9 := recoveredBlock394Value0.
    recoveredBlock394Value10 := XmATTACHPOSITION.
    (recoveredBlock394Value9) leftAttachment: (recoveredBlock394Value10).
    recoveredBlock394Value11 := recoveredBlock394Value0.
    (recoveredBlock394Value11) leftPosition: (75).
    recoveredBlock394Value12 := recoveredBlock394Value0.
    recoveredBlock394Value13 := XmATTACHPOSITION.
    (recoveredBlock394Value12) rightAttachment: (recoveredBlock394Value13).
    recoveredBlock394Value14 := (recoveredBlock394Value0) rightPosition: (98).
    recoveredBlock394Value14
].
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20637140; bytecode file offset 0xf33a78"
!SDCalibrationExtWidget methodsFor: 'recovered'!
displayTwoDCharTableInformation
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) ySizeLabel.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) yMaxSizeLabel.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) ySizeSpinButton.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) yMaxSizeSpinButton.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) extrapolLabel.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) interpolLabel.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) extrapolComboBox.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) interpolComboBox.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) initializeWidgetsForTwoDCharTable.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeLabel.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := [:block28120dd8Arg1 | 
    | block28120dd8Value0 block28120dd8Value1 block28120dd8Value2 block28120dd8Value3 block28120dd8Value4 block28120dd8Value5 block28120dd8Value6 block28120dd8Value7 block28120dd8Value8 block28120dd8Value9 |
    block28120dd8Value0 := block28120dd8Arg1.
    block28120dd8Value1 := block28120dd8Value0.
    block28120dd8Value2 := XmATTACHFORM.
    (block28120dd8Value1) topAttachment: (block28120dd8Value2).
    block28120dd8Value3 := block28120dd8Value0.
    (block28120dd8Value3) topOffset: (5).
    block28120dd8Value4 := block28120dd8Value0.
    block28120dd8Value5 := XmATTACHPOSITION.
    (block28120dd8Value4) leftAttachment: (block28120dd8Value5).
    block28120dd8Value6 := block28120dd8Value0.
    (block28120dd8Value6) leftPosition: (2).
    block28120dd8Value7 := block28120dd8Value0.
    block28120dd8Value8 := XmATTACHPOSITION.
    (block28120dd8Value7) rightAttachment: (block28120dd8Value8).
    block28120dd8Value9 := (block28120dd8Value0) rightPosition: (17).
    block28120dd8Value9
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMaxSizeSpinButton.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := [:recoveredBlock88Arg1 | 
    | recoveredBlock88Value0 recoveredBlock88Value1 recoveredBlock88Value2 recoveredBlock88Value3 recoveredBlock88Value4 recoveredBlock88Value5 recoveredBlock88Value6 recoveredBlock88Value7 recoveredBlock88Value8 recoveredBlock88Value9 recoveredBlock88Value10 recoveredBlock88Value11 recoveredBlock88Value12 recoveredBlock88Value13 recoveredBlock88Value14 |
    recoveredBlock88Value0 := recoveredBlock88Arg1.
    recoveredBlock88Value1 := recoveredBlock88Value0.
    recoveredBlock88Value2 := XmATTACHWIDGET.
    (recoveredBlock88Value1) topAttachment: (recoveredBlock88Value2).
    recoveredBlock88Value3 := recoveredBlock88Value0.
    recoveredBlock88Value4 := (self) xMaxSizeLabel.
    (recoveredBlock88Value3) topWidget: (recoveredBlock88Value4).
    recoveredBlock88Value5 := recoveredBlock88Value0.
    (recoveredBlock88Value5) topOffset: (2).
    recoveredBlock88Value6 := recoveredBlock88Value0.
    recoveredBlock88Value7 := XmATTACHFORM.
    (recoveredBlock88Value6) bottomAttachment: (recoveredBlock88Value7).
    recoveredBlock88Value8 := recoveredBlock88Value0.
    (recoveredBlock88Value8) bottomOffset: (5).
    recoveredBlock88Value9 := recoveredBlock88Value0.
    recoveredBlock88Value10 := XmATTACHPOSITION.
    (recoveredBlock88Value9) leftAttachment: (recoveredBlock88Value10).
    recoveredBlock88Value11 := recoveredBlock88Value0.
    (recoveredBlock88Value11) leftPosition: (2).
    recoveredBlock88Value12 := recoveredBlock88Value0.
    recoveredBlock88Value13 := XmATTACHPOSITION.
    (recoveredBlock88Value12) rightAttachment: (recoveredBlock88Value13).
    recoveredBlock88Value14 := (recoveredBlock88Value0) rightPosition: (17).
    recoveredBlock88Value14
].
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeLabel.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := [:block28120dfcArg1 | 
    | block28120dfcValue0 block28120dfcValue1 block28120dfcValue2 block28120dfcValue3 block28120dfcValue4 block28120dfcValue5 block28120dfcValue6 block28120dfcValue7 block28120dfcValue8 block28120dfcValue9 |
    block28120dfcValue0 := block28120dfcArg1.
    block28120dfcValue1 := block28120dfcValue0.
    block28120dfcValue2 := XmATTACHFORM.
    (block28120dfcValue1) topAttachment: (block28120dfcValue2).
    block28120dfcValue3 := block28120dfcValue0.
    (block28120dfcValue3) topOffset: (5).
    block28120dfcValue4 := block28120dfcValue0.
    block28120dfcValue5 := XmATTACHPOSITION.
    (block28120dfcValue4) leftAttachment: (block28120dfcValue5).
    block28120dfcValue6 := block28120dfcValue0.
    (block28120dfcValue6) leftPosition: (18).
    block28120dfcValue7 := block28120dfcValue0.
    block28120dfcValue8 := XmATTACHPOSITION.
    (block28120dfcValue7) rightAttachment: (block28120dfcValue8).
    block28120dfcValue9 := (block28120dfcValue0) rightPosition: (33).
    block28120dfcValue9
].
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSizeSpinButton.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := [:recoveredBlock188Arg1 | 
    | recoveredBlock188Value0 recoveredBlock188Value1 recoveredBlock188Value2 recoveredBlock188Value3 recoveredBlock188Value4 recoveredBlock188Value5 recoveredBlock188Value6 recoveredBlock188Value7 recoveredBlock188Value8 recoveredBlock188Value9 recoveredBlock188Value10 recoveredBlock188Value11 recoveredBlock188Value12 recoveredBlock188Value13 recoveredBlock188Value14 |
    recoveredBlock188Value0 := recoveredBlock188Arg1.
    recoveredBlock188Value1 := recoveredBlock188Value0.
    recoveredBlock188Value2 := XmATTACHWIDGET.
    (recoveredBlock188Value1) topAttachment: (recoveredBlock188Value2).
    recoveredBlock188Value3 := recoveredBlock188Value0.
    recoveredBlock188Value4 := (self) xMaxSizeLabel.
    (recoveredBlock188Value3) topWidget: (recoveredBlock188Value4).
    recoveredBlock188Value5 := recoveredBlock188Value0.
    (recoveredBlock188Value5) topOffset: (2).
    recoveredBlock188Value6 := recoveredBlock188Value0.
    recoveredBlock188Value7 := XmATTACHFORM.
    (recoveredBlock188Value6) bottomAttachment: (recoveredBlock188Value7).
    recoveredBlock188Value8 := recoveredBlock188Value0.
    (recoveredBlock188Value8) bottomOffset: (5).
    recoveredBlock188Value9 := recoveredBlock188Value0.
    recoveredBlock188Value10 := XmATTACHPOSITION.
    (recoveredBlock188Value9) leftAttachment: (recoveredBlock188Value10).
    recoveredBlock188Value11 := recoveredBlock188Value0.
    (recoveredBlock188Value11) leftPosition: (18).
    recoveredBlock188Value12 := recoveredBlock188Value0.
    recoveredBlock188Value13 := XmATTACHPOSITION.
    (recoveredBlock188Value12) rightAttachment: (recoveredBlock188Value13).
    recoveredBlock188Value14 := (recoveredBlock188Value0) rightPosition: (33).
    recoveredBlock188Value14
].
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack0 := (recoveredStack0) yMaxSizeLabel.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := [:block28120e20Arg1 | 
    | block28120e20Value0 block28120e20Value1 block28120e20Value2 block28120e20Value3 block28120e20Value4 block28120e20Value5 block28120e20Value6 block28120e20Value7 block28120e20Value8 block28120e20Value9 |
    block28120e20Value0 := block28120e20Arg1.
    block28120e20Value1 := block28120e20Value0.
    block28120e20Value2 := XmATTACHFORM.
    (block28120e20Value1) topAttachment: (block28120e20Value2).
    block28120e20Value3 := block28120e20Value0.
    (block28120e20Value3) topOffset: (5).
    block28120e20Value4 := block28120e20Value0.
    block28120e20Value5 := XmATTACHPOSITION.
    (block28120e20Value4) leftAttachment: (block28120e20Value5).
    block28120e20Value6 := block28120e20Value0.
    (block28120e20Value6) leftPosition: (34).
    block28120e20Value7 := block28120e20Value0.
    block28120e20Value8 := XmATTACHPOSITION.
    (block28120e20Value7) rightAttachment: (block28120e20Value8).
    block28120e20Value9 := (block28120e20Value0) rightPosition: (49).
    block28120e20Value9
].
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack0 := (recoveredStack0) yMaxSizeSpinButton.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := [:recoveredBlock286Arg1 | 
    | recoveredBlock286Value0 recoveredBlock286Value1 recoveredBlock286Value2 recoveredBlock286Value3 recoveredBlock286Value4 recoveredBlock286Value5 recoveredBlock286Value6 recoveredBlock286Value7 recoveredBlock286Value8 recoveredBlock286Value9 recoveredBlock286Value10 recoveredBlock286Value11 recoveredBlock286Value12 recoveredBlock286Value13 recoveredBlock286Value14 |
    recoveredBlock286Value0 := recoveredBlock286Arg1.
    recoveredBlock286Value1 := recoveredBlock286Value0.
    recoveredBlock286Value2 := XmATTACHWIDGET.
    (recoveredBlock286Value1) topAttachment: (recoveredBlock286Value2).
    recoveredBlock286Value3 := recoveredBlock286Value0.
    recoveredBlock286Value4 := (self) xMaxSizeLabel.
    (recoveredBlock286Value3) topWidget: (recoveredBlock286Value4).
    recoveredBlock286Value5 := recoveredBlock286Value0.
    (recoveredBlock286Value5) topOffset: (2).
    recoveredBlock286Value6 := recoveredBlock286Value0.
    recoveredBlock286Value7 := XmATTACHFORM.
    (recoveredBlock286Value6) bottomAttachment: (recoveredBlock286Value7).
    recoveredBlock286Value8 := recoveredBlock286Value0.
    (recoveredBlock286Value8) bottomOffset: (5).
    recoveredBlock286Value9 := recoveredBlock286Value0.
    recoveredBlock286Value10 := XmATTACHPOSITION.
    (recoveredBlock286Value9) leftAttachment: (recoveredBlock286Value10).
    recoveredBlock286Value11 := recoveredBlock286Value0.
    (recoveredBlock286Value11) leftPosition: (34).
    recoveredBlock286Value12 := recoveredBlock286Value0.
    recoveredBlock286Value13 := XmATTACHPOSITION.
    (recoveredBlock286Value12) rightAttachment: (recoveredBlock286Value13).
    recoveredBlock286Value14 := (recoveredBlock286Value0) rightPosition: (49).
    recoveredBlock286Value14
].
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack0 := (recoveredStack0) ySizeLabel.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack1 := [:block28120e44Arg1 | 
    | block28120e44Value0 block28120e44Value1 block28120e44Value2 block28120e44Value3 block28120e44Value4 block28120e44Value5 block28120e44Value6 block28120e44Value7 block28120e44Value8 block28120e44Value9 |
    block28120e44Value0 := block28120e44Arg1.
    block28120e44Value1 := block28120e44Value0.
    block28120e44Value2 := XmATTACHFORM.
    (block28120e44Value1) topAttachment: (block28120e44Value2).
    block28120e44Value3 := block28120e44Value0.
    (block28120e44Value3) topOffset: (5).
    block28120e44Value4 := block28120e44Value0.
    block28120e44Value5 := XmATTACHPOSITION.
    (block28120e44Value4) leftAttachment: (block28120e44Value5).
    block28120e44Value6 := block28120e44Value0.
    (block28120e44Value6) leftPosition: (50).
    block28120e44Value7 := block28120e44Value0.
    block28120e44Value8 := XmATTACHPOSITION.
    (block28120e44Value7) rightAttachment: (block28120e44Value8).
    block28120e44Value9 := (block28120e44Value0) rightPosition: (65).
    block28120e44Value9
].
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack0 := (recoveredStack0) ySizeSpinButton.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack1 := [:recoveredBlock385Arg1 | 
    | recoveredBlock385Value0 recoveredBlock385Value1 recoveredBlock385Value2 recoveredBlock385Value3 recoveredBlock385Value4 recoveredBlock385Value5 recoveredBlock385Value6 recoveredBlock385Value7 recoveredBlock385Value8 recoveredBlock385Value9 recoveredBlock385Value10 recoveredBlock385Value11 recoveredBlock385Value12 recoveredBlock385Value13 recoveredBlock385Value14 |
    recoveredBlock385Value0 := recoveredBlock385Arg1.
    recoveredBlock385Value1 := recoveredBlock385Value0.
    recoveredBlock385Value2 := XmATTACHWIDGET.
    (recoveredBlock385Value1) topAttachment: (recoveredBlock385Value2).
    recoveredBlock385Value3 := recoveredBlock385Value0.
    recoveredBlock385Value4 := (self) xMaxSizeLabel.
    (recoveredBlock385Value3) topWidget: (recoveredBlock385Value4).
    recoveredBlock385Value5 := recoveredBlock385Value0.
    (recoveredBlock385Value5) topOffset: (2).
    recoveredBlock385Value6 := recoveredBlock385Value0.
    recoveredBlock385Value7 := XmATTACHFORM.
    (recoveredBlock385Value6) bottomAttachment: (recoveredBlock385Value7).
    recoveredBlock385Value8 := recoveredBlock385Value0.
    (recoveredBlock385Value8) bottomOffset: (5).
    recoveredBlock385Value9 := recoveredBlock385Value0.
    recoveredBlock385Value10 := XmATTACHPOSITION.
    (recoveredBlock385Value9) leftAttachment: (recoveredBlock385Value10).
    recoveredBlock385Value11 := recoveredBlock385Value0.
    (recoveredBlock385Value11) leftPosition: (50).
    recoveredBlock385Value12 := recoveredBlock385Value0.
    recoveredBlock385Value13 := XmATTACHPOSITION.
    (recoveredBlock385Value12) rightAttachment: (recoveredBlock385Value13).
    recoveredBlock385Value14 := (recoveredBlock385Value0) rightPosition: (65).
    recoveredBlock385Value14
].
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack0 := (recoveredStack0) interpolLabel.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack1 := [:block28120e68Arg1 | 
    | block28120e68Value0 block28120e68Value1 block28120e68Value2 block28120e68Value3 block28120e68Value4 block28120e68Value5 block28120e68Value6 block28120e68Value7 block28120e68Value8 block28120e68Value9 |
    block28120e68Value0 := block28120e68Arg1.
    block28120e68Value1 := block28120e68Value0.
    block28120e68Value2 := XmATTACHFORM.
    (block28120e68Value1) topAttachment: (block28120e68Value2).
    block28120e68Value3 := block28120e68Value0.
    (block28120e68Value3) topOffset: (5).
    block28120e68Value4 := block28120e68Value0.
    block28120e68Value5 := XmATTACHPOSITION.
    (block28120e68Value4) leftAttachment: (block28120e68Value5).
    block28120e68Value6 := block28120e68Value0.
    (block28120e68Value6) leftPosition: (67).
    block28120e68Value7 := block28120e68Value0.
    block28120e68Value8 := XmATTACHPOSITION.
    (block28120e68Value7) rightAttachment: (block28120e68Value8).
    block28120e68Value9 := (block28120e68Value0) rightPosition: (82).
    block28120e68Value9
].
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredStack0 := (recoveredStack0) interpolComboBox.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack1 := [:recoveredBlock490Arg1 | 
    | recoveredBlock490Value0 recoveredBlock490Value1 recoveredBlock490Value2 recoveredBlock490Value3 recoveredBlock490Value4 recoveredBlock490Value5 recoveredBlock490Value6 recoveredBlock490Value7 recoveredBlock490Value8 recoveredBlock490Value9 recoveredBlock490Value10 recoveredBlock490Value11 recoveredBlock490Value12 recoveredBlock490Value13 recoveredBlock490Value14 |
    recoveredBlock490Value0 := recoveredBlock490Arg1.
    recoveredBlock490Value1 := recoveredBlock490Value0.
    recoveredBlock490Value2 := XmATTACHWIDGET.
    (recoveredBlock490Value1) topAttachment: (recoveredBlock490Value2).
    recoveredBlock490Value3 := recoveredBlock490Value0.
    recoveredBlock490Value4 := (self) xMaxSizeLabel.
    (recoveredBlock490Value3) topWidget: (recoveredBlock490Value4).
    recoveredBlock490Value5 := recoveredBlock490Value0.
    (recoveredBlock490Value5) topOffset: (2).
    recoveredBlock490Value6 := recoveredBlock490Value0.
    recoveredBlock490Value7 := XmATTACHFORM.
    (recoveredBlock490Value6) bottomAttachment: (recoveredBlock490Value7).
    recoveredBlock490Value8 := recoveredBlock490Value0.
    (recoveredBlock490Value8) bottomOffset: (5).
    recoveredBlock490Value9 := recoveredBlock490Value0.
    recoveredBlock490Value10 := XmATTACHPOSITION.
    (recoveredBlock490Value9) leftAttachment: (recoveredBlock490Value10).
    recoveredBlock490Value11 := recoveredBlock490Value0.
    (recoveredBlock490Value11) leftPosition: (67).
    recoveredBlock490Value12 := recoveredBlock490Value0.
    recoveredBlock490Value13 := XmATTACHPOSITION.
    (recoveredBlock490Value12) rightAttachment: (recoveredBlock490Value13).
    recoveredBlock490Value14 := (recoveredBlock490Value0) rightPosition: (82).
    recoveredBlock490Value14
].
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 548.
        ].
        recoveredStep = 548 ifTrue: [
            recoveredStack0 := (recoveredStack0) extrapolLabel.
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack1 := [:block28120e8cArg1 | 
    | block28120e8cValue0 block28120e8cValue1 block28120e8cValue2 block28120e8cValue3 block28120e8cValue4 block28120e8cValue5 block28120e8cValue6 block28120e8cValue7 block28120e8cValue8 block28120e8cValue9 |
    block28120e8cValue0 := block28120e8cArg1.
    block28120e8cValue1 := block28120e8cValue0.
    block28120e8cValue2 := XmATTACHFORM.
    (block28120e8cValue1) topAttachment: (block28120e8cValue2).
    block28120e8cValue3 := block28120e8cValue0.
    (block28120e8cValue3) topOffset: (5).
    block28120e8cValue4 := block28120e8cValue0.
    block28120e8cValue5 := XmATTACHPOSITION.
    (block28120e8cValue4) leftAttachment: (block28120e8cValue5).
    block28120e8cValue6 := block28120e8cValue0.
    (block28120e8cValue6) leftPosition: (83).
    block28120e8cValue7 := block28120e8cValue0.
    block28120e8cValue8 := XmATTACHPOSITION.
    (block28120e8cValue7) rightAttachment: (block28120e8cValue8).
    block28120e8cValue9 := (block28120e8cValue0) rightPosition: (98).
    block28120e8cValue9
].
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 591.
        ].
        recoveredStep = 591 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack0 := (recoveredStack0) extrapolComboBox.
            recoveredPC := 594.
        ].
        recoveredStep = 594 ifTrue: [
            recoveredStack1 := [:recoveredBlock594Arg1 | 
    | recoveredBlock594Value0 recoveredBlock594Value1 recoveredBlock594Value2 recoveredBlock594Value3 recoveredBlock594Value4 recoveredBlock594Value5 recoveredBlock594Value6 recoveredBlock594Value7 recoveredBlock594Value8 recoveredBlock594Value9 recoveredBlock594Value10 recoveredBlock594Value11 recoveredBlock594Value12 recoveredBlock594Value13 recoveredBlock594Value14 |
    recoveredBlock594Value0 := recoveredBlock594Arg1.
    recoveredBlock594Value1 := recoveredBlock594Value0.
    recoveredBlock594Value2 := XmATTACHWIDGET.
    (recoveredBlock594Value1) topAttachment: (recoveredBlock594Value2).
    recoveredBlock594Value3 := recoveredBlock594Value0.
    recoveredBlock594Value4 := (self) xMaxSizeLabel.
    (recoveredBlock594Value3) topWidget: (recoveredBlock594Value4).
    recoveredBlock594Value5 := recoveredBlock594Value0.
    (recoveredBlock594Value5) topOffset: (2).
    recoveredBlock594Value6 := recoveredBlock594Value0.
    recoveredBlock594Value7 := XmATTACHFORM.
    (recoveredBlock594Value6) bottomAttachment: (recoveredBlock594Value7).
    recoveredBlock594Value8 := recoveredBlock594Value0.
    (recoveredBlock594Value8) bottomOffset: (5).
    recoveredBlock594Value9 := recoveredBlock594Value0.
    recoveredBlock594Value10 := XmATTACHPOSITION.
    (recoveredBlock594Value9) leftAttachment: (recoveredBlock594Value10).
    recoveredBlock594Value11 := recoveredBlock594Value0.
    (recoveredBlock594Value11) leftPosition: (83).
    recoveredBlock594Value12 := recoveredBlock594Value0.
    recoveredBlock594Value13 := XmATTACHPOSITION.
    (recoveredBlock594Value12) rightAttachment: (recoveredBlock594Value13).
    recoveredBlock594Value14 := (recoveredBlock594Value0) rightPosition: (98).
    recoveredBlock594Value14
].
            recoveredPC := 649.
        ].
        recoveredStep = 649 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 651.
        ].
        recoveredStep = 651 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 652.
        ].
        recoveredStep = 652 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2065cf18; bytecode file offset 0xf5990c"
!SDCalibrationExtWidget methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 recoveredValue86 recoveredValue87 recoveredValue88 recoveredValue89 recoveredValue90 recoveredValue91 recoveredValue92 recoveredValue93 recoveredValue94 recoveredValue95 recoveredValue96 recoveredValue97 recoveredValue98 recoveredValue99 recoveredValue100 recoveredValue101 recoveredValue102 recoveredValue103 recoveredValue104 recoveredValue105 recoveredValue106 recoveredValue107 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal16 := recoveredValue1.
    recoveredLocal15 := 1.
    recoveredLocal14 := 1.
    recoveredValue2 := (self) primaryWidget.
    recoveredLocal13 := recoveredValue2.
    recoveredValue3 := recoveredLocal16.
    recoveredValue4 := recoveredLocal13.
    (recoveredValue3) at: ('mainForm') put: (recoveredValue4).
    recoveredValue5 := recoveredLocal13.
    recoveredValue6 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Value0 recoveredBlock39Value1 recoveredBlock39Value2 recoveredBlock39Value3 recoveredBlock39Value4 recoveredBlock39Value5 recoveredBlock39Value6 recoveredBlock39Value7 recoveredBlock39Value8 recoveredBlock39Value9 recoveredBlock39Value10 recoveredBlock39Value11 recoveredBlock39Value12 recoveredBlock39Value13 recoveredBlock39Value14 |
    recoveredBlock39Value0 := recoveredBlock39Arg1.
    recoveredBlock39Value1 := recoveredBlock39Value0.
    recoveredBlock39Value2 := recoveredLocal15.
    recoveredBlock39Value3 := (644) * (recoveredBlock39Value2).
    recoveredBlock39Value4 := (recoveredBlock39Value3) rounded.
    (recoveredBlock39Value1) x: (recoveredBlock39Value4).
    recoveredBlock39Value5 := recoveredBlock39Value0.
    recoveredBlock39Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock39Value5) alignment: (recoveredBlock39Value6).
    recoveredBlock39Value7 := recoveredBlock39Value0.
    (recoveredBlock39Value7) width: (65).
    recoveredBlock39Value8 := recoveredBlock39Value0.
    (recoveredBlock39Value8) labelString: ('Extrapol.:').
    recoveredBlock39Value9 := recoveredBlock39Value0.
    recoveredBlock39Value10 := recoveredLocal14.
    recoveredBlock39Value11 := (5) * (recoveredBlock39Value10).
    recoveredBlock39Value12 := (recoveredBlock39Value11) rounded.
    (recoveredBlock39Value9) y: (recoveredBlock39Value12).
    recoveredBlock39Value13 := recoveredBlock39Value0.
    recoveredBlock39Value14 := (self) defaultLabelBlue.
    (recoveredBlock39Value13) foregroundColor: (recoveredBlock39Value14).
    recoveredBlock39Value0
].
    recoveredValue7 := (recoveredValue5) createLabel: ('extrapolLabel') argBlock: (recoveredValue6).
    recoveredValue8 := (recoveredValue7) manageChild.
    recoveredLocal12 := recoveredValue8.
    recoveredValue9 := recoveredLocal16.
    recoveredValue10 := recoveredLocal12.
    (recoveredValue9) at: ('extrapolLabel') put: (recoveredValue10).
    recoveredValue11 := recoveredLocal13.
    recoveredValue12 := [:recoveredBlock117Arg1 | 
    | recoveredBlock117Value0 recoveredBlock117Value1 recoveredBlock117Value2 recoveredBlock117Value3 recoveredBlock117Value4 recoveredBlock117Value5 recoveredBlock117Value6 recoveredBlock117Value7 recoveredBlock117Value8 recoveredBlock117Value9 recoveredBlock117Value10 |
    recoveredBlock117Value0 := recoveredBlock117Arg1.
    recoveredBlock117Value1 := recoveredBlock117Value0.
    (recoveredBlock117Value1) sensitive: (false).
    recoveredBlock117Value2 := recoveredBlock117Value0.
    (recoveredBlock117Value2) width: (60).
    recoveredBlock117Value3 := recoveredBlock117Value0.
    recoveredBlock117Value4 := recoveredLocal14.
    recoveredBlock117Value5 := (20) * (recoveredBlock117Value4).
    recoveredBlock117Value6 := (recoveredBlock117Value5) rounded.
    (recoveredBlock117Value3) height: (recoveredBlock117Value6).
    recoveredBlock117Value7 := recoveredLocal15.
    recoveredBlock117Value8 := (60) * (recoveredBlock117Value7).
    recoveredBlock117Value9 := (recoveredBlock117Value8) rounded.
    recoveredBlock117Value10 := (recoveredBlock117Value0) width: (recoveredBlock117Value9).
    recoveredBlock117Value10
].
    recoveredValue13 := (recoveredValue11) createRBSpinButton: ('yMaxSizeSpinButton') argBlock: (recoveredValue12).
    recoveredValue14 := (recoveredValue13) manageChild.
    recoveredLocal11 := recoveredValue14.
    recoveredValue15 := recoveredLocal16.
    recoveredValue16 := recoveredLocal11.
    (recoveredValue15) at: ('yMaxSizeSpinButton') put: (recoveredValue16).
    recoveredValue17 := recoveredLocal13.
    recoveredValue18 := [:recoveredBlock178Arg1 | 
    | recoveredBlock178Value0 recoveredBlock178Value1 recoveredBlock178Value2 recoveredBlock178Value3 recoveredBlock178Value4 recoveredBlock178Value5 recoveredBlock178Value6 |
    recoveredBlock178Value0 := recoveredBlock178Arg1.
    recoveredBlock178Value1 := recoveredBlock178Value0.
    recoveredBlock178Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock178Value1) alignment: (recoveredBlock178Value2).
    recoveredBlock178Value3 := recoveredBlock178Value0.
    (recoveredBlock178Value3) width: (65).
    recoveredBlock178Value4 := recoveredBlock178Value0.
    (recoveredBlock178Value4) labelString: ('Interpol.:').
    recoveredBlock178Value5 := recoveredBlock178Value0.
    recoveredBlock178Value6 := (self) defaultLabelBlue.
    (recoveredBlock178Value5) foregroundColor: (recoveredBlock178Value6).
    recoveredBlock178Value0
].
    recoveredValue19 := (recoveredValue17) createLabel: ('interpolLabel') argBlock: (recoveredValue18).
    recoveredValue20 := (recoveredValue19) manageChild.
    recoveredLocal10 := recoveredValue20.
    recoveredValue21 := recoveredLocal16.
    recoveredValue22 := recoveredLocal10.
    (recoveredValue21) at: ('interpolLabel') put: (recoveredValue22).
    recoveredValue23 := recoveredLocal13.
    recoveredValue24 := [:recoveredBlock230Arg1 | 
    | recoveredBlock230Value0 recoveredBlock230Value1 recoveredBlock230Value2 recoveredBlock230Value3 recoveredBlock230Value4 recoveredBlock230Value5 recoveredBlock230Value6 |
    recoveredBlock230Value0 := recoveredBlock230Arg1.
    recoveredBlock230Value1 := recoveredBlock230Value0.
    recoveredBlock230Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock230Value1) alignment: (recoveredBlock230Value2).
    recoveredBlock230Value3 := recoveredBlock230Value0.
    (recoveredBlock230Value3) labelString: ('y-Size:').
    recoveredBlock230Value4 := recoveredBlock230Value0.
    (recoveredBlock230Value4) width: (60).
    recoveredBlock230Value5 := recoveredBlock230Value0.
    recoveredBlock230Value6 := (self) defaultLabelBlue.
    (recoveredBlock230Value5) foregroundColor: (recoveredBlock230Value6).
    recoveredBlock230Value0
].
    recoveredValue25 := (recoveredValue23) createLabel: ('ySizeLabel') argBlock: (recoveredValue24).
    recoveredValue26 := (recoveredValue25) manageChild.
    recoveredLocal9 := recoveredValue26.
    recoveredValue27 := recoveredLocal16.
    recoveredValue28 := recoveredLocal9.
    (recoveredValue27) at: ('ySizeLabel') put: (recoveredValue28).
    recoveredValue29 := recoveredLocal13.
    recoveredValue30 := [:recoveredBlock281Arg1 | 
    | recoveredBlock281Value0 recoveredBlock281Value1 recoveredBlock281Value2 recoveredBlock281Value3 recoveredBlock281Value4 recoveredBlock281Value5 recoveredBlock281Value6 |
    recoveredBlock281Value0 := recoveredBlock281Arg1.
    recoveredBlock281Value1 := recoveredBlock281Value0.
    recoveredBlock281Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock281Value1) alignment: (recoveredBlock281Value2).
    recoveredBlock281Value3 := recoveredBlock281Value0.
    (recoveredBlock281Value3) width: (60).
    recoveredBlock281Value4 := recoveredBlock281Value0.
    (recoveredBlock281Value4) labelString: ('y-Max Size:').
    recoveredBlock281Value5 := recoveredBlock281Value0.
    recoveredBlock281Value6 := (self) defaultLabelBlue.
    (recoveredBlock281Value5) foregroundColor: (recoveredBlock281Value6).
    recoveredBlock281Value0
].
    recoveredValue31 := (recoveredValue29) createLabel: ('yMaxSizeLabel') argBlock: (recoveredValue30).
    recoveredValue32 := (recoveredValue31) manageChild.
    recoveredLocal8 := recoveredValue32.
    recoveredValue33 := recoveredLocal16.
    recoveredValue34 := recoveredLocal8.
    (recoveredValue33) at: ('yMaxSizeLabel') put: (recoveredValue34).
    recoveredValue35 := recoveredLocal13.
    recoveredValue36 := [:recoveredBlock333Arg1 | 
    | recoveredBlock333Value0 recoveredBlock333Value1 recoveredBlock333Value2 recoveredBlock333Value3 recoveredBlock333Value4 recoveredBlock333Value5 recoveredBlock333Value6 |
    recoveredBlock333Value0 := recoveredBlock333Arg1.
    recoveredBlock333Value1 := recoveredBlock333Value0.
    recoveredBlock333Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock333Value1) alignment: (recoveredBlock333Value2).
    recoveredBlock333Value3 := recoveredBlock333Value0.
    (recoveredBlock333Value3) labelString: ('x-Size:').
    recoveredBlock333Value4 := recoveredBlock333Value0.
    (recoveredBlock333Value4) width: (60).
    recoveredBlock333Value5 := recoveredBlock333Value0.
    recoveredBlock333Value6 := (self) defaultLabelBlue.
    (recoveredBlock333Value5) foregroundColor: (recoveredBlock333Value6).
    recoveredBlock333Value0
].
    recoveredValue37 := (recoveredValue35) createLabel: ('xSizeLabel') argBlock: (recoveredValue36).
    recoveredValue38 := (recoveredValue37) manageChild.
    recoveredLocal7 := recoveredValue38.
    recoveredValue39 := recoveredLocal16.
    recoveredValue40 := recoveredLocal7.
    (recoveredValue39) at: ('xSizeLabel') put: (recoveredValue40).
    recoveredValue41 := recoveredLocal13.
    recoveredValue42 := [:recoveredBlock385Arg1 | 
    | recoveredBlock385Value0 recoveredBlock385Value1 recoveredBlock385Value2 recoveredBlock385Value3 recoveredBlock385Value4 recoveredBlock385Value5 recoveredBlock385Value6 |
    recoveredBlock385Value0 := recoveredBlock385Arg1.
    recoveredBlock385Value1 := recoveredBlock385Value0.
    recoveredBlock385Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock385Value1) alignment: (recoveredBlock385Value2).
    recoveredBlock385Value3 := recoveredBlock385Value0.
    (recoveredBlock385Value3) labelString: ('x-Max Size:').
    recoveredBlock385Value4 := recoveredBlock385Value0.
    (recoveredBlock385Value4) width: (60).
    recoveredBlock385Value5 := recoveredBlock385Value0.
    recoveredBlock385Value6 := (self) defaultLabelBlue.
    (recoveredBlock385Value5) foregroundColor: (recoveredBlock385Value6).
    recoveredBlock385Value0
].
    recoveredValue43 := (recoveredValue41) createLabel: ('xMaxSizeLabel') argBlock: (recoveredValue42).
    recoveredValue44 := (recoveredValue43) manageChild.
    recoveredLocal6 := recoveredValue44.
    recoveredValue45 := recoveredLocal16.
    recoveredValue46 := recoveredLocal6.
    (recoveredValue45) at: ('xMaxSizeLabel') put: (recoveredValue46).
    recoveredValue47 := recoveredLocal13.
    recoveredValue48 := [:recoveredBlock437Arg1 | 
    | recoveredBlock437Value0 recoveredBlock437Value1 recoveredBlock437Value2 recoveredBlock437Value3 recoveredBlock437Value4 recoveredBlock437Value5 recoveredBlock437Value6 recoveredBlock437Value7 recoveredBlock437Value8 recoveredBlock437Value9 recoveredBlock437Value10 |
    recoveredBlock437Value0 := recoveredBlock437Arg1.
    recoveredBlock437Value1 := recoveredBlock437Value0.
    (recoveredBlock437Value1) sensitive: (true).
    recoveredBlock437Value2 := recoveredBlock437Value0.
    (recoveredBlock437Value2) editable: (true).
    recoveredBlock437Value3 := recoveredBlock437Value0.
    recoveredBlock437Value4 := recoveredLocal14.
    recoveredBlock437Value5 := (20) * (recoveredBlock437Value4).
    recoveredBlock437Value6 := (recoveredBlock437Value5) rounded.
    (recoveredBlock437Value3) height: (recoveredBlock437Value6).
    recoveredBlock437Value7 := recoveredLocal15.
    recoveredBlock437Value8 := (60) * (recoveredBlock437Value7).
    recoveredBlock437Value9 := (recoveredBlock437Value8) rounded.
    recoveredBlock437Value10 := (recoveredBlock437Value0) width: (recoveredBlock437Value9).
    recoveredBlock437Value10
].
    recoveredValue49 := (recoveredValue47) createRBSpinButton: ('xMaxSizeSpinButton') argBlock: (recoveredValue48).
    recoveredValue50 := (recoveredValue49) manageChild.
    recoveredLocal5 := recoveredValue50.
    recoveredValue51 := recoveredLocal16.
    recoveredValue52 := recoveredLocal5.
    (recoveredValue51) at: ('xMaxSizeSpinButton') put: (recoveredValue52).
    recoveredValue53 := recoveredLocal13.
    recoveredValue54 := [:recoveredBlock497Arg1 | 
    | recoveredBlock497Value0 recoveredBlock497Value1 recoveredBlock497Value2 recoveredBlock497Value3 recoveredBlock497Value4 recoveredBlock497Value5 recoveredBlock497Value6 recoveredBlock497Value7 recoveredBlock497Value8 recoveredBlock497Value9 |
    recoveredBlock497Value0 := recoveredBlock497Arg1.
    recoveredBlock497Value1 := recoveredBlock497Value0.
    (recoveredBlock497Value1) wrap: (false).
    recoveredBlock497Value2 := recoveredBlock497Value0.
    recoveredBlock497Value3 := recoveredLocal14.
    recoveredBlock497Value4 := (20) * (recoveredBlock497Value3).
    recoveredBlock497Value5 := (recoveredBlock497Value4) rounded.
    (recoveredBlock497Value2) height: (recoveredBlock497Value5).
    recoveredBlock497Value6 := recoveredLocal15.
    recoveredBlock497Value7 := (60) * (recoveredBlock497Value6).
    recoveredBlock497Value8 := (recoveredBlock497Value7) rounded.
    recoveredBlock497Value9 := (recoveredBlock497Value0) width: (recoveredBlock497Value8).
    recoveredBlock497Value9
].
    recoveredValue55 := (recoveredValue53) createRBSpinButton: ('xSizeSpinButton') argBlock: (recoveredValue54).
    recoveredValue56 := (recoveredValue55) manageChild.
    recoveredLocal4 := recoveredValue56.
    recoveredValue57 := recoveredLocal16.
    recoveredValue58 := recoveredLocal4.
    (recoveredValue57) at: ('xSizeSpinButton') put: (recoveredValue58).
    recoveredValue59 := recoveredLocal13.
    recoveredValue60 := [:recoveredBlock553Arg1 | 
    | recoveredBlock553Value0 recoveredBlock553Value1 recoveredBlock553Value2 recoveredBlock553Value3 recoveredBlock553Value4 recoveredBlock553Value5 |
    recoveredBlock553Value0 := recoveredBlock553Arg1.
    recoveredBlock553Value1 := recoveredBlock553Value0.
    (recoveredBlock553Value1) visibleItemCount: (10).
    recoveredBlock553Value2 := recoveredLocal15.
    recoveredBlock553Value3 := (65) * (recoveredBlock553Value2).
    recoveredBlock553Value4 := (recoveredBlock553Value3) rounded.
    recoveredBlock553Value5 := (recoveredBlock553Value0) width: (recoveredBlock553Value4).
    recoveredBlock553Value5
].
    recoveredValue61 := (recoveredValue59) createEtasObjectComboBox: ('interpolComboBox') argBlock: (recoveredValue60).
    recoveredValue62 := (recoveredValue61) manageChild.
    recoveredLocal3 := recoveredValue62.
    recoveredValue63 := recoveredLocal16.
    recoveredValue64 := recoveredLocal3.
    (recoveredValue63) at: ('interpolComboBox') put: (recoveredValue64).
    recoveredValue65 := recoveredLocal13.
    recoveredValue66 := [:recoveredBlock601Arg1 | 
    | recoveredBlock601Value0 recoveredBlock601Value1 recoveredBlock601Value2 recoveredBlock601Value3 recoveredBlock601Value4 |
    recoveredBlock601Value0 := recoveredBlock601Arg1.
    recoveredBlock601Value1 := recoveredLocal15.
    recoveredBlock601Value2 := (65) * (recoveredBlock601Value1).
    recoveredBlock601Value3 := (recoveredBlock601Value2) rounded.
    recoveredBlock601Value4 := (recoveredBlock601Value0) width: (recoveredBlock601Value3).
    recoveredBlock601Value4
].
    recoveredValue67 := (recoveredValue65) createEtasComboBox: ('extrapolComboBox') argBlock: (recoveredValue66).
    recoveredValue68 := (recoveredValue67) manageChild.
    recoveredLocal2 := recoveredValue68.
    recoveredValue69 := recoveredLocal16.
    recoveredValue70 := recoveredLocal2.
    (recoveredValue69) at: ('extrapolComboBox') put: (recoveredValue70).
    recoveredValue71 := recoveredLocal13.
    recoveredValue72 := [:recoveredBlock643Arg1 | 
    | recoveredBlock643Value0 recoveredBlock643Value1 recoveredBlock643Value2 recoveredBlock643Value3 recoveredBlock643Value4 recoveredBlock643Value5 recoveredBlock643Value6 recoveredBlock643Value7 recoveredBlock643Value8 recoveredBlock643Value9 recoveredBlock643Value10 |
    recoveredBlock643Value0 := recoveredBlock643Arg1.
    recoveredBlock643Value1 := recoveredBlock643Value0.
    (recoveredBlock643Value1) editable: (true).
    recoveredBlock643Value2 := recoveredBlock643Value0.
    (recoveredBlock643Value2) wrap: (false).
    recoveredBlock643Value3 := recoveredBlock643Value0.
    recoveredBlock643Value4 := recoveredLocal14.
    recoveredBlock643Value5 := (20) * (recoveredBlock643Value4).
    recoveredBlock643Value6 := (recoveredBlock643Value5) rounded.
    (recoveredBlock643Value3) height: (recoveredBlock643Value6).
    recoveredBlock643Value7 := recoveredLocal15.
    recoveredBlock643Value8 := (60) * (recoveredBlock643Value7).
    recoveredBlock643Value9 := (recoveredBlock643Value8) rounded.
    recoveredBlock643Value10 := (recoveredBlock643Value0) width: (recoveredBlock643Value9).
    recoveredBlock643Value10
].
    recoveredValue73 := (recoveredValue71) createRBSpinButton: ('ySizeSpinButton') argBlock: (recoveredValue72).
    recoveredValue74 := (recoveredValue73) manageChild.
    recoveredLocal1 := recoveredValue74.
    recoveredValue75 := recoveredLocal16.
    recoveredValue76 := recoveredLocal1.
    (recoveredValue75) at: ('ySizeSpinButton') put: (recoveredValue76).
    recoveredValue77 := recoveredLocal12.
    recoveredValue78 := [:recoveredBlock701Arg1 | 
    | recoveredBlock701Value0 recoveredBlock701Value1 recoveredBlock701Value2 recoveredBlock701Value3 recoveredBlock701Value4 recoveredBlock701Value5 recoveredBlock701Value6 recoveredBlock701Value7 |
    recoveredBlock701Value0 := recoveredBlock701Arg1.
    recoveredBlock701Value1 := recoveredBlock701Value0.
    recoveredBlock701Value2 := XmATTACHFORM.
    (recoveredBlock701Value1) topAttachment: (recoveredBlock701Value2).
    recoveredBlock701Value3 := recoveredBlock701Value0.
    (recoveredBlock701Value3) topOffset: (5).
    recoveredBlock701Value4 := recoveredBlock701Value0.
    recoveredBlock701Value5 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock701Value4) leftAttachment: (recoveredBlock701Value5).
    recoveredBlock701Value6 := recoveredLocal2.
    recoveredBlock701Value7 := (recoveredBlock701Value0) leftWidget: (recoveredBlock701Value6).
    recoveredBlock701Value7
].
    (recoveredValue77) setValuesBlock: (recoveredValue78).
    recoveredValue79 := recoveredLocal4.
    recoveredValue80 := recoveredValue79.
    recoveredValue81 := XmNlosingFocusCallback.
    (recoveredValue80) addCallback: (recoveredValue81) receiver: (self) selector: ('xSizeSpinButtonLosingFocusCallback:clientData:callData:') clientData: (nil).
    recoveredValue82 := recoveredValue79.
    recoveredValue83 := XmNactivateCallback.
    (recoveredValue82) addCallback: (recoveredValue83) receiver: (self) selector: ('xSizeSpinButtonActivateCallback:clientData:callData:') clientData: (nil).
    recoveredValue84 := XmNvalueChangedCallback.
    (recoveredValue79) addCallback: (recoveredValue84) receiver: (self) selector: ('xSizeSpinButtonValueChangedCallback:clientData:callData:') clientData: (nil).
    recoveredValue85 := recoveredLocal1.
    recoveredValue86 := recoveredValue85.
    recoveredValue87 := XmNlosingFocusCallback.
    (recoveredValue86) addCallback: (recoveredValue87) receiver: (self) selector: ('ySizeSpinButtonLosingFocusCallback:clientData:callData:') clientData: (nil).
    recoveredValue88 := recoveredValue85.
    recoveredValue89 := XmNactivateCallback.
    (recoveredValue88) addCallback: (recoveredValue89) receiver: (self) selector: ('ySizeSpinButtonActivateCallback:clientData:callData:') clientData: (nil).
    recoveredValue90 := XmNvalueChangedCallback.
    (recoveredValue85) addCallback: (recoveredValue90) receiver: (self) selector: ('ySizeSpinButtonValueChangedCallback:clientData:callData:') clientData: (nil).
    recoveredValue91 := recoveredLocal5.
    recoveredValue92 := recoveredValue91.
    recoveredValue93 := XmNlosingFocusCallback.
    (recoveredValue92) addCallback: (recoveredValue93) receiver: (self) selector: ('xMaxSizeSpinButtonLosingFocusCallback:clientData:callData:') clientData: (nil).
    recoveredValue94 := recoveredValue91.
    recoveredValue95 := XmNactivateCallback.
    (recoveredValue94) addCallback: (recoveredValue95) receiver: (self) selector: ('xMaxSizeSpinButtonActivateCallback:clientData:callData:') clientData: (nil).
    recoveredValue96 := XmNvalueChangedCallback.
    (recoveredValue91) addCallback: (recoveredValue96) receiver: (self) selector: ('xMaxSizeSpinButtonValueChangedCallback:clientData:callData:') clientData: (nil).
    recoveredValue97 := recoveredLocal11.
    recoveredValue98 := recoveredValue97.
    recoveredValue99 := XmNlosingFocusCallback.
    (recoveredValue98) addCallback: (recoveredValue99) receiver: (self) selector: ('yMaxSizeSpinButtonLosingFocusCallback:clientData:callData:') clientData: (nil).
    recoveredValue100 := recoveredValue97.
    recoveredValue101 := XmNactivateCallback.
    (recoveredValue100) addCallback: (recoveredValue101) receiver: (self) selector: ('yMaxSizeSpinButtonActivateCallback:clientData:callData:') clientData: (nil).
    recoveredValue102 := XmNvalueChangedCallback.
    (recoveredValue97) addCallback: (recoveredValue102) receiver: (self) selector: ('yMaxSizeSpinButtonValueChangedCallback:clientData:callData:') clientData: (nil).
    recoveredValue103 := recoveredLocal2.
    recoveredValue104 := XmNsingleSelectionCallback.
    (recoveredValue103) addCallback: (recoveredValue104) receiver: (self) selector: ('extrapolCombpBpxSingleSelectionCallback:clientData:callData:') clientData: (nil).
    recoveredValue105 := recoveredLocal3.
    recoveredValue106 := XmNsingleSelectionCallback.
    (recoveredValue105) addCallback: (recoveredValue106) receiver: (self) selector: ('interpolCombpBpxSingleSelectionCallback:clientData:callData:') clientData: (nil).
    recoveredValue107 := recoveredLocal16.
    ^recoveredValue107
! !

