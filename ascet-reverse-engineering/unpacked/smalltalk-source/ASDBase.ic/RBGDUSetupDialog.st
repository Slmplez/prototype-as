"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200063d4; bytecode file offset 0x902de8"
!RBGDUSetupDialog methodsFor: 'recovered'!
incDecStepTextModify: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x200435dc; bytecode file offset 0x9451f8"
!RBGDUSetupDialog methodsFor: 'recovered'!
backgroundColorArea
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('backgroundColorArea').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004480c; bytecode file offset 0x9451f8"
!RBGDUSetupDialog methodsFor: 'recovered'!
incDecStepText
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('incDecStepText').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004575c; bytecode file offset 0x9451f8"
!RBGDUSetupDialog methodsFor: 'recovered'!
foregroundColorArea
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('foregroundColorArea').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20045dec; bytecode file offset 0x9451f8"
!RBGDUSetupDialog methodsFor: 'recovered'!
incDecStepLabel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('incDecStepLabel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200712a4; bytecode file offset 0x96db68"
!RBGDUSetupDialog methodsFor: 'recovered'!
incDecStep
    | recoveredValue0 |
    recoveredValue0 := incDecStep.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200712d0; bytecode file offset 0x96dbb4"
!RBGDUSetupDialog methodsFor: 'recovered'!
numberRepresentation
    | recoveredValue0 |
    recoveredValue0 := numberRepresentation.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200753cc; bytecode file offset 0x9757c8"
!RBGDUSetupDialog methodsFor: 'recovered'!
xAxisIsHex
    ^true
! !

"ASDBase.ic method 0x200c781c; bytecode file offset 0x9c40e0"
!RBGDUSetupDialog methodsFor: 'recovered'!
incDecStep: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    incDecStep := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c7860; bytecode file offset 0x9c4114"
!RBGDUSetupDialog methodsFor: 'recovered'!
numberRepresentation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    numberRepresentation := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2012bf78; bytecode file offset 0xa28844"
!RBGDUSetupDialog methodsFor: 'recovered'!
ok
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) incDecStepText.
    recoveredValue1 := (recoveredValue0) value.
    recoveredValue2 := (self) valueFromString: (recoveredValue1).
    (self) incDecStep: (recoveredValue2).
    super ok.
    ^self
! !

"ASDBase.ic method 0x202e9f00; bytecode file offset 0xbe67d4"
!RBGDUSetupDialog methodsFor: 'recovered'!
characterMethod
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := numberRepresentation.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'float'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'checkFloat:'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := numberRepresentation.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'hex'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 'checkHex:'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := numberRepresentation.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 'dez'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 'checkInteger:'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := numberRepresentation.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := 'bin'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := 'checkBin:'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2035d25c; bytecode file offset 0xc59b34"
!RBGDUSetupDialog methodsFor: 'recovered'!
valueFromString: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := numberRepresentation.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'hex'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIntegerFromHex.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := numberRepresentation.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'dez'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := numberRepresentation.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 'bin'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIntegerFromBin.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNumericString.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFloat.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) truncated.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) truncated.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203bf868; bytecode file offset 0xcbc148"
!RBGDUSetupDialog methodsFor: 'recovered'!
stringFromValue: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNumber.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 18].
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
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNaN.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInf.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := numberRepresentation.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 'hex'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) asHexString.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := numberRepresentation.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := 'dez'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := numberRepresentation.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := 'bin'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 79].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) printStringRadix: (recoveredStack2) showRadix: (recoveredStack3).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203daa90; bytecode file offset 0xcd7394"
!RBGDUSetupDialog methodsFor: 'recovered'!
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
            recoveredStack1 := 'xScaleLabel'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := SCXAxis.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) incDecStepLabel.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := SCIncDecStep.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) foregroundColorArea.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) incDecStepText.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) backgroundColorArea.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) incDecStepText.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) incDecStep.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) incDecStepText.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) incDecStepText.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := 'Change to hex!!'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 85.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) incDecStepText.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) characterMethod.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) characterMethod: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) incDecStepText.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) incDecStep.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) stringFromValue: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206bb2e4; bytecode file offset 0xfb7e34"
!RBGDUSetupDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredLocal19 recoveredLocal20 recoveredLocal21 recoveredLocal22 recoveredLocal23 recoveredLocal24 recoveredLocal25 recoveredLocal26 recoveredLocal27 recoveredLocal28 recoveredLocal29 recoveredLocal30 recoveredLocal31 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal31 := recoveredStack1.
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
            recoveredStack3 := [:block28132838Arg1 | 
    | block28132838Value0 block28132838Value1 block28132838Value2 block28132838Value3 block28132838Value4 block28132838Value5 |
    block28132838Value0 := block28132838Arg1.
    block28132838Value1 := block28132838Value0.
    block28132838Value2 := MWMINPUTSYSTEMMODAL.
    (block28132838Value1) mwmInputMode: (block28132838Value2).
    block28132838Value3 := block28132838Value0.
    (block28132838Value3) title: ('Darstellungs-Setup').
    block28132838Value4 := block28132838Value0.
    (block28132838Value4) height: (340).
    block28132838Value5 := (block28132838Value0) width: (414).
    block28132838Value5
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
            recoveredLocal30 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal31.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredLocal30.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal30.
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
            recoveredLocal29 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal31.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := recoveredLocal29.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal29.
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
            recoveredLocal28 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal31.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := recoveredLocal28.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := 'wMinField'.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := [:block2813285cArg1 | 
    | block2813285cValue0 block2813285cValue1 block2813285cValue2 block2813285cValue3 block2813285cValue4 |
    block2813285cValue0 := block2813285cArg1.
    block2813285cValue1 := block2813285cValue0.
    (block2813285cValue1) y: (30).
    block2813285cValue2 := block2813285cValue0.
    (block2813285cValue2) x: (70).
    block2813285cValue3 := block2813285cValue0.
    (block2813285cValue3) height: (25).
    block2813285cValue4 := (block2813285cValue0) width: (60).
    block2813285cValue4
].
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal27 := recoveredStack1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredLocal31.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := 'wMinField'.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack3 := recoveredLocal27.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := 'wMaxField'.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := [:block28132880Arg1 | 
    | block28132880Value0 block28132880Value1 block28132880Value2 block28132880Value3 block28132880Value4 |
    block28132880Value0 := block28132880Arg1.
    block28132880Value1 := block28132880Value0.
    (block28132880Value1) y: (60).
    block28132880Value2 := block28132880Value0.
    (block28132880Value2) x: (70).
    block28132880Value3 := block28132880Value0.
    (block28132880Value3) height: (25).
    block28132880Value4 := (block28132880Value0) width: (60).
    block28132880Value4
].
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredLocal26 := recoveredStack1.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := recoveredLocal31.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := 'wMaxField'.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack3 := recoveredLocal26.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := [:block281328a4Arg1 | 
    | block281328a4Value0 block281328a4Value1 block281328a4Value2 block281328a4Value3 block281328a4Value4 block281328a4Value5 block281328a4Value6 |
    block281328a4Value0 := block281328a4Arg1.
    block281328a4Value1 := block281328a4Value0.
    (block281328a4Value1) x: (295).
    block281328a4Value2 := block281328a4Value0.
    (block281328a4Value2) showAsDefault: (1).
    block281328a4Value3 := block281328a4Value0.
    (block281328a4Value3) labelString: ('Ok').
    block281328a4Value4 := block281328a4Value0.
    (block281328a4Value4) y: (10).
    block281328a4Value5 := block281328a4Value0.
    (block281328a4Value5) height: (30).
    block281328a4Value6 := (block281328a4Value0) width: (110).
    block281328a4Value6
].
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredLocal25 := recoveredStack1.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := recoveredLocal31.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack3 := recoveredLocal25.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack3 := [:block281328c8Arg1 | 
    | block281328c8Value0 block281328c8Value1 block281328c8Value2 block281328c8Value3 block281328c8Value4 block281328c8Value5 |
    block281328c8Value0 := block281328c8Arg1.
    block281328c8Value1 := block281328c8Value0.
    (block281328c8Value1) x: (295).
    block281328c8Value2 := block281328c8Value0.
    (block281328c8Value2) labelString: ('Abbruch').
    block281328c8Value3 := block281328c8Value0.
    (block281328c8Value3) y: (45).
    block281328c8Value4 := block281328c8Value0.
    (block281328c8Value4) height: (30).
    block281328c8Value5 := (block281328c8Value0) width: (110).
    block281328c8Value5
].
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredLocal24 := recoveredStack1.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := recoveredLocal31.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack3 := recoveredLocal24.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack2 := 'helpButton'.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack3 := [:block281328ecArg1 | 
    | block281328ecValue0 block281328ecValue1 block281328ecValue2 block281328ecValue3 block281328ecValue4 block281328ecValue5 |
    block281328ecValue0 := block281328ecArg1.
    block281328ecValue1 := block281328ecValue0.
    (block281328ecValue1) x: (295).
    block281328ecValue2 := block281328ecValue0.
    (block281328ecValue2) labelString: ('Hilfe').
    block281328ecValue3 := block281328ecValue0.
    (block281328ecValue3) y: (80).
    block281328ecValue4 := block281328ecValue0.
    (block281328ecValue4) height: (30).
    block281328ecValue5 := (block281328ecValue0) width: (110).
    block281328ecValue5
].
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredLocal23 := recoveredStack1.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack1 := recoveredLocal31.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack2 := 'helpButton'.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack3 := recoveredLocal23.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack2 := 'gridButton'.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack3 := [:block28132910Arg1 | 
    | block28132910Value0 block28132910Value1 block28132910Value2 block28132910Value3 block28132910Value4 block28132910Value5 block28132910Value6 block28132910Value7 block28132910Value8 block28132910Value9 |
    block28132910Value0 := block28132910Arg1.
    block28132910Value1 := block28132910Value0.
    (block28132910Value1) marginRight: (10).
    block28132910Value2 := block28132910Value0.
    (block28132910Value2) marginWidth: (0).
    block28132910Value3 := block28132910Value0.
    (block28132910Value3) marginHeight: (0).
    block28132910Value4 := block28132910Value0.
    (block28132910Value4) y: (285).
    block28132910Value5 := block28132910Value0.
    (block28132910Value5) marginBottom: (10).
    block28132910Value6 := block28132910Value0.
    (block28132910Value6) x: (15).
    block28132910Value7 := block28132910Value0.
    (block28132910Value7) labelString: ('Achsengitter').
    block28132910Value8 := block28132910Value0.
    (block28132910Value8) height: (20).
    block28132910Value9 := (block28132910Value0) width: (104).
    block28132910Value9
].
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredLocal22 := recoveredStack1.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack1 := recoveredLocal31.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack2 := 'gridButton'.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack3 := recoveredLocal22.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack2 := 'xMinField'.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack3 := [:block28132934Arg1 | 
    | block28132934Value0 block28132934Value1 block28132934Value2 block28132934Value3 block28132934Value4 |
    block28132934Value0 := block28132934Arg1.
    block28132934Value1 := block28132934Value0.
    (block28132934Value1) y: (195).
    block28132934Value2 := block28132934Value0.
    (block28132934Value2) x: (70).
    block28132934Value3 := block28132934Value0.
    (block28132934Value3) height: (25).
    block28132934Value4 := (block28132934Value0) width: (60).
    block28132934Value4
].
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredLocal21 := recoveredStack1.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack1 := recoveredLocal31.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack2 := 'xMinField'.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack3 := recoveredLocal21.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack2 := 'foregroundColorArea'.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack3 := [:block28132958Arg1 | 
    | block28132958Value0 block28132958Value1 block28132958Value2 block28132958Value3 block28132958Value4 block28132958Value5 |
    block28132958Value0 := block28132958Arg1.
    block28132958Value1 := block28132958Value0.
    (block28132958Value1) x: (155).
    block28132958Value2 := block28132958Value0.
    (block28132958Value2) borderWidth: (1).
    block28132958Value3 := block28132958Value0.
    (block28132958Value3) y: (135).
    block28132958Value4 := block28132958Value0.
    (block28132958Value4) height: (25).
    block28132958Value5 := (block28132958Value0) width: (110).
    block28132958Value5
].
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDrawingArea: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredLocal20 := recoveredStack1.
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            recoveredStack1 := recoveredLocal31.
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            recoveredStack2 := 'foregroundColorArea'.
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack3 := recoveredLocal20.
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            recoveredStack2 := 'backgroundColorArea'.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredStack3 := [:block2813297cArg1 | 
    | block2813297cValue0 block2813297cValue1 block2813297cValue2 block2813297cValue3 block2813297cValue4 block2813297cValue5 |
    block2813297cValue0 := block2813297cArg1.
    block2813297cValue1 := block2813297cValue0.
    (block2813297cValue1) x: (155).
    block2813297cValue2 := block2813297cValue0.
    (block2813297cValue2) borderWidth: (1).
    block2813297cValue3 := block2813297cValue0.
    (block2813297cValue3) y: (285).
    block2813297cValue4 := block2813297cValue0.
    (block2813297cValue4) height: (25).
    block2813297cValue5 := (block2813297cValue0) width: (110).
    block2813297cValue5
].
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDrawingArea: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            recoveredLocal19 := recoveredStack1.
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            recoveredStack1 := recoveredLocal31.
            recoveredPC := 629.
        ].
        recoveredStep = 629 ifTrue: [
            recoveredStack2 := 'backgroundColorArea'.
            recoveredPC := 632.
        ].
        recoveredStep = 632 ifTrue: [
            recoveredStack3 := recoveredLocal19.
            recoveredPC := 635.
        ].
        recoveredStep = 635 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 637.
        ].
        recoveredStep = 637 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 640.
        ].
        recoveredStep = 640 ifTrue: [
            recoveredStack2 := 'backgroundColorLabel'.
            recoveredPC := 644.
        ].
        recoveredStep = 644 ifTrue: [
            recoveredStack3 := [:recoveredBlock644Arg1 | 
    | recoveredBlock644Value0 recoveredBlock644Value1 recoveredBlock644Value2 recoveredBlock644Value3 recoveredBlock644Value4 recoveredBlock644Value5 recoveredBlock644Value6 recoveredBlock644Value7 recoveredBlock644Value8 recoveredBlock644Value9 recoveredBlock644Value10 |
    recoveredBlock644Value0 := recoveredBlock644Arg1.
    recoveredBlock644Value1 := recoveredBlock644Value0.
    (recoveredBlock644Value1) x: (145).
    recoveredBlock644Value2 := recoveredBlock644Value0.
    recoveredBlock644Value3 := XmALIGNMENTBEGINNING.
    (recoveredBlock644Value2) alignment: (recoveredBlock644Value3).
    recoveredBlock644Value4 := recoveredBlock644Value0.
    (recoveredBlock644Value4) labelString: ('Hintergrundfarbe').
    recoveredBlock644Value5 := recoveredBlock644Value0.
    (recoveredBlock644Value5) marginWidth: (0).
    recoveredBlock644Value6 := recoveredBlock644Value0.
    (recoveredBlock644Value6) marginHeight: (0).
    recoveredBlock644Value7 := recoveredBlock644Value0.
    (recoveredBlock644Value7) y: (175).
    recoveredBlock644Value8 := recoveredBlock644Value0.
    (recoveredBlock644Value8) height: (20).
    recoveredBlock644Value9 := (self) defaultLabelBlue.
    recoveredBlock644Value10 := (recoveredBlock644Value0) foregroundColor: (recoveredBlock644Value9).
    recoveredBlock644Value10
].
            recoveredPC := 704.
        ].
        recoveredStep = 704 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 709.
        ].
        recoveredStep = 709 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 711.
        ].
        recoveredStep = 711 ifTrue: [
            recoveredLocal18 := recoveredStack1.
            recoveredPC := 714.
        ].
        recoveredStep = 714 ifTrue: [
            recoveredStack1 := recoveredLocal31.
            recoveredPC := 717.
        ].
        recoveredStep = 717 ifTrue: [
            recoveredStack2 := 'backgroundColorLabel'.
            recoveredPC := 720.
        ].
        recoveredStep = 720 ifTrue: [
            recoveredStack3 := recoveredLocal18.
            recoveredPC := 723.
        ].
        recoveredStep = 723 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 725.
        ].
        recoveredStep = 725 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 728.
        ].
        recoveredStep = 728 ifTrue: [
            recoveredStack2 := 'aSeparator2'.
            recoveredPC := 732.
        ].
        recoveredStep = 732 ifTrue: [
            recoveredStack3 := [:block281329a0Arg1 | 
    | block281329a0Value0 block281329a0Value1 block281329a0Value2 block281329a0Value3 |
    block281329a0Value0 := block281329a0Arg1.
    block281329a0Value1 := block281329a0Value0.
    (block281329a0Value1) y: (160).
    block281329a0Value2 := block281329a0Value0.
    (block281329a0Value2) height: (4).
    block281329a0Value3 := (block281329a0Value0) width: (285).
    block281329a0Value3
].
            recoveredPC := 736.
        ].
        recoveredStep = 736 ifTrue: [
            recoveredPC := 759.
        ].
        recoveredStep = 759 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 763.
        ].
        recoveredStep = 763 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 765.
        ].
        recoveredStep = 765 ifTrue: [
            recoveredLocal17 := recoveredStack1.
            recoveredPC := 768.
        ].
        recoveredStep = 768 ifTrue: [
            recoveredStack1 := recoveredLocal31.
            recoveredPC := 771.
        ].
        recoveredStep = 771 ifTrue: [
            recoveredStack2 := 'aSeparator2'.
            recoveredPC := 774.
        ].
        recoveredStep = 774 ifTrue: [
            recoveredStack3 := recoveredLocal17.
            recoveredPC := 777.
        ].
        recoveredStep = 777 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 779.
        ].
        recoveredStep = 779 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 782.
        ].
        recoveredStep = 782 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 786.
        ].
        recoveredStep = 786 ifTrue: [
            recoveredStack3 := [:block281329c4Arg1 | 
    | block281329c4Value0 block281329c4Value1 block281329c4Value2 block281329c4Value3 block281329c4Value4 block281329c4Value5 block281329c4Value6 block281329c4Value7 |
    block281329c4Value0 := block281329c4Arg1.
    block281329c4Value1 := block281329c4Value0.
    (block281329c4Value1) x: (285).
    block281329c4Value2 := block281329c4Value0.
    block281329c4Value3 := XmSINGLELINE.
    (block281329c4Value2) separatorType: (block281329c4Value3).
    block281329c4Value4 := block281329c4Value0.
    block281329c4Value5 := XmVERTICAL.
    (block281329c4Value4) orientation: (block281329c4Value5).
    block281329c4Value6 := block281329c4Value0.
    (block281329c4Value6) height: (319).
    block281329c4Value7 := (block281329c4Value0) width: (3).
    block281329c4Value7
].
            recoveredPC := 790.
        ].
        recoveredStep = 790 ifTrue: [
            recoveredPC := 829.
        ].
        recoveredStep = 829 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 833.
        ].
        recoveredStep = 833 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 835.
        ].
        recoveredStep = 835 ifTrue: [
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 838.
        ].
        recoveredStep = 838 ifTrue: [
            recoveredStack1 := recoveredLocal31.
            recoveredPC := 841.
        ].
        recoveredStep = 841 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 844.
        ].
        recoveredStep = 844 ifTrue: [
            recoveredStack3 := recoveredLocal16.
            recoveredPC := 847.
        ].
        recoveredStep = 847 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 849.
        ].
        recoveredStep = 849 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 852.
        ].
        recoveredStep = 852 ifTrue: [
            recoveredStack2 := 'foregroundColorLabel'.
            recoveredPC := 856.
        ].
        recoveredStep = 856 ifTrue: [
            recoveredStack3 := [:recoveredBlock856Arg1 | 
    | recoveredBlock856Value0 recoveredBlock856Value1 recoveredBlock856Value2 recoveredBlock856Value3 recoveredBlock856Value4 recoveredBlock856Value5 recoveredBlock856Value6 recoveredBlock856Value7 recoveredBlock856Value8 recoveredBlock856Value9 recoveredBlock856Value10 |
    recoveredBlock856Value0 := recoveredBlock856Arg1.
    recoveredBlock856Value1 := recoveredBlock856Value0.
    (recoveredBlock856Value1) x: (145).
    recoveredBlock856Value2 := recoveredBlock856Value0.
    recoveredBlock856Value3 := XmALIGNMENTBEGINNING.
    (recoveredBlock856Value2) alignment: (recoveredBlock856Value3).
    recoveredBlock856Value4 := recoveredBlock856Value0.
    (recoveredBlock856Value4) labelString: ('Linienfarbe').
    recoveredBlock856Value5 := recoveredBlock856Value0.
    (recoveredBlock856Value5) marginWidth: (0).
    recoveredBlock856Value6 := recoveredBlock856Value0.
    (recoveredBlock856Value6) marginHeight: (0).
    recoveredBlock856Value7 := recoveredBlock856Value0.
    (recoveredBlock856Value7) y: (10).
    recoveredBlock856Value8 := recoveredBlock856Value0.
    (recoveredBlock856Value8) height: (20).
    recoveredBlock856Value9 := (self) defaultLabelBlue.
    recoveredBlock856Value10 := (recoveredBlock856Value0) foregroundColor: (recoveredBlock856Value9).
    recoveredBlock856Value10
].
            recoveredPC := 914.
        ].
        recoveredStep = 914 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 919.
        ].
        recoveredStep = 919 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 921.
        ].
        recoveredStep = 921 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 924.
        ].
        recoveredStep = 924 ifTrue: [
            recoveredStack1 := recoveredLocal31.
            recoveredPC := 927.
        ].
        recoveredStep = 927 ifTrue: [
            recoveredStack2 := 'foregroundColorLabel'.
            recoveredPC := 930.
        ].
        recoveredStep = 930 ifTrue: [
            recoveredStack3 := recoveredLocal15.
            recoveredPC := 933.
        ].
        recoveredStep = 933 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 935.
        ].
        recoveredStep = 935 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 938.
        ].
        recoveredStep = 938 ifTrue: [
            recoveredStack2 := 'optionsLabel'.
            recoveredPC := 942.
        ].
        recoveredStep = 942 ifTrue: [
            recoveredStack3 := [:recoveredBlock942Arg1 | 
    | recoveredBlock942Value0 recoveredBlock942Value1 recoveredBlock942Value2 recoveredBlock942Value3 recoveredBlock942Value4 recoveredBlock942Value5 recoveredBlock942Value6 recoveredBlock942Value7 recoveredBlock942Value8 recoveredBlock942Value9 |
    recoveredBlock942Value0 := recoveredBlock942Arg1.
    recoveredBlock942Value1 := recoveredBlock942Value0.
    (recoveredBlock942Value1) x: (10).
    recoveredBlock942Value2 := recoveredBlock942Value0.
    recoveredBlock942Value3 := XmALIGNMENTBEGINNING.
    (recoveredBlock942Value2) alignment: (recoveredBlock942Value3).
    recoveredBlock942Value4 := recoveredBlock942Value0.
    (recoveredBlock942Value4) labelString: ('Optionen').
    recoveredBlock942Value5 := recoveredBlock942Value0.
    (recoveredBlock942Value5) marginWidth: (0).
    recoveredBlock942Value6 := recoveredBlock942Value0.
    (recoveredBlock942Value6) marginHeight: (0).
    recoveredBlock942Value7 := recoveredBlock942Value0.
    (recoveredBlock942Value7) y: (270).
    recoveredBlock942Value8 := (self) defaultLabelBlue.
    recoveredBlock942Value9 := (recoveredBlock942Value0) foregroundColor: (recoveredBlock942Value8).
    recoveredBlock942Value9
].
            recoveredPC := 994.
        ].
        recoveredStep = 994 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 999.
        ].
        recoveredStep = 999 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1001.
        ].
        recoveredStep = 1001 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 1004.
        ].
        recoveredStep = 1004 ifTrue: [
            recoveredStack1 := recoveredLocal31.
            recoveredPC := 1007.
        ].
        recoveredStep = 1007 ifTrue: [
            recoveredStack2 := 'optionsLabel'.
            recoveredPC := 1010.
        ].
        recoveredStep = 1010 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 1013.
        ].
        recoveredStep = 1013 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1015.
        ].
        recoveredStep = 1015 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 1018.
        ].
        recoveredStep = 1018 ifTrue: [
            recoveredStack2 := 'yScaleLabel'.
            recoveredPC := 1022.
        ].
        recoveredStep = 1022 ifTrue: [
            recoveredStack3 := [:recoveredBlock1022Arg1 | 
    | recoveredBlock1022Value0 recoveredBlock1022Value1 recoveredBlock1022Value2 recoveredBlock1022Value3 recoveredBlock1022Value4 recoveredBlock1022Value5 recoveredBlock1022Value6 recoveredBlock1022Value7 recoveredBlock1022Value8 recoveredBlock1022Value9 recoveredBlock1022Value10 |
    recoveredBlock1022Value0 := recoveredBlock1022Arg1.
    recoveredBlock1022Value1 := recoveredBlock1022Value0.
    (recoveredBlock1022Value1) x: (10).
    recoveredBlock1022Value2 := recoveredBlock1022Value0.
    recoveredBlock1022Value3 := XmALIGNMENTBEGINNING.
    (recoveredBlock1022Value2) alignment: (recoveredBlock1022Value3).
    recoveredBlock1022Value4 := recoveredBlock1022Value0.
    (recoveredBlock1022Value4) labelString: ('y-Skalierung').
    recoveredBlock1022Value5 := recoveredBlock1022Value0.
    (recoveredBlock1022Value5) marginWidth: (0).
    recoveredBlock1022Value6 := recoveredBlock1022Value0.
    (recoveredBlock1022Value6) marginHeight: (0).
    recoveredBlock1022Value7 := recoveredBlock1022Value0.
    (recoveredBlock1022Value7) y: (10).
    recoveredBlock1022Value8 := recoveredBlock1022Value0.
    (recoveredBlock1022Value8) height: (20).
    recoveredBlock1022Value9 := (self) defaultLabelBlue.
    recoveredBlock1022Value10 := (recoveredBlock1022Value0) foregroundColor: (recoveredBlock1022Value9).
    recoveredBlock1022Value10
].
            recoveredPC := 1078.
        ].
        recoveredStep = 1078 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1083.
        ].
        recoveredStep = 1083 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1085.
        ].
        recoveredStep = 1085 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 1088.
        ].
        recoveredStep = 1088 ifTrue: [
            recoveredStack1 := recoveredLocal31.
            recoveredPC := 1091.
        ].
        recoveredStep = 1091 ifTrue: [
            recoveredStack2 := 'yScaleLabel'.
            recoveredPC := 1094.
        ].
        recoveredStep = 1094 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 1097.
        ].
        recoveredStep = 1097 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1099.
        ].
        recoveredStep = 1099 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 1102.
        ].
        recoveredStep = 1102 ifTrue: [
            recoveredStack2 := 'fromLabel'.
            recoveredPC := 1106.
        ].
        recoveredStep = 1106 ifTrue: [
            recoveredStack3 := [:block281329e8Arg1 | 
    | block281329e8Value0 block281329e8Value1 block281329e8Value2 block281329e8Value3 block281329e8Value4 block281329e8Value5 block281329e8Value6 block281329e8Value7 block281329e8Value8 block281329e8Value9 |
    block281329e8Value0 := block281329e8Arg1.
    block281329e8Value1 := block281329e8Value0.
    (block281329e8Value1) x: (20).
    block281329e8Value2 := block281329e8Value0.
    block281329e8Value3 := XmALIGNMENTBEGINNING.
    (block281329e8Value2) alignment: (block281329e8Value3).
    block281329e8Value4 := block281329e8Value0.
    (block281329e8Value4) labelString: ('von').
    block281329e8Value5 := block281329e8Value0.
    (block281329e8Value5) marginWidth: (0).
    block281329e8Value6 := block281329e8Value0.
    (block281329e8Value6) marginHeight: (0).
    block281329e8Value7 := block281329e8Value0.
    (block281329e8Value7) y: (35).
    block281329e8Value8 := block281329e8Value0.
    (block281329e8Value8) height: (20).
    block281329e8Value9 := (block281329e8Value0) marginBottom: (10).
    block281329e8Value9
].
            recoveredPC := 1110.
        ].
        recoveredStep = 1110 ifTrue: [
            recoveredPC := 1159.
        ].
        recoveredStep = 1159 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1163.
        ].
        recoveredStep = 1163 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1165.
        ].
        recoveredStep = 1165 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 1168.
        ].
        recoveredStep = 1168 ifTrue: [
            recoveredStack1 := recoveredLocal31.
            recoveredPC := 1171.
        ].
        recoveredStep = 1171 ifTrue: [
            recoveredStack2 := 'fromLabel'.
            recoveredPC := 1174.
        ].
        recoveredStep = 1174 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 1177.
        ].
        recoveredStep = 1177 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1179.
        ].
        recoveredStep = 1179 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 1182.
        ].
        recoveredStep = 1182 ifTrue: [
            recoveredStack2 := 'toLabel'.
            recoveredPC := 1186.
        ].
        recoveredStep = 1186 ifTrue: [
            recoveredStack3 := [:block28132a0cArg1 | 
    | block28132a0cValue0 block28132a0cValue1 block28132a0cValue2 block28132a0cValue3 block28132a0cValue4 block28132a0cValue5 block28132a0cValue6 block28132a0cValue7 block28132a0cValue8 block28132a0cValue9 |
    block28132a0cValue0 := block28132a0cArg1.
    block28132a0cValue1 := block28132a0cValue0.
    (block28132a0cValue1) x: (20).
    block28132a0cValue2 := block28132a0cValue0.
    block28132a0cValue3 := XmALIGNMENTBEGINNING.
    (block28132a0cValue2) alignment: (block28132a0cValue3).
    block28132a0cValue4 := block28132a0cValue0.
    (block28132a0cValue4) labelString: ('bis').
    block28132a0cValue5 := block28132a0cValue0.
    (block28132a0cValue5) marginWidth: (0).
    block28132a0cValue6 := block28132a0cValue0.
    (block28132a0cValue6) marginHeight: (0).
    block28132a0cValue7 := block28132a0cValue0.
    (block28132a0cValue7) y: (65).
    block28132a0cValue8 := block28132a0cValue0.
    (block28132a0cValue8) height: (20).
    block28132a0cValue9 := (block28132a0cValue0) marginBottom: (10).
    block28132a0cValue9
].
            recoveredPC := 1190.
        ].
        recoveredStep = 1190 ifTrue: [
            recoveredPC := 1240.
        ].
        recoveredStep = 1240 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1245.
        ].
        recoveredStep = 1245 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1247.
        ].
        recoveredStep = 1247 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 1250.
        ].
        recoveredStep = 1250 ifTrue: [
            recoveredStack1 := recoveredLocal31.
            recoveredPC := 1253.
        ].
        recoveredStep = 1253 ifTrue: [
            recoveredStack2 := 'toLabel'.
            recoveredPC := 1256.
        ].
        recoveredStep = 1256 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 1259.
        ].
        recoveredStep = 1259 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1261.
        ].
        recoveredStep = 1261 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 1264.
        ].
        recoveredStep = 1264 ifTrue: [
            recoveredStack2 := 'xScaleLabel'.
            recoveredPC := 1268.
        ].
        recoveredStep = 1268 ifTrue: [
            recoveredStack3 := [:recoveredBlock1268Arg1 | 
    | recoveredBlock1268Value0 recoveredBlock1268Value1 recoveredBlock1268Value2 recoveredBlock1268Value3 recoveredBlock1268Value4 recoveredBlock1268Value5 recoveredBlock1268Value6 recoveredBlock1268Value7 recoveredBlock1268Value8 recoveredBlock1268Value9 recoveredBlock1268Value10 recoveredBlock1268Value11 |
    recoveredBlock1268Value0 := recoveredBlock1268Arg1.
    recoveredBlock1268Value1 := recoveredBlock1268Value0.
    (recoveredBlock1268Value1) x: (10).
    recoveredBlock1268Value2 := recoveredBlock1268Value0.
    recoveredBlock1268Value3 := XmALIGNMENTBEGINNING.
    (recoveredBlock1268Value2) alignment: (recoveredBlock1268Value3).
    recoveredBlock1268Value4 := recoveredBlock1268Value0.
    (recoveredBlock1268Value4) labelString: ('x-Achse').
    recoveredBlock1268Value5 := recoveredBlock1268Value0.
    (recoveredBlock1268Value5) marginWidth: (0).
    recoveredBlock1268Value6 := recoveredBlock1268Value0.
    (recoveredBlock1268Value6) marginHeight: (0).
    recoveredBlock1268Value7 := recoveredBlock1268Value0.
    (recoveredBlock1268Value7) y: (175).
    recoveredBlock1268Value8 := recoveredBlock1268Value0.
    (recoveredBlock1268Value8) height: (20).
    recoveredBlock1268Value9 := recoveredBlock1268Value0.
    (recoveredBlock1268Value9) width: (68).
    recoveredBlock1268Value10 := (self) defaultLabelBlue.
    recoveredBlock1268Value11 := (recoveredBlock1268Value0) foregroundColor: (recoveredBlock1268Value10).
    recoveredBlock1268Value11
].
            recoveredPC := 1332.
        ].
        recoveredStep = 1332 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1337.
        ].
        recoveredStep = 1337 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1339.
        ].
        recoveredStep = 1339 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 1342.
        ].
        recoveredStep = 1342 ifTrue: [
            recoveredStack1 := recoveredLocal31.
            recoveredPC := 1345.
        ].
        recoveredStep = 1345 ifTrue: [
            recoveredStack2 := 'xScaleLabel'.
            recoveredPC := 1348.
        ].
        recoveredStep = 1348 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 1351.
        ].
        recoveredStep = 1351 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1353.
        ].
        recoveredStep = 1353 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 1356.
        ].
        recoveredStep = 1356 ifTrue: [
            recoveredStack2 := 'fromXLabel'.
            recoveredPC := 1360.
        ].
        recoveredStep = 1360 ifTrue: [
            recoveredStack3 := [:block28132a30Arg1 | 
    | block28132a30Value0 block28132a30Value1 block28132a30Value2 block28132a30Value3 block28132a30Value4 block28132a30Value5 block28132a30Value6 block28132a30Value7 |
    block28132a30Value0 := block28132a30Arg1.
    block28132a30Value1 := block28132a30Value0.
    (block28132a30Value1) x: (20).
    block28132a30Value2 := block28132a30Value0.
    block28132a30Value3 := XmALIGNMENTBEGINNING.
    (block28132a30Value2) alignment: (block28132a30Value3).
    block28132a30Value4 := block28132a30Value0.
    (block28132a30Value4) labelString: ('von').
    block28132a30Value5 := block28132a30Value0.
    (block28132a30Value5) marginWidth: (0).
    block28132a30Value6 := block28132a30Value0.
    (block28132a30Value6) marginHeight: (0).
    block28132a30Value7 := (block28132a30Value0) y: (200).
    block28132a30Value7
].
            recoveredPC := 1364.
        ].
        recoveredStep = 1364 ifTrue: [
            recoveredPC := 1405.
        ].
        recoveredStep = 1405 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1409.
        ].
        recoveredStep = 1409 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1411.
        ].
        recoveredStep = 1411 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 1414.
        ].
        recoveredStep = 1414 ifTrue: [
            recoveredStack1 := recoveredLocal31.
            recoveredPC := 1417.
        ].
        recoveredStep = 1417 ifTrue: [
            recoveredStack2 := 'fromXLabel'.
            recoveredPC := 1420.
        ].
        recoveredStep = 1420 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 1423.
        ].
        recoveredStep = 1423 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1425.
        ].
        recoveredStep = 1425 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 1428.
        ].
        recoveredStep = 1428 ifTrue: [
            recoveredStack2 := 'toXLabel'.
            recoveredPC := 1432.
        ].
        recoveredStep = 1432 ifTrue: [
            recoveredStack3 := [:block28132a54Arg1 | 
    | block28132a54Value0 block28132a54Value1 block28132a54Value2 block28132a54Value3 block28132a54Value4 block28132a54Value5 block28132a54Value6 block28132a54Value7 block28132a54Value8 block28132a54Value9 |
    block28132a54Value0 := block28132a54Arg1.
    block28132a54Value1 := block28132a54Value0.
    (block28132a54Value1) x: (20).
    block28132a54Value2 := block28132a54Value0.
    block28132a54Value3 := XmALIGNMENTBEGINNING.
    (block28132a54Value2) alignment: (block28132a54Value3).
    block28132a54Value4 := block28132a54Value0.
    (block28132a54Value4) labelString: ('bis').
    block28132a54Value5 := block28132a54Value0.
    (block28132a54Value5) marginWidth: (0).
    block28132a54Value6 := block28132a54Value0.
    (block28132a54Value6) marginHeight: (0).
    block28132a54Value7 := block28132a54Value0.
    (block28132a54Value7) y: (230).
    block28132a54Value8 := block28132a54Value0.
    (block28132a54Value8) height: (20).
    block28132a54Value9 := (block28132a54Value0) marginBottom: (10).
    block28132a54Value9
].
            recoveredPC := 1436.
        ].
        recoveredStep = 1436 ifTrue: [
            recoveredPC := 1486.
        ].
        recoveredStep = 1486 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1491.
        ].
        recoveredStep = 1491 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1493.
        ].
        recoveredStep = 1493 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 1496.
        ].
        recoveredStep = 1496 ifTrue: [
            recoveredStack1 := recoveredLocal31.
            recoveredPC := 1499.
        ].
        recoveredStep = 1499 ifTrue: [
            recoveredStack2 := 'toXLabel'.
            recoveredPC := 1502.
        ].
        recoveredStep = 1502 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 1505.
        ].
        recoveredStep = 1505 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1507.
        ].
        recoveredStep = 1507 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 1510.
        ].
        recoveredStep = 1510 ifTrue: [
            recoveredStack2 := 'xMaxField'.
            recoveredPC := 1514.
        ].
        recoveredStep = 1514 ifTrue: [
            recoveredStack3 := [:block28132a78Arg1 | 
    | block28132a78Value0 block28132a78Value1 block28132a78Value2 block28132a78Value3 block28132a78Value4 |
    block28132a78Value0 := block28132a78Arg1.
    block28132a78Value1 := block28132a78Value0.
    (block28132a78Value1) y: (225).
    block28132a78Value2 := block28132a78Value0.
    (block28132a78Value2) x: (70).
    block28132a78Value3 := block28132a78Value0.
    (block28132a78Value3) height: (25).
    block28132a78Value4 := (block28132a78Value0) width: (60).
    block28132a78Value4
].
            recoveredPC := 1518.
        ].
        recoveredStep = 1518 ifTrue: [
            recoveredPC := 1546.
        ].
        recoveredStep = 1546 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1548.
        ].
        recoveredStep = 1548 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1550.
        ].
        recoveredStep = 1550 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 1553.
        ].
        recoveredStep = 1553 ifTrue: [
            recoveredStack1 := recoveredLocal31.
            recoveredPC := 1556.
        ].
        recoveredStep = 1556 ifTrue: [
            recoveredStack2 := 'xMaxField'.
            recoveredPC := 1560.
        ].
        recoveredStep = 1560 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 1563.
        ].
        recoveredStep = 1563 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1565.
        ].
        recoveredStep = 1565 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 1568.
        ].
        recoveredStep = 1568 ifTrue: [
            recoveredStack2 := 'incDecStepLabel'.
            recoveredPC := 1572.
        ].
        recoveredStep = 1572 ifTrue: [
            recoveredStack3 := [:recoveredBlock1572Arg1 | 
    | recoveredBlock1572Value0 recoveredBlock1572Value1 recoveredBlock1572Value2 recoveredBlock1572Value3 recoveredBlock1572Value4 recoveredBlock1572Value5 recoveredBlock1572Value6 recoveredBlock1572Value7 recoveredBlock1572Value8 recoveredBlock1572Value9 |
    recoveredBlock1572Value0 := recoveredBlock1572Arg1.
    recoveredBlock1572Value1 := recoveredBlock1572Value0.
    (recoveredBlock1572Value1) x: (13).
    recoveredBlock1572Value2 := recoveredBlock1572Value0.
    recoveredBlock1572Value3 := XmALIGNMENTBEGINNING.
    (recoveredBlock1572Value2) alignment: (recoveredBlock1572Value3).
    recoveredBlock1572Value4 := recoveredBlock1572Value0.
    (recoveredBlock1572Value4) labelString: ('Column width').
    recoveredBlock1572Value5 := recoveredBlock1572Value0.
    (recoveredBlock1572Value5) y: (325).
    recoveredBlock1572Value6 := recoveredBlock1572Value0.
    (recoveredBlock1572Value6) height: (20).
    recoveredBlock1572Value7 := recoveredBlock1572Value0.
    (recoveredBlock1572Value7) width: (100).
    recoveredBlock1572Value8 := (self) defaultLabelBlue.
    recoveredBlock1572Value9 := (recoveredBlock1572Value0) foregroundColor: (recoveredBlock1572Value8).
    recoveredBlock1572Value9
].
            recoveredPC := 1626.
        ].
        recoveredStep = 1626 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1631.
        ].
        recoveredStep = 1631 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1633.
        ].
        recoveredStep = 1633 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 1636.
        ].
        recoveredStep = 1636 ifTrue: [
            recoveredStack1 := recoveredLocal31.
            recoveredPC := 1639.
        ].
        recoveredStep = 1639 ifTrue: [
            recoveredStack2 := 'incDecStepLabel'.
            recoveredPC := 1642.
        ].
        recoveredStep = 1642 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 1645.
        ].
        recoveredStep = 1645 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1647.
        ].
        recoveredStep = 1647 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 1650.
        ].
        recoveredStep = 1650 ifTrue: [
            recoveredStack2 := 'incDecStepText'.
            recoveredPC := 1654.
        ].
        recoveredStep = 1654 ifTrue: [
            recoveredStack3 := [:block28132a9cArg1 | 
    | block28132a9cValue0 block28132a9cValue1 block28132a9cValue2 block28132a9cValue3 block28132a9cValue4 |
    block28132a9cValue0 := block28132a9cArg1.
    block28132a9cValue1 := block28132a9cValue0.
    (block28132a9cValue1) y: (320).
    block28132a9cValue2 := block28132a9cValue0.
    (block28132a9cValue2) x: (155).
    block28132a9cValue3 := block28132a9cValue0.
    (block28132a9cValue3) height: (20).
    block28132a9cValue4 := (block28132a9cValue0) width: (80).
    block28132a9cValue4
].
            recoveredPC := 1658.
        ].
        recoveredStep = 1658 ifTrue: [
            recoveredPC := 1687.
        ].
        recoveredStep = 1687 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1689.
        ].
        recoveredStep = 1689 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1691.
        ].
        recoveredStep = 1691 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 1694.
        ].
        recoveredStep = 1694 ifTrue: [
            recoveredStack1 := recoveredLocal31.
            recoveredPC := 1697.
        ].
        recoveredStep = 1697 ifTrue: [
            recoveredStack2 := 'incDecStepText'.
            recoveredPC := 1700.
        ].
        recoveredStep = 1700 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 1703.
        ].
        recoveredStep = 1703 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1705.
        ].
        recoveredStep = 1705 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 1708.
        ].
        recoveredStep = 1708 ifTrue: [
            recoveredStack2 := 'foregroundColorList'.
            recoveredPC := 1712.
        ].
        recoveredStep = 1712 ifTrue: [
            recoveredStack3 := [:block28132ac0Arg1 | 
    | block28132ac0Value0 block28132ac0Value1 block28132ac0Value2 block28132ac0Value3 block28132ac0Value4 |
    block28132ac0Value0 := block28132ac0Arg1.
    block28132ac0Value1 := block28132ac0Value0.
    (block28132ac0Value1) itemWidth: (20).
    block28132ac0Value2 := block28132ac0Value0.
    block28132ac0Value3 := XmTOGETHER.
    (block28132ac0Value2) emphasisPolicy: (block28132ac0Value3).
    block28132ac0Value4 := (block28132ac0Value0) itemHeight: (17).
    block28132ac0Value4
].
            recoveredPC := 1716.
        ].
        recoveredStep = 1716 ifTrue: [
            recoveredPC := 1744.
        ].
        recoveredStep = 1744 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasScrolledIconList: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1749.
        ].
        recoveredStep = 1749 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1751.
        ].
        recoveredStep = 1751 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 1754.
        ].
        recoveredStep = 1754 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1757.
        ].
        recoveredStep = 1757 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 1761.
        ].
        recoveredStep = 1761 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 1764.
        ].
        recoveredStep = 1764 ifTrue: [
            recoveredStack1 := recoveredLocal31.
            recoveredPC := 1767.
        ].
        recoveredStep = 1767 ifTrue: [
            recoveredStack2 := 'aScrolledIconList1'.
            recoveredPC := 1770.
        ].
        recoveredStep = 1770 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 1773.
        ].
        recoveredStep = 1773 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1775.
        ].
        recoveredStep = 1775 ifTrue: [
            recoveredStack1 := recoveredLocal31.
            recoveredPC := 1778.
        ].
        recoveredStep = 1778 ifTrue: [
            recoveredStack2 := 'foregroundColorList'.
            recoveredPC := 1782.
        ].
        recoveredStep = 1782 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 1785.
        ].
        recoveredStep = 1785 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1787.
        ].
        recoveredStep = 1787 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 1790.
        ].
        recoveredStep = 1790 ifTrue: [
            recoveredStack2 := 'backgroundColorList'.
            recoveredPC := 1794.
        ].
        recoveredStep = 1794 ifTrue: [
            recoveredStack3 := [:block28132ae4Arg1 | 
    | block28132ae4Value0 block28132ae4Value1 block28132ae4Value2 block28132ae4Value3 |
    block28132ae4Value0 := block28132ae4Arg1.
    block28132ae4Value1 := block28132ae4Value0.
    block28132ae4Value2 := XmTOGETHER.
    (block28132ae4Value1) emphasisPolicy: (block28132ae4Value2).
    block28132ae4Value3 := (block28132ae4Value0) itemHeight: (17).
    block28132ae4Value3
].
            recoveredPC := 1798.
        ].
        recoveredStep = 1798 ifTrue: [
            recoveredPC := 1820.
        ].
        recoveredStep = 1820 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasScrolledIconList: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1825.
        ].
        recoveredStep = 1825 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1827.
        ].
        recoveredStep = 1827 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 1830.
        ].
        recoveredStep = 1830 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1833.
        ].
        recoveredStep = 1833 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 1837.
        ].
        recoveredStep = 1837 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 1840.
        ].
        recoveredStep = 1840 ifTrue: [
            recoveredStack1 := recoveredLocal31.
            recoveredPC := 1843.
        ].
        recoveredStep = 1843 ifTrue: [
            recoveredStack2 := 'aScrolledIconList2'.
            recoveredPC := 1846.
        ].
        recoveredStep = 1846 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 1849.
        ].
        recoveredStep = 1849 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1851.
        ].
        recoveredStep = 1851 ifTrue: [
            recoveredStack1 := recoveredLocal31.
            recoveredPC := 1854.
        ].
        recoveredStep = 1854 ifTrue: [
            recoveredStack2 := 'backgroundColorList'.
            recoveredPC := 1858.
        ].
        recoveredStep = 1858 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 1861.
        ].
        recoveredStep = 1861 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1863.
        ].
        recoveredStep = 1863 ifTrue: [
            recoveredStack1 := recoveredLocal29.
            recoveredPC := 1866.
        ].
        recoveredStep = 1866 ifTrue: [
            recoveredStack2 := [:recoveredBlock1866Arg1 | 
    | recoveredBlock1866Value0 recoveredBlock1866Value1 recoveredBlock1866Value2 |
    recoveredBlock1866Value0 := recoveredBlock1866Arg1.
    recoveredBlock1866Value1 := recoveredLocal28.
    recoveredBlock1866Value2 := (recoveredBlock1866Value0) workWindow: (recoveredBlock1866Value1).
    recoveredBlock1866Value2
].
            recoveredPC := 1882.
        ].
        recoveredStep = 1882 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1887.
        ].
        recoveredStep = 1887 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 1890.
        ].
        recoveredStep = 1890 ifTrue: [
            recoveredStack2 := [:recoveredBlock1890Arg1 | 
    | recoveredBlock1890Value0 recoveredBlock1890Value1 recoveredBlock1890Value2 recoveredBlock1890Value3 recoveredBlock1890Value4 |
    recoveredBlock1890Value0 := recoveredBlock1890Arg1.
    recoveredBlock1890Value1 := recoveredBlock1890Value0.
    recoveredBlock1890Value2 := XmATTACHWIDGET.
    (recoveredBlock1890Value1) topAttachment: (recoveredBlock1890Value2).
    recoveredBlock1890Value3 := recoveredLocal14.
    recoveredBlock1890Value4 := (recoveredBlock1890Value0) topWidget: (recoveredBlock1890Value3).
    recoveredBlock1890Value4
].
            recoveredPC := 1916.
        ].
        recoveredStep = 1916 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1921.
        ].
        recoveredStep = 1921 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 1924.
        ].
        recoveredStep = 1924 ifTrue: [
            recoveredStack2 := [:recoveredBlock1924Arg1 | 
    | recoveredBlock1924Value0 recoveredBlock1924Value1 recoveredBlock1924Value2 recoveredBlock1924Value3 recoveredBlock1924Value4 recoveredBlock1924Value5 |
    recoveredBlock1924Value0 := recoveredBlock1924Arg1.
    recoveredBlock1924Value1 := recoveredBlock1924Value0.
    recoveredBlock1924Value2 := XmATTACHWIDGET.
    (recoveredBlock1924Value1) topAttachment: (recoveredBlock1924Value2).
    recoveredBlock1924Value3 := recoveredBlock1924Value0.
    recoveredBlock1924Value4 := recoveredLocal4.
    (recoveredBlock1924Value3) topWidget: (recoveredBlock1924Value4).
    recoveredBlock1924Value5 := (recoveredBlock1924Value0) topOffset: (5).
    recoveredBlock1924Value5
].
            recoveredPC := 1956.
        ].
        recoveredStep = 1956 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1961.
        ].
        recoveredStep = 1961 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 1964.
        ].
        recoveredStep = 1964 ifTrue: [
            recoveredStack2 := [:recoveredBlock1964Arg1 | 
    | recoveredBlock1964Value0 recoveredBlock1964Value1 recoveredBlock1964Value2 recoveredBlock1964Value3 recoveredBlock1964Value4 recoveredBlock1964Value5 |
    recoveredBlock1964Value0 := recoveredBlock1964Arg1.
    recoveredBlock1964Value1 := recoveredBlock1964Value0.
    recoveredBlock1964Value2 := XmATTACHWIDGET.
    (recoveredBlock1964Value1) topAttachment: (recoveredBlock1964Value2).
    recoveredBlock1964Value3 := recoveredBlock1964Value0.
    recoveredBlock1964Value4 := recoveredLocal2.
    (recoveredBlock1964Value3) topWidget: (recoveredBlock1964Value4).
    recoveredBlock1964Value5 := (recoveredBlock1964Value0) topOffset: (5).
    recoveredBlock1964Value5
].
            recoveredPC := 1996.
        ].
        recoveredStep = 1996 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2001.
        ].
        recoveredStep = 2001 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 2004.
        ].
        recoveredStep = 2004 ifTrue: [
            recoveredStack2 := [:recoveredBlock2004Arg1 | 
    | recoveredBlock2004Value0 recoveredBlock2004Value1 recoveredBlock2004Value2 recoveredBlock2004Value3 recoveredBlock2004Value4 recoveredBlock2004Value5 recoveredBlock2004Value6 recoveredBlock2004Value7 recoveredBlock2004Value8 recoveredBlock2004Value9 |
    recoveredBlock2004Value0 := recoveredBlock2004Arg1.
    recoveredBlock2004Value1 := recoveredBlock2004Value0.
    recoveredBlock2004Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock2004Value1) leftAttachment: (recoveredBlock2004Value2).
    recoveredBlock2004Value3 := recoveredBlock2004Value0.
    recoveredBlock2004Value4 := recoveredLocal2.
    (recoveredBlock2004Value3) leftWidget: (recoveredBlock2004Value4).
    recoveredBlock2004Value5 := recoveredBlock2004Value0.
    (recoveredBlock2004Value5) leftOffset: (-10).
    recoveredBlock2004Value6 := recoveredBlock2004Value0.
    recoveredBlock2004Value7 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock2004Value6) rightAttachment: (recoveredBlock2004Value7).
    recoveredBlock2004Value8 := recoveredLocal2.
    recoveredBlock2004Value9 := (recoveredBlock2004Value0) rightWidget: (recoveredBlock2004Value8).
    recoveredBlock2004Value9
].
            recoveredPC := 2052.
        ].
        recoveredStep = 2052 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2057.
        ].
        recoveredStep = 2057 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 2060.
        ].
        recoveredStep = 2060 ifTrue: [
            recoveredStack2 := [:recoveredBlock2060Arg1 | 
    | recoveredBlock2060Value0 recoveredBlock2060Value1 recoveredBlock2060Value2 recoveredBlock2060Value3 recoveredBlock2060Value4 recoveredBlock2060Value5 |
    recoveredBlock2060Value0 := recoveredBlock2060Arg1.
    recoveredBlock2060Value1 := recoveredBlock2060Value0.
    recoveredBlock2060Value2 := XmATTACHWIDGET.
    (recoveredBlock2060Value1) topAttachment: (recoveredBlock2060Value2).
    recoveredBlock2060Value3 := recoveredBlock2060Value0.
    recoveredBlock2060Value4 := recoveredLocal20.
    (recoveredBlock2060Value3) topWidget: (recoveredBlock2060Value4).
    recoveredBlock2060Value5 := (recoveredBlock2060Value0) topOffset: (5).
    recoveredBlock2060Value5
].
            recoveredPC := 2092.
        ].
        recoveredStep = 2092 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2097.
        ].
        recoveredStep = 2097 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 2100.
        ].
        recoveredStep = 2100 ifTrue: [
            recoveredStack2 := [:block28132b08Arg1 | 
    | block28132b08Value0 block28132b08Value1 block28132b08Value2 block28132b08Value3 block28132b08Value4 |
    block28132b08Value0 := block28132b08Arg1.
    block28132b08Value1 := block28132b08Value0.
    block28132b08Value2 := XmATTACHFORM.
    (block28132b08Value1) bottomAttachment: (block28132b08Value2).
    block28132b08Value3 := XmATTACHFORM.
    block28132b08Value4 := (block28132b08Value0) topAttachment: (block28132b08Value3).
    block28132b08Value4
].
            recoveredPC := 2104.
        ].
        recoveredStep = 2104 ifTrue: [
            recoveredPC := 2128.
        ].
        recoveredStep = 2128 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2133.
        ].
        recoveredStep = 2133 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 2136.
        ].
        recoveredStep = 2136 ifTrue: [
            recoveredStack2 := [:recoveredBlock2136Arg1 | 
    | recoveredBlock2136Value0 recoveredBlock2136Value1 recoveredBlock2136Value2 recoveredBlock2136Value3 recoveredBlock2136Value4 recoveredBlock2136Value5 recoveredBlock2136Value6 recoveredBlock2136Value7 recoveredBlock2136Value8 recoveredBlock2136Value9 |
    recoveredBlock2136Value0 := recoveredBlock2136Arg1.
    recoveredBlock2136Value1 := recoveredBlock2136Value0.
    recoveredBlock2136Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock2136Value1) leftAttachment: (recoveredBlock2136Value2).
    recoveredBlock2136Value3 := recoveredBlock2136Value0.
    recoveredBlock2136Value4 := recoveredLocal4.
    (recoveredBlock2136Value3) leftWidget: (recoveredBlock2136Value4).
    recoveredBlock2136Value5 := recoveredBlock2136Value0.
    (recoveredBlock2136Value5) leftOffset: (-10).
    recoveredBlock2136Value6 := recoveredBlock2136Value0.
    recoveredBlock2136Value7 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock2136Value6) rightAttachment: (recoveredBlock2136Value7).
    recoveredBlock2136Value8 := recoveredLocal4.
    recoveredBlock2136Value9 := (recoveredBlock2136Value0) rightWidget: (recoveredBlock2136Value8).
    recoveredBlock2136Value9
].
            recoveredPC := 2184.
        ].
        recoveredStep = 2184 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2189.
        ].
        recoveredStep = 2189 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 2192.
        ].
        recoveredStep = 2192 ifTrue: [
            recoveredStack2 := [:recoveredBlock2192Arg1 | 
    | recoveredBlock2192Value0 recoveredBlock2192Value1 recoveredBlock2192Value2 recoveredBlock2192Value3 recoveredBlock2192Value4 recoveredBlock2192Value5 |
    recoveredBlock2192Value0 := recoveredBlock2192Arg1.
    recoveredBlock2192Value1 := recoveredBlock2192Value0.
    recoveredBlock2192Value2 := XmATTACHWIDGET.
    (recoveredBlock2192Value1) topAttachment: (recoveredBlock2192Value2).
    recoveredBlock2192Value3 := recoveredBlock2192Value0.
    recoveredBlock2192Value4 := recoveredLocal7.
    (recoveredBlock2192Value3) topWidget: (recoveredBlock2192Value4).
    recoveredBlock2192Value5 := (recoveredBlock2192Value0) topOffset: (5).
    recoveredBlock2192Value5
].
            recoveredPC := 2224.
        ].
        recoveredStep = 2224 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2229.
        ].
        recoveredStep = 2229 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 2232.
        ].
        recoveredStep = 2232 ifTrue: [
            recoveredStack2 := [:recoveredBlock2232Arg1 | 
    | recoveredBlock2232Value0 recoveredBlock2232Value1 recoveredBlock2232Value2 recoveredBlock2232Value3 recoveredBlock2232Value4 recoveredBlock2232Value5 recoveredBlock2232Value6 recoveredBlock2232Value7 recoveredBlock2232Value8 |
    recoveredBlock2232Value0 := recoveredBlock2232Arg1.
    recoveredBlock2232Value1 := recoveredBlock2232Value0.
    recoveredBlock2232Value2 := XmATTACHWIDGET.
    (recoveredBlock2232Value1) topAttachment: (recoveredBlock2232Value2).
    recoveredBlock2232Value3 := recoveredBlock2232Value0.
    recoveredBlock2232Value4 := recoveredLocal22.
    (recoveredBlock2232Value3) topWidget: (recoveredBlock2232Value4).
    recoveredBlock2232Value5 := recoveredBlock2232Value0.
    recoveredBlock2232Value6 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock2232Value5) leftAttachment: (recoveredBlock2232Value6).
    recoveredBlock2232Value7 := recoveredLocal14.
    recoveredBlock2232Value8 := (recoveredBlock2232Value0) leftWidget: (recoveredBlock2232Value7).
    recoveredBlock2232Value8
].
            recoveredPC := 2274.
        ].
        recoveredStep = 2274 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2279.
        ].
        recoveredStep = 2279 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 2282.
        ].
        recoveredStep = 2282 ifTrue: [
            recoveredStack2 := [:recoveredBlock2282Arg1 | 
    | recoveredBlock2282Value0 recoveredBlock2282Value1 recoveredBlock2282Value2 recoveredBlock2282Value3 recoveredBlock2282Value4 recoveredBlock2282Value5 recoveredBlock2282Value6 recoveredBlock2282Value7 recoveredBlock2282Value8 recoveredBlock2282Value9 recoveredBlock2282Value10 recoveredBlock2282Value11 recoveredBlock2282Value12 |
    recoveredBlock2282Value0 := recoveredBlock2282Arg1.
    recoveredBlock2282Value1 := recoveredBlock2282Value0.
    recoveredBlock2282Value2 := XmATTACHWIDGET.
    (recoveredBlock2282Value1) topAttachment: (recoveredBlock2282Value2).
    recoveredBlock2282Value3 := recoveredBlock2282Value0.
    recoveredBlock2282Value4 := recoveredLocal6.
    (recoveredBlock2282Value3) topWidget: (recoveredBlock2282Value4).
    recoveredBlock2282Value5 := recoveredBlock2282Value0.
    recoveredBlock2282Value6 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock2282Value5) leftAttachment: (recoveredBlock2282Value6).
    recoveredBlock2282Value7 := recoveredBlock2282Value0.
    recoveredBlock2282Value8 := recoveredLocal22.
    (recoveredBlock2282Value7) leftWidget: (recoveredBlock2282Value8).
    recoveredBlock2282Value9 := recoveredBlock2282Value0.
    recoveredBlock2282Value10 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock2282Value9) rightAttachment: (recoveredBlock2282Value10).
    recoveredBlock2282Value11 := recoveredLocal7.
    recoveredBlock2282Value12 := (recoveredBlock2282Value0) rightWidget: (recoveredBlock2282Value11).
    recoveredBlock2282Value12
].
            recoveredPC := 2340.
        ].
        recoveredStep = 2340 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2345.
        ].
        recoveredStep = 2345 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 2348.
        ].
        recoveredStep = 2348 ifTrue: [
            recoveredStack2 := [:block28132b2cArg1 | 
    | block28132b2cValue0 block28132b2cValue1 block28132b2cValue2 block28132b2cValue3 block28132b2cValue4 |
    block28132b2cValue0 := block28132b2cArg1.
    block28132b2cValue1 := block28132b2cValue0.
    (block28132b2cValue1) x: (155).
    block28132b2cValue2 := block28132b2cValue0.
    (block28132b2cValue2) y: (30).
    block28132b2cValue3 := block28132b2cValue0.
    (block28132b2cValue3) height: (110).
    block28132b2cValue4 := (block28132b2cValue0) width: (110).
    block28132b2cValue4
].
            recoveredPC := 2352.
        ].
        recoveredStep = 2352 ifTrue: [
            recoveredPC := 2383.
        ].
        recoveredStep = 2383 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2387.
        ].
        recoveredStep = 2387 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 2390.
        ].
        recoveredStep = 2390 ifTrue: [
            recoveredStack2 := [:block28132b50Arg1 | 
    | block28132b50Value0 block28132b50Value1 block28132b50Value2 block28132b50Value3 block28132b50Value4 |
    block28132b50Value0 := block28132b50Arg1.
    block28132b50Value1 := block28132b50Value0.
    (block28132b50Value1) x: (155).
    block28132b50Value2 := block28132b50Value0.
    (block28132b50Value2) y: (195).
    block28132b50Value3 := block28132b50Value0.
    (block28132b50Value3) height: (110).
    block28132b50Value4 := (block28132b50Value0) width: (110).
    block28132b50Value4
].
            recoveredPC := 2394.
        ].
        recoveredStep = 2394 ifTrue: [
            recoveredPC := 2425.
        ].
        recoveredStep = 2425 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2429.
        ].
        recoveredStep = 2429 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 2432.
        ].
        recoveredStep = 2432 ifTrue: [
            recoveredStack2 := XmNdestroyCallback.
            recoveredPC := 2436.
        ].
        recoveredStep = 2436 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2437.
        ].
        recoveredStep = 2437 ifTrue: [
            recoveredStack4 := 'aForm1Destroy:clientData:callData:'.
            recoveredPC := 2440.
        ].
        recoveredStep = 2440 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2441.
        ].
        recoveredStep = 2441 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2445.
        ].
        recoveredStep = 2445 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 2448.
        ].
        recoveredStep = 2448 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 2452.
        ].
        recoveredStep = 2452 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2453.
        ].
        recoveredStep = 2453 ifTrue: [
            recoveredStack4 := 'textLosing:clientData:callData:'.
            recoveredPC := 2456.
        ].
        recoveredStep = 2456 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2457.
        ].
        recoveredStep = 2457 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2461.
        ].
        recoveredStep = 2461 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 2464.
        ].
        recoveredStep = 2464 ifTrue: [
            recoveredStack2 := XmNfocusCallback.
            recoveredPC := 2468.
        ].
        recoveredStep = 2468 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2469.
        ].
        recoveredStep = 2469 ifTrue: [
            recoveredStack4 := 'textFocus:clientData:callData:'.
            recoveredPC := 2472.
        ].
        recoveredStep = 2472 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2473.
        ].
        recoveredStep = 2473 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2477.
        ].
        recoveredStep = 2477 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 2480.
        ].
        recoveredStep = 2480 ifTrue: [
            recoveredStack2 := XmNfocusCallback.
            recoveredPC := 2484.
        ].
        recoveredStep = 2484 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2485.
        ].
        recoveredStep = 2485 ifTrue: [
            recoveredStack4 := 'textFocus:clientData:callData:'.
            recoveredPC := 2488.
        ].
        recoveredStep = 2488 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2489.
        ].
        recoveredStep = 2489 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2493.
        ].
        recoveredStep = 2493 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 2496.
        ].
        recoveredStep = 2496 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 2500.
        ].
        recoveredStep = 2500 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2501.
        ].
        recoveredStep = 2501 ifTrue: [
            recoveredStack4 := 'textLosing:clientData:callData:'.
            recoveredPC := 2504.
        ].
        recoveredStep = 2504 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2505.
        ].
        recoveredStep = 2505 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2509.
        ].
        recoveredStep = 2509 ifTrue: [
            recoveredStack1 := recoveredLocal25.
            recoveredPC := 2512.
        ].
        recoveredStep = 2512 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2516.
        ].
        recoveredStep = 2516 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2517.
        ].
        recoveredStep = 2517 ifTrue: [
            recoveredStack4 := 'okButtonActivate:clientData:callData:'.
            recoveredPC := 2520.
        ].
        recoveredStep = 2520 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2521.
        ].
        recoveredStep = 2521 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2525.
        ].
        recoveredStep = 2525 ifTrue: [
            recoveredStack1 := recoveredLocal24.
            recoveredPC := 2528.
        ].
        recoveredStep = 2528 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2532.
        ].
        recoveredStep = 2532 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2533.
        ].
        recoveredStep = 2533 ifTrue: [
            recoveredStack4 := 'cancelActivate:clientData:callData:'.
            recoveredPC := 2536.
        ].
        recoveredStep = 2536 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2537.
        ].
        recoveredStep = 2537 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2541.
        ].
        recoveredStep = 2541 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 2544.
        ].
        recoveredStep = 2544 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 2548.
        ].
        recoveredStep = 2548 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2549.
        ].
        recoveredStep = 2549 ifTrue: [
            recoveredStack4 := 'textLosing:clientData:callData:'.
            recoveredPC := 2552.
        ].
        recoveredStep = 2552 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2553.
        ].
        recoveredStep = 2553 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2557.
        ].
        recoveredStep = 2557 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 2560.
        ].
        recoveredStep = 2560 ifTrue: [
            recoveredStack2 := XmNfocusCallback.
            recoveredPC := 2564.
        ].
        recoveredStep = 2564 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2565.
        ].
        recoveredStep = 2565 ifTrue: [
            recoveredStack4 := 'textFocus:clientData:callData:'.
            recoveredPC := 2568.
        ].
        recoveredStep = 2568 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2569.
        ].
        recoveredStep = 2569 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2573.
        ].
        recoveredStep = 2573 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 2576.
        ].
        recoveredStep = 2576 ifTrue: [
            recoveredStack2 := XmNfocusCallback.
            recoveredPC := 2580.
        ].
        recoveredStep = 2580 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2581.
        ].
        recoveredStep = 2581 ifTrue: [
            recoveredStack4 := 'textFocus:clientData:callData:'.
            recoveredPC := 2584.
        ].
        recoveredStep = 2584 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2585.
        ].
        recoveredStep = 2585 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2589.
        ].
        recoveredStep = 2589 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 2592.
        ].
        recoveredStep = 2592 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 2596.
        ].
        recoveredStep = 2596 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2597.
        ].
        recoveredStep = 2597 ifTrue: [
            recoveredStack4 := 'textLosing:clientData:callData:'.
            recoveredPC := 2600.
        ].
        recoveredStep = 2600 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2601.
        ].
        recoveredStep = 2601 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2605.
        ].
        recoveredStep = 2605 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 2608.
        ].
        recoveredStep = 2608 ifTrue: [
            recoveredStack2 := XmNmodifyVerifyCallback.
            recoveredPC := 2612.
        ].
        recoveredStep = 2612 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2613.
        ].
        recoveredStep = 2613 ifTrue: [
            recoveredStack4 := 'incDecStepTextModify:clientData:callData:'.
            recoveredPC := 2616.
        ].
        recoveredStep = 2616 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2617.
        ].
        recoveredStep = 2617 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2621.
        ].
        recoveredStep = 2621 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 2624.
        ].
        recoveredStep = 2624 ifTrue: [
            recoveredStack2 := XmNbrowseSelectionCallback.
            recoveredPC := 2628.
        ].
        recoveredStep = 2628 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2629.
        ].
        recoveredStep = 2629 ifTrue: [
            recoveredStack4 := 'anIconList1browseSelectionCallback:clientData:callData:'.
            recoveredPC := 2632.
        ].
        recoveredStep = 2632 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2633.
        ].
        recoveredStep = 2633 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2637.
        ].
        recoveredStep = 2637 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2640.
        ].
        recoveredStep = 2640 ifTrue: [
            recoveredStack2 := XmNbrowseSelectionCallback.
            recoveredPC := 2644.
        ].
        recoveredStep = 2644 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2645.
        ].
        recoveredStep = 2645 ifTrue: [
            recoveredStack4 := 'anIconList2browseSelectionCallback:clientData:callData:'.
            recoveredPC := 2648.
        ].
        recoveredStep = 2648 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2649.
        ].
        recoveredStep = 2649 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2653.
        ].
        recoveredStep = 2653 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 2656.
        ].
        recoveredStep = 2656 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2661.
        ].
        recoveredStep = 2661 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 2664.
        ].
        recoveredStep = 2664 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2669.
        ].
        recoveredStep = 2669 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 2672.
        ].
        recoveredStep = 2672 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2677.
        ].
        recoveredStep = 2677 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 2680.
        ].
        recoveredStep = 2680 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2685.
        ].
        recoveredStep = 2685 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 2688.
        ].
        recoveredStep = 2688 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2693.
        ].
        recoveredStep = 2693 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 2696.
        ].
        recoveredStep = 2696 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2701.
        ].
        recoveredStep = 2701 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2704.
        ].
        recoveredStep = 2704 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2709.
        ].
        recoveredStep = 2709 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 2712.
        ].
        recoveredStep = 2712 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2717.
        ].
        recoveredStep = 2717 ifTrue: [
            recoveredStack1 := recoveredLocal25.
            recoveredPC := 2720.
        ].
        recoveredStep = 2720 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2725.
        ].
        recoveredStep = 2725 ifTrue: [
            recoveredStack1 := recoveredLocal24.
            recoveredPC := 2728.
        ].
        recoveredStep = 2728 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2733.
        ].
        recoveredStep = 2733 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 2736.
        ].
        recoveredStep = 2736 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2741.
        ].
        recoveredStep = 2741 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 2744.
        ].
        recoveredStep = 2744 ifTrue: [
            recoveredStack2 := recoveredLocal31.
            recoveredPC := 2747.
        ].
        recoveredStep = 2747 ifTrue: [
            recoveredStack3 := recoveredLocal29.
            recoveredPC := 2750.
        ].
        recoveredStep = 2750 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 2755.
        ].
        recoveredStep = 2755 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

