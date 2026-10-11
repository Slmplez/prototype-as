"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200144d8; bytecode file offset 0x912098"
!EtasToolBar methodsFor: 'recovered'!
osWidgetClass
    | recoveredValue0 |
    recoveredValue0 := EtasOSToolBar.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a2728; bytecode file offset 0x99f064"
!EtasToolBar methodsFor: 'recovered'!
callEtasSingleSelectionCallback: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := XmNetasSingleSelectionCallback.
    recoveredValue1 := recoveredArg1.
    (self) callCallbacks: (recoveredValue0) callData: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c7a70; bytecode file offset 0x9c432c"
!EtasToolBar methodsFor: 'recovered'!
etasSingleSelectionCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    etasSingleSelectionCallback := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2015e288; bytecode file offset 0xa5ab48"
!EtasToolBar methodsFor: 'recovered'!
etasSingleSelectionCallback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := etasSingleSelectionCallback.
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
            (recoveredStack1) etasSingleSelectionCallback: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := etasSingleSelectionCallback.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203093c4; bytecode file offset 0xc05c9c"
!EtasToolBar methodsFor: 'recovered'!
handleToolbarButtons: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getButtonSelectedCallData: (recoveredStack1).
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
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) updateState: (recoveredStack1) widget: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := (recoveredBlock20Value0) owner.
    recoveredBlock20Value2 := [:recoveredBlock20Block28Arg1 | 
    | recoveredBlock20Block28Value0 recoveredBlock20Block28Value1 recoveredBlock20Block28Value2 recoveredBlock20Block28Value3 recoveredBlock20Block28Value4 recoveredBlock20Block28Value5 |
    recoveredBlock20Block28Value0 := CwValueCallbackData.
    recoveredBlock20Block28Value1 := (recoveredBlock20Block28Value0) new.
    recoveredBlock20Block28Value2 := recoveredBlock20Block28Value1.
    (recoveredBlock20Block28Value2) reason: (nil).
    recoveredBlock20Block28Value3 := recoveredBlock20Block28Arg1.
    recoveredBlock20Block28Value4 := (recoveredBlock20Block28Value1) value: (recoveredBlock20Block28Value3).
    recoveredBlock20Block28Value5 := (self) callEtasSingleSelectionCallback: (recoveredBlock20Block28Value4).
    recoveredBlock20Block28Value5
].
    recoveredBlock20Value3 := (recoveredBlock20Value1) ifNotNil: (recoveredBlock20Value2).
    recoveredBlock20Value3
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20363158; bytecode file offset 0xc5fa34"
!EtasToolBar methodsFor: 'recovered'!
updateState: recoveredArg1 widget: recoveredArg2
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
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) buttonType.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := XmCHECKBUTTON.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) checked.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) not.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) checked: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) buttonType.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := XmRADIOBUTTON.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) osWidget.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) items.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := [:block280f0a50Arg1 | 
    | block280f0a50Stack0 block280f0a50Stack1 block280f0a50Stack2 block280f0a50Stack3 block280f0a50Stack4 block280f0a50PC block280f0a50Step block280f0a50Done block280f0a50Result |
    block280f0a50Stack0 := self.
    block280f0a50PC := 4.
    block280f0a50Done := false.
    [block280f0a50Done not] whileTrue: [
        block280f0a50Step := block280f0a50PC.
        block280f0a50Step = 4 ifTrue: [
            block280f0a50Stack1 := nil.
            block280f0a50PC := 5.
        ].
        block280f0a50Step = 5 ifTrue: [
            block280f0a50Stack2 := block280f0a50Arg1.
            block280f0a50PC := 6.
        ].
        block280f0a50Step = 6 ifTrue: [
            block280f0a50Stack2 := (block280f0a50Stack2) owner.
            block280f0a50PC := 7.
        ].
        block280f0a50Step = 7 ifTrue: [
            block280f0a50Stack2 := (block280f0a50Stack2) buttonType.
            block280f0a50PC := 8.
        ].
        block280f0a50Step = 8 ifTrue: [
            block280f0a50Stack3 := XmRADIOBUTTON.
            block280f0a50PC := 10.
        ].
        block280f0a50Step = 10 ifTrue: [
            block280f0a50Stack2 := (block280f0a50Stack2) = (block280f0a50Stack3).
            block280f0a50PC := 11.
        ].
        block280f0a50Step = 11 ifTrue: [
            (block280f0a50Stack2) ifTrue: [block280f0a50PC := 14] ifFalse: [block280f0a50PC := 19].
        ].
        block280f0a50Step = 14 ifTrue: [
            block280f0a50PC := 15.
        ].
        block280f0a50Step = 15 ifTrue: [
            block280f0a50Stack1 := block280f0a50Arg1.
            block280f0a50PC := 16.
        ].
        block280f0a50Step = 16 ifTrue: [
            block280f0a50Stack2 := false.
            block280f0a50PC := 17.
        ].
        block280f0a50Step = 17 ifTrue: [
            block280f0a50Stack1 := (block280f0a50Stack1) checked: (block280f0a50Stack2).
            block280f0a50PC := 19.
        ].
        block280f0a50Step = 19 ifTrue: [
            block280f0a50Result := block280f0a50Stack1.
            block280f0a50Done := true.
        ].
    ].
    block280f0a50Result
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) checked: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203b6fd4; bytecode file offset 0xcb38c4"
!EtasToolBar methodsFor: 'recovered'!
getButtonSelectedCallData: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Local1 recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 recoveredBlock6Value5 recoveredBlock6Value6 recoveredBlock6Value7 recoveredBlock6Value8 recoveredBlock6Value9 recoveredBlock6Value10 recoveredBlock6Value11 recoveredBlock6Value12 recoveredBlock6Value13 recoveredBlock6Value14 recoveredBlock6Value15 recoveredBlock6Value16 recoveredBlock6Value17 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) widgetRect.
    recoveredBlock6Local1 := recoveredBlock6Value1.
    recoveredBlock6Value2 := recoveredArg1.
    recoveredBlock6Value3 := (recoveredBlock6Value2) x.
    recoveredBlock6Value4 := recoveredArg1.
    recoveredBlock6Value5 := (recoveredBlock6Value4) y.
    recoveredBlock6Value6 := (recoveredBlock6Value3) @ (recoveredBlock6Value5).
    recoveredBlock6Value7 := recoveredBlock6Local1.
    recoveredBlock6Value8 := (recoveredBlock6Value7) left.
    recoveredBlock6Value9 := recoveredBlock6Local1.
    recoveredBlock6Value10 := (recoveredBlock6Value9) top.
    recoveredBlock6Value11 := (recoveredBlock6Value8) @ (recoveredBlock6Value10).
    recoveredBlock6Value12 := recoveredBlock6Local1.
    recoveredBlock6Value13 := (recoveredBlock6Value12) right.
    recoveredBlock6Value14 := recoveredBlock6Local1.
    recoveredBlock6Value15 := (recoveredBlock6Value14) bottom.
    recoveredBlock6Value16 := (recoveredBlock6Value13) @ (recoveredBlock6Value15).
    recoveredBlock6Value17 := (recoveredBlock6Value6) between: (recoveredBlock6Value11) and: (recoveredBlock6Value16).
    recoveredBlock6Value17
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonType.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := XmSEPARATOR.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 79.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

