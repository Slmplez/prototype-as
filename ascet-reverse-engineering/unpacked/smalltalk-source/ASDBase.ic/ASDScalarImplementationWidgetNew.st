"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001000; bytecode file offset 0x8ffcfc"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
widgetASDScalarImplWidget
    ^self
! !

"ASDBase.ic method 0x20005f4c; bytecode file offset 0x902de8"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
widgetModelQuantizationModify: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x20005fd4; bytecode file offset 0x902de8"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
menuRequest: recoveredArg1 clientData: recoveredArg2 event: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x20007bec; bytecode file offset 0x908be4"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
implMaxMenuValues
    | recoveredValue0 |
    recoveredValue0 := (self) modelMaxMenuValues.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000bc9c; bytecode file offset 0x908be4"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
implMinMenuValues
    | recoveredValue0 |
    recoveredValue0 := (self) modelMinMenuValues.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003ed18; bytecode file offset 0x93bf94"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
pasteStringFromClipboard
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSClipboard.
    recoveredValue1 := (recoveredValue0) getString.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004299c; bytecode file offset 0x9451f8"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
widgetImplType
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetImplType').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20042eac; bytecode file offset 0x9451f8"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
widgetModelType
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetModelType').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004329c; bytecode file offset 0x9451f8"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
widgetModelQuantization
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetModelQuantization').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20043d0c; bytecode file offset 0x9451f8"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
widgetImplMax
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetImplMax').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20043eec; bytecode file offset 0x9451f8"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
widgetConversionString
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetConversionString').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200440bc; bytecode file offset 0x9451f8"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
widgetImplMin
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetImplMin').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200444dc; bytecode file offset 0x9451f8"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
widgetRescalable
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetRescalable').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004515c; bytecode file offset 0x9451f8"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
widgetImplMaster
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetImplMaster').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004753c; bytecode file offset 0x9451f8"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
widgetModelMin
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetModelMin').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004770c; bytecode file offset 0x9451f8"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
widgetModelMax
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetModelMax').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200483ec; bytecode file offset 0x9451f8"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
widgetModelMaster
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetModelMaster').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200484cc; bytecode file offset 0x9451f8"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
widgetFormulaQuantization
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetFormulaQuantization').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200485fc; bytecode file offset 0x9451f8"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
widgetFormula
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetFormula').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005a3bc; bytecode file offset 0x957a6c"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
widgetModelQuantizationLosing: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) changeModelQuantization.
    ^self
! !

"ASDBase.ic method 0x2005a644; bytecode file offset 0x957a6c"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
widgetImplMinActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) implIntervalChanged.
    ^self
! !

"ASDBase.ic method 0x2005a8fc; bytecode file offset 0x957a6c"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
widgetModelMaxActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) modelIntervalChanged.
    ^self
! !

"ASDBase.ic method 0x2005a908; bytecode file offset 0x957a6c"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
widgetImplMinLosing: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) implIntervalChanged.
    ^self
! !

"ASDBase.ic method 0x2005aa04; bytecode file offset 0x957a6c"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
widgetImplTypeSingle: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) implTypeChanged.
    ^self
! !

"ASDBase.ic method 0x2005aaac; bytecode file offset 0x957a6c"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
widgetImplMaxLosing: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) implIntervalChanged.
    ^self
! !

"ASDBase.ic method 0x2005ac80; bytecode file offset 0x957a6c"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
widgetModelMinLosing: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) modelIntervalChanged.
    ^self
! !

"ASDBase.ic method 0x2005acd4; bytecode file offset 0x957a6c"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
widgetImplMaxActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) implIntervalChanged.
    ^self
! !

"ASDBase.ic method 0x2005afb0; bytecode file offset 0x957a6c"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
widgetModelMaxLosing: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) modelIntervalChanged.
    ^self
! !

"ASDBase.ic method 0x2005afd4; bytecode file offset 0x957a6c"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
widgetModelMinActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) modelIntervalChanged.
    ^self
! !

"ASDBase.ic method 0x2005b04c; bytecode file offset 0x957a6c"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
widgetModelQuantizationActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) changeModelQuantization.
    ^self
! !

"ASDBase.ic method 0x2005b264; bytecode file offset 0x957b40"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
widgetLosingFocus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) clearSelection.
    ^self
! !

"ASDBase.ic method 0x2009f414; bytecode file offset 0x99c9e0"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
menuCopyModelMinToClipboard
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetModelMin.
    recoveredValue1 := (recoveredValue0) value.
    (self) copyStringToClipboard: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f4a0; bytecode file offset 0x99c9e0"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
menuSetModelMinToDefault
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetCtrl.
    recoveredValue1 := (recoveredValue0) getPhysBoundsLeft.
    (self) menuSetModelMinTo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f66c; bytecode file offset 0x99c9e0"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
menuCopyImplMinToClipboard
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetImplMin.
    recoveredValue1 := (recoveredValue0) value.
    (self) copyStringToClipboard: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f810; bytecode file offset 0x99c9e0"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
menuSetImplMinToDefault
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetCtrl.
    recoveredValue1 := (recoveredValue0) getImplBoundsLeft.
    (self) menuSetImplMinTo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009fc70; bytecode file offset 0x99c9e0"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
menuCopyImplMaxToClipboard
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetImplMax.
    recoveredValue1 := (recoveredValue0) value.
    (self) copyStringToClipboard: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009fd24; bytecode file offset 0x99c9e0"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
menuCopyModelMaxToClipboard
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetModelMax.
    recoveredValue1 := (recoveredValue0) value.
    (self) copyStringToClipboard: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009fd60; bytecode file offset 0x99c9e0"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
menuSetImplMaxToDefault
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetCtrl.
    recoveredValue1 := (recoveredValue0) getImplBoundsRight.
    (self) menuSetImplMaxTo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009fedc; bytecode file offset 0x99c9e0"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
menuSetModelMaxToDefault
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetCtrl.
    recoveredValue1 := (recoveredValue0) getPhysBoundsRight.
    (self) menuSetModelMaxTo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c5108; bytecode file offset 0x9c1afc"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
implIntervalChangedCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    implIntervalChangedCallback := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c52e8; bytecode file offset 0x9c1f64"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
modelIntervalChangedCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    modelIntervalChangedCallback := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c59ac; bytecode file offset 0x9c22c8"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
formulaChangedCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    formulaChangedCallback := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200dd718; bytecode file offset 0x9da054"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
widgetRescalableValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    (self) changeRescalable.
    recoveredValue0 := (self) widgetCtrl.
    recoveredValue1 := (recoveredValue0) userInterface.
    (recoveredValue1) update.
    ^self
! !

"ASDBase.ic method 0x200ddfd8; bytecode file offset 0x9da8ac"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
widgetGettingFocus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) getLastPosition.
    recoveredValue3 := (0) @ (recoveredValue2).
    (recoveredValue0) setSelection: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200e6b48; bytecode file offset 0x9e3424"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
copyStringToClipboard: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSClipboard.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) reset.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asString.
    (recoveredValue0) setString: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200eae08; bytecode file offset 0x9e7714"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
menuSetImplMaxTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) widgetImplMax.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) printString.
    (recoveredValue0) value: (recoveredValue2).
    (self) implIntervalChanged.
    ^self
! !

"ASDBase.ic method 0x200eae20; bytecode file offset 0x9e7714"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
menuSetImplMinTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) widgetImplMin.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) printString.
    (recoveredValue0) value: (recoveredValue2).
    (self) implIntervalChanged.
    ^self
! !

"ASDBase.ic method 0x200eae38; bytecode file offset 0x9e7714"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
menuSetModelMaxTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) widgetModelMax.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) printString.
    (recoveredValue0) value: (recoveredValue2).
    (self) modelIntervalChanged.
    ^self
! !

"ASDBase.ic method 0x200eae50; bytecode file offset 0x9e7714"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
menuSetModelMinTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) widgetModelMin.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) printString.
    (recoveredValue0) value: (recoveredValue2).
    (self) modelIntervalChanged.
    ^self
! !

"ASDBase.ic method 0x200f8e24; bytecode file offset 0x9f56f0"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
initRescaled
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) widgetRescalable.
    recoveredValue1 := (self) widgetCtrl.
    recoveredValue2 := (recoveredValue1) dataElement.
    recoveredValue3 := (recoveredValue2) extraImplInfo.
    recoveredValue4 := (recoveredValue3) isRescaled.
    (recoveredValue0) set: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x200f99c8; bytecode file offset 0x9f6294"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
changeRescalable
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) widgetCtrl.
    recoveredValue1 := (recoveredValue0) dataElement.
    recoveredValue2 := (recoveredValue1) extraImplInfo.
    recoveredValue3 := (self) widgetRescalable.
    recoveredValue4 := (recoveredValue3) set.
    (recoveredValue2) rescaled: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20112804; bytecode file offset 0xa0f0f0"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
menuPasteImplMaxFromClipboard
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) pasteStringFromClipboard.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) menuSetImplMaxTo: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20112814; bytecode file offset 0xa0f0f0"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
menuPasteImplMinFromClipboard
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) pasteStringFromClipboard.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) menuSetImplMinTo: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20112824; bytecode file offset 0xa0f0f0"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
menuPasteModelMinFromClipboard
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) pasteStringFromClipboard.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) menuSetModelMinTo: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20112834; bytecode file offset 0xa0f0f0"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
menuPasteModelMaxFromClipboard
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) pasteStringFromClipboard.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) menuSetModelMaxTo: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012be04; bytecode file offset 0xa286c8"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
widgetModelMinMaxAreEmpty
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetModelMin.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEmpty.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetModelMax.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2015d7bc; bytecode file offset 0xa5a07c"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
implIntervalChangedCallback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := implIntervalChangedCallback.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) implIntervalChangedCallback: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := implIntervalChangedCallback.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2015d8c0; bytecode file offset 0xa5a1bc"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
modelIntervalChangedCallback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := modelIntervalChangedCallback.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) modelIntervalChangedCallback: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := modelIntervalChangedCallback.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2015d9a4; bytecode file offset 0xa5a278"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
formulaChangedCallback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := formulaChangedCallback.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) formulaChangedCallback: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := formulaChangedCallback.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201a91f0; bytecode file offset 0xaa5ac0"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
widgetImplMasterValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) set.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) setImplementationMaster.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) update.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201bd228; bytecode file offset 0xab9af4"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
printLabelConversionData: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) supportsFormula.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) printFormula.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'not applicable'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetConversionString.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d4358; bytecode file offset 0xad0c2c"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
widgetFormulaSingle: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsFormula.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFormula.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObject.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) changeFormulaTo: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) update.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20253d44; bytecode file offset 0xb5061c"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
initContextMenus
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) widgetImplMin.
    recoveredValue1 := (self) createImplMinMenu.
    (recoveredValue0) menu: (recoveredValue1) owner: (self).
    recoveredValue2 := (self) widgetImplMax.
    recoveredValue3 := (self) createImplMaxMenu.
    (recoveredValue2) menu: (recoveredValue3) owner: (self).
    recoveredValue4 := (self) widgetModelMin.
    recoveredValue5 := (self) createModelMinMenu.
    (recoveredValue4) menu: (recoveredValue5) owner: (self).
    recoveredValue6 := (self) widgetModelMax.
    recoveredValue7 := (self) createModelMaxMenu.
    (recoveredValue6) menu: (recoveredValue7) owner: (self).
    ^self
! !

"ASDBase.ic method 0x20275b6c; bytecode file offset 0xb72444"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
updateModelWidgets
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetModelMin.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetModelMin.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCtrl.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataElement.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPhysInterval.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetModelMax.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetModelMax.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCtrl.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataElement.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPhysInterval.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20285ee4; bytecode file offset 0xb827c8"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
widgetModelMasterValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) set.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) setModelMaster.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := ASDGeneralOptions.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionAutomaticallySelectImplementationType.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) updateImplType.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) updateImplWidgets.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) update.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c7e90; bytecode file offset 0xbc47ac"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := DirectedMessage.
    recoveredValue5 := (recoveredValue4) selector: ('pasteImplementation') arguments: (#()) receiver: (self).
    (recoveredValue3) at: ('Alt-p') put: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    recoveredValue7 := DirectedMessage.
    recoveredValue8 := (recoveredValue7) selector: ('copyImplementation') arguments: (#()) receiver: (self).
    (recoveredValue6) at: ('Alt-i') put: (recoveredValue8).
    recoveredValue9 := (self) getUserInterface.
    recoveredValue10 := recoveredLocal1.
    (recoveredValue9) setActionDict: (recoveredValue10) forWidget: (self).
    ^self
! !

"ASDBase.ic method 0x202e80f8; bytecode file offset 0xbe49e4"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
changeModelQuantization
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_83458'.
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
            recoveredStack0 := (recoveredStack0) widgetModelQuantization.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIntegerOrFloatOrFractionBasic.
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
            recoveredStack0 := (recoveredStack0) isFraction.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) denominator.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) asFloat.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := #[0 0 0 0 0 0 0 0].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) numerator.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) setPhysQuantization: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) updateModelQuantization.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ef67c; bytecode file offset 0xbebf68"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
changeFormulaTo: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) updateForFormula: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFormula.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) setObject: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCtrl.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataElement.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) printLabelConversionData: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) isImplementationMaster.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) implIntervalChanged.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) modelIntervalChanged.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := ASDPrimitiveImplChangedCallbackData.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := ASDFormulaChangedCallback.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) callCallbacks: (recoveredStack1) callData: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f3650; bytecode file offset 0xbeff30"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
modelMinMenuValues
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := Association.
    recoveredValue4 := (recoveredValue3) key: ('0') value: (0).
    (recoveredValue2) add: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := Association.
    recoveredValue7 := (recoveredValue6) key: ('-2^7 (-128)') value: (-128).
    (recoveredValue5) add: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := Association.
    recoveredValue10 := (recoveredValue9) key: ('-2^15 (-32768)') value: (-32768).
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := Association.
    recoveredValue13 := (recoveredValue12) key: ('-2^31 (-2147483648)') value: (-2147483648).
    (recoveredValue11) add: (recoveredValue13).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20345d84; bytecode file offset 0xc42690"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
appendMenuEntries: recoveredArg1 toMenu: recoveredArg2 usingSelector: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Local1 recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            (recoveredBlock7Stack1 == nil) ifTrue: [recoveredBlock7PC := 54] ifFalse: [recoveredBlock7PC := 18].
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack1 := DirectedMessage.
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg3.
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            recoveredBlock7Stack3 := Array.
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Stack4 := recoveredBlock7Arg1.
            recoveredBlock7PC := 26.
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7Stack4 := (recoveredBlock7Stack4) value.
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) with: (recoveredBlock7Stack4).
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack4 := self.
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) selector: (recoveredBlock7Stack2) arguments: (recoveredBlock7Stack3) receiver: (recoveredBlock7Stack4).
            recoveredBlock7PC := 32.
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredBlock7Local1 := recoveredBlock7Stack1.
            recoveredBlock7PC := 33.
        ].
        recoveredBlock7Step = 33 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg2.
            recoveredBlock7PC := 36.
        ].
        recoveredBlock7Step = 36 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Local1.
            recoveredBlock7PC := 37.
        ].
        recoveredBlock7Step = 37 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Arg1.
            recoveredBlock7PC := 38.
        ].
        recoveredBlock7Step = 38 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) key.
            recoveredBlock7PC := 40.
        ].
        recoveredBlock7Step = 40 ifTrue: [
            recoveredBlock7Stack4 := [
    true
].
            recoveredBlock7PC := 42.
        ].
        recoveredBlock7Step = 42 ifTrue: [
            recoveredBlock7PC := 48.
        ].
        recoveredBlock7Step = 48 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) add: (recoveredBlock7Stack2) label: (recoveredBlock7Stack3) enable: (recoveredBlock7Stack4).
            recoveredBlock7PC := 51.
        ].
        recoveredBlock7Step = 51 ifTrue: [
            recoveredBlock7PC := 59.
        ].
        recoveredBlock7Step = 54 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg2.
            recoveredBlock7PC := 57.
        ].
        recoveredBlock7Step = 57 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) addLine.
            recoveredBlock7PC := 59.
        ].
        recoveredBlock7Step = 59 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x203b8dc8; bytecode file offset 0xcb56cc"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
updateModelQuantization
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPhysQuantization.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'Call_71140'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetModelQuantization.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInteger.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFloat.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) fractionPart.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := #[0 0 0 0 0 0 0 0].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) formula.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFormulaQuantization.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) isLinearAndInvertible.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := #[0 0 0 0 0 0 240 63].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) scale.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := 'undefined'.
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

"ASDBase.ic method 0x203c0bb8; bytecode file offset 0xcbd4cc"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
implTypeChanged
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetImplType.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObject.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) updateImplType: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIntervalInteger.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 63] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := ASDGeneralOptions.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionAutomaticallySelectImplementationType.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) isImplementationMaster.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) updatePhysicsRepresentation.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) updateImplementationRepresentation.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) updateImplWidgets.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) updateModelWidgets.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) changeModelQuantization.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) updateWidgetSensitivity.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) initCharacterMethod.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) update.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := CwAnyCallbackData.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := ASDImplIntervalChangedCallback.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) callCallbacks: (recoveredStack1) callData: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203cf500; bytecode file offset 0xccbe34"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
modelMaxMenuValues
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := Association.
    recoveredValue4 := (recoveredValue3) key: ('2^7-1 (127)') value: (127).
    (recoveredValue2) add: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := Association.
    recoveredValue7 := (recoveredValue6) key: ('2^8-1 (255)') value: (255).
    (recoveredValue5) add: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    (recoveredValue8) add: (nil).
    recoveredValue9 := recoveredValue1.
    recoveredValue10 := Association.
    recoveredValue11 := (recoveredValue10) key: ('2^15-1 (32767)') value: (32767).
    (recoveredValue9) add: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := Association.
    recoveredValue14 := (recoveredValue13) key: ('2^16-1 (65535)') value: (65535).
    (recoveredValue12) add: (recoveredValue14).
    recoveredValue15 := recoveredValue1.
    (recoveredValue15) add: (nil).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := Association.
    recoveredValue18 := (recoveredValue17) key: ('2^31-1 (2147483647)') value: (2147483647).
    (recoveredValue16) add: (recoveredValue18).
    recoveredValue19 := recoveredValue1.
    recoveredValue20 := Association.
    recoveredValue21 := (recoveredValue20) key: ('2^32-1 (4294967295)') value: (4294967295).
    (recoveredValue19) add: (recoveredValue21).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2041a20c; bytecode file offset 0xd16af0"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
initCharacterMethod
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPhysType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBFloat.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetModelMin.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'checkFloatAndFractionOrInfinite:'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) characterMethod: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetModelMax.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 'checkFloatAndFractionOrInfinite:'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) characterMethod: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetModelMin.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := 'checkIntegerAndFraction:'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) characterMethod: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetModelMax.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 'checkIntegerAndFraction:'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) characterMethod: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBFloat.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplMin.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := 'checkFloatAndFractionOrInfinite:'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) characterMethod: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplMax.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := 'checkFloatAndFractionOrInfinite:'.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) characterMethod: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredPC := 98.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplMin.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := 'checkIntegerAndFraction:'.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) characterMethod: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplMax.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := 'checkIntegerAndFraction:'.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) characterMethod: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20421ac0; bytecode file offset 0xd1e3a4"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
updateImplWidgets
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBInteger.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplMin.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplMin.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCtrl.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataElement.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplInterval.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplMax.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplMax.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCtrl.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataElement.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplInterval.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 100.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplMin.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplMin.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCtrl.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataElement.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplInterval.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
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
            recoveredStack0 := (recoveredStack0) widgetImplMax.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplMax.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCtrl.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataElement.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplInterval.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
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
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2042641c; bytecode file offset 0xd22f68"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
createModelMaxMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasMenu.
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
            recoveredStack3 := '~Model max'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'menuSetModelMaxToDefault'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := '~Default Value'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := 'menuCopyModelMaxToClipboard'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := 'Copy'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := 'menuCopyModelMaxToClipboard'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack5 := SCCtrl.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack6 := 'C'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack5 := (recoveredStack5) bindWith: (recoveredStack6).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := 'menuPasteModelMaxFromClipboard'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := 'Paste'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack5 := [
    | block280fcbacValue0 block280fcbacValue1 block280fcbacValue2 |
    block280fcbacValue0 := OSClipboard.
    block280fcbacValue1 := (block280fcbacValue0) getString.
    block280fcbacValue2 := (block280fcbacValue1) notNil.
    block280fcbacValue2
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := 'menuPasteModelMaxFromClipboard'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack5 := SCCtrl.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack6 := 'V'.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack5 := (recoveredStack5) bindWith: (recoveredStack6).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack2) addLine.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) modelMaxMenuValues.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := 'menuSetModelMaxTo:'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) appendMenuEntries: (recoveredStack1) toMenu: (recoveredStack2) usingSelector: (recoveredStack3).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204264fc; bytecode file offset 0xd22f68"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
createImplMinMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasMenu.
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
            recoveredStack3 := '~Impl min'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'menuSetImplMinToDefault'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := '~Default Value'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := 'menuCopyImplMinToClipboard'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := 'Copy'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := 'menuCopyImplMinToClipboard'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack5 := SCCtrl.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack6 := 'C'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack5 := (recoveredStack5) bindWith: (recoveredStack6).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := 'menuPasteImplMinFromClipboard'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := 'Paste'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack5 := [
    | block280fcc84Value0 block280fcc84Value1 block280fcc84Value2 |
    block280fcc84Value0 := OSClipboard.
    block280fcc84Value1 := (block280fcc84Value0) getString.
    block280fcc84Value2 := (block280fcc84Value1) notNil.
    block280fcc84Value2
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := 'menuPasteImplMinFromClipboard'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack5 := SCCtrl.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack6 := 'V'.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack5 := (recoveredStack5) bindWith: (recoveredStack6).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack2) addLine.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) implMinMenuValues.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := 'menuSetImplMinTo:'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) appendMenuEntries: (recoveredStack1) toMenu: (recoveredStack2) usingSelector: (recoveredStack3).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2042656c; bytecode file offset 0xd22f68"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
createImplMaxMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasMenu.
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
            recoveredStack3 := '~Impl max'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'menuSetImplMaxToDefault'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := '~Default Value'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := 'menuCopyImplMaxToClipboard'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := 'Copy'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := 'menuCopyImplMaxToClipboard'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack5 := SCCtrl.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack6 := 'C'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack5 := (recoveredStack5) bindWith: (recoveredStack6).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := 'menuPasteImplMaxFromClipboard'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := 'Paste'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack5 := [
    | block280fccf0Value0 block280fccf0Value1 block280fccf0Value2 |
    block280fccf0Value0 := OSClipboard.
    block280fccf0Value1 := (block280fccf0Value0) getString.
    block280fccf0Value2 := (block280fccf0Value1) notNil.
    block280fccf0Value2
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := 'menuPasteImplMaxFromClipboard'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack5 := SCCtrl.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack6 := 'V'.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack5 := (recoveredStack5) bindWith: (recoveredStack6).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack2) addLine.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) implMaxMenuValues.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := 'menuSetImplMaxTo:'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) appendMenuEntries: (recoveredStack1) toMenu: (recoveredStack2) usingSelector: (recoveredStack3).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204265dc; bytecode file offset 0xd22f68"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
createModelMinMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasMenu.
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
            recoveredStack3 := '~Model min'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'menuSetModelMinToDefault'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := '~Default Value'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := 'menuCopyModelMinToClipboard'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := 'Copy'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := 'menuCopyModelMinToClipboard'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack5 := SCCtrl.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack6 := 'C'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack5 := (recoveredStack5) bindWith: (recoveredStack6).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := 'menuPasteModelMinFromClipboard'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := 'Paste'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack5 := [
    | block280fcd5cValue0 block280fcd5cValue1 block280fcd5cValue2 |
    block280fcd5cValue0 := OSClipboard.
    block280fcd5cValue1 := (block280fcd5cValue0) getString.
    block280fcd5cValue2 := (block280fcd5cValue1) notNil.
    block280fcd5cValue2
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := 'menuPasteModelMinFromClipboard'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack5 := SCCtrl.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack6 := 'V'.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack5 := (recoveredStack5) bindWith: (recoveredStack6).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack2) addLine.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) modelMinMenuValues.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := 'menuSetModelMinTo:'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) appendMenuEntries: (recoveredStack1) toMenu: (recoveredStack2) usingSelector: (recoveredStack3).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2046923c; bytecode file offset 0xd65b60"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
implIntervalChanged
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplMin.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) asFloatOrInfinity.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplMax.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) asFloatOrInfinity.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBInteger.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) asInteger.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) asInteger.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplInterval.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) left: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) right: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) updateImplIntervalLeft: (recoveredStack1) right: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := ASDGeneralOptions.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionAutomaticallySelectImplementationType.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplType.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) setObject: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) updateImplWidgets.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) updateModelWidgets.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) update.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := CwAnyCallbackData.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := ASDImplIntervalChangedCallback.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) callCallbacks: (recoveredStack1) callData: (recoveredStack2).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2046c244; bytecode file offset 0xd68b70"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
modelIntervalChanged
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetModelMin.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) asFloatOrInfinity.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetModelMax.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) asFloatOrInfinity.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPhysType.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBInteger.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) asInteger.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) asInteger.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPhysInterval.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) left: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) right: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) updateImplementationRepresentation.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := ASDGeneralOptions.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionAutomaticallySelectImplementationType.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 95].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) updateImplType.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplType.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) setObject: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) updateImplWidgets.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) updateModelWidgets.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) update.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := CwAnyCallbackData.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := ASDModelIntervalChangedCallback.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0) callCallbacks: (recoveredStack1) callData: (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2056bea0; bytecode file offset 0xe687e8"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
initFormulaWidget
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getIdentFormula.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFormula.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Local1 recoveredBlock9Local2 recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 17.
        ].
        recoveredBlock9Step = 17 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) name.
            recoveredBlock9PC := 18.
        ].
        recoveredBlock9Step = 18 ifTrue: [
            recoveredBlock9Local2 := recoveredBlock9Stack1.
            recoveredBlock9PC := 19.
        ].
        recoveredBlock9Step = 19 ifTrue: [
            recoveredBlock9Stack0 := (recoveredBlock9Stack0) widgetCtrl.
            recoveredBlock9PC := 20.
        ].
        recoveredBlock9Step = 20 ifTrue: [
            recoveredBlock9Stack0 := (recoveredBlock9Stack0) projectContext.
            recoveredBlock9PC := 22.
        ].
        recoveredBlock9Step = 22 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Stack0.
            recoveredBlock9PC := 23.
        ].
        recoveredBlock9Step = 23 ifTrue: [
            recoveredBlock9Local1 := recoveredBlock9Stack1.
            recoveredBlock9PC := 24.
        ].
        recoveredBlock9Step = 24 ifTrue: [
            recoveredBlock9Stack0 := (recoveredBlock9Stack0) hasProject.
            recoveredBlock9PC := 26.
        ].
        recoveredBlock9Step = 26 ifTrue: [
            (recoveredBlock9Stack0) ifTrue: [recoveredBlock9PC := 30] ifFalse: [recoveredBlock9PC := 44].
        ].
        recoveredBlock9Step = 30 ifTrue: [
            recoveredBlock9Stack0 := recoveredBlock9Local1.
            recoveredBlock9PC := 31.
        ].
        recoveredBlock9Step = 31 ifTrue: [
            recoveredBlock9Stack0 := (recoveredBlock9Stack0) project.
            recoveredBlock9PC := 33.
        ].
        recoveredBlock9Step = 33 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Local2.
            recoveredBlock9PC := 34.
        ].
        recoveredBlock9Step = 34 ifTrue: [
            recoveredBlock9Stack0 := (recoveredBlock9Stack0) formulaNamed: (recoveredBlock9Stack1).
            recoveredBlock9PC := 36.
        ].
        recoveredBlock9Step = 36 ifTrue: [
            (recoveredBlock9Stack0 == nil) ifTrue: [recoveredBlock9PC := 44] ifFalse: [recoveredBlock9PC := 40].
        ].
        recoveredBlock9Step = 40 ifTrue: [
            recoveredBlock9Stack0 := recoveredBlock9Local2.
            recoveredBlock9PC := 41.
        ].
        recoveredBlock9Step = 41 ifTrue: [
            recoveredBlock9PC := 49.
        ].
        recoveredBlock9Step = 44 ifTrue: [
            recoveredBlock9Stack0 := recoveredBlock9Local2.
            recoveredBlock9PC := 45.
        ].
        recoveredBlock9Step = 45 ifTrue: [
            recoveredBlock9Stack1 := ' <undefined>'.
            recoveredBlock9PC := 47.
        ].
        recoveredBlock9Step = 47 ifTrue: [
            recoveredBlock9Stack0 := (recoveredBlock9Stack0) , (recoveredBlock9Stack1).
            recoveredBlock9PC := 49.
        ].
        recoveredBlock9Step = 49 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack0.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) printBlock: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsFormula.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 71] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCtrl.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataElement.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) printLabelConversionData: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) formula.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNil.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) | (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := SGReservedNames.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := (recoveredStack2) undefinedFormulaName.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) | (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 113].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) formula: (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectContext.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasProject.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 200].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectContext.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) globalFormulas.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := [:block281116c4Arg1 | 
    | block281116c4Value0 block281116c4Value1 |
    block281116c4Value0 := block281116c4Arg1.
    block281116c4Value1 := (block281116c4Value0) deepCopy.
    block281116c4Value1
].
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := [:block281116e8Arg1 :block281116e8Arg2 | 
    | block281116e8Value0 block281116e8Value1 block281116e8Value2 block281116e8Value3 block281116e8Value4 |
    block281116e8Value0 := block281116e8Arg1.
    block281116e8Value1 := (block281116e8Value0) name.
    block281116e8Value2 := block281116e8Arg2.
    block281116e8Value3 := (block281116e8Value2) name.
    block281116e8Value4 := (block281116e8Value1) < (block281116e8Value3).
    block281116e8Value4
].
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectContext.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := (recoveredStack0) formulaNamed: (recoveredStack1).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 178] ifFalse: [recoveredPC := 172].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFormula.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFormula.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack0) setObject: (recoveredStack1).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := (recoveredStack1) deepCopy.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack0) formula: (recoveredStack1).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredPC := 214.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFormula.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFormula.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack0) setObject: (recoveredStack1).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFormula.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetFormula.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := (recoveredStack1) items.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := 15.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := (recoveredStack1) min: (recoveredStack2).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            (recoveredStack0) visibleItemCount: (recoveredStack1).
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFormula.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack0) resizeWindow.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCtrl.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataElement.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            (recoveredStack0) printLabelConversionData: (recoveredStack1).
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

"ASDBase.ic method 0x205c5ed4; bytecode file offset 0xec27fc"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
updateWidgetSensitivity
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFormula.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCtrl.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isImplTypeActive.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetCtrl.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) isNoImplActive.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) not.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) & (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetCtrl.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) dataElement.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) supportsFormula.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) & (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetRescalable.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetCtrl.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) isRescalableActive.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetCtrl.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) isImplTypeActive.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 59] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetCtrl.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) isNoImplActive.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 59] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCtrl.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataElement.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) supportsFormula.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetModelQuantization.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetCtrl.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) isImplTypeActive.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) not.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := (recoveredStack3) widgetCtrl.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := (recoveredStack3) isNoImplActive.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := (recoveredStack3) not.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) & (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 83].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCtrl.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) supportsQuantIntervalEdit.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetModelMin.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetCtrl.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := (recoveredStack2) isImplTypeActive.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := (recoveredStack2) not.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := (recoveredStack3) widgetCtrl.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := (recoveredStack3) isNoImplActive.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := (recoveredStack3) not.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (recoveredStack2) & (recoveredStack3).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := (recoveredStack3) widgetModelMaster.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := (recoveredStack3) set.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := (recoveredStack2) & (recoveredStack3).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 115].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCtrl.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) supportsModelIntervalEdit.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetModelMax.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetCtrl.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := (recoveredStack2) isImplTypeActive.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := (recoveredStack2) not.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := (recoveredStack3) widgetCtrl.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := (recoveredStack3) isNoImplActive.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := (recoveredStack3) not.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := (recoveredStack2) & (recoveredStack3).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := (recoveredStack3) widgetModelMaster.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := (recoveredStack3) set.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := (recoveredStack2) & (recoveredStack3).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 147].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCtrl.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) supportsModelIntervalEdit.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetModelType.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCtrl.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := (recoveredStack1) isImplTypeActive.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetCtrl.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := (recoveredStack2) isNoImplActive.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := (recoveredStack2) not.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := (recoveredStack1) & (recoveredStack2).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetModelMaster.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := (recoveredStack2) set.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) & (recoveredStack2).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := ASDGeneralOptions.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionAutomaticallySelectImplementationType.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 180] ifFalse: [recoveredPC := 188].
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplMaster.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredPC := 189.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplType.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetCtrl.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := (recoveredStack2) isImplTypeActive.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack2 := (recoveredStack2) not.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack3 := (recoveredStack3) widgetCtrl.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack3 := (recoveredStack3) isNoImplActive.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack3 := (recoveredStack3) not.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := (recoveredStack2) & (recoveredStack3).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            (recoveredStack4) ifTrue: [recoveredPC := 215] ifFalse: [recoveredPC := 210].
        ].
        recoveredStep = 210 ifTrue: [
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack3 := (recoveredStack3) widgetCtrl.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack3 := (recoveredStack3) isLimitedInteger.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack2 := (recoveredStack2) & (recoveredStack3).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 220] ifFalse: [recoveredPC := 225].
        ].
        recoveredStep = 220 ifTrue: [
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCtrl.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := (recoveredStack1) supportsImplTypeEdit.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplMin.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetCtrl.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack2 := (recoveredStack2) isImplTypeActive.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack2 := (recoveredStack2) not.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack3 := (recoveredStack3) widgetCtrl.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack3 := (recoveredStack3) isNoImplActive.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack3 := (recoveredStack3) not.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := (recoveredStack2) & (recoveredStack3).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack3 := (recoveredStack3) widgetImplMaster.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack3 := (recoveredStack3) set.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack2 := (recoveredStack2) & (recoveredStack3).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 252] ifFalse: [recoveredPC := 257].
        ].
        recoveredStep = 252 ifTrue: [
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCtrl.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := (recoveredStack1) supportsImplIntervalEdit.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplMax.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetCtrl.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack2 := (recoveredStack2) isImplTypeActive.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack2 := (recoveredStack2) not.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack3 := (recoveredStack3) widgetCtrl.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack3 := (recoveredStack3) isNoImplActive.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack3 := (recoveredStack3) not.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack2 := (recoveredStack2) & (recoveredStack3).
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack3 := (recoveredStack3) widgetImplMaster.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack3 := (recoveredStack3) set.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack2 := (recoveredStack2) & (recoveredStack3).
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 284] ifFalse: [recoveredPC := 289].
        ].
        recoveredStep = 284 ifTrue: [
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCtrl.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack1 := (recoveredStack1) supportsImplIntervalEdit.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplMaster.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCtrl.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := (recoveredStack1) isImplTypeActive.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetCtrl.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack2 := (recoveredStack2) isNoImplActive.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack2 := (recoveredStack2) not.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := (recoveredStack1) & (recoveredStack2).
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetCtrl.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack2 := (recoveredStack2) supportsImplMasterSetting.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := (recoveredStack1) & (recoveredStack2).
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetModelMaster.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCtrl.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack1 := (recoveredStack1) isImplTypeActive.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetCtrl.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack2 := (recoveredStack2) isNoImplActive.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack2 := (recoveredStack2) not.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack1 := (recoveredStack1) & (recoveredStack2).
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetCtrl.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack2 := (recoveredStack2) supportsImplMasterSetting.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack1 := (recoveredStack1) & (recoveredStack2).
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205fc550; bytecode file offset 0xef8edc"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
initWidgets
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) updateDataElementForReferencedImplTypeIfValid.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) initCharacterMethod.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) initFormulaWidget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) initRescaled.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPhysType.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) updateModelWidgets.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) updateModelQuantization.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetModelType.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) modelLabel.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 406] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplType.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := [:block2811c230Arg1 | 
    | block2811c230Value0 block2811c230Value1 |
    block2811c230Value0 := block2811c230Arg1.
    block2811c230Value1 := (block2811c230Value0) getDisplayLabel.
    block2811c230Value1
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) printBlock: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 276] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) allImplTypes.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) modelElement.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 187] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) modelElement.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSGScalar.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 149] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSGVector.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGMatrix.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) | (recoveredStack1).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 149].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := [:block2811c254Arg1 | 
    | block2811c254Value0 block2811c254Value1 |
    block2811c254Value0 := block2811c254Arg1.
    block2811c254Value1 := (block2811c254Value0) isRBBit.
    block2811c254Value1
].
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := [:recoveredBlock152Arg1 | 
    | recoveredBlock152Value0 recoveredBlock152Value1 recoveredBlock152Value2 recoveredBlock152Value3 recoveredBlock152Value4 |
    recoveredBlock152Value0 := recoveredBlock152Arg1.
    recoveredBlock152Value1 := (recoveredBlock152Value0) species.
    recoveredBlock152Value2 := recoveredLocal9.
    recoveredBlock152Value3 := (recoveredBlock152Value2) species.
    recoveredBlock152Value4 := (recoveredBlock152Value1) = (recoveredBlock152Value3).
    recoveredBlock152Value4
].
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 187] ifFalse: [recoveredPC := 176].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyWith: (recoveredStack1).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplType.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 257] ifFalse: [recoveredPC := 206].
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 224] ifFalse: [recoveredPC := 257].
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := [:recoveredBlock227Arg1 :recoveredBlock227Arg2 | 
    | recoveredBlock227Stack0 recoveredBlock227Stack1 recoveredBlock227Stack2 recoveredBlock227Stack3 recoveredBlock227Stack4 recoveredBlock227Stack5 recoveredBlock227PC recoveredBlock227Step recoveredBlock227Done recoveredBlock227Result |
    recoveredBlock227Stack0 := self.
    recoveredBlock227PC := 234.
    recoveredBlock227Done := false.
    [recoveredBlock227Done not] whileTrue: [
        recoveredBlock227Step := recoveredBlock227PC.
        recoveredBlock227Step = 234 ifTrue: [
            recoveredBlock227Stack1 := nil.
            recoveredBlock227PC := 235.
        ].
        recoveredBlock227Step = 235 ifTrue: [
            recoveredBlock227Stack2 := recoveredBlock227Arg1.
            recoveredBlock227PC := 236.
        ].
        recoveredBlock227Step = 236 ifTrue: [
            recoveredBlock227Stack3 := recoveredLocal7.
            recoveredBlock227PC := 239.
        ].
        recoveredBlock227Step = 239 ifTrue: [
            recoveredBlock227Stack4 := recoveredBlock227Arg2.
            recoveredBlock227PC := 240.
        ].
        recoveredBlock227Step = 240 ifTrue: [
            recoveredBlock227Stack3 := (recoveredBlock227Stack3) at: (recoveredBlock227Stack4).
            recoveredBlock227PC := 242.
        ].
        recoveredBlock227Step = 242 ifTrue: [
            recoveredBlock227Stack2 := (recoveredBlock227Stack2) equals: (recoveredBlock227Stack3).
            recoveredBlock227PC := 244.
        ].
        recoveredBlock227Step = 244 ifTrue: [
            (recoveredBlock227Stack2) ifTrue: [recoveredBlock227PC := 254] ifFalse: [recoveredBlock227PC := 248].
        ].
        recoveredBlock227Step = 248 ifTrue: [
            recoveredBlock227PC := 249.
        ].
        recoveredBlock227Step = 249 ifTrue: [
            recoveredBlock227Stack1 := true.
            recoveredBlock227PC := 250.
        ].
        recoveredBlock227Step = 250 ifTrue: [
            recoveredBlock227Stack2 := recoveredBlock227Stack1.
            recoveredBlock227PC := 251.
        ].
        recoveredBlock227Step = 251 ifTrue: [
            recoveredLocal4 := recoveredBlock227Stack2.
            recoveredBlock227PC := 254.
        ].
        recoveredBlock227Step = 254 ifTrue: [
            recoveredBlock227Result := recoveredBlock227Stack1.
            recoveredBlock227Done := true.
        ].
    ].
    recoveredBlock227Result
].
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 264] ifFalse: [recoveredPC := 272].
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplType.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := [:recoveredBlock279Arg1 | 
    | recoveredBlock279Value0 recoveredBlock279Value1 recoveredBlock279Value2 recoveredBlock279Value3 recoveredBlock279Value4 |
    recoveredBlock279Value0 := recoveredBlock279Arg1.
    recoveredBlock279Value1 := (recoveredBlock279Value0) species.
    recoveredBlock279Value2 := recoveredLocal9.
    recoveredBlock279Value3 := (recoveredBlock279Value2) species.
    recoveredBlock279Value4 := (recoveredBlock279Value1) equals: (recoveredBlock279Value3).
    recoveredBlock279Value4
].
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock297Value0 |
    recoveredBlock297Value0 := recoveredLocal8.
    recoveredBlock297Value0
].
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplType.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObject.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 336] ifFalse: [recoveredPC := 322].
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplType.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObject.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 358] ifFalse: [recoveredPC := 336].
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplType.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            (recoveredStack0) setObject: (recoveredStack1).
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplType.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack1 := 10.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            (recoveredStack0) visibleItemCount: (recoveredStack1).
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplType.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            (recoveredStack0) resizeWindow.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplMin.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCtrl.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataElement.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack1 := (recoveredStack1) getCheckedImplInterval.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplMax.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCtrl.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataElement.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack1 := (recoveredStack1) getCheckedImplInterval.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplMaster.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCtrl.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataElement.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack1 := (recoveredStack1) isImplementationMaster.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetModelMaster.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCtrl.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataElement.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack1 := (recoveredStack1) isImplementationMaster.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2067daac; bytecode file offset 0xf7a4b4"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
createFormulaFrame: recoveredArg1 dictionary: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'widgetTransformationFrame'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [:block28128cf8Arg1 | 
    | block28128cf8Value0 block28128cf8Value1 |
    block28128cf8Value0 := block28128cf8Arg1.
    block28128cf8Value1 := block28128cf8Value0.
    (block28128cf8Value1) labelString: ('Transformation').
    block28128cf8Value0
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFrame: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 'widgetTransformationFrame'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := 'widgetTransformationForm'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := [:block28128d1cArg1 | 
    | block28128d1cValue0 |
    block28128d1cValue0 := block28128d1cArg1.
    block28128d1cValue0
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := 'widgetTransformationForm'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 'widgetFormulaToggle'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := [:block28128d40Arg1 | 
    | block28128d40Value0 block28128d40Value1 block28128d40Value2 block28128d40Value3 block28128d40Value4 block28128d40Value5 |
    block28128d40Value0 := block28128d40Arg1.
    block28128d40Value1 := block28128d40Value0.
    block28128d40Value2 := XmALIGNMENTBEGINNING.
    (block28128d40Value1) alignment: (block28128d40Value2).
    block28128d40Value3 := block28128d40Value0.
    (block28128d40Value3) labelString: ('Formula').
    block28128d40Value4 := block28128d40Value0.
    (block28128d40Value4) width: (171).
    block28128d40Value5 := block28128d40Value0.
    (block28128d40Value5) height: (22).
    block28128d40Value0
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := 'widgetFormulaToggle'.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := 'widgetFormula'.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := [:block28128d64Arg1 | 
    | block28128d64Value0 |
    block28128d64Value0 := block28128d64Arg1.
    block28128d64Value0
].
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasObjectComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := 'widgetFormula'.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := 'widgetRescalable'.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack3 := [:block28128d88Arg1 | 
    | block28128d88Value0 block28128d88Value1 block28128d88Value2 |
    block28128d88Value0 := block28128d88Arg1.
    block28128d88Value1 := block28128d88Value0.
    (block28128d88Value1) height: (22).
    block28128d88Value2 := block28128d88Value0.
    (block28128d88Value2) labelString: ('Rescalable').
    block28128d88Value0
].
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := 'widgetRescalable'.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack2 := 'widgetConversion'.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack3 := [:block28128dacArg1 | 
    | block28128dacValue0 block28128dacValue1 block28128dacValue2 block28128dacValue3 block28128dacValue4 block28128dacValue5 |
    block28128dacValue0 := block28128dacArg1.
    block28128dacValue1 := block28128dacValue0.
    block28128dacValue2 := XmALIGNMENTBEGINNING.
    (block28128dacValue1) alignment: (block28128dacValue2).
    block28128dacValue3 := block28128dacValue0.
    (block28128dacValue3) labelString: ('Conversion').
    block28128dacValue4 := block28128dacValue0.
    (block28128dacValue4) width: (171).
    block28128dacValue5 := block28128dacValue0.
    (block28128dacValue5) height: (22).
    block28128dacValue0
].
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack2 := 'widgetConversion'.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack2 := 'widgetConversionString'.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack3 := [:block28128dd0Arg1 | 
    | block28128dd0Value0 block28128dd0Value1 block28128dd0Value2 block28128dd0Value3 block28128dd0Value4 |
    block28128dd0Value0 := block28128dd0Arg1.
    block28128dd0Value1 := block28128dd0Value0.
    block28128dd0Value2 := XmALIGNMENTBEGINNING.
    (block28128dd0Value1) alignment: (block28128dd0Value2).
    block28128dd0Value3 := block28128dd0Value0.
    (block28128dd0Value3) labelString: ('f(x) := x').
    block28128dd0Value4 := block28128dd0Value0.
    (block28128dd0Value4) height: (22).
    block28128dd0Value0
].
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack2 := 'widgetConversionString'.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack2 := 'widgetQuantizationLabel'.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack3 := [:block28128df4Arg1 | 
    | block28128df4Value0 block28128df4Value1 block28128df4Value2 block28128df4Value3 block28128df4Value4 |
    block28128df4Value0 := block28128df4Arg1.
    block28128df4Value1 := block28128df4Value0.
    block28128df4Value2 := XmALIGNMENTBEGINNING.
    (block28128df4Value1) alignment: (block28128df4Value2).
    block28128df4Value3 := block28128df4Value0.
    (block28128df4Value3) labelString: ('Quantization').
    block28128df4Value4 := block28128df4Value0.
    (block28128df4Value4) height: (22).
    block28128df4Value0
].
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack2 := 'widgetQuantizationLabel'.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack2 := 'widgetFormulaQuantizationLabel'.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack3 := [:block28128e18Arg1 | 
    | block28128e18Value0 block28128e18Value1 block28128e18Value2 block28128e18Value3 block28128e18Value4 |
    block28128e18Value0 := block28128e18Arg1.
    block28128e18Value1 := block28128e18Value0.
    block28128e18Value2 := XmALIGNMENTBEGINNING.
    (block28128e18Value1) alignment: (block28128e18Value2).
    block28128e18Value3 := block28128e18Value0.
    (block28128e18Value3) labelString: ('Calculated').
    block28128e18Value4 := block28128e18Value0.
    (block28128e18Value4) height: (22).
    block28128e18Value0
].
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack2 := 'widgetFormulaQuantizationLabel'.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack2 := 'widgetFormulaQuantization'.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack3 := [:block28128e3cArg1 | 
    | block28128e3cValue0 block28128e3cValue1 block28128e3cValue2 block28128e3cValue3 |
    block28128e3cValue0 := block28128e3cArg1.
    block28128e3cValue1 := block28128e3cValue0.
    (block28128e3cValue1) height: (22).
    block28128e3cValue2 := block28128e3cValue0.
    (block28128e3cValue2) width: (60).
    block28128e3cValue3 := block28128e3cValue0.
    (block28128e3cValue3) sensitive: (false).
    block28128e3cValue0
].
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack2 := 'widgetFormulaQuantization'.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack2 := 'widgetModelQuantizationLabel'.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack3 := [:block28128e60Arg1 | 
    | block28128e60Value0 block28128e60Value1 block28128e60Value2 block28128e60Value3 block28128e60Value4 |
    block28128e60Value0 := block28128e60Arg1.
    block28128e60Value1 := block28128e60Value0.
    block28128e60Value2 := XmALIGNMENTBEGINNING.
    (block28128e60Value1) alignment: (block28128e60Value2).
    block28128e60Value3 := block28128e60Value0.
    (block28128e60Value3) labelString: ('Qu. Exp.').
    block28128e60Value4 := block28128e60Value0.
    (block28128e60Value4) height: (22).
    block28128e60Value0
].
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack2 := 'widgetModelQuantizationLabel'.
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack2 := 'widgetModelQuantization'.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack3 := [:block28128e84Arg1 | 
    | block28128e84Value0 block28128e84Value1 block28128e84Value2 |
    block28128e84Value0 := block28128e84Arg1.
    block28128e84Value1 := block28128e84Value0.
    (block28128e84Value1) height: (22).
    block28128e84Value2 := block28128e84Value0.
    (block28128e84Value2) width: (60).
    block28128e84Value0
].
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredStack2 := 'widgetModelQuantization'.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack2 := [:block28128ea8Arg1 | 
    | block28128ea8Value0 block28128ea8Value1 block28128ea8Value2 block28128ea8Value3 block28128ea8Value4 block28128ea8Value5 block28128ea8Value6 block28128ea8Value7 block28128ea8Value8 block28128ea8Value9 |
    block28128ea8Value0 := block28128ea8Arg1.
    block28128ea8Value1 := block28128ea8Value0.
    block28128ea8Value2 := XmATTACHFORM.
    (block28128ea8Value1) topAttachment: (block28128ea8Value2).
    block28128ea8Value3 := block28128ea8Value0.
    (block28128ea8Value3) topOffset: (0).
    block28128ea8Value4 := block28128ea8Value0.
    block28128ea8Value5 := XmATTACHFORM.
    (block28128ea8Value4) rightAttachment: (block28128ea8Value5).
    block28128ea8Value6 := block28128ea8Value0.
    (block28128ea8Value6) rightOffset: (5).
    block28128ea8Value7 := block28128ea8Value0.
    block28128ea8Value8 := XmATTACHFORM.
    (block28128ea8Value7) leftAttachment: (block28128ea8Value8).
    block28128ea8Value9 := (block28128ea8Value0) leftOffset: (5).
    block28128ea8Value9
].
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            recoveredStack2 := [:block28128eccArg1 | 
    | block28128eccValue0 block28128eccValue1 block28128eccValue2 block28128eccValue3 block28128eccValue4 block28128eccValue5 block28128eccValue6 |
    block28128eccValue0 := block28128eccArg1.
    block28128eccValue1 := block28128eccValue0.
    block28128eccValue2 := XmATTACHFORM.
    (block28128eccValue1) topAttachment: (block28128eccValue2).
    block28128eccValue3 := block28128eccValue0.
    (block28128eccValue3) topOffset: (0).
    block28128eccValue4 := block28128eccValue0.
    block28128eccValue5 := XmATTACHFORM.
    (block28128eccValue4) leftAttachment: (block28128eccValue5).
    block28128eccValue6 := (block28128eccValue0) leftOffset: (5).
    block28128eccValue6
].
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 634.
        ].
        recoveredStep = 634 ifTrue: [
            recoveredStack2 := [:recoveredBlock634Arg1 | 
    | recoveredBlock634Value0 recoveredBlock634Value1 recoveredBlock634Value2 recoveredBlock634Value3 recoveredBlock634Value4 recoveredBlock634Value5 recoveredBlock634Value6 recoveredBlock634Value7 recoveredBlock634Value8 recoveredBlock634Value9 recoveredBlock634Value10 recoveredBlock634Value11 recoveredBlock634Value12 recoveredBlock634Value13 recoveredBlock634Value14 recoveredBlock634Value15 |
    recoveredBlock634Value0 := recoveredBlock634Arg1.
    recoveredBlock634Value1 := recoveredBlock634Value0.
    recoveredBlock634Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock634Value1) topAttachment: (recoveredBlock634Value2).
    recoveredBlock634Value3 := recoveredBlock634Value0.
    recoveredBlock634Value4 := recoveredLocal9.
    (recoveredBlock634Value3) topWidget: (recoveredBlock634Value4).
    recoveredBlock634Value5 := recoveredBlock634Value0.
    (recoveredBlock634Value5) topOffset: (0).
    recoveredBlock634Value6 := recoveredBlock634Value0.
    recoveredBlock634Value7 := XmATTACHWIDGET.
    (recoveredBlock634Value6) rightAttachment: (recoveredBlock634Value7).
    recoveredBlock634Value8 := recoveredBlock634Value0.
    recoveredBlock634Value9 := recoveredLocal4.
    (recoveredBlock634Value8) rightWidget: (recoveredBlock634Value9).
    recoveredBlock634Value10 := recoveredBlock634Value0.
    (recoveredBlock634Value10) rightOffset: (5).
    recoveredBlock634Value11 := recoveredBlock634Value0.
    recoveredBlock634Value12 := XmATTACHWIDGET.
    (recoveredBlock634Value11) leftAttachment: (recoveredBlock634Value12).
    recoveredBlock634Value13 := recoveredBlock634Value0.
    recoveredBlock634Value14 := recoveredLocal9.
    (recoveredBlock634Value13) leftWidget: (recoveredBlock634Value14).
    recoveredBlock634Value15 := (recoveredBlock634Value0) leftOffset: (5).
    recoveredBlock634Value15
].
            recoveredPC := 710.
        ].
        recoveredStep = 710 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 715.
        ].
        recoveredStep = 715 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 718.
        ].
        recoveredStep = 718 ifTrue: [
            recoveredStack2 := [:recoveredBlock718Arg1 | 
    | recoveredBlock718Value0 recoveredBlock718Value1 recoveredBlock718Value2 recoveredBlock718Value3 recoveredBlock718Value4 recoveredBlock718Value5 recoveredBlock718Value6 recoveredBlock718Value7 recoveredBlock718Value8 recoveredBlock718Value9 recoveredBlock718Value10 recoveredBlock718Value11 recoveredBlock718Value12 recoveredBlock718Value13 |
    recoveredBlock718Value0 := recoveredBlock718Arg1.
    recoveredBlock718Value1 := recoveredBlock718Value0.
    recoveredBlock718Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock718Value1) topAttachment: (recoveredBlock718Value2).
    recoveredBlock718Value3 := recoveredBlock718Value0.
    recoveredBlock718Value4 := recoveredLocal9.
    (recoveredBlock718Value3) topWidget: (recoveredBlock718Value4).
    recoveredBlock718Value5 := recoveredBlock718Value0.
    (recoveredBlock718Value5) topOffset: (0).
    recoveredBlock718Value6 := recoveredBlock718Value0.
    recoveredBlock718Value7 := XmATTACHFORM.
    (recoveredBlock718Value6) rightAttachment: (recoveredBlock718Value7).
    recoveredBlock718Value8 := recoveredBlock718Value0.
    (recoveredBlock718Value8) rightOffset: (5).
    recoveredBlock718Value9 := recoveredBlock718Value0.
    recoveredBlock718Value10 := XmATTACHWIDGET.
    (recoveredBlock718Value9) leftAttachment: (recoveredBlock718Value10).
    recoveredBlock718Value11 := recoveredBlock718Value0.
    recoveredBlock718Value12 := recoveredLocal10.
    (recoveredBlock718Value11) leftWidget: (recoveredBlock718Value12).
    recoveredBlock718Value13 := (recoveredBlock718Value0) leftOffset: (38).
    recoveredBlock718Value13
].
            recoveredPC := 786.
        ].
        recoveredStep = 786 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 791.
        ].
        recoveredStep = 791 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 794.
        ].
        recoveredStep = 794 ifTrue: [
            recoveredStack2 := [:recoveredBlock794Arg1 | 
    | recoveredBlock794Value0 recoveredBlock794Value1 recoveredBlock794Value2 recoveredBlock794Value3 recoveredBlock794Value4 recoveredBlock794Value5 recoveredBlock794Value6 recoveredBlock794Value7 recoveredBlock794Value8 |
    recoveredBlock794Value0 := recoveredBlock794Arg1.
    recoveredBlock794Value1 := recoveredBlock794Value0.
    recoveredBlock794Value2 := XmATTACHWIDGET.
    (recoveredBlock794Value1) topAttachment: (recoveredBlock794Value2).
    recoveredBlock794Value3 := recoveredBlock794Value0.
    recoveredBlock794Value4 := recoveredLocal9.
    (recoveredBlock794Value3) topWidget: (recoveredBlock794Value4).
    recoveredBlock794Value5 := recoveredBlock794Value0.
    (recoveredBlock794Value5) topOffset: (3).
    recoveredBlock794Value6 := recoveredBlock794Value0.
    recoveredBlock794Value7 := XmATTACHFORM.
    (recoveredBlock794Value6) leftAttachment: (recoveredBlock794Value7).
    recoveredBlock794Value8 := (recoveredBlock794Value0) leftOffset: (5).
    recoveredBlock794Value8
].
            recoveredPC := 840.
        ].
        recoveredStep = 840 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 845.
        ].
        recoveredStep = 845 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 848.
        ].
        recoveredStep = 848 ifTrue: [
            recoveredStack2 := [:recoveredBlock848Arg1 | 
    | recoveredBlock848Value0 recoveredBlock848Value1 recoveredBlock848Value2 recoveredBlock848Value3 recoveredBlock848Value4 recoveredBlock848Value5 recoveredBlock848Value6 recoveredBlock848Value7 recoveredBlock848Value8 recoveredBlock848Value9 recoveredBlock848Value10 recoveredBlock848Value11 recoveredBlock848Value12 recoveredBlock848Value13 |
    recoveredBlock848Value0 := recoveredBlock848Arg1.
    recoveredBlock848Value1 := recoveredBlock848Value0.
    recoveredBlock848Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock848Value1) topAttachment: (recoveredBlock848Value2).
    recoveredBlock848Value3 := recoveredBlock848Value0.
    recoveredBlock848Value4 := recoveredLocal7.
    (recoveredBlock848Value3) topWidget: (recoveredBlock848Value4).
    recoveredBlock848Value5 := recoveredBlock848Value0.
    (recoveredBlock848Value5) topOffset: (0).
    recoveredBlock848Value6 := recoveredBlock848Value0.
    recoveredBlock848Value7 := XmATTACHFORM.
    (recoveredBlock848Value6) rightAttachment: (recoveredBlock848Value7).
    recoveredBlock848Value8 := recoveredBlock848Value0.
    (recoveredBlock848Value8) rightOffset: (5).
    recoveredBlock848Value9 := recoveredBlock848Value0.
    recoveredBlock848Value10 := XmATTACHWIDGET.
    (recoveredBlock848Value9) leftAttachment: (recoveredBlock848Value10).
    recoveredBlock848Value11 := recoveredBlock848Value0.
    recoveredBlock848Value12 := recoveredLocal7.
    (recoveredBlock848Value11) leftWidget: (recoveredBlock848Value12).
    recoveredBlock848Value13 := (recoveredBlock848Value0) leftOffset: (5).
    recoveredBlock848Value13
].
            recoveredPC := 916.
        ].
        recoveredStep = 916 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 921.
        ].
        recoveredStep = 921 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 924.
        ].
        recoveredStep = 924 ifTrue: [
            recoveredStack2 := [:recoveredBlock924Arg1 | 
    | recoveredBlock924Value0 recoveredBlock924Value1 recoveredBlock924Value2 recoveredBlock924Value3 recoveredBlock924Value4 recoveredBlock924Value5 recoveredBlock924Value6 recoveredBlock924Value7 recoveredBlock924Value8 |
    recoveredBlock924Value0 := recoveredBlock924Arg1.
    recoveredBlock924Value1 := recoveredBlock924Value0.
    recoveredBlock924Value2 := XmATTACHWIDGET.
    (recoveredBlock924Value1) topAttachment: (recoveredBlock924Value2).
    recoveredBlock924Value3 := recoveredBlock924Value0.
    recoveredBlock924Value4 := recoveredLocal7.
    (recoveredBlock924Value3) topWidget: (recoveredBlock924Value4).
    recoveredBlock924Value5 := recoveredBlock924Value0.
    (recoveredBlock924Value5) topOffset: (3).
    recoveredBlock924Value6 := recoveredBlock924Value0.
    recoveredBlock924Value7 := XmATTACHFORM.
    (recoveredBlock924Value6) leftAttachment: (recoveredBlock924Value7).
    recoveredBlock924Value8 := (recoveredBlock924Value0) leftOffset: (5).
    recoveredBlock924Value8
].
            recoveredPC := 970.
        ].
        recoveredStep = 970 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 975.
        ].
        recoveredStep = 975 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 978.
        ].
        recoveredStep = 978 ifTrue: [
            recoveredStack2 := [:recoveredBlock978Arg1 | 
    | recoveredBlock978Value0 recoveredBlock978Value1 recoveredBlock978Value2 recoveredBlock978Value3 recoveredBlock978Value4 recoveredBlock978Value5 recoveredBlock978Value6 recoveredBlock978Value7 recoveredBlock978Value8 recoveredBlock978Value9 recoveredBlock978Value10 |
    recoveredBlock978Value0 := recoveredBlock978Arg1.
    recoveredBlock978Value1 := recoveredBlock978Value0.
    recoveredBlock978Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock978Value1) topAttachment: (recoveredBlock978Value2).
    recoveredBlock978Value3 := recoveredBlock978Value0.
    recoveredBlock978Value4 := recoveredLocal5.
    (recoveredBlock978Value3) topWidget: (recoveredBlock978Value4).
    recoveredBlock978Value5 := recoveredBlock978Value0.
    (recoveredBlock978Value5) topOffset: (0).
    recoveredBlock978Value6 := recoveredBlock978Value0.
    recoveredBlock978Value7 := XmATTACHWIDGET.
    (recoveredBlock978Value6) rightAttachment: (recoveredBlock978Value7).
    recoveredBlock978Value8 := recoveredBlock978Value0.
    recoveredBlock978Value9 := recoveredLocal6.
    (recoveredBlock978Value8) rightWidget: (recoveredBlock978Value9).
    recoveredBlock978Value10 := (recoveredBlock978Value0) rightOffset: (5).
    recoveredBlock978Value10
].
            recoveredPC := 1032.
        ].
        recoveredStep = 1032 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1037.
        ].
        recoveredStep = 1037 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1040.
        ].
        recoveredStep = 1040 ifTrue: [
            recoveredStack2 := [:recoveredBlock1040Arg1 | 
    | recoveredBlock1040Value0 recoveredBlock1040Value1 recoveredBlock1040Value2 recoveredBlock1040Value3 recoveredBlock1040Value4 recoveredBlock1040Value5 recoveredBlock1040Value6 recoveredBlock1040Value7 recoveredBlock1040Value8 recoveredBlock1040Value9 recoveredBlock1040Value10 recoveredBlock1040Value11 recoveredBlock1040Value12 recoveredBlock1040Value13 recoveredBlock1040Value14 recoveredBlock1040Value15 |
    recoveredBlock1040Value0 := recoveredBlock1040Arg1.
    recoveredBlock1040Value1 := recoveredBlock1040Value0.
    recoveredBlock1040Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1040Value1) topAttachment: (recoveredBlock1040Value2).
    recoveredBlock1040Value3 := recoveredBlock1040Value0.
    recoveredBlock1040Value4 := recoveredLocal5.
    (recoveredBlock1040Value3) topWidget: (recoveredBlock1040Value4).
    recoveredBlock1040Value5 := recoveredBlock1040Value0.
    (recoveredBlock1040Value5) topOffset: (0).
    recoveredBlock1040Value6 := recoveredBlock1040Value0.
    recoveredBlock1040Value7 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1040Value6) leftAttachment: (recoveredBlock1040Value7).
    recoveredBlock1040Value8 := recoveredBlock1040Value0.
    recoveredBlock1040Value9 := recoveredLocal6.
    (recoveredBlock1040Value8) leftWidget: (recoveredBlock1040Value9).
    recoveredBlock1040Value10 := recoveredBlock1040Value0.
    (recoveredBlock1040Value10) leftOffset: (0).
    recoveredBlock1040Value11 := recoveredBlock1040Value0.
    recoveredBlock1040Value12 := XmATTACHWIDGET.
    (recoveredBlock1040Value11) rightAttachment: (recoveredBlock1040Value12).
    recoveredBlock1040Value13 := recoveredBlock1040Value0.
    recoveredBlock1040Value14 := recoveredLocal4.
    (recoveredBlock1040Value13) rightWidget: (recoveredBlock1040Value14).
    recoveredBlock1040Value15 := (recoveredBlock1040Value0) rightOffset: (5).
    recoveredBlock1040Value15
].
            recoveredPC := 1116.
        ].
        recoveredStep = 1116 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1121.
        ].
        recoveredStep = 1121 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1124.
        ].
        recoveredStep = 1124 ifTrue: [
            recoveredStack2 := [:recoveredBlock1124Arg1 | 
    | recoveredBlock1124Value0 recoveredBlock1124Value1 recoveredBlock1124Value2 recoveredBlock1124Value3 recoveredBlock1124Value4 recoveredBlock1124Value5 recoveredBlock1124Value6 recoveredBlock1124Value7 recoveredBlock1124Value8 recoveredBlock1124Value9 recoveredBlock1124Value10 |
    recoveredBlock1124Value0 := recoveredBlock1124Arg1.
    recoveredBlock1124Value1 := recoveredBlock1124Value0.
    recoveredBlock1124Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1124Value1) topAttachment: (recoveredBlock1124Value2).
    recoveredBlock1124Value3 := recoveredBlock1124Value0.
    recoveredBlock1124Value4 := recoveredLocal5.
    (recoveredBlock1124Value3) topWidget: (recoveredBlock1124Value4).
    recoveredBlock1124Value5 := recoveredBlock1124Value0.
    (recoveredBlock1124Value5) topOffset: (0).
    recoveredBlock1124Value6 := recoveredBlock1124Value0.
    recoveredBlock1124Value7 := XmATTACHWIDGET.
    (recoveredBlock1124Value6) rightAttachment: (recoveredBlock1124Value7).
    recoveredBlock1124Value8 := recoveredBlock1124Value0.
    recoveredBlock1124Value9 := recoveredLocal3.
    (recoveredBlock1124Value8) rightWidget: (recoveredBlock1124Value9).
    recoveredBlock1124Value10 := (recoveredBlock1124Value0) leftOffset: (5).
    recoveredBlock1124Value10
].
            recoveredPC := 1178.
        ].
        recoveredStep = 1178 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1183.
        ].
        recoveredStep = 1183 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1186.
        ].
        recoveredStep = 1186 ifTrue: [
            recoveredStack2 := [:recoveredBlock1186Arg1 | 
    | recoveredBlock1186Value0 recoveredBlock1186Value1 recoveredBlock1186Value2 recoveredBlock1186Value3 recoveredBlock1186Value4 recoveredBlock1186Value5 recoveredBlock1186Value6 recoveredBlock1186Value7 recoveredBlock1186Value8 |
    recoveredBlock1186Value0 := recoveredBlock1186Arg1.
    recoveredBlock1186Value1 := recoveredBlock1186Value0.
    recoveredBlock1186Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1186Value1) topAttachment: (recoveredBlock1186Value2).
    recoveredBlock1186Value3 := recoveredBlock1186Value0.
    recoveredBlock1186Value4 := recoveredLocal5.
    (recoveredBlock1186Value3) topWidget: (recoveredBlock1186Value4).
    recoveredBlock1186Value5 := recoveredBlock1186Value0.
    (recoveredBlock1186Value5) topOffset: (0).
    recoveredBlock1186Value6 := recoveredBlock1186Value0.
    recoveredBlock1186Value7 := XmATTACHFORM.
    (recoveredBlock1186Value6) rightAttachment: (recoveredBlock1186Value7).
    recoveredBlock1186Value8 := (recoveredBlock1186Value0) rightOffset: (5).
    recoveredBlock1186Value8
].
            recoveredPC := 1232.
        ].
        recoveredStep = 1232 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1237.
        ].
        recoveredStep = 1237 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 1240.
        ].
        recoveredStep = 1240 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1241.
        ].
        recoveredStep = 1241 ifTrue: [
            recoveredStack3 := XmNsingleSelectionCallback.
            recoveredPC := 1244.
        ].
        recoveredStep = 1244 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 1245.
        ].
        recoveredStep = 1245 ifTrue: [
            recoveredStack5 := 'widgetFormulaSingle:clientData:callData:'.
            recoveredPC := 1248.
        ].
        recoveredStep = 1248 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 1249.
        ].
        recoveredStep = 1249 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredPC := 1253.
        ].
        recoveredStep = 1253 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 1256.
        ].
        recoveredStep = 1256 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1257.
        ].
        recoveredStep = 1257 ifTrue: [
            recoveredStack4 := 'widgetFormulaSingle:clientData:callData:'.
            recoveredPC := 1260.
        ].
        recoveredStep = 1260 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1261.
        ].
        recoveredStep = 1261 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1265.
        ].
        recoveredStep = 1265 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1268.
        ].
        recoveredStep = 1268 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1269.
        ].
        recoveredStep = 1269 ifTrue: [
            recoveredStack3 := XmNmodifyVerifyCallback.
            recoveredPC := 1272.
        ].
        recoveredStep = 1272 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 1273.
        ].
        recoveredStep = 1273 ifTrue: [
            recoveredStack5 := 'widgetModelQuantizationModify:clientData:callData:'.
            recoveredPC := 1276.
        ].
        recoveredStep = 1276 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 1277.
        ].
        recoveredStep = 1277 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1281.
        ].
        recoveredStep = 1281 ifTrue: [
            recoveredStack3 := XmNactivateCallback.
            recoveredPC := 1284.
        ].
        recoveredStep = 1284 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 1285.
        ].
        recoveredStep = 1285 ifTrue: [
            recoveredStack5 := 'widgetModelQuantizationActivate:clientData:callData:'.
            recoveredPC := 1288.
        ].
        recoveredStep = 1288 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 1289.
        ].
        recoveredStep = 1289 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredPC := 1293.
        ].
        recoveredStep = 1293 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 1296.
        ].
        recoveredStep = 1296 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1297.
        ].
        recoveredStep = 1297 ifTrue: [
            recoveredStack4 := 'widgetModelQuantizationLosing:clientData:callData:'.
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
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 1312.
        ].
        recoveredStep = 1312 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1313.
        ].
        recoveredStep = 1313 ifTrue: [
            recoveredStack4 := 'widgetRescalableValue:clientData:callData:'.
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206afee8; bytecode file offset 0xfac9bc"
!ASDScalarImplementationWidgetNew methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredLocal19 recoveredLocal20 recoveredLocal21 recoveredLocal22 recoveredLocal23 recoveredLocal24 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal24 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal23 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal24.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) createFormulaFrame: (recoveredStack1) dictionary: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal23.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'widgetMasterFrame'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := [:block28130c3cArg1 | 
    | block28130c3cValue0 block28130c3cValue1 |
    block28130c3cValue0 := block28130c3cArg1.
    block28130c3cValue1 := block28130c3cValue0.
    (block28130c3cValue1) labelString: ('Master').
    block28130c3cValue0
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFrame: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal22 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal24.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := 'widgetMasterFrame'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal22.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal22.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := 'widgetMasterForm'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := [:block28130c60Arg1 | 
    | block28130c60Value0 |
    block28130c60Value0 := block28130c60Arg1.
    block28130c60Value0
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal21 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := recoveredLocal24.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := 'widgetMasterForm'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredLocal21.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := recoveredLocal21.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := 'widgetMasterRowColumn'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := [:block28130c84Arg1 | 
    | block28130c84Value0 block28130c84Value1 block28130c84Value2 block28130c84Value3 block28130c84Value4 block28130c84Value5 block28130c84Value6 block28130c84Value7 |
    block28130c84Value0 := block28130c84Arg1.
    block28130c84Value1 := block28130c84Value0.
    (block28130c84Value1) height: (20).
    block28130c84Value2 := block28130c84Value0.
    (block28130c84Value2) spacing: (130).
    block28130c84Value3 := block28130c84Value0.
    block28130c84Value4 := XmPACKTIGHT.
    (block28130c84Value3) packing: (block28130c84Value4).
    block28130c84Value5 := block28130c84Value0.
    block28130c84Value6 := XmHORIZONTAL.
    (block28130c84Value5) orientation: (block28130c84Value6).
    block28130c84Value7 := (block28130c84Value0) radioBehavior: (true).
    block28130c84Value7
].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := (recoveredStack0) createRowColumn: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredLocal20 := recoveredStack0.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := recoveredLocal24.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := 'widgetMasterRowColumn'.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := recoveredLocal20.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := recoveredLocal20.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := recoveredLocal20.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := 'widgetModelMaster'.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := [:block28130ca8Arg1 | 
    | block28130ca8Value0 block28130ca8Value1 block28130ca8Value2 |
    block28130ca8Value0 := block28130ca8Arg1.
    block28130ca8Value1 := block28130ca8Value0.
    (block28130ca8Value1) height: (10).
    block28130ca8Value2 := (block28130ca8Value0) labelString: ('Model').
    block28130ca8Value2
].
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredLocal19 := recoveredStack0.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := recoveredLocal24.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := 'widgetModelMaster'.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := recoveredLocal19.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := recoveredLocal20.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := 'widgetImplMaster'.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := [:block28130cccArg1 | 
    | block28130cccValue0 block28130cccValue1 block28130cccValue2 |
    block28130cccValue0 := block28130cccArg1.
    block28130cccValue1 := block28130cccValue0.
    (block28130cccValue1) height: (10).
    block28130cccValue2 := (block28130cccValue0) labelString: ('Implementation').
    block28130cccValue2
].
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredLocal18 := recoveredStack0.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := recoveredLocal24.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := 'widgetImplMaster'.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack2 := recoveredLocal18.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := recoveredLocal23.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := 'widgetFrameModel'.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack2 := [:block28130cf0Arg1 | 
    | block28130cf0Value0 block28130cf0Value1 block28130cf0Value2 |
    block28130cf0Value0 := block28130cf0Arg1.
    block28130cf0Value1 := block28130cf0Value0.
    (block28130cf0Value1) width: (178).
    block28130cf0Value2 := (block28130cf0Value0) labelString: ('Model').
    block28130cf0Value2
].
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFrame: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredLocal16 := recoveredStack0.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack0 := recoveredLocal24.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := 'widgetFrameModel'.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := recoveredLocal16.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack0 := recoveredLocal23.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := 'widgetFrameImpl'.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack2 := [:block28130d14Arg1 | 
    | block28130d14Value0 block28130d14Value1 block28130d14Value2 |
    block28130d14Value0 := block28130d14Arg1.
    block28130d14Value1 := block28130d14Value0.
    (block28130d14Value1) width: (178).
    block28130d14Value2 := (block28130d14Value0) labelString: ('Implementation').
    block28130d14Value2
].
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFrame: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredLocal15 := recoveredStack0.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack0 := recoveredLocal24.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack1 := 'widgetFrameImpl'.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack2 := recoveredLocal15.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := 'widgetFormModel'.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack2 := [:block28130d38Arg1 | 
    | block28130d38Value0 |
    block28130d38Value0 := block28130d38Arg1.
    block28130d38Value0
].
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredLocal17 := recoveredStack0.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack0 := recoveredLocal24.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack1 := 'widgetFormModel'.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack2 := recoveredLocal17.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack1 := 'widgetFormImpl'.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack2 := [:block28130d5cArg1 | 
    | block28130d5cValue0 |
    block28130d5cValue0 := block28130d5cArg1.
    block28130d5cValue0
].
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredLocal14 := recoveredStack0.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack0 := recoveredLocal24.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack1 := 'widgetFormImpl'.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack2 := recoveredLocal14.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack0 := recoveredLocal17.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack1 := 'widgetModelTypeLabel'.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack2 := [:block28130d80Arg1 | 
    | block28130d80Value0 block28130d80Value1 block28130d80Value2 block28130d80Value3 block28130d80Value4 block28130d80Value5 |
    block28130d80Value0 := block28130d80Arg1.
    block28130d80Value1 := block28130d80Value0.
    (block28130d80Value1) width: (50).
    block28130d80Value2 := block28130d80Value0.
    (block28130d80Value2) height: (22).
    block28130d80Value3 := block28130d80Value0.
    block28130d80Value4 := XmALIGNMENTBEGINNING.
    (block28130d80Value3) alignment: (block28130d80Value4).
    block28130d80Value5 := block28130d80Value0.
    (block28130d80Value5) labelString: ('Type').
    block28130d80Value0
].
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredLocal13 := recoveredStack0.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack0 := recoveredLocal24.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack1 := 'widgetModelTypeLabel'.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack1 := 'widgetImplTypeLabel'.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack2 := [:block28130da4Arg1 | 
    | block28130da4Value0 block28130da4Value1 block28130da4Value2 block28130da4Value3 block28130da4Value4 block28130da4Value5 |
    block28130da4Value0 := block28130da4Arg1.
    block28130da4Value1 := block28130da4Value0.
    (block28130da4Value1) width: (50).
    block28130da4Value2 := block28130da4Value0.
    (block28130da4Value2) height: (22).
    block28130da4Value3 := block28130da4Value0.
    block28130da4Value4 := XmALIGNMENTBEGINNING.
    (block28130da4Value3) alignment: (block28130da4Value4).
    block28130da4Value5 := block28130da4Value0.
    (block28130da4Value5) labelString: ('Type').
    block28130da4Value0
].
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredLocal12 := recoveredStack0.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack0 := recoveredLocal24.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack1 := 'widgetImplTypeLabel'.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack0 := recoveredLocal17.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack1 := 'widgetModelType'.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack2 := [:block28130dc8Arg1 | 
    | block28130dc8Value0 block28130dc8Value1 block28130dc8Value2 block28130dc8Value3 |
    block28130dc8Value0 := block28130dc8Arg1.
    block28130dc8Value1 := block28130dc8Value0.
    (block28130dc8Value1) height: (22).
    block28130dc8Value2 := block28130dc8Value0.
    block28130dc8Value3 := XmALIGNMENTBEGINNING.
    (block28130dc8Value2) alignment: (block28130dc8Value3).
    block28130dc8Value0
].
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredLocal11 := recoveredStack0.
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            recoveredStack0 := recoveredLocal24.
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            recoveredStack1 := 'widgetModelType'.
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredStack1 := 'widgetImplType'.
            recoveredPC := 524.
        ].
        recoveredStep = 524 ifTrue: [
            recoveredStack2 := [:block28130decArg1 | 
    | block28130decValue0 block28130decValue1 block28130decValue2 |
    block28130decValue0 := block28130decArg1.
    block28130decValue1 := block28130decValue0.
    (block28130decValue1) height: (22).
    block28130decValue2 := block28130decValue0.
    (block28130decValue2) visibleItemCount: (10).
    block28130decValue0
].
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredPC := 546.
        ].
        recoveredStep = 546 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasObjectComboBox: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            recoveredStack0 := recoveredLocal24.
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredStack1 := 'widgetImplType'.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 572.
        ].
        recoveredStep = 572 ifTrue: [
            recoveredStack0 := recoveredLocal17.
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            recoveredStack1 := 'widgetModelMinLabel'.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredStack2 := [:block28130e10Arg1 | 
    | block28130e10Value0 block28130e10Value1 block28130e10Value2 block28130e10Value3 block28130e10Value4 block28130e10Value5 |
    block28130e10Value0 := block28130e10Arg1.
    block28130e10Value1 := block28130e10Value0.
    (block28130e10Value1) width: (50).
    block28130e10Value2 := block28130e10Value0.
    (block28130e10Value2) height: (22).
    block28130e10Value3 := block28130e10Value0.
    block28130e10Value4 := XmALIGNMENTBEGINNING.
    (block28130e10Value3) alignment: (block28130e10Value4).
    block28130e10Value5 := block28130e10Value0.
    (block28130e10Value5) labelString: ('Min').
    block28130e10Value0
].
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 616.
        ].
        recoveredStep = 616 ifTrue: [
            recoveredStack0 := recoveredLocal24.
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredStack1 := 'widgetModelMinLabel'.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 625.
        ].
        recoveredStep = 625 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 630.
        ].
        recoveredStep = 630 ifTrue: [
            recoveredStack1 := 'widgetImplMinLabel'.
            recoveredPC := 634.
        ].
        recoveredStep = 634 ifTrue: [
            recoveredStack2 := [:block28130e34Arg1 | 
    | block28130e34Value0 block28130e34Value1 block28130e34Value2 block28130e34Value3 block28130e34Value4 block28130e34Value5 |
    block28130e34Value0 := block28130e34Arg1.
    block28130e34Value1 := block28130e34Value0.
    (block28130e34Value1) width: (50).
    block28130e34Value2 := block28130e34Value0.
    (block28130e34Value2) height: (22).
    block28130e34Value3 := block28130e34Value0.
    block28130e34Value4 := XmALIGNMENTBEGINNING.
    (block28130e34Value3) alignment: (block28130e34Value4).
    block28130e34Value5 := block28130e34Value0.
    (block28130e34Value5) labelString: ('Min').
    block28130e34Value0
].
            recoveredPC := 638.
        ].
        recoveredStep = 638 ifTrue: [
            recoveredPC := 665.
        ].
        recoveredStep = 665 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 667.
        ].
        recoveredStep = 667 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 669.
        ].
        recoveredStep = 669 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 672.
        ].
        recoveredStep = 672 ifTrue: [
            recoveredStack0 := recoveredLocal24.
            recoveredPC := 675.
        ].
        recoveredStep = 675 ifTrue: [
            recoveredStack1 := 'widgetImplMinLabel'.
            recoveredPC := 678.
        ].
        recoveredStep = 678 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 681.
        ].
        recoveredStep = 681 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            recoveredStack0 := recoveredLocal17.
            recoveredPC := 686.
        ].
        recoveredStep = 686 ifTrue: [
            recoveredStack1 := 'widgetModelMin'.
            recoveredPC := 690.
        ].
        recoveredStep = 690 ifTrue: [
            recoveredStack2 := [:block28130e58Arg1 | 
    | block28130e58Value0 block28130e58Value1 |
    block28130e58Value0 := block28130e58Arg1.
    block28130e58Value1 := block28130e58Value0.
    (block28130e58Value1) height: (22).
    block28130e58Value0
].
            recoveredPC := 694.
        ].
        recoveredStep = 694 ifTrue: [
            recoveredPC := 705.
        ].
        recoveredStep = 705 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEnhancedText: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 709.
        ].
        recoveredStep = 709 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 711.
        ].
        recoveredStep = 711 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 714.
        ].
        recoveredStep = 714 ifTrue: [
            recoveredStack0 := recoveredLocal24.
            recoveredPC := 717.
        ].
        recoveredStep = 717 ifTrue: [
            recoveredStack1 := 'widgetModelMin'.
            recoveredPC := 720.
        ].
        recoveredStep = 720 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 723.
        ].
        recoveredStep = 723 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 725.
        ].
        recoveredStep = 725 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 728.
        ].
        recoveredStep = 728 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 730.
        ].
        recoveredStep = 730 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 733.
        ].
        recoveredStep = 733 ifTrue: [
            recoveredStack1 := 'widgetImplMin'.
            recoveredPC := 736.
        ].
        recoveredStep = 736 ifTrue: [
            recoveredStack2 := [:block28130e7cArg1 | 
    | block28130e7cValue0 block28130e7cValue1 |
    block28130e7cValue0 := block28130e7cArg1.
    block28130e7cValue1 := block28130e7cValue0.
    (block28130e7cValue1) height: (22).
    block28130e7cValue0
].
            recoveredPC := 740.
        ].
        recoveredStep = 740 ifTrue: [
            recoveredPC := 751.
        ].
        recoveredStep = 751 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEnhancedText: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 755.
        ].
        recoveredStep = 755 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 757.
        ].
        recoveredStep = 757 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 760.
        ].
        recoveredStep = 760 ifTrue: [
            recoveredStack0 := recoveredLocal24.
            recoveredPC := 763.
        ].
        recoveredStep = 763 ifTrue: [
            recoveredStack1 := 'widgetImplMin'.
            recoveredPC := 766.
        ].
        recoveredStep = 766 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 769.
        ].
        recoveredStep = 769 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 771.
        ].
        recoveredStep = 771 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 774.
        ].
        recoveredStep = 774 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 776.
        ].
        recoveredStep = 776 ifTrue: [
            recoveredStack0 := recoveredLocal17.
            recoveredPC := 779.
        ].
        recoveredStep = 779 ifTrue: [
            recoveredStack1 := 'widgetModelMaxLabel'.
            recoveredPC := 782.
        ].
        recoveredStep = 782 ifTrue: [
            recoveredStack2 := [:block28130ea0Arg1 | 
    | block28130ea0Value0 block28130ea0Value1 block28130ea0Value2 block28130ea0Value3 block28130ea0Value4 block28130ea0Value5 |
    block28130ea0Value0 := block28130ea0Arg1.
    block28130ea0Value1 := block28130ea0Value0.
    (block28130ea0Value1) width: (50).
    block28130ea0Value2 := block28130ea0Value0.
    (block28130ea0Value2) height: (22).
    block28130ea0Value3 := block28130ea0Value0.
    block28130ea0Value4 := XmALIGNMENTBEGINNING.
    (block28130ea0Value3) alignment: (block28130ea0Value4).
    block28130ea0Value5 := block28130ea0Value0.
    (block28130ea0Value5) labelString: ('Max').
    block28130ea0Value0
].
            recoveredPC := 786.
        ].
        recoveredStep = 786 ifTrue: [
            recoveredPC := 813.
        ].
        recoveredStep = 813 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 815.
        ].
        recoveredStep = 815 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 817.
        ].
        recoveredStep = 817 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 820.
        ].
        recoveredStep = 820 ifTrue: [
            recoveredStack0 := recoveredLocal24.
            recoveredPC := 823.
        ].
        recoveredStep = 823 ifTrue: [
            recoveredStack1 := 'widgetModelMinLabel'.
            recoveredPC := 826.
        ].
        recoveredStep = 826 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 829.
        ].
        recoveredStep = 829 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 831.
        ].
        recoveredStep = 831 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 834.
        ].
        recoveredStep = 834 ifTrue: [
            recoveredStack1 := 'widgetImplMaxLabel'.
            recoveredPC := 838.
        ].
        recoveredStep = 838 ifTrue: [
            recoveredStack2 := [:block28130ec4Arg1 | 
    | block28130ec4Value0 block28130ec4Value1 block28130ec4Value2 block28130ec4Value3 block28130ec4Value4 block28130ec4Value5 |
    block28130ec4Value0 := block28130ec4Arg1.
    block28130ec4Value1 := block28130ec4Value0.
    (block28130ec4Value1) width: (50).
    block28130ec4Value2 := block28130ec4Value0.
    (block28130ec4Value2) height: (22).
    block28130ec4Value3 := block28130ec4Value0.
    block28130ec4Value4 := XmALIGNMENTBEGINNING.
    (block28130ec4Value3) alignment: (block28130ec4Value4).
    block28130ec4Value5 := block28130ec4Value0.
    (block28130ec4Value5) labelString: ('Max').
    block28130ec4Value0
].
            recoveredPC := 842.
        ].
        recoveredStep = 842 ifTrue: [
            recoveredPC := 869.
        ].
        recoveredStep = 869 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 871.
        ].
        recoveredStep = 871 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 873.
        ].
        recoveredStep = 873 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 876.
        ].
        recoveredStep = 876 ifTrue: [
            recoveredStack0 := recoveredLocal24.
            recoveredPC := 879.
        ].
        recoveredStep = 879 ifTrue: [
            recoveredStack1 := 'widgetImplMaxLabel'.
            recoveredPC := 882.
        ].
        recoveredStep = 882 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 885.
        ].
        recoveredStep = 885 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 887.
        ].
        recoveredStep = 887 ifTrue: [
            recoveredStack0 := recoveredLocal17.
            recoveredPC := 890.
        ].
        recoveredStep = 890 ifTrue: [
            recoveredStack1 := 'widgetModelMax'.
            recoveredPC := 894.
        ].
        recoveredStep = 894 ifTrue: [
            recoveredStack2 := [:block28130ee8Arg1 | 
    | block28130ee8Value0 block28130ee8Value1 |
    block28130ee8Value0 := block28130ee8Arg1.
    block28130ee8Value1 := block28130ee8Value0.
    (block28130ee8Value1) height: (22).
    block28130ee8Value0
].
            recoveredPC := 898.
        ].
        recoveredStep = 898 ifTrue: [
            recoveredPC := 909.
        ].
        recoveredStep = 909 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEnhancedText: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 913.
        ].
        recoveredStep = 913 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 915.
        ].
        recoveredStep = 915 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 918.
        ].
        recoveredStep = 918 ifTrue: [
            recoveredStack0 := recoveredLocal24.
            recoveredPC := 921.
        ].
        recoveredStep = 921 ifTrue: [
            recoveredStack1 := 'widgetModelMax'.
            recoveredPC := 924.
        ].
        recoveredStep = 924 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 927.
        ].
        recoveredStep = 927 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 929.
        ].
        recoveredStep = 929 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 932.
        ].
        recoveredStep = 932 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 934.
        ].
        recoveredStep = 934 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 937.
        ].
        recoveredStep = 937 ifTrue: [
            recoveredStack1 := 'widgetImplMax'.
            recoveredPC := 940.
        ].
        recoveredStep = 940 ifTrue: [
            recoveredStack2 := [:block28130f0cArg1 | 
    | block28130f0cValue0 block28130f0cValue1 |
    block28130f0cValue0 := block28130f0cArg1.
    block28130f0cValue1 := block28130f0cValue0.
    (block28130f0cValue1) height: (22).
    block28130f0cValue0
].
            recoveredPC := 944.
        ].
        recoveredStep = 944 ifTrue: [
            recoveredPC := 955.
        ].
        recoveredStep = 955 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEnhancedText: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 959.
        ].
        recoveredStep = 959 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 961.
        ].
        recoveredStep = 961 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 964.
        ].
        recoveredStep = 964 ifTrue: [
            recoveredStack0 := recoveredLocal24.
            recoveredPC := 967.
        ].
        recoveredStep = 967 ifTrue: [
            recoveredStack1 := 'widgetImplMax'.
            recoveredPC := 970.
        ].
        recoveredStep = 970 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 973.
        ].
        recoveredStep = 973 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 975.
        ].
        recoveredStep = 975 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 978.
        ].
        recoveredStep = 978 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 980.
        ].
        recoveredStep = 980 ifTrue: [
            recoveredStack0 := recoveredLocal22.
            recoveredPC := 983.
        ].
        recoveredStep = 983 ifTrue: [
            recoveredStack1 := [:recoveredBlock983Arg1 | 
    | recoveredBlock983Value0 recoveredBlock983Value1 recoveredBlock983Value2 recoveredBlock983Value3 recoveredBlock983Value4 recoveredBlock983Value5 recoveredBlock983Value6 recoveredBlock983Value7 recoveredBlock983Value8 recoveredBlock983Value9 recoveredBlock983Value10 recoveredBlock983Value11 recoveredBlock983Value12 |
    recoveredBlock983Value0 := recoveredBlock983Arg1.
    recoveredBlock983Value1 := recoveredBlock983Value0.
    recoveredBlock983Value2 := XmATTACHWIDGET.
    (recoveredBlock983Value1) topAttachment: (recoveredBlock983Value2).
    recoveredBlock983Value3 := recoveredBlock983Value0.
    recoveredBlock983Value4 := recoveredLocal24.
    recoveredBlock983Value5 := (recoveredBlock983Value4) at: ('widgetTransformationFrame').
    (recoveredBlock983Value3) topWidget: (recoveredBlock983Value5).
    recoveredBlock983Value6 := recoveredBlock983Value0.
    (recoveredBlock983Value6) topOffset: (0).
    recoveredBlock983Value7 := recoveredBlock983Value0.
    recoveredBlock983Value8 := XmATTACHFORM.
    (recoveredBlock983Value7) rightAttachment: (recoveredBlock983Value8).
    recoveredBlock983Value9 := recoveredBlock983Value0.
    (recoveredBlock983Value9) rightOffset: (5).
    recoveredBlock983Value10 := recoveredBlock983Value0.
    recoveredBlock983Value11 := XmATTACHFORM.
    (recoveredBlock983Value10) leftAttachment: (recoveredBlock983Value11).
    recoveredBlock983Value12 := (recoveredBlock983Value0) leftOffset: (5).
    recoveredBlock983Value12
].
            recoveredPC := 1052.
        ].
        recoveredStep = 1052 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1057.
        ].
        recoveredStep = 1057 ifTrue: [
            recoveredStack0 := recoveredLocal20.
            recoveredPC := 1060.
        ].
        recoveredStep = 1060 ifTrue: [
            recoveredStack1 := [:block28130f30Arg1 | 
    | block28130f30Value0 block28130f30Value1 block28130f30Value2 block28130f30Value3 block28130f30Value4 block28130f30Value5 block28130f30Value6 block28130f30Value7 block28130f30Value8 |
    block28130f30Value0 := block28130f30Arg1.
    block28130f30Value1 := block28130f30Value0.
    block28130f30Value2 := XmATTACHFORM.
    (block28130f30Value1) topAttachment: (block28130f30Value2).
    block28130f30Value3 := block28130f30Value0.
    (block28130f30Value3) topOffset: (0).
    block28130f30Value4 := block28130f30Value0.
    block28130f30Value5 := XmATTACHFORM.
    (block28130f30Value4) rightAttachment: (block28130f30Value5).
    block28130f30Value6 := block28130f30Value0.
    block28130f30Value7 := XmATTACHFORM.
    (block28130f30Value6) leftAttachment: (block28130f30Value7).
    block28130f30Value8 := (block28130f30Value0) leftOffset: (0).
    block28130f30Value8
].
            recoveredPC := 1064.
        ].
        recoveredStep = 1064 ifTrue: [
            recoveredPC := 1108.
        ].
        recoveredStep = 1108 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1113.
        ].
        recoveredStep = 1113 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 1116.
        ].
        recoveredStep = 1116 ifTrue: [
            recoveredStack1 := [:recoveredBlock1116Arg1 | 
    | recoveredBlock1116Value0 recoveredBlock1116Value1 recoveredBlock1116Value2 recoveredBlock1116Value3 recoveredBlock1116Value4 recoveredBlock1116Value5 recoveredBlock1116Value6 recoveredBlock1116Value7 recoveredBlock1116Value8 recoveredBlock1116Value9 recoveredBlock1116Value10 recoveredBlock1116Value11 recoveredBlock1116Value12 recoveredBlock1116Value13 recoveredBlock1116Value14 |
    recoveredBlock1116Value0 := recoveredBlock1116Arg1.
    recoveredBlock1116Value1 := recoveredBlock1116Value0.
    recoveredBlock1116Value2 := XmATTACHWIDGET.
    (recoveredBlock1116Value1) topAttachment: (recoveredBlock1116Value2).
    recoveredBlock1116Value3 := recoveredBlock1116Value0.
    recoveredBlock1116Value4 := recoveredLocal22.
    (recoveredBlock1116Value3) topWidget: (recoveredBlock1116Value4).
    recoveredBlock1116Value5 := recoveredBlock1116Value0.
    (recoveredBlock1116Value5) topOffset: (0).
    recoveredBlock1116Value6 := recoveredBlock1116Value0.
    recoveredBlock1116Value7 := XmATTACHFORM.
    (recoveredBlock1116Value6) bottomAttachment: (recoveredBlock1116Value7).
    recoveredBlock1116Value8 := recoveredBlock1116Value0.
    (recoveredBlock1116Value8) bottomOffset: (0).
    recoveredBlock1116Value9 := recoveredBlock1116Value0.
    recoveredBlock1116Value10 := XmATTACHFORM.
    (recoveredBlock1116Value9) leftAttachment: (recoveredBlock1116Value10).
    recoveredBlock1116Value11 := recoveredBlock1116Value0.
    (recoveredBlock1116Value11) leftOffset: (5).
    recoveredBlock1116Value12 := recoveredBlock1116Value0.
    recoveredBlock1116Value13 := XmATTACHPOSITION.
    (recoveredBlock1116Value12) rightAttachment: (recoveredBlock1116Value13).
    recoveredBlock1116Value14 := (recoveredBlock1116Value0) rightPosition: (49).
    recoveredBlock1116Value14
].
            recoveredPC := 1190.
        ].
        recoveredStep = 1190 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1195.
        ].
        recoveredStep = 1195 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 1198.
        ].
        recoveredStep = 1198 ifTrue: [
            recoveredStack1 := [:recoveredBlock1198Arg1 | 
    | recoveredBlock1198Value0 recoveredBlock1198Value1 recoveredBlock1198Value2 recoveredBlock1198Value3 recoveredBlock1198Value4 recoveredBlock1198Value5 recoveredBlock1198Value6 recoveredBlock1198Value7 recoveredBlock1198Value8 recoveredBlock1198Value9 recoveredBlock1198Value10 recoveredBlock1198Value11 recoveredBlock1198Value12 recoveredBlock1198Value13 recoveredBlock1198Value14 |
    recoveredBlock1198Value0 := recoveredBlock1198Arg1.
    recoveredBlock1198Value1 := recoveredBlock1198Value0.
    recoveredBlock1198Value2 := XmATTACHWIDGET.
    (recoveredBlock1198Value1) topAttachment: (recoveredBlock1198Value2).
    recoveredBlock1198Value3 := recoveredBlock1198Value0.
    recoveredBlock1198Value4 := recoveredLocal22.
    (recoveredBlock1198Value3) topWidget: (recoveredBlock1198Value4).
    recoveredBlock1198Value5 := recoveredBlock1198Value0.
    (recoveredBlock1198Value5) topOffset: (0).
    recoveredBlock1198Value6 := recoveredBlock1198Value0.
    recoveredBlock1198Value7 := XmATTACHFORM.
    (recoveredBlock1198Value6) bottomAttachment: (recoveredBlock1198Value7).
    recoveredBlock1198Value8 := recoveredBlock1198Value0.
    (recoveredBlock1198Value8) bottomOffset: (0).
    recoveredBlock1198Value9 := recoveredBlock1198Value0.
    recoveredBlock1198Value10 := XmATTACHFORM.
    (recoveredBlock1198Value9) rightAttachment: (recoveredBlock1198Value10).
    recoveredBlock1198Value11 := recoveredBlock1198Value0.
    (recoveredBlock1198Value11) rightOffset: (5).
    recoveredBlock1198Value12 := recoveredBlock1198Value0.
    recoveredBlock1198Value13 := XmATTACHPOSITION.
    (recoveredBlock1198Value12) leftAttachment: (recoveredBlock1198Value13).
    recoveredBlock1198Value14 := (recoveredBlock1198Value0) leftPosition: (51).
    recoveredBlock1198Value14
].
            recoveredPC := 1272.
        ].
        recoveredStep = 1272 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1277.
        ].
        recoveredStep = 1277 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 1280.
        ].
        recoveredStep = 1280 ifTrue: [
            recoveredStack1 := [:block28130f54Arg1 | 
    | block28130f54Value0 block28130f54Value1 block28130f54Value2 block28130f54Value3 block28130f54Value4 block28130f54Value5 block28130f54Value6 |
    block28130f54Value0 := block28130f54Arg1.
    block28130f54Value1 := block28130f54Value0.
    block28130f54Value2 := XmATTACHFORM.
    (block28130f54Value1) topAttachment: (block28130f54Value2).
    block28130f54Value3 := block28130f54Value0.
    (block28130f54Value3) topOffset: (3).
    block28130f54Value4 := block28130f54Value0.
    block28130f54Value5 := XmATTACHFORM.
    (block28130f54Value4) leftAttachment: (block28130f54Value5).
    block28130f54Value6 := (block28130f54Value0) leftOffset: (5).
    block28130f54Value6
].
            recoveredPC := 1284.
        ].
        recoveredStep = 1284 ifTrue: [
            recoveredPC := 1320.
        ].
        recoveredStep = 1320 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1325.
        ].
        recoveredStep = 1325 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 1328.
        ].
        recoveredStep = 1328 ifTrue: [
            recoveredStack1 := [:block28130f78Arg1 | 
    | block28130f78Value0 block28130f78Value1 block28130f78Value2 block28130f78Value3 block28130f78Value4 block28130f78Value5 block28130f78Value6 |
    block28130f78Value0 := block28130f78Arg1.
    block28130f78Value1 := block28130f78Value0.
    block28130f78Value2 := XmATTACHFORM.
    (block28130f78Value1) topAttachment: (block28130f78Value2).
    block28130f78Value3 := block28130f78Value0.
    (block28130f78Value3) topOffset: (3).
    block28130f78Value4 := block28130f78Value0.
    block28130f78Value5 := XmATTACHFORM.
    (block28130f78Value4) leftAttachment: (block28130f78Value5).
    block28130f78Value6 := (block28130f78Value0) leftOffset: (5).
    block28130f78Value6
].
            recoveredPC := 1332.
        ].
        recoveredStep = 1332 ifTrue: [
            recoveredPC := 1368.
        ].
        recoveredStep = 1368 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1373.
        ].
        recoveredStep = 1373 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 1376.
        ].
        recoveredStep = 1376 ifTrue: [
            recoveredStack1 := [:recoveredBlock1376Arg1 | 
    | recoveredBlock1376Value0 recoveredBlock1376Value1 recoveredBlock1376Value2 recoveredBlock1376Value3 recoveredBlock1376Value4 recoveredBlock1376Value5 recoveredBlock1376Value6 recoveredBlock1376Value7 recoveredBlock1376Value8 recoveredBlock1376Value9 recoveredBlock1376Value10 recoveredBlock1376Value11 recoveredBlock1376Value12 recoveredBlock1376Value13 |
    recoveredBlock1376Value0 := recoveredBlock1376Arg1.
    recoveredBlock1376Value1 := recoveredBlock1376Value0.
    recoveredBlock1376Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1376Value1) topAttachment: (recoveredBlock1376Value2).
    recoveredBlock1376Value3 := recoveredBlock1376Value0.
    recoveredBlock1376Value4 := recoveredLocal13.
    (recoveredBlock1376Value3) topWidget: (recoveredBlock1376Value4).
    recoveredBlock1376Value5 := recoveredBlock1376Value0.
    (recoveredBlock1376Value5) topOffset: (0).
    recoveredBlock1376Value6 := recoveredBlock1376Value0.
    recoveredBlock1376Value7 := XmATTACHFORM.
    (recoveredBlock1376Value6) rightAttachment: (recoveredBlock1376Value7).
    recoveredBlock1376Value8 := recoveredBlock1376Value0.
    (recoveredBlock1376Value8) rightOffset: (5).
    recoveredBlock1376Value9 := recoveredBlock1376Value0.
    recoveredBlock1376Value10 := XmATTACHWIDGET.
    (recoveredBlock1376Value9) leftAttachment: (recoveredBlock1376Value10).
    recoveredBlock1376Value11 := recoveredBlock1376Value0.
    recoveredBlock1376Value12 := recoveredLocal13.
    (recoveredBlock1376Value11) leftWidget: (recoveredBlock1376Value12).
    recoveredBlock1376Value13 := (recoveredBlock1376Value0) leftOffset: (5).
    recoveredBlock1376Value13
].
            recoveredPC := 1444.
        ].
        recoveredStep = 1444 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1449.
        ].
        recoveredStep = 1449 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 1452.
        ].
        recoveredStep = 1452 ifTrue: [
            recoveredStack1 := [:recoveredBlock1452Arg1 | 
    | recoveredBlock1452Value0 recoveredBlock1452Value1 recoveredBlock1452Value2 recoveredBlock1452Value3 recoveredBlock1452Value4 recoveredBlock1452Value5 recoveredBlock1452Value6 recoveredBlock1452Value7 recoveredBlock1452Value8 recoveredBlock1452Value9 recoveredBlock1452Value10 recoveredBlock1452Value11 recoveredBlock1452Value12 recoveredBlock1452Value13 |
    recoveredBlock1452Value0 := recoveredBlock1452Arg1.
    recoveredBlock1452Value1 := recoveredBlock1452Value0.
    recoveredBlock1452Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1452Value1) topAttachment: (recoveredBlock1452Value2).
    recoveredBlock1452Value3 := recoveredBlock1452Value0.
    recoveredBlock1452Value4 := recoveredLocal12.
    (recoveredBlock1452Value3) topWidget: (recoveredBlock1452Value4).
    recoveredBlock1452Value5 := recoveredBlock1452Value0.
    (recoveredBlock1452Value5) topOffset: (0).
    recoveredBlock1452Value6 := recoveredBlock1452Value0.
    recoveredBlock1452Value7 := XmATTACHFORM.
    (recoveredBlock1452Value6) rightAttachment: (recoveredBlock1452Value7).
    recoveredBlock1452Value8 := recoveredBlock1452Value0.
    (recoveredBlock1452Value8) rightOffset: (5).
    recoveredBlock1452Value9 := recoveredBlock1452Value0.
    recoveredBlock1452Value10 := XmATTACHWIDGET.
    (recoveredBlock1452Value9) leftAttachment: (recoveredBlock1452Value10).
    recoveredBlock1452Value11 := recoveredBlock1452Value0.
    recoveredBlock1452Value12 := recoveredLocal12.
    (recoveredBlock1452Value11) leftWidget: (recoveredBlock1452Value12).
    recoveredBlock1452Value13 := (recoveredBlock1452Value0) leftOffset: (5).
    recoveredBlock1452Value13
].
            recoveredPC := 1520.
        ].
        recoveredStep = 1520 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1525.
        ].
        recoveredStep = 1525 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 1528.
        ].
        recoveredStep = 1528 ifTrue: [
            recoveredStack1 := [:recoveredBlock1528Arg1 | 
    | recoveredBlock1528Value0 recoveredBlock1528Value1 recoveredBlock1528Value2 recoveredBlock1528Value3 recoveredBlock1528Value4 recoveredBlock1528Value5 recoveredBlock1528Value6 recoveredBlock1528Value7 recoveredBlock1528Value8 |
    recoveredBlock1528Value0 := recoveredBlock1528Arg1.
    recoveredBlock1528Value1 := recoveredBlock1528Value0.
    recoveredBlock1528Value2 := XmATTACHWIDGET.
    (recoveredBlock1528Value1) topAttachment: (recoveredBlock1528Value2).
    recoveredBlock1528Value3 := recoveredBlock1528Value0.
    recoveredBlock1528Value4 := recoveredLocal13.
    (recoveredBlock1528Value3) topWidget: (recoveredBlock1528Value4).
    recoveredBlock1528Value5 := recoveredBlock1528Value0.
    (recoveredBlock1528Value5) topOffset: (3).
    recoveredBlock1528Value6 := recoveredBlock1528Value0.
    recoveredBlock1528Value7 := XmATTACHFORM.
    (recoveredBlock1528Value6) leftAttachment: (recoveredBlock1528Value7).
    recoveredBlock1528Value8 := (recoveredBlock1528Value0) leftOffset: (5).
    recoveredBlock1528Value8
].
            recoveredPC := 1574.
        ].
        recoveredStep = 1574 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1579.
        ].
        recoveredStep = 1579 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 1582.
        ].
        recoveredStep = 1582 ifTrue: [
            recoveredStack1 := [:recoveredBlock1582Arg1 | 
    | recoveredBlock1582Value0 recoveredBlock1582Value1 recoveredBlock1582Value2 recoveredBlock1582Value3 recoveredBlock1582Value4 recoveredBlock1582Value5 recoveredBlock1582Value6 recoveredBlock1582Value7 recoveredBlock1582Value8 |
    recoveredBlock1582Value0 := recoveredBlock1582Arg1.
    recoveredBlock1582Value1 := recoveredBlock1582Value0.
    recoveredBlock1582Value2 := XmATTACHWIDGET.
    (recoveredBlock1582Value1) topAttachment: (recoveredBlock1582Value2).
    recoveredBlock1582Value3 := recoveredBlock1582Value0.
    recoveredBlock1582Value4 := recoveredLocal10.
    (recoveredBlock1582Value3) topWidget: (recoveredBlock1582Value4).
    recoveredBlock1582Value5 := recoveredBlock1582Value0.
    (recoveredBlock1582Value5) topOffset: (3).
    recoveredBlock1582Value6 := recoveredBlock1582Value0.
    recoveredBlock1582Value7 := XmATTACHFORM.
    (recoveredBlock1582Value6) leftAttachment: (recoveredBlock1582Value7).
    recoveredBlock1582Value8 := (recoveredBlock1582Value0) leftOffset: (5).
    recoveredBlock1582Value8
].
            recoveredPC := 1628.
        ].
        recoveredStep = 1628 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1633.
        ].
        recoveredStep = 1633 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 1636.
        ].
        recoveredStep = 1636 ifTrue: [
            recoveredStack1 := [:recoveredBlock1636Arg1 | 
    | recoveredBlock1636Value0 recoveredBlock1636Value1 recoveredBlock1636Value2 recoveredBlock1636Value3 recoveredBlock1636Value4 recoveredBlock1636Value5 recoveredBlock1636Value6 recoveredBlock1636Value7 recoveredBlock1636Value8 recoveredBlock1636Value9 recoveredBlock1636Value10 recoveredBlock1636Value11 recoveredBlock1636Value12 recoveredBlock1636Value13 |
    recoveredBlock1636Value0 := recoveredBlock1636Arg1.
    recoveredBlock1636Value1 := recoveredBlock1636Value0.
    recoveredBlock1636Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1636Value1) topAttachment: (recoveredBlock1636Value2).
    recoveredBlock1636Value3 := recoveredBlock1636Value0.
    recoveredBlock1636Value4 := recoveredLocal9.
    (recoveredBlock1636Value3) topWidget: (recoveredBlock1636Value4).
    recoveredBlock1636Value5 := recoveredBlock1636Value0.
    (recoveredBlock1636Value5) topOffset: (0).
    recoveredBlock1636Value6 := recoveredBlock1636Value0.
    recoveredBlock1636Value7 := XmATTACHFORM.
    (recoveredBlock1636Value6) rightAttachment: (recoveredBlock1636Value7).
    recoveredBlock1636Value8 := recoveredBlock1636Value0.
    (recoveredBlock1636Value8) rightOffset: (5).
    recoveredBlock1636Value9 := recoveredBlock1636Value0.
    recoveredBlock1636Value10 := XmATTACHWIDGET.
    (recoveredBlock1636Value9) leftAttachment: (recoveredBlock1636Value10).
    recoveredBlock1636Value11 := recoveredBlock1636Value0.
    recoveredBlock1636Value12 := recoveredLocal9.
    (recoveredBlock1636Value11) leftWidget: (recoveredBlock1636Value12).
    recoveredBlock1636Value13 := (recoveredBlock1636Value0) leftOffset: (5).
    recoveredBlock1636Value13
].
            recoveredPC := 1704.
        ].
        recoveredStep = 1704 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1709.
        ].
        recoveredStep = 1709 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 1712.
        ].
        recoveredStep = 1712 ifTrue: [
            recoveredStack1 := [:recoveredBlock1712Arg1 | 
    | recoveredBlock1712Value0 recoveredBlock1712Value1 recoveredBlock1712Value2 recoveredBlock1712Value3 recoveredBlock1712Value4 recoveredBlock1712Value5 recoveredBlock1712Value6 recoveredBlock1712Value7 recoveredBlock1712Value8 recoveredBlock1712Value9 recoveredBlock1712Value10 recoveredBlock1712Value11 recoveredBlock1712Value12 recoveredBlock1712Value13 |
    recoveredBlock1712Value0 := recoveredBlock1712Arg1.
    recoveredBlock1712Value1 := recoveredBlock1712Value0.
    recoveredBlock1712Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1712Value1) topAttachment: (recoveredBlock1712Value2).
    recoveredBlock1712Value3 := recoveredBlock1712Value0.
    recoveredBlock1712Value4 := recoveredLocal8.
    (recoveredBlock1712Value3) topWidget: (recoveredBlock1712Value4).
    recoveredBlock1712Value5 := recoveredBlock1712Value0.
    (recoveredBlock1712Value5) topOffset: (0).
    recoveredBlock1712Value6 := recoveredBlock1712Value0.
    recoveredBlock1712Value7 := XmATTACHFORM.
    (recoveredBlock1712Value6) rightAttachment: (recoveredBlock1712Value7).
    recoveredBlock1712Value8 := recoveredBlock1712Value0.
    (recoveredBlock1712Value8) rightOffset: (5).
    recoveredBlock1712Value9 := recoveredBlock1712Value0.
    recoveredBlock1712Value10 := XmATTACHWIDGET.
    (recoveredBlock1712Value9) leftAttachment: (recoveredBlock1712Value10).
    recoveredBlock1712Value11 := recoveredBlock1712Value0.
    recoveredBlock1712Value12 := recoveredLocal8.
    (recoveredBlock1712Value11) leftWidget: (recoveredBlock1712Value12).
    recoveredBlock1712Value13 := (recoveredBlock1712Value0) leftOffset: (5).
    recoveredBlock1712Value13
].
            recoveredPC := 1780.
        ].
        recoveredStep = 1780 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1785.
        ].
        recoveredStep = 1785 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 1788.
        ].
        recoveredStep = 1788 ifTrue: [
            recoveredStack1 := [:recoveredBlock1788Arg1 | 
    | recoveredBlock1788Value0 recoveredBlock1788Value1 recoveredBlock1788Value2 recoveredBlock1788Value3 recoveredBlock1788Value4 recoveredBlock1788Value5 recoveredBlock1788Value6 recoveredBlock1788Value7 recoveredBlock1788Value8 |
    recoveredBlock1788Value0 := recoveredBlock1788Arg1.
    recoveredBlock1788Value1 := recoveredBlock1788Value0.
    recoveredBlock1788Value2 := XmATTACHWIDGET.
    (recoveredBlock1788Value1) topAttachment: (recoveredBlock1788Value2).
    recoveredBlock1788Value3 := recoveredBlock1788Value0.
    recoveredBlock1788Value4 := recoveredLocal7.
    (recoveredBlock1788Value3) topWidget: (recoveredBlock1788Value4).
    recoveredBlock1788Value5 := recoveredBlock1788Value0.
    (recoveredBlock1788Value5) topOffset: (3).
    recoveredBlock1788Value6 := recoveredBlock1788Value0.
    recoveredBlock1788Value7 := XmATTACHFORM.
    (recoveredBlock1788Value6) leftAttachment: (recoveredBlock1788Value7).
    recoveredBlock1788Value8 := (recoveredBlock1788Value0) leftOffset: (5).
    recoveredBlock1788Value8
].
            recoveredPC := 1834.
        ].
        recoveredStep = 1834 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1839.
        ].
        recoveredStep = 1839 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 1842.
        ].
        recoveredStep = 1842 ifTrue: [
            recoveredStack1 := [:recoveredBlock1842Arg1 | 
    | recoveredBlock1842Value0 recoveredBlock1842Value1 recoveredBlock1842Value2 recoveredBlock1842Value3 recoveredBlock1842Value4 recoveredBlock1842Value5 recoveredBlock1842Value6 recoveredBlock1842Value7 recoveredBlock1842Value8 |
    recoveredBlock1842Value0 := recoveredBlock1842Arg1.
    recoveredBlock1842Value1 := recoveredBlock1842Value0.
    recoveredBlock1842Value2 := XmATTACHWIDGET.
    (recoveredBlock1842Value1) topAttachment: (recoveredBlock1842Value2).
    recoveredBlock1842Value3 := recoveredBlock1842Value0.
    recoveredBlock1842Value4 := recoveredLocal6.
    (recoveredBlock1842Value3) topWidget: (recoveredBlock1842Value4).
    recoveredBlock1842Value5 := recoveredBlock1842Value0.
    (recoveredBlock1842Value5) topOffset: (3).
    recoveredBlock1842Value6 := recoveredBlock1842Value0.
    recoveredBlock1842Value7 := XmATTACHFORM.
    (recoveredBlock1842Value6) leftAttachment: (recoveredBlock1842Value7).
    recoveredBlock1842Value8 := (recoveredBlock1842Value0) leftOffset: (5).
    recoveredBlock1842Value8
].
            recoveredPC := 1888.
        ].
        recoveredStep = 1888 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1893.
        ].
        recoveredStep = 1893 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 1896.
        ].
        recoveredStep = 1896 ifTrue: [
            recoveredStack1 := [:recoveredBlock1896Arg1 | 
    | recoveredBlock1896Value0 recoveredBlock1896Value1 recoveredBlock1896Value2 recoveredBlock1896Value3 recoveredBlock1896Value4 recoveredBlock1896Value5 recoveredBlock1896Value6 recoveredBlock1896Value7 recoveredBlock1896Value8 recoveredBlock1896Value9 recoveredBlock1896Value10 recoveredBlock1896Value11 recoveredBlock1896Value12 recoveredBlock1896Value13 |
    recoveredBlock1896Value0 := recoveredBlock1896Arg1.
    recoveredBlock1896Value1 := recoveredBlock1896Value0.
    recoveredBlock1896Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1896Value1) topAttachment: (recoveredBlock1896Value2).
    recoveredBlock1896Value3 := recoveredBlock1896Value0.
    recoveredBlock1896Value4 := recoveredLocal5.
    (recoveredBlock1896Value3) topWidget: (recoveredBlock1896Value4).
    recoveredBlock1896Value5 := recoveredBlock1896Value0.
    (recoveredBlock1896Value5) topOffset: (0).
    recoveredBlock1896Value6 := recoveredBlock1896Value0.
    recoveredBlock1896Value7 := XmATTACHFORM.
    (recoveredBlock1896Value6) rightAttachment: (recoveredBlock1896Value7).
    recoveredBlock1896Value8 := recoveredBlock1896Value0.
    (recoveredBlock1896Value8) rightOffset: (5).
    recoveredBlock1896Value9 := recoveredBlock1896Value0.
    recoveredBlock1896Value10 := XmATTACHWIDGET.
    (recoveredBlock1896Value9) leftAttachment: (recoveredBlock1896Value10).
    recoveredBlock1896Value11 := recoveredBlock1896Value0.
    recoveredBlock1896Value12 := recoveredLocal5.
    (recoveredBlock1896Value11) leftWidget: (recoveredBlock1896Value12).
    recoveredBlock1896Value13 := (recoveredBlock1896Value0) leftOffset: (5).
    recoveredBlock1896Value13
].
            recoveredPC := 1964.
        ].
        recoveredStep = 1964 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1969.
        ].
        recoveredStep = 1969 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 1972.
        ].
        recoveredStep = 1972 ifTrue: [
            recoveredStack1 := [:recoveredBlock1972Arg1 | 
    | recoveredBlock1972Value0 recoveredBlock1972Value1 recoveredBlock1972Value2 recoveredBlock1972Value3 recoveredBlock1972Value4 recoveredBlock1972Value5 recoveredBlock1972Value6 recoveredBlock1972Value7 recoveredBlock1972Value8 recoveredBlock1972Value9 recoveredBlock1972Value10 recoveredBlock1972Value11 recoveredBlock1972Value12 recoveredBlock1972Value13 |
    recoveredBlock1972Value0 := recoveredBlock1972Arg1.
    recoveredBlock1972Value1 := recoveredBlock1972Value0.
    recoveredBlock1972Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1972Value1) topAttachment: (recoveredBlock1972Value2).
    recoveredBlock1972Value3 := recoveredBlock1972Value0.
    recoveredBlock1972Value4 := recoveredLocal4.
    (recoveredBlock1972Value3) topWidget: (recoveredBlock1972Value4).
    recoveredBlock1972Value5 := recoveredBlock1972Value0.
    (recoveredBlock1972Value5) topOffset: (0).
    recoveredBlock1972Value6 := recoveredBlock1972Value0.
    recoveredBlock1972Value7 := XmATTACHFORM.
    (recoveredBlock1972Value6) rightAttachment: (recoveredBlock1972Value7).
    recoveredBlock1972Value8 := recoveredBlock1972Value0.
    (recoveredBlock1972Value8) rightOffset: (5).
    recoveredBlock1972Value9 := recoveredBlock1972Value0.
    recoveredBlock1972Value10 := XmATTACHWIDGET.
    (recoveredBlock1972Value9) leftAttachment: (recoveredBlock1972Value10).
    recoveredBlock1972Value11 := recoveredBlock1972Value0.
    recoveredBlock1972Value12 := recoveredLocal4.
    (recoveredBlock1972Value11) leftWidget: (recoveredBlock1972Value12).
    recoveredBlock1972Value13 := (recoveredBlock1972Value0) leftOffset: (5).
    recoveredBlock1972Value13
].
            recoveredPC := 2040.
        ].
        recoveredStep = 2040 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 2045.
        ].
        recoveredStep = 2045 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 2048.
        ].
        recoveredStep = 2048 ifTrue: [
            recoveredStack1 := XmNsingleSelectionCallback.
            recoveredPC := 2052.
        ].
        recoveredStep = 2052 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 2053.
        ].
        recoveredStep = 2053 ifTrue: [
            recoveredStack3 := 'widgetImplTypeSingle:clientData:callData:'.
            recoveredPC := 2056.
        ].
        recoveredStep = 2056 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 2057.
        ].
        recoveredStep = 2057 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 2061.
        ].
        recoveredStep = 2061 ifTrue: [
            recoveredStack0 := recoveredLocal19.
            recoveredPC := 2064.
        ].
        recoveredStep = 2064 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 2068.
        ].
        recoveredStep = 2068 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 2069.
        ].
        recoveredStep = 2069 ifTrue: [
            recoveredStack3 := 'widgetModelMasterValue:clientData:callData:'.
            recoveredPC := 2072.
        ].
        recoveredStep = 2072 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 2073.
        ].
        recoveredStep = 2073 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 2077.
        ].
        recoveredStep = 2077 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 2080.
        ].
        recoveredStep = 2080 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 2084.
        ].
        recoveredStep = 2084 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 2085.
        ].
        recoveredStep = 2085 ifTrue: [
            recoveredStack3 := 'widgetImplMasterValue:clientData:callData:'.
            recoveredPC := 2088.
        ].
        recoveredStep = 2088 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 2089.
        ].
        recoveredStep = 2089 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 2093.
        ].
        recoveredStep = 2093 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 2096.
        ].
        recoveredStep = 2096 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 2097.
        ].
        recoveredStep = 2097 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2100.
        ].
        recoveredStep = 2100 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2101.
        ].
        recoveredStep = 2101 ifTrue: [
            recoveredStack4 := 'widgetModelMinActivate:clientData:callData:'.
            recoveredPC := 2104.
        ].
        recoveredStep = 2104 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2105.
        ].
        recoveredStep = 2105 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 2109.
        ].
        recoveredStep = 2109 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 2112.
        ].
        recoveredStep = 2112 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2113.
        ].
        recoveredStep = 2113 ifTrue: [
            recoveredStack4 := 'widgetModelMinLosing:clientData:callData:'.
            recoveredPC := 2116.
        ].
        recoveredStep = 2116 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2117.
        ].
        recoveredStep = 2117 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 2121.
        ].
        recoveredStep = 2121 ifTrue: [
            recoveredStack2 := XmNfocusCallback.
            recoveredPC := 2124.
        ].
        recoveredStep = 2124 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2125.
        ].
        recoveredStep = 2125 ifTrue: [
            recoveredStack4 := 'widgetGettingFocus:clientData:callData:'.
            recoveredPC := 2128.
        ].
        recoveredStep = 2128 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2129.
        ].
        recoveredStep = 2129 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2133.
        ].
        recoveredStep = 2133 ifTrue: [
            recoveredStack1 := XmNlosingFocusCallback.
            recoveredPC := 2136.
        ].
        recoveredStep = 2136 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 2137.
        ].
        recoveredStep = 2137 ifTrue: [
            recoveredStack3 := 'widgetLosingFocus:clientData:callData:'.
            recoveredPC := 2140.
        ].
        recoveredStep = 2140 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 2141.
        ].
        recoveredStep = 2141 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 2145.
        ].
        recoveredStep = 2145 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 2148.
        ].
        recoveredStep = 2148 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 2149.
        ].
        recoveredStep = 2149 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2152.
        ].
        recoveredStep = 2152 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2153.
        ].
        recoveredStep = 2153 ifTrue: [
            recoveredStack4 := 'widgetModelMaxActivate:clientData:callData:'.
            recoveredPC := 2156.
        ].
        recoveredStep = 2156 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2157.
        ].
        recoveredStep = 2157 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 2161.
        ].
        recoveredStep = 2161 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 2164.
        ].
        recoveredStep = 2164 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2165.
        ].
        recoveredStep = 2165 ifTrue: [
            recoveredStack4 := 'widgetModelMaxLosing:clientData:callData:'.
            recoveredPC := 2168.
        ].
        recoveredStep = 2168 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2169.
        ].
        recoveredStep = 2169 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 2173.
        ].
        recoveredStep = 2173 ifTrue: [
            recoveredStack2 := XmNfocusCallback.
            recoveredPC := 2176.
        ].
        recoveredStep = 2176 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2177.
        ].
        recoveredStep = 2177 ifTrue: [
            recoveredStack4 := 'widgetGettingFocus:clientData:callData:'.
            recoveredPC := 2180.
        ].
        recoveredStep = 2180 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2181.
        ].
        recoveredStep = 2181 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2185.
        ].
        recoveredStep = 2185 ifTrue: [
            recoveredStack1 := XmNlosingFocusCallback.
            recoveredPC := 2188.
        ].
        recoveredStep = 2188 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 2189.
        ].
        recoveredStep = 2189 ifTrue: [
            recoveredStack3 := 'widgetLosingFocus:clientData:callData:'.
            recoveredPC := 2192.
        ].
        recoveredStep = 2192 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 2193.
        ].
        recoveredStep = 2193 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 2197.
        ].
        recoveredStep = 2197 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 2200.
        ].
        recoveredStep = 2200 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 2201.
        ].
        recoveredStep = 2201 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2204.
        ].
        recoveredStep = 2204 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2205.
        ].
        recoveredStep = 2205 ifTrue: [
            recoveredStack4 := 'widgetImplMinActivate:clientData:callData:'.
            recoveredPC := 2208.
        ].
        recoveredStep = 2208 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2209.
        ].
        recoveredStep = 2209 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 2213.
        ].
        recoveredStep = 2213 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 2216.
        ].
        recoveredStep = 2216 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2217.
        ].
        recoveredStep = 2217 ifTrue: [
            recoveredStack4 := 'widgetImplMinLosing:clientData:callData:'.
            recoveredPC := 2220.
        ].
        recoveredStep = 2220 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2221.
        ].
        recoveredStep = 2221 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 2225.
        ].
        recoveredStep = 2225 ifTrue: [
            recoveredStack2 := XmNfocusCallback.
            recoveredPC := 2228.
        ].
        recoveredStep = 2228 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2229.
        ].
        recoveredStep = 2229 ifTrue: [
            recoveredStack4 := 'widgetGettingFocus:clientData:callData:'.
            recoveredPC := 2232.
        ].
        recoveredStep = 2232 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2233.
        ].
        recoveredStep = 2233 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2237.
        ].
        recoveredStep = 2237 ifTrue: [
            recoveredStack1 := XmNlosingFocusCallback.
            recoveredPC := 2240.
        ].
        recoveredStep = 2240 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 2241.
        ].
        recoveredStep = 2241 ifTrue: [
            recoveredStack3 := 'widgetLosingFocus:clientData:callData:'.
            recoveredPC := 2244.
        ].
        recoveredStep = 2244 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 2245.
        ].
        recoveredStep = 2245 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 2249.
        ].
        recoveredStep = 2249 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 2252.
        ].
        recoveredStep = 2252 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 2253.
        ].
        recoveredStep = 2253 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2256.
        ].
        recoveredStep = 2256 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2257.
        ].
        recoveredStep = 2257 ifTrue: [
            recoveredStack4 := 'widgetImplMaxActivate:clientData:callData:'.
            recoveredPC := 2260.
        ].
        recoveredStep = 2260 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2261.
        ].
        recoveredStep = 2261 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 2265.
        ].
        recoveredStep = 2265 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 2268.
        ].
        recoveredStep = 2268 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2269.
        ].
        recoveredStep = 2269 ifTrue: [
            recoveredStack4 := 'widgetImplMaxLosing:clientData:callData:'.
            recoveredPC := 2272.
        ].
        recoveredStep = 2272 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2273.
        ].
        recoveredStep = 2273 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 2277.
        ].
        recoveredStep = 2277 ifTrue: [
            recoveredStack2 := XmNfocusCallback.
            recoveredPC := 2280.
        ].
        recoveredStep = 2280 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2281.
        ].
        recoveredStep = 2281 ifTrue: [
            recoveredStack4 := 'widgetGettingFocus:clientData:callData:'.
            recoveredPC := 2284.
        ].
        recoveredStep = 2284 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2285.
        ].
        recoveredStep = 2285 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2289.
        ].
        recoveredStep = 2289 ifTrue: [
            recoveredStack1 := XmNlosingFocusCallback.
            recoveredPC := 2292.
        ].
        recoveredStep = 2292 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 2293.
        ].
        recoveredStep = 2293 ifTrue: [
            recoveredStack3 := 'widgetLosingFocus:clientData:callData:'.
            recoveredPC := 2296.
        ].
        recoveredStep = 2296 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 2297.
        ].
        recoveredStep = 2297 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 2301.
        ].
        recoveredStep = 2301 ifTrue: [
            recoveredStack0 := recoveredLocal23.
            recoveredPC := 2304.
        ].
        recoveredStep = 2304 ifTrue: [
            (recoveredStack0) updateFonts.
            recoveredPC := 2309.
        ].
        recoveredStep = 2309 ifTrue: [
            recoveredStack0 := recoveredLocal24.
            recoveredPC := 2312.
        ].
        recoveredStep = 2312 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

