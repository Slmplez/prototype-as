"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20070ae8; bytecode file offset 0x96d3ec"
!RBSymbolicBoundsMinMaxDialog methodsFor: 'recovered'!
min
    | recoveredValue0 |
    recoveredValue0 := min.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070c24; bytecode file offset 0x96d580"
!RBSymbolicBoundsMinMaxDialog methodsFor: 'recovered'!
max
    | recoveredValue0 |
    recoveredValue0 := max.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c7138; bytecode file offset 0x9c3a8c"
!RBSymbolicBoundsMinMaxDialog methodsFor: 'recovered'!
min: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    min := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c72b4; bytecode file offset 0x9c3c10"
!RBSymbolicBoundsMinMaxDialog methodsFor: 'recovered'!
max: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    max := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200de560; bytecode file offset 0x9dae4c"
!RBSymbolicBoundsMinMaxDialog methodsFor: 'recovered'!
aForm1Destroy: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    super aForm1Destroy: (recoveredValue0) clientData: (recoveredValue1) callData: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20107ec0; bytecode file offset 0xa0477c"
!RBSymbolicBoundsMinMaxDialog methodsFor: 'recovered'!
cancel
    min := nil.
    max := nil.
    super cancel.
    ^self
! !

"ASDBase.ic method 0x20169784; bytecode file offset 0xa66044"
!RBSymbolicBoundsMinMaxDialog methodsFor: 'recovered'!
keyPress: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) keysym.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := XKReturn.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) okButtonActivate: (recoveredStack2) clientData: (recoveredStack3) callData: (recoveredStack4).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20420c34; bytecode file offset 0xd1d51c"
!RBSymbolicBoundsMinMaxDialog methodsFor: 'recovered'!
ok
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := values.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280fc630Arg1 | 
    | block280fc630Value0 block280fc630Value1 |
    block280fc630Value0 := block280fc630Arg1.
    block280fc630Value1 := (block280fc630Value0) asString.
    block280fc630Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 'minSpinButton'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := values.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := 'maxSpinButton'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := values.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := RBError.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) confirmExchangeInvalidBoundsMin: (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredPC := 88.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            min := recoveredStack0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            max := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            super ok.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204d1d98; bytecode file offset 0xdce6a0"
!RBSymbolicBoundsMinMaxDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super initializeAfterCreate.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := values.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:block281074c4Arg1 | 
    | block281074c4Value0 block281074c4Value1 |
    block281074c4Value0 := block281074c4Arg1.
    block281074c4Value1 := (block281074c4Value0) asString.
    block281074c4Value1
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 'minSpinButton'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := min.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 'maxSpinButton'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := max.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := smallFont.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontStruct.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 127] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := 'minText'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := 'maxText'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := 'displayRangeText'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := 'minSpinButton'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := smallFont.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) fontList: (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontStruct.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := 6.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := 'maxSpinButton'.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := smallFont.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) fontList: (recoveredStack2).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontStruct.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := 6.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := 'maxText'.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := SCMax.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := 'minText'.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := SCMin.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := 'displayRangeText'.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := SCDisplayRange.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
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

"ASDBase.ic method 0x20693cb8; bytecode file offset 0xf906ec"
!RBSymbolicBoundsMinMaxDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredLocal19 recoveredLocal20 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal20 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal19 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal18 := recoveredStack1.
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
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 recoveredBlock25Value5 recoveredBlock25Value6 recoveredBlock25Value7 recoveredBlock25Value8 recoveredBlock25Value9 recoveredBlock25Value10 recoveredBlock25Value11 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredBlock25Value1 := recoveredBlock25Value0.
    recoveredBlock25Value2 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (recoveredBlock25Value1) mwmInputMode: (recoveredBlock25Value2).
    recoveredBlock25Value3 := recoveredBlock25Value0.
    (recoveredBlock25Value3) title: ('Display Setup').
    recoveredBlock25Value4 := recoveredBlock25Value0.
    recoveredBlock25Value5 := recoveredLocal18.
    recoveredBlock25Value6 := (125) * (recoveredBlock25Value5).
    recoveredBlock25Value7 := (recoveredBlock25Value6) rounded.
    (recoveredBlock25Value4) height: (recoveredBlock25Value7).
    recoveredBlock25Value8 := recoveredLocal19.
    recoveredBlock25Value9 := (516) * (recoveredBlock25Value8).
    recoveredBlock25Value10 := (recoveredBlock25Value9) rounded.
    recoveredBlock25Value11 := (recoveredBlock25Value0) width: (recoveredBlock25Value10).
    recoveredBlock25Value11
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal17 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := recoveredLocal17.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := [:block2812bcc8Arg1 | 
    | block2812bcc8Value0 block2812bcc8Value1 block2812bcc8Value2 block2812bcc8Value3 block2812bcc8Value4 block2812bcc8Value5 block2812bcc8Value6 |
    block2812bcc8Value0 := block2812bcc8Arg1.
    block2812bcc8Value1 := CgRGBColor.
    block2812bcc8Value2 := (block2812bcc8Value1) basicNew.
    block2812bcc8Value3 := block2812bcc8Value2.
    (block2812bcc8Value3) instVarAt: (1) put: (49344).
    block2812bcc8Value4 := block2812bcc8Value2.
    (block2812bcc8Value4) instVarAt: (2) put: (49344).
    block2812bcc8Value5 := block2812bcc8Value2.
    (block2812bcc8Value5) instVarAt: (3) put: (49344).
    block2812bcc8Value6 := (block2812bcc8Value0) backgroundColor: (block2812bcc8Value2).
    block2812bcc8Value6
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := recoveredLocal16.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack3 := recoveredLocal15.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack3 := [:recoveredBlock166Arg1 | 
    | recoveredBlock166Value0 recoveredBlock166Value1 recoveredBlock166Value2 recoveredBlock166Value3 recoveredBlock166Value4 recoveredBlock166Value5 recoveredBlock166Value6 recoveredBlock166Value7 recoveredBlock166Value8 recoveredBlock166Value9 recoveredBlock166Value10 recoveredBlock166Value11 recoveredBlock166Value12 recoveredBlock166Value13 recoveredBlock166Value14 |
    recoveredBlock166Value0 := recoveredBlock166Arg1.
    recoveredBlock166Value1 := recoveredBlock166Value0.
    recoveredBlock166Value2 := recoveredLocal19.
    recoveredBlock166Value3 := (385) * (recoveredBlock166Value2).
    recoveredBlock166Value4 := (recoveredBlock166Value3) rounded.
    (recoveredBlock166Value1) x: (recoveredBlock166Value4).
    recoveredBlock166Value5 := recoveredBlock166Value0.
    recoveredBlock166Value6 := XmVERTICAL.
    (recoveredBlock166Value5) orientation: (recoveredBlock166Value6).
    recoveredBlock166Value7 := recoveredBlock166Value0.
    recoveredBlock166Value8 := recoveredLocal18.
    recoveredBlock166Value9 := (131) * (recoveredBlock166Value8).
    recoveredBlock166Value10 := (recoveredBlock166Value9) rounded.
    (recoveredBlock166Value7) height: (recoveredBlock166Value10).
    recoveredBlock166Value11 := recoveredLocal19.
    recoveredBlock166Value12 := (1) * (recoveredBlock166Value11).
    recoveredBlock166Value13 := (recoveredBlock166Value12) rounded.
    recoveredBlock166Value14 := (recoveredBlock166Value0) width: (recoveredBlock166Value13).
    recoveredBlock166Value14
].
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack2 := 'minText'.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack3 := [:recoveredBlock237Arg1 | 
    | recoveredBlock237Value0 recoveredBlock237Value1 recoveredBlock237Value2 recoveredBlock237Value3 recoveredBlock237Value4 recoveredBlock237Value5 recoveredBlock237Value6 recoveredBlock237Value7 recoveredBlock237Value8 recoveredBlock237Value9 recoveredBlock237Value10 recoveredBlock237Value11 recoveredBlock237Value12 recoveredBlock237Value13 recoveredBlock237Value14 recoveredBlock237Value15 recoveredBlock237Value16 recoveredBlock237Value17 recoveredBlock237Value18 recoveredBlock237Value19 |
    recoveredBlock237Value0 := recoveredBlock237Arg1.
    recoveredBlock237Value1 := recoveredBlock237Value0.
    recoveredBlock237Value2 := recoveredLocal19.
    recoveredBlock237Value3 := (20) * (recoveredBlock237Value2).
    recoveredBlock237Value4 := (recoveredBlock237Value3) rounded.
    (recoveredBlock237Value1) x: (recoveredBlock237Value4).
    recoveredBlock237Value5 := recoveredBlock237Value0.
    (recoveredBlock237Value5) marginRight: (10).
    recoveredBlock237Value6 := recoveredBlock237Value0.
    recoveredBlock237Value7 := XmALIGNMENTBEGINNING.
    (recoveredBlock237Value6) alignment: (recoveredBlock237Value7).
    recoveredBlock237Value8 := recoveredBlock237Value0.
    (recoveredBlock237Value8) labelString: ('Min').
    recoveredBlock237Value9 := recoveredBlock237Value0.
    (recoveredBlock237Value9) marginWidth: (0).
    recoveredBlock237Value10 := recoveredBlock237Value0.
    (recoveredBlock237Value10) marginHeight: (0).
    recoveredBlock237Value11 := recoveredBlock237Value0.
    recoveredBlock237Value12 := recoveredLocal18.
    recoveredBlock237Value13 := (35) * (recoveredBlock237Value12).
    recoveredBlock237Value14 := (recoveredBlock237Value13) rounded.
    (recoveredBlock237Value11) y: (recoveredBlock237Value14).
    recoveredBlock237Value15 := recoveredBlock237Value0.
    recoveredBlock237Value16 := recoveredLocal18.
    recoveredBlock237Value17 := (20) * (recoveredBlock237Value16).
    recoveredBlock237Value18 := (recoveredBlock237Value17) rounded.
    (recoveredBlock237Value15) height: (recoveredBlock237Value18).
    recoveredBlock237Value19 := (recoveredBlock237Value0) marginBottom: (10).
    recoveredBlock237Value19
].
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack2 := 'minText'.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack2 := 'lowerText'.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack3 := [:recoveredBlock330Arg1 | 
    | recoveredBlock330Value0 recoveredBlock330Value1 recoveredBlock330Value2 recoveredBlock330Value3 recoveredBlock330Value4 recoveredBlock330Value5 recoveredBlock330Value6 recoveredBlock330Value7 recoveredBlock330Value8 recoveredBlock330Value9 recoveredBlock330Value10 recoveredBlock330Value11 recoveredBlock330Value12 recoveredBlock330Value13 recoveredBlock330Value14 recoveredBlock330Value15 recoveredBlock330Value16 recoveredBlock330Value17 recoveredBlock330Value18 recoveredBlock330Value19 recoveredBlock330Value20 recoveredBlock330Value21 recoveredBlock330Value22 recoveredBlock330Value23 |
    recoveredBlock330Value0 := recoveredBlock330Arg1.
    recoveredBlock330Value1 := recoveredBlock330Value0.
    recoveredBlock330Value2 := recoveredLocal19.
    recoveredBlock330Value3 := (20) * (recoveredBlock330Value2).
    recoveredBlock330Value4 := (recoveredBlock330Value3) rounded.
    (recoveredBlock330Value1) x: (recoveredBlock330Value4).
    recoveredBlock330Value5 := recoveredBlock330Value0.
    (recoveredBlock330Value5) marginRight: (10).
    recoveredBlock330Value6 := recoveredBlock330Value0.
    recoveredBlock330Value7 := XmALIGNMENTBEGINNING.
    (recoveredBlock330Value6) alignment: (recoveredBlock330Value7).
    recoveredBlock330Value8 := recoveredBlock330Value0.
    (recoveredBlock330Value8) labelString: ('Lower').
    recoveredBlock330Value9 := recoveredBlock330Value0.
    (recoveredBlock330Value9) marginWidth: (0).
    recoveredBlock330Value10 := recoveredBlock330Value0.
    (recoveredBlock330Value10) marginHeight: (0).
    recoveredBlock330Value11 := recoveredBlock330Value0.
    recoveredBlock330Value12 := recoveredLocal18.
    recoveredBlock330Value13 := (95) * (recoveredBlock330Value12).
    recoveredBlock330Value14 := (recoveredBlock330Value13) rounded.
    (recoveredBlock330Value11) y: (recoveredBlock330Value14).
    recoveredBlock330Value15 := recoveredBlock330Value0.
    recoveredBlock330Value16 := recoveredLocal18.
    recoveredBlock330Value17 := (20) * (recoveredBlock330Value16).
    recoveredBlock330Value18 := (recoveredBlock330Value17) rounded.
    (recoveredBlock330Value15) height: (recoveredBlock330Value18).
    recoveredBlock330Value19 := recoveredBlock330Value0.
    (recoveredBlock330Value19) marginBottom: (10).
    recoveredBlock330Value20 := recoveredLocal19.
    recoveredBlock330Value21 := (45) * (recoveredBlock330Value20).
    recoveredBlock330Value22 := (recoveredBlock330Value21) rounded.
    recoveredBlock330Value23 := (recoveredBlock330Value0) width: (recoveredBlock330Value22).
    recoveredBlock330Value23
].
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack2 := 'lowerText'.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack2 := 'maxText'.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack3 := [:recoveredBlock435Arg1 | 
    | recoveredBlock435Value0 recoveredBlock435Value1 recoveredBlock435Value2 recoveredBlock435Value3 recoveredBlock435Value4 recoveredBlock435Value5 recoveredBlock435Value6 recoveredBlock435Value7 recoveredBlock435Value8 recoveredBlock435Value9 recoveredBlock435Value10 recoveredBlock435Value11 recoveredBlock435Value12 recoveredBlock435Value13 recoveredBlock435Value14 recoveredBlock435Value15 recoveredBlock435Value16 recoveredBlock435Value17 recoveredBlock435Value18 recoveredBlock435Value19 |
    recoveredBlock435Value0 := recoveredBlock435Arg1.
    recoveredBlock435Value1 := recoveredBlock435Value0.
    recoveredBlock435Value2 := recoveredLocal19.
    recoveredBlock435Value3 := (210) * (recoveredBlock435Value2).
    recoveredBlock435Value4 := (recoveredBlock435Value3) rounded.
    (recoveredBlock435Value1) x: (recoveredBlock435Value4).
    recoveredBlock435Value5 := recoveredBlock435Value0.
    (recoveredBlock435Value5) marginRight: (10).
    recoveredBlock435Value6 := recoveredBlock435Value0.
    recoveredBlock435Value7 := XmALIGNMENTBEGINNING.
    (recoveredBlock435Value6) alignment: (recoveredBlock435Value7).
    recoveredBlock435Value8 := recoveredBlock435Value0.
    (recoveredBlock435Value8) labelString: ('Max').
    recoveredBlock435Value9 := recoveredBlock435Value0.
    (recoveredBlock435Value9) marginWidth: (0).
    recoveredBlock435Value10 := recoveredBlock435Value0.
    (recoveredBlock435Value10) marginHeight: (0).
    recoveredBlock435Value11 := recoveredBlock435Value0.
    recoveredBlock435Value12 := recoveredLocal18.
    recoveredBlock435Value13 := (35) * (recoveredBlock435Value12).
    recoveredBlock435Value14 := (recoveredBlock435Value13) rounded.
    (recoveredBlock435Value11) y: (recoveredBlock435Value14).
    recoveredBlock435Value15 := recoveredBlock435Value0.
    recoveredBlock435Value16 := recoveredLocal18.
    recoveredBlock435Value17 := (20) * (recoveredBlock435Value16).
    recoveredBlock435Value18 := (recoveredBlock435Value17) rounded.
    (recoveredBlock435Value15) height: (recoveredBlock435Value18).
    recoveredBlock435Value19 := (recoveredBlock435Value0) marginBottom: (10).
    recoveredBlock435Value19
].
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack2 := 'maxText'.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack2 := 'upperText'.
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredStack3 := [:recoveredBlock530Arg1 | 
    | recoveredBlock530Value0 recoveredBlock530Value1 recoveredBlock530Value2 recoveredBlock530Value3 recoveredBlock530Value4 recoveredBlock530Value5 recoveredBlock530Value6 recoveredBlock530Value7 recoveredBlock530Value8 recoveredBlock530Value9 recoveredBlock530Value10 recoveredBlock530Value11 recoveredBlock530Value12 recoveredBlock530Value13 recoveredBlock530Value14 recoveredBlock530Value15 recoveredBlock530Value16 recoveredBlock530Value17 recoveredBlock530Value18 recoveredBlock530Value19 recoveredBlock530Value20 recoveredBlock530Value21 recoveredBlock530Value22 recoveredBlock530Value23 |
    recoveredBlock530Value0 := recoveredBlock530Arg1.
    recoveredBlock530Value1 := recoveredBlock530Value0.
    recoveredBlock530Value2 := recoveredLocal19.
    recoveredBlock530Value3 := (210) * (recoveredBlock530Value2).
    recoveredBlock530Value4 := (recoveredBlock530Value3) rounded.
    (recoveredBlock530Value1) x: (recoveredBlock530Value4).
    recoveredBlock530Value5 := recoveredBlock530Value0.
    (recoveredBlock530Value5) marginRight: (10).
    recoveredBlock530Value6 := recoveredBlock530Value0.
    recoveredBlock530Value7 := XmALIGNMENTBEGINNING.
    (recoveredBlock530Value6) alignment: (recoveredBlock530Value7).
    recoveredBlock530Value8 := recoveredBlock530Value0.
    (recoveredBlock530Value8) labelString: ('Upper').
    recoveredBlock530Value9 := recoveredBlock530Value0.
    (recoveredBlock530Value9) marginWidth: (0).
    recoveredBlock530Value10 := recoveredBlock530Value0.
    (recoveredBlock530Value10) marginHeight: (0).
    recoveredBlock530Value11 := recoveredBlock530Value0.
    recoveredBlock530Value12 := recoveredLocal18.
    recoveredBlock530Value13 := (95) * (recoveredBlock530Value12).
    recoveredBlock530Value14 := (recoveredBlock530Value13) rounded.
    (recoveredBlock530Value11) y: (recoveredBlock530Value14).
    recoveredBlock530Value15 := recoveredBlock530Value0.
    recoveredBlock530Value16 := recoveredLocal18.
    recoveredBlock530Value17 := (20) * (recoveredBlock530Value16).
    recoveredBlock530Value18 := (recoveredBlock530Value17) rounded.
    (recoveredBlock530Value15) height: (recoveredBlock530Value18).
    recoveredBlock530Value19 := recoveredBlock530Value0.
    (recoveredBlock530Value19) marginBottom: (10).
    recoveredBlock530Value20 := recoveredLocal19.
    recoveredBlock530Value21 := (48) * (recoveredBlock530Value20).
    recoveredBlock530Value22 := (recoveredBlock530Value21) rounded.
    recoveredBlock530Value23 := (recoveredBlock530Value0) width: (recoveredBlock530Value22).
    recoveredBlock530Value23
].
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 625.
        ].
        recoveredStep = 625 ifTrue: [
            recoveredStack2 := 'upperText'.
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 630.
        ].
        recoveredStep = 630 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 632.
        ].
        recoveredStep = 632 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 635.
        ].
        recoveredStep = 635 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 637.
        ].
        recoveredStep = 637 ifTrue: [
            recoveredStack3 := [:recoveredBlock637Arg1 | 
    | recoveredBlock637Value0 recoveredBlock637Value1 recoveredBlock637Value2 recoveredBlock637Value3 recoveredBlock637Value4 recoveredBlock637Value5 recoveredBlock637Value6 recoveredBlock637Value7 recoveredBlock637Value8 recoveredBlock637Value9 recoveredBlock637Value10 recoveredBlock637Value11 recoveredBlock637Value12 recoveredBlock637Value13 recoveredBlock637Value14 recoveredBlock637Value15 recoveredBlock637Value16 recoveredBlock637Value17 recoveredBlock637Value18 |
    recoveredBlock637Value0 := recoveredBlock637Arg1.
    recoveredBlock637Value1 := recoveredBlock637Value0.
    recoveredBlock637Value2 := recoveredLocal19.
    recoveredBlock637Value3 := (395) * (recoveredBlock637Value2).
    recoveredBlock637Value4 := (recoveredBlock637Value3) rounded.
    (recoveredBlock637Value1) x: (recoveredBlock637Value4).
    recoveredBlock637Value5 := recoveredBlock637Value0.
    (recoveredBlock637Value5) showAsDefault: (1).
    recoveredBlock637Value6 := recoveredBlock637Value0.
    (recoveredBlock637Value6) labelString: ('Ok').
    recoveredBlock637Value7 := recoveredBlock637Value0.
    recoveredBlock637Value8 := recoveredLocal18.
    recoveredBlock637Value9 := (10) * (recoveredBlock637Value8).
    recoveredBlock637Value10 := (recoveredBlock637Value9) rounded.
    (recoveredBlock637Value7) y: (recoveredBlock637Value10).
    recoveredBlock637Value11 := recoveredBlock637Value0.
    recoveredBlock637Value12 := recoveredLocal18.
    recoveredBlock637Value13 := (30) * (recoveredBlock637Value12).
    recoveredBlock637Value14 := (recoveredBlock637Value13) rounded.
    (recoveredBlock637Value11) height: (recoveredBlock637Value14).
    recoveredBlock637Value15 := recoveredLocal19.
    recoveredBlock637Value16 := (110) * (recoveredBlock637Value15).
    recoveredBlock637Value17 := (recoveredBlock637Value16) rounded.
    recoveredBlock637Value18 := (recoveredBlock637Value0) width: (recoveredBlock637Value17).
    recoveredBlock637Value18
].
            recoveredPC := 703.
        ].
        recoveredStep = 703 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 705.
        ].
        recoveredStep = 705 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 707.
        ].
        recoveredStep = 707 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 710.
        ].
        recoveredStep = 710 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 713.
        ].
        recoveredStep = 713 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 716.
        ].
        recoveredStep = 716 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 719.
        ].
        recoveredStep = 719 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 721.
        ].
        recoveredStep = 721 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 724.
        ].
        recoveredStep = 724 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 728.
        ].
        recoveredStep = 728 ifTrue: [
            recoveredStack3 := [:recoveredBlock728Arg1 | 
    | recoveredBlock728Value0 recoveredBlock728Value1 recoveredBlock728Value2 recoveredBlock728Value3 recoveredBlock728Value4 recoveredBlock728Value5 recoveredBlock728Value6 recoveredBlock728Value7 recoveredBlock728Value8 recoveredBlock728Value9 recoveredBlock728Value10 recoveredBlock728Value11 recoveredBlock728Value12 recoveredBlock728Value13 recoveredBlock728Value14 recoveredBlock728Value15 recoveredBlock728Value16 recoveredBlock728Value17 |
    recoveredBlock728Value0 := recoveredBlock728Arg1.
    recoveredBlock728Value1 := recoveredBlock728Value0.
    recoveredBlock728Value2 := recoveredLocal19.
    recoveredBlock728Value3 := (395) * (recoveredBlock728Value2).
    recoveredBlock728Value4 := (recoveredBlock728Value3) rounded.
    (recoveredBlock728Value1) x: (recoveredBlock728Value4).
    recoveredBlock728Value5 := recoveredBlock728Value0.
    (recoveredBlock728Value5) labelString: ('Cancel').
    recoveredBlock728Value6 := recoveredBlock728Value0.
    recoveredBlock728Value7 := recoveredLocal18.
    recoveredBlock728Value8 := (45) * (recoveredBlock728Value7).
    recoveredBlock728Value9 := (recoveredBlock728Value8) rounded.
    (recoveredBlock728Value6) y: (recoveredBlock728Value9).
    recoveredBlock728Value10 := recoveredBlock728Value0.
    recoveredBlock728Value11 := recoveredLocal18.
    recoveredBlock728Value12 := (30) * (recoveredBlock728Value11).
    recoveredBlock728Value13 := (recoveredBlock728Value12) rounded.
    (recoveredBlock728Value10) height: (recoveredBlock728Value13).
    recoveredBlock728Value14 := recoveredLocal19.
    recoveredBlock728Value15 := (110) * (recoveredBlock728Value14).
    recoveredBlock728Value16 := (recoveredBlock728Value15) rounded.
    recoveredBlock728Value17 := (recoveredBlock728Value0) width: (recoveredBlock728Value16).
    recoveredBlock728Value17
].
            recoveredPC := 789.
        ].
        recoveredStep = 789 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 791.
        ].
        recoveredStep = 791 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 793.
        ].
        recoveredStep = 793 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 796.
        ].
        recoveredStep = 796 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 799.
        ].
        recoveredStep = 799 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 802.
        ].
        recoveredStep = 802 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 805.
        ].
        recoveredStep = 805 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 807.
        ].
        recoveredStep = 807 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 810.
        ].
        recoveredStep = 810 ifTrue: [
            recoveredStack2 := 'helpButton'.
            recoveredPC := 814.
        ].
        recoveredStep = 814 ifTrue: [
            recoveredStack3 := [:recoveredBlock814Arg1 | 
    | recoveredBlock814Value0 recoveredBlock814Value1 recoveredBlock814Value2 recoveredBlock814Value3 recoveredBlock814Value4 recoveredBlock814Value5 recoveredBlock814Value6 recoveredBlock814Value7 recoveredBlock814Value8 recoveredBlock814Value9 recoveredBlock814Value10 recoveredBlock814Value11 recoveredBlock814Value12 recoveredBlock814Value13 recoveredBlock814Value14 recoveredBlock814Value15 recoveredBlock814Value16 recoveredBlock814Value17 |
    recoveredBlock814Value0 := recoveredBlock814Arg1.
    recoveredBlock814Value1 := recoveredBlock814Value0.
    recoveredBlock814Value2 := recoveredLocal19.
    recoveredBlock814Value3 := (395) * (recoveredBlock814Value2).
    recoveredBlock814Value4 := (recoveredBlock814Value3) rounded.
    (recoveredBlock814Value1) x: (recoveredBlock814Value4).
    recoveredBlock814Value5 := recoveredBlock814Value0.
    (recoveredBlock814Value5) labelString: ('Help').
    recoveredBlock814Value6 := recoveredBlock814Value0.
    recoveredBlock814Value7 := recoveredLocal18.
    recoveredBlock814Value8 := (80) * (recoveredBlock814Value7).
    recoveredBlock814Value9 := (recoveredBlock814Value8) rounded.
    (recoveredBlock814Value6) y: (recoveredBlock814Value9).
    recoveredBlock814Value10 := recoveredBlock814Value0.
    recoveredBlock814Value11 := recoveredLocal18.
    recoveredBlock814Value12 := (30) * (recoveredBlock814Value11).
    recoveredBlock814Value13 := (recoveredBlock814Value12) rounded.
    (recoveredBlock814Value10) height: (recoveredBlock814Value13).
    recoveredBlock814Value14 := recoveredLocal19.
    recoveredBlock814Value15 := (110) * (recoveredBlock814Value14).
    recoveredBlock814Value16 := (recoveredBlock814Value15) rounded.
    recoveredBlock814Value17 := (recoveredBlock814Value0) width: (recoveredBlock814Value16).
    recoveredBlock814Value17
].
            recoveredPC := 875.
        ].
        recoveredStep = 875 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 877.
        ].
        recoveredStep = 877 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 879.
        ].
        recoveredStep = 879 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 882.
        ].
        recoveredStep = 882 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 885.
        ].
        recoveredStep = 885 ifTrue: [
            recoveredStack2 := 'helpButton'.
            recoveredPC := 888.
        ].
        recoveredStep = 888 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 891.
        ].
        recoveredStep = 891 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 893.
        ].
        recoveredStep = 893 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 896.
        ].
        recoveredStep = 896 ifTrue: [
            recoveredStack2 := 'minSpinButton'.
            recoveredPC := 900.
        ].
        recoveredStep = 900 ifTrue: [
            recoveredStack3 := [:recoveredBlock900Arg1 | 
    | recoveredBlock900Value0 recoveredBlock900Value1 recoveredBlock900Value2 recoveredBlock900Value3 recoveredBlock900Value4 recoveredBlock900Value5 recoveredBlock900Value6 recoveredBlock900Value7 recoveredBlock900Value8 recoveredBlock900Value9 recoveredBlock900Value10 recoveredBlock900Value11 recoveredBlock900Value12 recoveredBlock900Value13 recoveredBlock900Value14 recoveredBlock900Value15 recoveredBlock900Value16 recoveredBlock900Value17 recoveredBlock900Value18 |
    recoveredBlock900Value0 := recoveredBlock900Arg1.
    recoveredBlock900Value1 := recoveredBlock900Value0.
    recoveredBlock900Value2 := recoveredLocal19.
    recoveredBlock900Value3 := (80) * (recoveredBlock900Value2).
    recoveredBlock900Value4 := (recoveredBlock900Value3) rounded.
    (recoveredBlock900Value1) x: (recoveredBlock900Value4).
    recoveredBlock900Value5 := recoveredBlock900Value0.
    recoveredBlock900Value6 := recoveredLocal18.
    recoveredBlock900Value7 := (30) * (recoveredBlock900Value6).
    recoveredBlock900Value8 := (recoveredBlock900Value7) rounded.
    (recoveredBlock900Value5) y: (recoveredBlock900Value8).
    recoveredBlock900Value9 := recoveredBlock900Value0.
    recoveredBlock900Value10 := XmSBSTRING.
    (recoveredBlock900Value9) itemType: (recoveredBlock900Value10).
    recoveredBlock900Value11 := recoveredBlock900Value0.
    recoveredBlock900Value12 := recoveredLocal18.
    recoveredBlock900Value13 := (25) * (recoveredBlock900Value12).
    recoveredBlock900Value14 := (recoveredBlock900Value13) rounded.
    (recoveredBlock900Value11) height: (recoveredBlock900Value14).
    recoveredBlock900Value15 := recoveredLocal19.
    recoveredBlock900Value16 := (105) * (recoveredBlock900Value15).
    recoveredBlock900Value17 := (recoveredBlock900Value16) rounded.
    recoveredBlock900Value18 := (recoveredBlock900Value0) width: (recoveredBlock900Value17).
    recoveredBlock900Value18
].
            recoveredPC := 963.
        ].
        recoveredStep = 963 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSpinButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 967.
        ].
        recoveredStep = 967 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 969.
        ].
        recoveredStep = 969 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 972.
        ].
        recoveredStep = 972 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 975.
        ].
        recoveredStep = 975 ifTrue: [
            recoveredStack2 := 'minSpinButton'.
            recoveredPC := 978.
        ].
        recoveredStep = 978 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 981.
        ].
        recoveredStep = 981 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 983.
        ].
        recoveredStep = 983 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 986.
        ].
        recoveredStep = 986 ifTrue: [
            recoveredStack2 := 'maxSpinButton'.
            recoveredPC := 990.
        ].
        recoveredStep = 990 ifTrue: [
            recoveredStack3 := [:recoveredBlock990Arg1 | 
    | recoveredBlock990Value0 recoveredBlock990Value1 recoveredBlock990Value2 recoveredBlock990Value3 recoveredBlock990Value4 recoveredBlock990Value5 recoveredBlock990Value6 recoveredBlock990Value7 recoveredBlock990Value8 recoveredBlock990Value9 recoveredBlock990Value10 recoveredBlock990Value11 recoveredBlock990Value12 recoveredBlock990Value13 recoveredBlock990Value14 recoveredBlock990Value15 recoveredBlock990Value16 recoveredBlock990Value17 recoveredBlock990Value18 |
    recoveredBlock990Value0 := recoveredBlock990Arg1.
    recoveredBlock990Value1 := recoveredBlock990Value0.
    recoveredBlock990Value2 := recoveredLocal19.
    recoveredBlock990Value3 := (270) * (recoveredBlock990Value2).
    recoveredBlock990Value4 := (recoveredBlock990Value3) rounded.
    (recoveredBlock990Value1) x: (recoveredBlock990Value4).
    recoveredBlock990Value5 := recoveredBlock990Value0.
    recoveredBlock990Value6 := recoveredLocal18.
    recoveredBlock990Value7 := (30) * (recoveredBlock990Value6).
    recoveredBlock990Value8 := (recoveredBlock990Value7) rounded.
    (recoveredBlock990Value5) y: (recoveredBlock990Value8).
    recoveredBlock990Value9 := recoveredBlock990Value0.
    recoveredBlock990Value10 := XmSBSTRING.
    (recoveredBlock990Value9) itemType: (recoveredBlock990Value10).
    recoveredBlock990Value11 := recoveredBlock990Value0.
    recoveredBlock990Value12 := recoveredLocal18.
    recoveredBlock990Value13 := (25) * (recoveredBlock990Value12).
    recoveredBlock990Value14 := (recoveredBlock990Value13) rounded.
    (recoveredBlock990Value11) height: (recoveredBlock990Value14).
    recoveredBlock990Value15 := recoveredLocal19.
    recoveredBlock990Value16 := (105) * (recoveredBlock990Value15).
    recoveredBlock990Value17 := (recoveredBlock990Value16) rounded.
    recoveredBlock990Value18 := (recoveredBlock990Value0) width: (recoveredBlock990Value17).
    recoveredBlock990Value18
].
            recoveredPC := 1053.
        ].
        recoveredStep = 1053 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSpinButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1057.
        ].
        recoveredStep = 1057 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1059.
        ].
        recoveredStep = 1059 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 1062.
        ].
        recoveredStep = 1062 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 1065.
        ].
        recoveredStep = 1065 ifTrue: [
            recoveredStack2 := 'maxSpinButton'.
            recoveredPC := 1068.
        ].
        recoveredStep = 1068 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 1071.
        ].
        recoveredStep = 1071 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1073.
        ].
        recoveredStep = 1073 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 1076.
        ].
        recoveredStep = 1076 ifTrue: [
            recoveredStack2 := 'lowBoundSpinButton'.
            recoveredPC := 1080.
        ].
        recoveredStep = 1080 ifTrue: [
            recoveredStack3 := [:recoveredBlock1080Arg1 | 
    | recoveredBlock1080Value0 recoveredBlock1080Value1 recoveredBlock1080Value2 recoveredBlock1080Value3 recoveredBlock1080Value4 recoveredBlock1080Value5 recoveredBlock1080Value6 recoveredBlock1080Value7 recoveredBlock1080Value8 recoveredBlock1080Value9 recoveredBlock1080Value10 recoveredBlock1080Value11 recoveredBlock1080Value12 recoveredBlock1080Value13 recoveredBlock1080Value14 recoveredBlock1080Value15 recoveredBlock1080Value16 recoveredBlock1080Value17 recoveredBlock1080Value18 |
    recoveredBlock1080Value0 := recoveredBlock1080Arg1.
    recoveredBlock1080Value1 := recoveredBlock1080Value0.
    recoveredBlock1080Value2 := recoveredLocal19.
    recoveredBlock1080Value3 := (80) * (recoveredBlock1080Value2).
    recoveredBlock1080Value4 := (recoveredBlock1080Value3) rounded.
    (recoveredBlock1080Value1) x: (recoveredBlock1080Value4).
    recoveredBlock1080Value5 := recoveredBlock1080Value0.
    recoveredBlock1080Value6 := recoveredLocal18.
    recoveredBlock1080Value7 := (90) * (recoveredBlock1080Value6).
    recoveredBlock1080Value8 := (recoveredBlock1080Value7) rounded.
    (recoveredBlock1080Value5) y: (recoveredBlock1080Value8).
    recoveredBlock1080Value9 := recoveredBlock1080Value0.
    recoveredBlock1080Value10 := XmSBSTRING.
    (recoveredBlock1080Value9) itemType: (recoveredBlock1080Value10).
    recoveredBlock1080Value11 := recoveredBlock1080Value0.
    recoveredBlock1080Value12 := recoveredLocal18.
    recoveredBlock1080Value13 := (25) * (recoveredBlock1080Value12).
    recoveredBlock1080Value14 := (recoveredBlock1080Value13) rounded.
    (recoveredBlock1080Value11) height: (recoveredBlock1080Value14).
    recoveredBlock1080Value15 := recoveredLocal19.
    recoveredBlock1080Value16 := (105) * (recoveredBlock1080Value15).
    recoveredBlock1080Value17 := (recoveredBlock1080Value16) rounded.
    recoveredBlock1080Value18 := (recoveredBlock1080Value0) width: (recoveredBlock1080Value17).
    recoveredBlock1080Value18
].
            recoveredPC := 1143.
        ].
        recoveredStep = 1143 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSpinButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1147.
        ].
        recoveredStep = 1147 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1149.
        ].
        recoveredStep = 1149 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 1152.
        ].
        recoveredStep = 1152 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 1155.
        ].
        recoveredStep = 1155 ifTrue: [
            recoveredStack2 := 'lowBoundSpinButton'.
            recoveredPC := 1158.
        ].
        recoveredStep = 1158 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 1161.
        ].
        recoveredStep = 1161 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1163.
        ].
        recoveredStep = 1163 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 1166.
        ].
        recoveredStep = 1166 ifTrue: [
            recoveredStack2 := 'highBoundSpinButton'.
            recoveredPC := 1170.
        ].
        recoveredStep = 1170 ifTrue: [
            recoveredStack3 := [:recoveredBlock1170Arg1 | 
    | recoveredBlock1170Value0 recoveredBlock1170Value1 recoveredBlock1170Value2 recoveredBlock1170Value3 recoveredBlock1170Value4 recoveredBlock1170Value5 recoveredBlock1170Value6 recoveredBlock1170Value7 recoveredBlock1170Value8 recoveredBlock1170Value9 recoveredBlock1170Value10 recoveredBlock1170Value11 recoveredBlock1170Value12 recoveredBlock1170Value13 recoveredBlock1170Value14 recoveredBlock1170Value15 recoveredBlock1170Value16 recoveredBlock1170Value17 recoveredBlock1170Value18 |
    recoveredBlock1170Value0 := recoveredBlock1170Arg1.
    recoveredBlock1170Value1 := recoveredBlock1170Value0.
    recoveredBlock1170Value2 := recoveredLocal19.
    recoveredBlock1170Value3 := (270) * (recoveredBlock1170Value2).
    recoveredBlock1170Value4 := (recoveredBlock1170Value3) rounded.
    (recoveredBlock1170Value1) x: (recoveredBlock1170Value4).
    recoveredBlock1170Value5 := recoveredBlock1170Value0.
    recoveredBlock1170Value6 := recoveredLocal18.
    recoveredBlock1170Value7 := (90) * (recoveredBlock1170Value6).
    recoveredBlock1170Value8 := (recoveredBlock1170Value7) rounded.
    (recoveredBlock1170Value5) y: (recoveredBlock1170Value8).
    recoveredBlock1170Value9 := recoveredBlock1170Value0.
    recoveredBlock1170Value10 := XmSBSTRING.
    (recoveredBlock1170Value9) itemType: (recoveredBlock1170Value10).
    recoveredBlock1170Value11 := recoveredBlock1170Value0.
    recoveredBlock1170Value12 := recoveredLocal18.
    recoveredBlock1170Value13 := (25) * (recoveredBlock1170Value12).
    recoveredBlock1170Value14 := (recoveredBlock1170Value13) rounded.
    (recoveredBlock1170Value11) height: (recoveredBlock1170Value14).
    recoveredBlock1170Value15 := recoveredLocal19.
    recoveredBlock1170Value16 := (105) * (recoveredBlock1170Value15).
    recoveredBlock1170Value17 := (recoveredBlock1170Value16) rounded.
    recoveredBlock1170Value18 := (recoveredBlock1170Value0) width: (recoveredBlock1170Value17).
    recoveredBlock1170Value18
].
            recoveredPC := 1233.
        ].
        recoveredStep = 1233 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSpinButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1237.
        ].
        recoveredStep = 1237 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1239.
        ].
        recoveredStep = 1239 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 1242.
        ].
        recoveredStep = 1242 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 1245.
        ].
        recoveredStep = 1245 ifTrue: [
            recoveredStack2 := 'highBoundSpinButton'.
            recoveredPC := 1248.
        ].
        recoveredStep = 1248 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 1251.
        ].
        recoveredStep = 1251 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1253.
        ].
        recoveredStep = 1253 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 1256.
        ].
        recoveredStep = 1256 ifTrue: [
            recoveredStack2 := 'criticalBoundsText'.
            recoveredPC := 1260.
        ].
        recoveredStep = 1260 ifTrue: [
            recoveredStack3 := [:recoveredBlock1260Arg1 | 
    | recoveredBlock1260Value0 recoveredBlock1260Value1 recoveredBlock1260Value2 recoveredBlock1260Value3 recoveredBlock1260Value4 recoveredBlock1260Value5 recoveredBlock1260Value6 recoveredBlock1260Value7 recoveredBlock1260Value8 recoveredBlock1260Value9 recoveredBlock1260Value10 recoveredBlock1260Value11 recoveredBlock1260Value12 recoveredBlock1260Value13 recoveredBlock1260Value14 recoveredBlock1260Value15 recoveredBlock1260Value16 recoveredBlock1260Value17 recoveredBlock1260Value18 recoveredBlock1260Value19 |
    recoveredBlock1260Value0 := recoveredBlock1260Arg1.
    recoveredBlock1260Value1 := recoveredBlock1260Value0.
    recoveredBlock1260Value2 := recoveredLocal19.
    recoveredBlock1260Value3 := (10) * (recoveredBlock1260Value2).
    recoveredBlock1260Value4 := (recoveredBlock1260Value3) rounded.
    (recoveredBlock1260Value1) x: (recoveredBlock1260Value4).
    recoveredBlock1260Value5 := recoveredBlock1260Value0.
    (recoveredBlock1260Value5) marginRight: (10).
    recoveredBlock1260Value6 := recoveredBlock1260Value0.
    (recoveredBlock1260Value6) labelString: ('Critical bounds').
    recoveredBlock1260Value7 := recoveredBlock1260Value0.
    (recoveredBlock1260Value7) marginWidth: (0).
    recoveredBlock1260Value8 := recoveredBlock1260Value0.
    (recoveredBlock1260Value8) marginHeight: (0).
    recoveredBlock1260Value9 := recoveredBlock1260Value0.
    recoveredBlock1260Value10 := recoveredLocal18.
    recoveredBlock1260Value11 := (70) * (recoveredBlock1260Value10).
    recoveredBlock1260Value12 := (recoveredBlock1260Value11) rounded.
    (recoveredBlock1260Value9) y: (recoveredBlock1260Value12).
    recoveredBlock1260Value13 := recoveredBlock1260Value0.
    recoveredBlock1260Value14 := recoveredLocal18.
    recoveredBlock1260Value15 := (20) * (recoveredBlock1260Value14).
    recoveredBlock1260Value16 := (recoveredBlock1260Value15) rounded.
    (recoveredBlock1260Value13) height: (recoveredBlock1260Value16).
    recoveredBlock1260Value17 := recoveredBlock1260Value0.
    (recoveredBlock1260Value17) marginBottom: (10).
    recoveredBlock1260Value18 := (self) defaultLabelBlue.
    recoveredBlock1260Value19 := (recoveredBlock1260Value0) foregroundColor: (recoveredBlock1260Value18).
    recoveredBlock1260Value19
].
            recoveredPC := 1338.
        ].
        recoveredStep = 1338 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1340.
        ].
        recoveredStep = 1340 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1342.
        ].
        recoveredStep = 1342 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 1345.
        ].
        recoveredStep = 1345 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 1348.
        ].
        recoveredStep = 1348 ifTrue: [
            recoveredStack2 := 'criticalBoundsText'.
            recoveredPC := 1352.
        ].
        recoveredStep = 1352 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 1355.
        ].
        recoveredStep = 1355 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1357.
        ].
        recoveredStep = 1357 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 1360.
        ].
        recoveredStep = 1360 ifTrue: [
            recoveredStack2 := 'displayRangeText'.
            recoveredPC := 1364.
        ].
        recoveredStep = 1364 ifTrue: [
            recoveredStack3 := [:recoveredBlock1364Arg1 | 
    | recoveredBlock1364Value0 recoveredBlock1364Value1 recoveredBlock1364Value2 recoveredBlock1364Value3 recoveredBlock1364Value4 recoveredBlock1364Value5 recoveredBlock1364Value6 recoveredBlock1364Value7 recoveredBlock1364Value8 recoveredBlock1364Value9 recoveredBlock1364Value10 recoveredBlock1364Value11 recoveredBlock1364Value12 recoveredBlock1364Value13 recoveredBlock1364Value14 recoveredBlock1364Value15 recoveredBlock1364Value16 recoveredBlock1364Value17 recoveredBlock1364Value18 recoveredBlock1364Value19 |
    recoveredBlock1364Value0 := recoveredBlock1364Arg1.
    recoveredBlock1364Value1 := recoveredBlock1364Value0.
    recoveredBlock1364Value2 := recoveredLocal19.
    recoveredBlock1364Value3 := (10) * (recoveredBlock1364Value2).
    recoveredBlock1364Value4 := (recoveredBlock1364Value3) rounded.
    (recoveredBlock1364Value1) x: (recoveredBlock1364Value4).
    recoveredBlock1364Value5 := recoveredBlock1364Value0.
    (recoveredBlock1364Value5) marginRight: (10).
    recoveredBlock1364Value6 := recoveredBlock1364Value0.
    (recoveredBlock1364Value6) labelString: ('Display range').
    recoveredBlock1364Value7 := recoveredBlock1364Value0.
    (recoveredBlock1364Value7) marginWidth: (0).
    recoveredBlock1364Value8 := recoveredBlock1364Value0.
    (recoveredBlock1364Value8) marginHeight: (0).
    recoveredBlock1364Value9 := recoveredBlock1364Value0.
    recoveredBlock1364Value10 := recoveredLocal18.
    recoveredBlock1364Value11 := (10) * (recoveredBlock1364Value10).
    recoveredBlock1364Value12 := (recoveredBlock1364Value11) rounded.
    (recoveredBlock1364Value9) y: (recoveredBlock1364Value12).
    recoveredBlock1364Value13 := recoveredBlock1364Value0.
    recoveredBlock1364Value14 := recoveredLocal18.
    recoveredBlock1364Value15 := (20) * (recoveredBlock1364Value14).
    recoveredBlock1364Value16 := (recoveredBlock1364Value15) rounded.
    (recoveredBlock1364Value13) height: (recoveredBlock1364Value16).
    recoveredBlock1364Value17 := recoveredBlock1364Value0.
    (recoveredBlock1364Value17) marginBottom: (10).
    recoveredBlock1364Value18 := (self) defaultLabelBlue.
    recoveredBlock1364Value19 := (recoveredBlock1364Value0) foregroundColor: (recoveredBlock1364Value18).
    recoveredBlock1364Value19
].
            recoveredPC := 1442.
        ].
        recoveredStep = 1442 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1444.
        ].
        recoveredStep = 1444 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1446.
        ].
        recoveredStep = 1446 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 1449.
        ].
        recoveredStep = 1449 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 1452.
        ].
        recoveredStep = 1452 ifTrue: [
            recoveredStack2 := 'displayRangeText'.
            recoveredPC := 1456.
        ].
        recoveredStep = 1456 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 1459.
        ].
        recoveredStep = 1459 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1461.
        ].
        recoveredStep = 1461 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 1464.
        ].
        recoveredStep = 1464 ifTrue: [
            recoveredStack2 := [:recoveredBlock1464Arg1 | 
    | recoveredBlock1464Value0 recoveredBlock1464Value1 recoveredBlock1464Value2 |
    recoveredBlock1464Value0 := recoveredBlock1464Arg1.
    recoveredBlock1464Value1 := recoveredLocal15.
    recoveredBlock1464Value2 := (recoveredBlock1464Value0) workWindow: (recoveredBlock1464Value1).
    recoveredBlock1464Value2
].
            recoveredPC := 1480.
        ].
        recoveredStep = 1480 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1485.
        ].
        recoveredStep = 1485 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 1488.
        ].
        recoveredStep = 1488 ifTrue: [
            recoveredStack2 := XmNexposeCallback.
            recoveredPC := 1492.
        ].
        recoveredStep = 1492 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1493.
        ].
        recoveredStep = 1493 ifTrue: [
            recoveredStack4 := 'aForm1Expose:clientData:callData:'.
            recoveredPC := 1496.
        ].
        recoveredStep = 1496 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1497.
        ].
        recoveredStep = 1497 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1501.
        ].
        recoveredStep = 1501 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 1504.
        ].
        recoveredStep = 1504 ifTrue: [
            recoveredStack2 := XmNdestroyCallback.
            recoveredPC := 1508.
        ].
        recoveredStep = 1508 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1509.
        ].
        recoveredStep = 1509 ifTrue: [
            recoveredStack4 := 'aForm1Destroy:clientData:callData:'.
            recoveredPC := 1512.
        ].
        recoveredStep = 1512 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1513.
        ].
        recoveredStep = 1513 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1517.
        ].
        recoveredStep = 1517 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1520.
        ].
        recoveredStep = 1520 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1524.
        ].
        recoveredStep = 1524 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1525.
        ].
        recoveredStep = 1525 ifTrue: [
            recoveredStack4 := 'okButtonActivate:clientData:callData:'.
            recoveredPC := 1528.
        ].
        recoveredStep = 1528 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1529.
        ].
        recoveredStep = 1529 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1533.
        ].
        recoveredStep = 1533 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1536.
        ].
        recoveredStep = 1536 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1540.
        ].
        recoveredStep = 1540 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1541.
        ].
        recoveredStep = 1541 ifTrue: [
            recoveredStack4 := 'cancelButtonActivate:clientData:callData:'.
            recoveredPC := 1544.
        ].
        recoveredStep = 1544 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1545.
        ].
        recoveredStep = 1545 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1549.
        ].
        recoveredStep = 1549 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1552.
        ].
        recoveredStep = 1552 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1557.
        ].
        recoveredStep = 1557 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1560.
        ].
        recoveredStep = 1560 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1565.
        ].
        recoveredStep = 1565 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1568.
        ].
        recoveredStep = 1568 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1573.
        ].
        recoveredStep = 1573 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1576.
        ].
        recoveredStep = 1576 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1581.
        ].
        recoveredStep = 1581 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1584.
        ].
        recoveredStep = 1584 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1589.
        ].
        recoveredStep = 1589 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1592.
        ].
        recoveredStep = 1592 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1597.
        ].
        recoveredStep = 1597 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1600.
        ].
        recoveredStep = 1600 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1605.
        ].
        recoveredStep = 1605 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 1608.
        ].
        recoveredStep = 1608 ifTrue: [
            recoveredStack2 := recoveredLocal20.
            recoveredPC := 1611.
        ].
        recoveredStep = 1611 ifTrue: [
            recoveredStack3 := recoveredLocal16.
            recoveredPC := 1614.
        ].
        recoveredStep = 1614 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 1619.
        ].
        recoveredStep = 1619 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

