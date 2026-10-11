"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003918; bytecode file offset 0x90206c"
!RB1BitMeasureDataWidget methodsFor: 'recovered'!
implView: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20044a6c; bytecode file offset 0x9451f8"
!RB1BitMeasureDataWidget methodsFor: 'recovered'!
nameWidget
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('nameLabel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20073be0; bytecode file offset 0x970b34"
!RB1BitMeasureDataWidget methodsFor: 'recovered'!
valueWidget
    ^nil
! !

"ASDBase.ic method 0x20073de8; bytecode file offset 0x970b34"
!RB1BitMeasureDataWidget methodsFor: 'recovered'!
unitWidget
    ^nil
! !

"ASDBase.ic method 0x200c9f48; bytecode file offset 0x9c6804"
!RB1BitMeasureDataWidget methodsFor: 'recovered'!
toggleButtonValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) set.
    recoveredValue3 := (recoveredValue2) not.
    (recoveredValue0) setState: (recoveredValue3) notify: (false).
    ^self
! !

"ASDBase.ic method 0x200d634c; bytecode file offset 0x9d3134"
!RB1BitMeasureDataWidget methodsFor: 'recovered'!
initializeResources
    super initializeResources.
    (self) setHex.
    ^self
! !

"ASDBase.ic method 0x2017ea14; bytecode file offset 0xa7b2dc"
!RB1BitMeasureDataWidget methodsFor: 'recovered'!
initializeTogglesAndLabels
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    toggles := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    labels := recoveredValue3.
    recoveredValue4 := toggles.
    recoveredValue5 := (self) widgetAt: ('bit1Toggle').
    (recoveredValue4) add: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201db094; bytecode file offset 0xad7954"
!RB1BitMeasureDataWidget methodsFor: 'recovered'!
value: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := toggles.
    recoveredValue1 := [:recoveredBlock6Arg1 :recoveredBlock6Arg2 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 recoveredBlock6Value5 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := recoveredBlock6Arg2.
    recoveredBlock6Value3 := (recoveredBlock6Value1) bitAt: (recoveredBlock6Value2).
    recoveredBlock6Value4 := (recoveredBlock6Value3) = (1).
    recoveredBlock6Value5 := (recoveredBlock6Value0) setState: (recoveredBlock6Value4) notify: (false).
    recoveredBlock6Value5
].
    (recoveredValue0) doWithIndex: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x203ba620; bytecode file offset 0xcb6f08"
!RB1BitMeasureDataWidget methodsFor: 'recovered'!
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
            recoveredStack0 := valueFont.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := valueFont.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontStruct.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) freeFont.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := RBFontGlobal.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontTiny.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            valueFont := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := valueFont.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontStruct.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            valueFont := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) nameWidget.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := valueFont.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) initializeTogglesAndLabels.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := labels.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := [:recoveredBlock49Arg1 :recoveredBlock49Arg2 | 
    | recoveredBlock49Stack0 recoveredBlock49Stack1 recoveredBlock49Stack2 recoveredBlock49Stack3 recoveredBlock49PC recoveredBlock49Step recoveredBlock49Done recoveredBlock49Result |
    recoveredBlock49Stack0 := self.
    recoveredBlock49PC := 56.
    recoveredBlock49Done := false.
    [recoveredBlock49Done not] whileTrue: [
        recoveredBlock49Step := recoveredBlock49PC.
        recoveredBlock49Step = 56 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Arg1.
            recoveredBlock49PC := 57.
        ].
        recoveredBlock49Step = 57 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Arg2.
            recoveredBlock49PC := 58.
        ].
        recoveredBlock49Step = 58 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) + (-1).
            recoveredBlock49PC := 59.
        ].
        recoveredBlock49Step = 59 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) asHexString.
            recoveredBlock49PC := 61.
        ].
        recoveredBlock49Step = 61 ifTrue: [
            (recoveredBlock49Stack1) labelString: (recoveredBlock49Stack2).
            recoveredBlock49PC := 63.
        ].
        recoveredBlock49Step = 63 ifTrue: [
            recoveredBlock49Stack1 := nil.
            recoveredBlock49PC := 64.
        ].
        recoveredBlock49Step = 64 ifTrue: [
            recoveredBlock49Stack2 := valueFont.
            recoveredBlock49PC := 66.
        ].
        recoveredBlock49Step = 66 ifTrue: [
            (recoveredBlock49Stack2 == nil) ifTrue: [recoveredBlock49PC := 76] ifFalse: [recoveredBlock49PC := 70].
        ].
        recoveredBlock49Step = 70 ifTrue: [
            recoveredBlock49PC := 71.
        ].
        recoveredBlock49Step = 71 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Arg1.
            recoveredBlock49PC := 72.
        ].
        recoveredBlock49Step = 72 ifTrue: [
            recoveredBlock49Stack2 := valueFont.
            recoveredBlock49PC := 74.
        ].
        recoveredBlock49Step = 74 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) fontList: (recoveredBlock49Stack2).
            recoveredBlock49PC := 76.
        ].
        recoveredBlock49Step = 76 ifTrue: [
            recoveredBlock49Result := recoveredBlock49Stack1.
            recoveredBlock49Done := true.
        ].
    ].
    recoveredBlock49Result
].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205a408c; bytecode file offset 0xea09e4"
!RB1BitMeasureDataWidget methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 'bit1Toggle'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 recoveredBlock29Value3 recoveredBlock29Value4 recoveredBlock29Value5 recoveredBlock29Value6 recoveredBlock29Value7 recoveredBlock29Value8 recoveredBlock29Value9 recoveredBlock29Value10 recoveredBlock29Value11 recoveredBlock29Value12 recoveredBlock29Value13 recoveredBlock29Value14 recoveredBlock29Value15 recoveredBlock29Value16 recoveredBlock29Value17 |
    recoveredBlock29Value0 := recoveredBlock29Arg1.
    recoveredBlock29Value1 := recoveredBlock29Value0.
    recoveredBlock29Value2 := recoveredLocal4.
    recoveredBlock29Value3 := (5) * (recoveredBlock29Value2).
    recoveredBlock29Value4 := (recoveredBlock29Value3) rounded.
    (recoveredBlock29Value1) y: (recoveredBlock29Value4).
    recoveredBlock29Value5 := recoveredBlock29Value0.
    (recoveredBlock29Value5) recomputeSize: (false).
    recoveredBlock29Value6 := recoveredBlock29Value0.
    recoveredBlock29Value7 := recoveredLocal5.
    recoveredBlock29Value8 := (440) * (recoveredBlock29Value7).
    recoveredBlock29Value9 := (recoveredBlock29Value8) rounded.
    (recoveredBlock29Value6) x: (recoveredBlock29Value9).
    recoveredBlock29Value10 := recoveredBlock29Value0.
    recoveredBlock29Value11 := recoveredLocal4.
    recoveredBlock29Value12 := (13) * (recoveredBlock29Value11).
    recoveredBlock29Value13 := (recoveredBlock29Value12) rounded.
    (recoveredBlock29Value10) height: (recoveredBlock29Value13).
    recoveredBlock29Value14 := recoveredLocal5.
    recoveredBlock29Value15 := (13) * (recoveredBlock29Value14).
    recoveredBlock29Value16 := (recoveredBlock29Value15) rounded.
    recoveredBlock29Value17 := (recoveredBlock29Value0) width: (recoveredBlock29Value16).
    recoveredBlock29Value17
].
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := 'bit1Toggle'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := 'nameLabel'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := [:recoveredBlock108Arg1 | 
    | recoveredBlock108Value0 recoveredBlock108Value1 recoveredBlock108Value2 recoveredBlock108Value3 recoveredBlock108Value4 recoveredBlock108Value5 recoveredBlock108Value6 recoveredBlock108Value7 recoveredBlock108Value8 recoveredBlock108Value9 recoveredBlock108Value10 recoveredBlock108Value11 recoveredBlock108Value12 recoveredBlock108Value13 recoveredBlock108Value14 recoveredBlock108Value15 |
    recoveredBlock108Value0 := recoveredBlock108Arg1.
    recoveredBlock108Value1 := recoveredBlock108Value0.
    recoveredBlock108Value2 := recoveredLocal5.
    recoveredBlock108Value3 := (5) * (recoveredBlock108Value2).
    recoveredBlock108Value4 := (recoveredBlock108Value3) rounded.
    (recoveredBlock108Value1) x: (recoveredBlock108Value4).
    recoveredBlock108Value5 := recoveredBlock108Value0.
    recoveredBlock108Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock108Value5) alignment: (recoveredBlock108Value6).
    recoveredBlock108Value7 := recoveredBlock108Value0.
    (recoveredBlock108Value7) labelString: ('<Name>').
    recoveredBlock108Value8 := recoveredBlock108Value0.
    recoveredBlock108Value9 := recoveredLocal4.
    recoveredBlock108Value10 := (5) * (recoveredBlock108Value9).
    recoveredBlock108Value11 := (recoveredBlock108Value10) rounded.
    (recoveredBlock108Value8) y: (recoveredBlock108Value11).
    recoveredBlock108Value12 := recoveredLocal4.
    recoveredBlock108Value13 := (16) * (recoveredBlock108Value12).
    recoveredBlock108Value14 := (recoveredBlock108Value13) rounded.
    recoveredBlock108Value15 := (recoveredBlock108Value0) height: (recoveredBlock108Value14).
    recoveredBlock108Value15
].
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := 'nameLabel'.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := [:block28115ab0Arg1 | 
    | block28115ab0Value0 block28115ab0Value1 block28115ab0Value2 block28115ab0Value3 |
    block28115ab0Value0 := block28115ab0Arg1.
    block28115ab0Value1 := block28115ab0Value0.
    block28115ab0Value2 := XmATTACHFORM.
    (block28115ab0Value1) rightAttachment: (block28115ab0Value2).
    block28115ab0Value3 := (block28115ab0Value0) rightOffset: (3).
    block28115ab0Value3
].
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := [:recoveredBlock200Arg1 | 
    | recoveredBlock200Value0 recoveredBlock200Value1 recoveredBlock200Value2 recoveredBlock200Value3 recoveredBlock200Value4 recoveredBlock200Value5 recoveredBlock200Value6 recoveredBlock200Value7 recoveredBlock200Value8 recoveredBlock200Value9 recoveredBlock200Value10 recoveredBlock200Value11 recoveredBlock200Value12 recoveredBlock200Value13 recoveredBlock200Value14 |
    recoveredBlock200Value0 := recoveredBlock200Arg1.
    recoveredBlock200Value1 := recoveredBlock200Value0.
    recoveredBlock200Value2 := XmATTACHFORM.
    (recoveredBlock200Value1) bottomAttachment: (recoveredBlock200Value2).
    recoveredBlock200Value3 := recoveredBlock200Value0.
    (recoveredBlock200Value3) bottomOffset: (5).
    recoveredBlock200Value4 := recoveredBlock200Value0.
    recoveredBlock200Value5 := XmATTACHFORM.
    (recoveredBlock200Value4) topAttachment: (recoveredBlock200Value5).
    recoveredBlock200Value6 := recoveredBlock200Value0.
    (recoveredBlock200Value6) topOffset: (5).
    recoveredBlock200Value7 := recoveredBlock200Value0.
    recoveredBlock200Value8 := XmATTACHFORM.
    (recoveredBlock200Value7) leftAttachment: (recoveredBlock200Value8).
    recoveredBlock200Value9 := recoveredBlock200Value0.
    (recoveredBlock200Value9) leftOffset: (3).
    recoveredBlock200Value10 := recoveredBlock200Value0.
    recoveredBlock200Value11 := XmATTACHWIDGET.
    (recoveredBlock200Value10) rightAttachment: (recoveredBlock200Value11).
    recoveredBlock200Value12 := recoveredBlock200Value0.
    (recoveredBlock200Value12) rightOffset: (3).
    recoveredBlock200Value13 := recoveredLocal2.
    recoveredBlock200Value14 := (recoveredBlock200Value0) rightWidget: (recoveredBlock200Value13).
    recoveredBlock200Value14
].
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := XmNexposeCallback.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack3 := 'aForm1Expose:clientData:callData:'.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := XmNdestroyCallback.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack3 := 'aForm1Destroy:clientData:callData:'.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack3 := 'toggleButtonValue:clientData:callData:'.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

