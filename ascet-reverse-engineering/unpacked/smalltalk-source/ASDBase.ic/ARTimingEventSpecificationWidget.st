"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20045ddc; bytecode file offset 0x9451f8"
!ARTimingEventSpecificationWidget methodsFor: 'recovered'!
periodWidget
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('period').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008764c; bytecode file offset 0x983f38"
!ARTimingEventSpecificationWidget methodsFor: 'recovered'!
activationLosingFocusCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) eventSpecificationHandler.
    (recoveredValue0) setSoftwareComponentModified.
    ^self
! !

"ASDBase.ic method 0x201c8e64; bytecode file offset 0xac5730"
!ARTimingEventSpecificationWidget methodsFor: 'recovered'!
initializeCallbacks
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) periodWidget.
    recoveredValue1 := XmNlosingFocusCallback.
    (recoveredValue0) addCallback: (recoveredValue1) receiver: (self) selector: ('activationLosingFocusCallback:clientData:callData:') clientData: (nil).
    recoveredValue2 := (self) periodWidget.
    recoveredValue3 := XmNvalueChangedCallback.
    (recoveredValue2) addCallback: (recoveredValue3) receiver: (self) selector: ('changePeriodCallback:clientData:callData:') clientData: (nil).
    ^self
! !

"ASDBase.ic method 0x2022a648; bytecode file offset 0xb26f10"
!ARTimingEventSpecificationWidget methodsFor: 'recovered'!
changePeriodCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventSpec.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventSpec.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) period: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventSpec.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFloat.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) period: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202eadc8; bytecode file offset 0xbe76a0"
!ARTimingEventSpecificationWidget methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            recoveredStack0 := (recoveredStack0) periodWidget.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'checkUnsignedFloat:'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) characterMethod: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventSpec.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventSpec.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) period.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) periodWidget.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) eventSpec.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) period.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) periodWidget.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
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

"ASDBase.ic method 0x205a3eb8; bytecode file offset 0xea0810"
!ARTimingEventSpecificationWidget methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'frame'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block281159d8Arg1 | 
    | block281159d8Value0 block281159d8Value1 block281159d8Value2 |
    block281159d8Value0 := block281159d8Arg1.
    block281159d8Value1 := block281159d8Value0.
    (block281159d8Value1) marginHeight: (5).
    block281159d8Value2 := block281159d8Value0.
    (block281159d8Value2) labelString: ('Timing Settings').
    block281159d8Value0
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
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
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 'frame'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := 'frameForm'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := [:block281159fcArg1 | 
    | block281159fcValue0 |
    block281159fcValue0 := block281159fcArg1.
    block281159fcValue0
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := 'frameForm'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := 'Period'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := [:block28115a20Arg1 | 
    | block28115a20Value0 block28115a20Value1 block28115a20Value2 block28115a20Value3 |
    block28115a20Value0 := block28115a20Arg1.
    block28115a20Value1 := block28115a20Value0.
    block28115a20Value2 := XmALIGNMENTBEGINNING.
    (block28115a20Value1) alignment: (block28115a20Value2).
    block28115a20Value3 := block28115a20Value0.
    (block28115a20Value3) width: (60).
    block28115a20Value0
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := 'periodLabel'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := 'period'.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := [:block28115a44Arg1 | 
    | block28115a44Value0 block28115a44Value1 |
    block28115a44Value0 := block28115a44Arg1.
    block28115a44Value1 := block28115a44Value0.
    (block28115a44Value1) height: (22).
    block28115a44Value0
].
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEnhancedText: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := 'period'.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := [:block28115a68Arg1 | 
    | block28115a68Value0 block28115a68Value1 block28115a68Value2 block28115a68Value3 block28115a68Value4 block28115a68Value5 block28115a68Value6 block28115a68Value7 block28115a68Value8 block28115a68Value9 |
    block28115a68Value0 := block28115a68Arg1.
    block28115a68Value1 := block28115a68Value0.
    block28115a68Value2 := XmATTACHFORM.
    (block28115a68Value1) topAttachment: (block28115a68Value2).
    block28115a68Value3 := block28115a68Value0.
    (block28115a68Value3) topOffset: (10).
    block28115a68Value4 := block28115a68Value0.
    block28115a68Value5 := XmATTACHFORM.
    (block28115a68Value4) leftAttachment: (block28115a68Value5).
    block28115a68Value6 := block28115a68Value0.
    (block28115a68Value6) leftOffset: (5).
    block28115a68Value7 := block28115a68Value0.
    block28115a68Value8 := XmATTACHFORM.
    (block28115a68Value7) rightAttachment: (block28115a68Value8).
    block28115a68Value9 := (block28115a68Value0) rightOffset: (5).
    block28115a68Value9
].
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := [:block28115a8cArg1 | 
    | block28115a8cValue0 block28115a8cValue1 block28115a8cValue2 block28115a8cValue3 block28115a8cValue4 block28115a8cValue5 block28115a8cValue6 |
    block28115a8cValue0 := block28115a8cArg1.
    block28115a8cValue1 := block28115a8cValue0.
    block28115a8cValue2 := XmATTACHFORM.
    (block28115a8cValue1) topAttachment: (block28115a8cValue2).
    block28115a8cValue3 := block28115a8cValue0.
    (block28115a8cValue3) topOffset: (0).
    block28115a8cValue4 := block28115a8cValue0.
    block28115a8cValue5 := XmATTACHFORM.
    (block28115a8cValue4) leftAttachment: (block28115a8cValue5).
    block28115a8cValue6 := (block28115a8cValue0) leftOffset: (5).
    block28115a8cValue6
].
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := [:recoveredBlock228Arg1 | 
    | recoveredBlock228Value0 recoveredBlock228Value1 recoveredBlock228Value2 recoveredBlock228Value3 recoveredBlock228Value4 recoveredBlock228Value5 recoveredBlock228Value6 recoveredBlock228Value7 recoveredBlock228Value8 recoveredBlock228Value9 recoveredBlock228Value10 recoveredBlock228Value11 |
    recoveredBlock228Value0 := recoveredBlock228Arg1.
    recoveredBlock228Value1 := recoveredBlock228Value0.
    recoveredBlock228Value2 := XmATTACHFORM.
    (recoveredBlock228Value1) topAttachment: (recoveredBlock228Value2).
    recoveredBlock228Value3 := recoveredBlock228Value0.
    (recoveredBlock228Value3) topOffset: (0).
    recoveredBlock228Value4 := recoveredBlock228Value0.
    recoveredBlock228Value5 := XmATTACHFORM.
    (recoveredBlock228Value4) rightAttachment: (recoveredBlock228Value5).
    recoveredBlock228Value6 := recoveredBlock228Value0.
    (recoveredBlock228Value6) rightOffset: (5).
    recoveredBlock228Value7 := recoveredBlock228Value0.
    recoveredBlock228Value8 := XmATTACHWIDGET.
    (recoveredBlock228Value7) leftAttachment: (recoveredBlock228Value8).
    recoveredBlock228Value9 := recoveredBlock228Value0.
    recoveredBlock228Value10 := recoveredLocal4.
    (recoveredBlock228Value9) leftWidget: (recoveredBlock228Value10).
    recoveredBlock228Value11 := (recoveredBlock228Value0) leftOffset: (5).
    recoveredBlock228Value11
].
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            (recoveredStack0) createSecondLabelBeside: (recoveredStack1) form: (recoveredStack2) widgetDictionary: (recoveredStack3).
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

