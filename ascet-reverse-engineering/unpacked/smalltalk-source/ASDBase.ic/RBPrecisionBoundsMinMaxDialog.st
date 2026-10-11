"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20005f6c; bytecode file offset 0x902de8"
!RBPrecisionBoundsMinMaxDialog methodsFor: 'recovered'!
lowBoundTextModify: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x2000600c; bytecode file offset 0x902de8"
!RBPrecisionBoundsMinMaxDialog methodsFor: 'recovered'!
maxTextModify: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x2000602c; bytecode file offset 0x902de8"
!RBPrecisionBoundsMinMaxDialog methodsFor: 'recovered'!
minTextModify: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x20006294; bytecode file offset 0x902de8"
!RBPrecisionBoundsMinMaxDialog methodsFor: 'recovered'!
highBoundTextModify: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x20070fc0; bytecode file offset 0x96d87c"
!RBPrecisionBoundsMinMaxDialog methodsFor: 'recovered'!
min
    | recoveredValue0 |
    recoveredValue0 := min.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070fe4; bytecode file offset 0x96d928"
!RBPrecisionBoundsMinMaxDialog methodsFor: 'recovered'!
max
    | recoveredValue0 |
    recoveredValue0 := max.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c75b0; bytecode file offset 0x9c3efc"
!RBPrecisionBoundsMinMaxDialog methodsFor: 'recovered'!
min: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    min := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c767c; bytecode file offset 0x9c3fa0"
!RBPrecisionBoundsMinMaxDialog methodsFor: 'recovered'!
max: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    max := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200de4e0; bytecode file offset 0x9dae4c"
!RBPrecisionBoundsMinMaxDialog methodsFor: 'recovered'!
aForm1Destroy: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    super aForm1Destroy: (recoveredValue0) clientData: (recoveredValue1) callData: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200de500; bytecode file offset 0x9dae4c"
!RBPrecisionBoundsMinMaxDialog methodsFor: 'recovered'!
aForm1Expose: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    super aForm1Expose: (recoveredValue0) clientData: (recoveredValue1) callData: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2012fe6c; bytecode file offset 0xa2c728"
!RBPrecisionBoundsMinMaxDialog methodsFor: 'recovered'!
initialize
    super initialize.
    min := 0.
    max := 1.
    ^self
! !

"ASDBase.ic method 0x201482fc; bytecode file offset 0xa44bb8"
!RBPrecisionBoundsMinMaxDialog methodsFor: 'recovered'!
cancelButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    min := nil.
    max := nil.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    super cancelButtonActivate: (recoveredValue0) clientData: (recoveredValue1) callData: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20440aac; bytecode file offset 0xd3d398"
!RBPrecisionBoundsMinMaxDialog methodsFor: 'recovered'!
ok
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'minText'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := RBError.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := SCMin.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) emptyInputIn: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 'minText'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetAt: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) valueFromString: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 'maxText'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := RBError.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := SCMax.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) emptyInputIn: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 'maxText'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetAt: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) valueFromString: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := RBError.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) messageBeepQuestion.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := RBError.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) confirmExchangeInvalidBoundsMin: (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredPC := 96.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            min := recoveredStack0.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            max := recoveredStack0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            super ok.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20502b24; bytecode file offset 0xdff434"
!RBPrecisionBoundsMinMaxDialog methodsFor: 'recovered'!
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
            recoveredStack1 := 'displayRangeText'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := SCDisplayRange.
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
            recoveredStack1 := 'maxLabel'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := SCMax.
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
            recoveredStack1 := 'minLabel'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := SCMin.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := 'minText'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := min.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) stringFromValue: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 'maxText'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := max.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) stringFromValue: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := 'hexText3'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) unitString.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := 'hexText4'.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) unitString.
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
            recoveredStack1 := 'minText'.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) characterMethod.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) characterMethod: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := 'maxText'.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) characterMethod.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) characterMethod: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := smallFont.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 176] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := 'hexText3'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := 'hexText4'.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := 'minText'.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := smallFont.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) fontList: (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontStruct.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := 6.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := 'maxText'.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := smallFont.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack1) fontList: (recoveredStack2).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontStruct.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := 6.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := 'displayRangeText'.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := 'maxLabel'.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := 'minLabel'.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206a2fcc; bytecode file offset 0xf9fab0"
!RBPrecisionBoundsMinMaxDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredLocal19 recoveredLocal20 recoveredLocal21 recoveredLocal22 recoveredLocal23 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal23 := recoveredStack1.
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
            recoveredStack3 := [:block2812e644Arg1 | 
    | block2812e644Value0 block2812e644Value1 block2812e644Value2 block2812e644Value3 block2812e644Value4 block2812e644Value5 block2812e644Value6 block2812e644Value7 block2812e644Value8 block2812e644Value9 |
    block2812e644Value0 := block2812e644Arg1.
    block2812e644Value1 := block2812e644Value0.
    (block2812e644Value1) title: ('Display Setup').
    block2812e644Value2 := block2812e644Value0.
    block2812e644Value3 := MWMINPUTSYSTEMMODAL.
    (block2812e644Value2) mwmInputMode: (block2812e644Value3).
    block2812e644Value4 := block2812e644Value0.
    block2812e644Value5 := MWMDECORBORDER.
    block2812e644Value6 := MWMDECORMENU.
    block2812e644Value7 := (block2812e644Value5) | (block2812e644Value6).
    (block2812e644Value4) mwmDecorations: (block2812e644Value7).
    block2812e644Value8 := block2812e644Value0.
    (block2812e644Value8) height: (200).
    block2812e644Value9 := (block2812e644Value0) width: (520).
    block2812e644Value9
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal22 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := recoveredLocal22.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := [:block2812e668Arg1 | 
    | block2812e668Value0 block2812e668Value1 block2812e668Value2 block2812e668Value3 block2812e668Value4 block2812e668Value5 block2812e668Value6 |
    block2812e668Value0 := block2812e668Arg1.
    block2812e668Value1 := CgRGBColor.
    block2812e668Value2 := (block2812e668Value1) basicNew.
    block2812e668Value3 := block2812e668Value2.
    (block2812e668Value3) instVarAt: (1) put: (49344).
    block2812e668Value4 := block2812e668Value2.
    (block2812e668Value4) instVarAt: (2) put: (49344).
    block2812e668Value5 := block2812e668Value2.
    (block2812e668Value5) instVarAt: (3) put: (49344).
    block2812e668Value6 := (block2812e668Value0) backgroundColor: (block2812e668Value2).
    block2812e668Value6
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal21 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := recoveredLocal21.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal20 := recoveredStack1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := recoveredLocal20.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := 'lowerText'.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack3 := [:block2812e68cArg1 | 
    | block2812e68cValue0 block2812e68cValue1 block2812e68cValue2 block2812e68cValue3 block2812e68cValue4 block2812e68cValue5 block2812e68cValue6 block2812e68cValue7 block2812e68cValue8 block2812e68cValue9 block2812e68cValue10 block2812e68cValue11 |
    block2812e68cValue0 := block2812e68cArg1.
    block2812e68cValue1 := block2812e68cValue0.
    (block2812e68cValue1) x: (24).
    block2812e68cValue2 := block2812e68cValue0.
    (block2812e68cValue2) marginRight: (10).
    block2812e68cValue3 := block2812e68cValue0.
    block2812e68cValue4 := XmALIGNMENTBEGINNING.
    (block2812e68cValue3) alignment: (block2812e68cValue4).
    block2812e68cValue5 := block2812e68cValue0.
    (block2812e68cValue5) labelString: ('Lower').
    block2812e68cValue6 := block2812e68cValue0.
    (block2812e68cValue6) marginWidth: (0).
    block2812e68cValue7 := block2812e68cValue0.
    (block2812e68cValue7) marginHeight: (0).
    block2812e68cValue8 := block2812e68cValue0.
    (block2812e68cValue8) y: (136).
    block2812e68cValue9 := block2812e68cValue0.
    (block2812e68cValue9) height: (20).
    block2812e68cValue10 := block2812e68cValue0.
    (block2812e68cValue10) marginBottom: (10).
    block2812e68cValue11 := (block2812e68cValue0) width: (45).
    block2812e68cValue11
].
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredLocal19 := recoveredStack1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := 'lowerText'.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack3 := recoveredLocal19.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack2 := 'hexText2'.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack3 := [:block2812e6b0Arg1 | 
    | block2812e6b0Value0 block2812e6b0Value1 block2812e6b0Value2 block2812e6b0Value3 block2812e6b0Value4 block2812e6b0Value5 block2812e6b0Value6 block2812e6b0Value7 block2812e6b0Value8 |
    block2812e6b0Value0 := block2812e6b0Arg1.
    block2812e6b0Value1 := block2812e6b0Value0.
    (block2812e6b0Value1) x: (145).
    block2812e6b0Value2 := block2812e6b0Value0.
    (block2812e6b0Value2) marginRight: (10).
    block2812e6b0Value3 := block2812e6b0Value0.
    (block2812e6b0Value3) labelString: ('[hex]').
    block2812e6b0Value4 := block2812e6b0Value0.
    (block2812e6b0Value4) marginWidth: (0).
    block2812e6b0Value5 := block2812e6b0Value0.
    (block2812e6b0Value5) marginHeight: (0).
    block2812e6b0Value6 := block2812e6b0Value0.
    (block2812e6b0Value6) y: (135).
    block2812e6b0Value7 := block2812e6b0Value0.
    (block2812e6b0Value7) height: (20).
    block2812e6b0Value8 := (block2812e6b0Value0) marginBottom: (10).
    block2812e6b0Value8
].
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredLocal18 := recoveredStack1.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack2 := 'hexText2'.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack3 := recoveredLocal18.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack2 := 'hexText4'.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack3 := [:block2812e6d4Arg1 | 
    | block2812e6d4Value0 block2812e6d4Value1 block2812e6d4Value2 block2812e6d4Value3 block2812e6d4Value4 block2812e6d4Value5 block2812e6d4Value6 block2812e6d4Value7 block2812e6d4Value8 |
    block2812e6d4Value0 := block2812e6d4Arg1.
    block2812e6d4Value1 := block2812e6d4Value0.
    (block2812e6d4Value1) x: (145).
    block2812e6d4Value2 := block2812e6d4Value0.
    (block2812e6d4Value2) marginRight: (10).
    block2812e6d4Value3 := block2812e6d4Value0.
    (block2812e6d4Value3) labelString: ('[hex]').
    block2812e6d4Value4 := block2812e6d4Value0.
    (block2812e6d4Value4) marginWidth: (0).
    block2812e6d4Value5 := block2812e6d4Value0.
    (block2812e6d4Value5) marginHeight: (0).
    block2812e6d4Value6 := block2812e6d4Value0.
    (block2812e6d4Value6) y: (75).
    block2812e6d4Value7 := block2812e6d4Value0.
    (block2812e6d4Value7) height: (20).
    block2812e6d4Value8 := (block2812e6d4Value0) marginBottom: (10).
    block2812e6d4Value8
].
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredLocal17 := recoveredStack1.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack2 := 'hexText4'.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack3 := recoveredLocal17.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack2 := 'hexText3'.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack3 := [:block2812e6f8Arg1 | 
    | block2812e6f8Value0 block2812e6f8Value1 block2812e6f8Value2 block2812e6f8Value3 block2812e6f8Value4 block2812e6f8Value5 block2812e6f8Value6 block2812e6f8Value7 block2812e6f8Value8 |
    block2812e6f8Value0 := block2812e6f8Arg1.
    block2812e6f8Value1 := block2812e6f8Value0.
    (block2812e6f8Value1) x: (340).
    block2812e6f8Value2 := block2812e6f8Value0.
    (block2812e6f8Value2) marginRight: (10).
    block2812e6f8Value3 := block2812e6f8Value0.
    (block2812e6f8Value3) labelString: ('[hex]').
    block2812e6f8Value4 := block2812e6f8Value0.
    (block2812e6f8Value4) marginWidth: (0).
    block2812e6f8Value5 := block2812e6f8Value0.
    (block2812e6f8Value5) marginHeight: (0).
    block2812e6f8Value6 := block2812e6f8Value0.
    (block2812e6f8Value6) y: (75).
    block2812e6f8Value7 := block2812e6f8Value0.
    (block2812e6f8Value7) height: (20).
    block2812e6f8Value8 := (block2812e6f8Value0) marginBottom: (10).
    block2812e6f8Value8
].
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack2 := 'hexText3'.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack3 := recoveredLocal16.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack2 := 'hexText1'.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack3 := [:block2812e71cArg1 | 
    | block2812e71cValue0 block2812e71cValue1 block2812e71cValue2 block2812e71cValue3 block2812e71cValue4 block2812e71cValue5 block2812e71cValue6 block2812e71cValue7 block2812e71cValue8 |
    block2812e71cValue0 := block2812e71cArg1.
    block2812e71cValue1 := block2812e71cValue0.
    (block2812e71cValue1) x: (340).
    block2812e71cValue2 := block2812e71cValue0.
    (block2812e71cValue2) marginRight: (10).
    block2812e71cValue3 := block2812e71cValue0.
    (block2812e71cValue3) labelString: ('[hex]').
    block2812e71cValue4 := block2812e71cValue0.
    (block2812e71cValue4) marginWidth: (0).
    block2812e71cValue5 := block2812e71cValue0.
    (block2812e71cValue5) marginHeight: (0).
    block2812e71cValue6 := block2812e71cValue0.
    (block2812e71cValue6) y: (136).
    block2812e71cValue7 := block2812e71cValue0.
    (block2812e71cValue7) height: (20).
    block2812e71cValue8 := (block2812e71cValue0) marginBottom: (10).
    block2812e71cValue8
].
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack2 := 'hexText1'.
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredStack3 := recoveredLocal15.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack2 := 'upperText'.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack3 := [:block2812e740Arg1 | 
    | block2812e740Value0 block2812e740Value1 block2812e740Value2 block2812e740Value3 block2812e740Value4 block2812e740Value5 block2812e740Value6 block2812e740Value7 block2812e740Value8 block2812e740Value9 block2812e740Value10 block2812e740Value11 |
    block2812e740Value0 := block2812e740Arg1.
    block2812e740Value1 := block2812e740Value0.
    (block2812e740Value1) x: (220).
    block2812e740Value2 := block2812e740Value0.
    (block2812e740Value2) marginRight: (10).
    block2812e740Value3 := block2812e740Value0.
    block2812e740Value4 := XmALIGNMENTBEGINNING.
    (block2812e740Value3) alignment: (block2812e740Value4).
    block2812e740Value5 := block2812e740Value0.
    (block2812e740Value5) labelString: ('Upper').
    block2812e740Value6 := block2812e740Value0.
    (block2812e740Value6) marginWidth: (0).
    block2812e740Value7 := block2812e740Value0.
    (block2812e740Value7) marginHeight: (0).
    block2812e740Value8 := block2812e740Value0.
    (block2812e740Value8) y: (136).
    block2812e740Value9 := block2812e740Value0.
    (block2812e740Value9) height: (20).
    block2812e740Value10 := block2812e740Value0.
    (block2812e740Value10) marginBottom: (10).
    block2812e740Value11 := (block2812e740Value0) width: (45).
    block2812e740Value11
].
            recoveredPC := 524.
        ].
        recoveredStep = 524 ifTrue: [
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack2 := 'upperText'.
            recoveredPC := 596.
        ].
        recoveredStep = 596 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            recoveredStack2 := 'decimalsSpinButton'.
            recoveredPC := 608.
        ].
        recoveredStep = 608 ifTrue: [
            recoveredStack3 := [:block2812e764Arg1 | 
    | block2812e764Value0 block2812e764Value1 block2812e764Value2 block2812e764Value3 block2812e764Value4 |
    block2812e764Value0 := block2812e764Arg1.
    block2812e764Value1 := block2812e764Value0.
    (block2812e764Value1) x: (120).
    block2812e764Value2 := block2812e764Value0.
    (block2812e764Value2) y: (10).
    block2812e764Value3 := block2812e764Value0.
    (block2812e764Value3) height: (24).
    block2812e764Value4 := (block2812e764Value0) width: (60).
    block2812e764Value4
].
            recoveredPC := 612.
        ].
        recoveredStep = 612 ifTrue: [
            recoveredPC := 639.
        ].
        recoveredStep = 639 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSpinButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 643.
        ].
        recoveredStep = 643 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 645.
        ].
        recoveredStep = 645 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 648.
        ].
        recoveredStep = 648 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 651.
        ].
        recoveredStep = 651 ifTrue: [
            recoveredStack2 := 'decimalsSpinButton'.
            recoveredPC := 654.
        ].
        recoveredStep = 654 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 657.
        ].
        recoveredStep = 657 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 662.
        ].
        recoveredStep = 662 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 666.
        ].
        recoveredStep = 666 ifTrue: [
            recoveredStack3 := [:block2812e788Arg1 | 
    | block2812e788Value0 block2812e788Value1 block2812e788Value2 block2812e788Value3 |
    block2812e788Value0 := block2812e788Arg1.
    block2812e788Value1 := block2812e788Value0.
    (block2812e788Value1) labelString: ('&Cancel').
    block2812e788Value2 := block2812e788Value0.
    (block2812e788Value2) height: (25).
    block2812e788Value3 := (block2812e788Value0) width: (80).
    block2812e788Value3
].
            recoveredPC := 670.
        ].
        recoveredStep = 670 ifTrue: [
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 697.
        ].
        recoveredStep = 697 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 699.
        ].
        recoveredStep = 699 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 702.
        ].
        recoveredStep = 702 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 705.
        ].
        recoveredStep = 705 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 708.
        ].
        recoveredStep = 708 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 711.
        ].
        recoveredStep = 711 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 713.
        ].
        recoveredStep = 713 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 716.
        ].
        recoveredStep = 716 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 720.
        ].
        recoveredStep = 720 ifTrue: [
            recoveredStack3 := [:block2812e7acArg1 | 
    | block2812e7acValue0 block2812e7acValue1 block2812e7acValue2 block2812e7acValue3 |
    block2812e7acValue0 := block2812e7acArg1.
    block2812e7acValue1 := block2812e7acValue0.
    (block2812e7acValue1) labelString: ('&OK').
    block2812e7acValue2 := block2812e7acValue0.
    (block2812e7acValue2) height: (25).
    block2812e7acValue3 := (block2812e7acValue0) width: (80).
    block2812e7acValue3
].
            recoveredPC := 724.
        ].
        recoveredStep = 724 ifTrue: [
            recoveredPC := 747.
        ].
        recoveredStep = 747 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 751.
        ].
        recoveredStep = 751 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 753.
        ].
        recoveredStep = 753 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 756.
        ].
        recoveredStep = 756 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 759.
        ].
        recoveredStep = 759 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 762.
        ].
        recoveredStep = 762 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 765.
        ].
        recoveredStep = 765 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 767.
        ].
        recoveredStep = 767 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 770.
        ].
        recoveredStep = 770 ifTrue: [
            recoveredStack2 := 'helpButton'.
            recoveredPC := 774.
        ].
        recoveredStep = 774 ifTrue: [
            recoveredStack3 := [:block2812e7d0Arg1 | 
    | block2812e7d0Value0 block2812e7d0Value1 block2812e7d0Value2 block2812e7d0Value3 block2812e7d0Value4 block2812e7d0Value5 |
    block2812e7d0Value0 := block2812e7d0Arg1.
    block2812e7d0Value1 := block2812e7d0Value0.
    (block2812e7d0Value1) x: (400).
    block2812e7d0Value2 := block2812e7d0Value0.
    (block2812e7d0Value2) labelString: ('Help').
    block2812e7d0Value3 := block2812e7d0Value0.
    (block2812e7d0Value3) y: (60).
    block2812e7d0Value4 := block2812e7d0Value0.
    (block2812e7d0Value4) height: (30).
    block2812e7d0Value5 := (block2812e7d0Value0) width: (110).
    block2812e7d0Value5
].
            recoveredPC := 778.
        ].
        recoveredStep = 778 ifTrue: [
            recoveredPC := 813.
        ].
        recoveredStep = 813 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 817.
        ].
        recoveredStep = 817 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 819.
        ].
        recoveredStep = 819 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 822.
        ].
        recoveredStep = 822 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 825.
        ].
        recoveredStep = 825 ifTrue: [
            recoveredStack2 := 'helpButton'.
            recoveredPC := 828.
        ].
        recoveredStep = 828 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 831.
        ].
        recoveredStep = 831 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 833.
        ].
        recoveredStep = 833 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 836.
        ].
        recoveredStep = 836 ifTrue: [
            recoveredStack2 := 'minText'.
            recoveredPC := 840.
        ].
        recoveredStep = 840 ifTrue: [
            recoveredStack3 := [:block2812e7f4Arg1 | 
    | block2812e7f4Value0 block2812e7f4Value1 block2812e7f4Value2 block2812e7f4Value3 block2812e7f4Value4 |
    block2812e7f4Value0 := block2812e7f4Arg1.
    block2812e7f4Value1 := block2812e7f4Value0.
    (block2812e7f4Value1) y: (70).
    block2812e7f4Value2 := block2812e7f4Value0.
    (block2812e7f4Value2) x: (80).
    block2812e7f4Value3 := block2812e7f4Value0.
    (block2812e7f4Value3) height: (24).
    block2812e7f4Value4 := (block2812e7f4Value0) width: (60).
    block2812e7f4Value4
].
            recoveredPC := 844.
        ].
        recoveredStep = 844 ifTrue: [
            recoveredPC := 872.
        ].
        recoveredStep = 872 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 877.
        ].
        recoveredStep = 877 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 879.
        ].
        recoveredStep = 879 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 882.
        ].
        recoveredStep = 882 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 885.
        ].
        recoveredStep = 885 ifTrue: [
            recoveredStack2 := 'minText'.
            recoveredPC := 888.
        ].
        recoveredStep = 888 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 891.
        ].
        recoveredStep = 891 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 893.
        ].
        recoveredStep = 893 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 896.
        ].
        recoveredStep = 896 ifTrue: [
            recoveredStack2 := 'maxText'.
            recoveredPC := 900.
        ].
        recoveredStep = 900 ifTrue: [
            recoveredStack3 := [:block2812e818Arg1 | 
    | block2812e818Value0 block2812e818Value1 block2812e818Value2 block2812e818Value3 block2812e818Value4 |
    block2812e818Value0 := block2812e818Arg1.
    block2812e818Value1 := block2812e818Value0.
    (block2812e818Value1) y: (70).
    block2812e818Value2 := block2812e818Value0.
    (block2812e818Value2) x: (275).
    block2812e818Value3 := block2812e818Value0.
    (block2812e818Value3) height: (24).
    block2812e818Value4 := (block2812e818Value0) width: (60).
    block2812e818Value4
].
            recoveredPC := 904.
        ].
        recoveredStep = 904 ifTrue: [
            recoveredPC := 932.
        ].
        recoveredStep = 932 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 937.
        ].
        recoveredStep = 937 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 939.
        ].
        recoveredStep = 939 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 942.
        ].
        recoveredStep = 942 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 945.
        ].
        recoveredStep = 945 ifTrue: [
            recoveredStack2 := 'maxText'.
            recoveredPC := 948.
        ].
        recoveredStep = 948 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 951.
        ].
        recoveredStep = 951 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 953.
        ].
        recoveredStep = 953 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 956.
        ].
        recoveredStep = 956 ifTrue: [
            recoveredStack2 := 'lowBoundText'.
            recoveredPC := 960.
        ].
        recoveredStep = 960 ifTrue: [
            recoveredStack3 := [:block2812e83cArg1 | 
    | block2812e83cValue0 block2812e83cValue1 block2812e83cValue2 block2812e83cValue3 block2812e83cValue4 |
    block2812e83cValue0 := block2812e83cArg1.
    block2812e83cValue1 := block2812e83cValue0.
    (block2812e83cValue1) y: (130).
    block2812e83cValue2 := block2812e83cValue0.
    (block2812e83cValue2) x: (80).
    block2812e83cValue3 := block2812e83cValue0.
    (block2812e83cValue3) height: (24).
    block2812e83cValue4 := (block2812e83cValue0) width: (60).
    block2812e83cValue4
].
            recoveredPC := 964.
        ].
        recoveredStep = 964 ifTrue: [
            recoveredPC := 992.
        ].
        recoveredStep = 992 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 997.
        ].
        recoveredStep = 997 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 999.
        ].
        recoveredStep = 999 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 1002.
        ].
        recoveredStep = 1002 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 1005.
        ].
        recoveredStep = 1005 ifTrue: [
            recoveredStack2 := 'lowBoundText'.
            recoveredPC := 1008.
        ].
        recoveredStep = 1008 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 1011.
        ].
        recoveredStep = 1011 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1013.
        ].
        recoveredStep = 1013 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 1016.
        ].
        recoveredStep = 1016 ifTrue: [
            recoveredStack2 := 'highBoundText'.
            recoveredPC := 1020.
        ].
        recoveredStep = 1020 ifTrue: [
            recoveredStack3 := [:block2812e860Arg1 | 
    | block2812e860Value0 block2812e860Value1 block2812e860Value2 block2812e860Value3 block2812e860Value4 |
    block2812e860Value0 := block2812e860Arg1.
    block2812e860Value1 := block2812e860Value0.
    (block2812e860Value1) y: (130).
    block2812e860Value2 := block2812e860Value0.
    (block2812e860Value2) x: (275).
    block2812e860Value3 := block2812e860Value0.
    (block2812e860Value3) height: (24).
    block2812e860Value4 := (block2812e860Value0) width: (60).
    block2812e860Value4
].
            recoveredPC := 1024.
        ].
        recoveredStep = 1024 ifTrue: [
            recoveredPC := 1052.
        ].
        recoveredStep = 1052 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1057.
        ].
        recoveredStep = 1057 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1059.
        ].
        recoveredStep = 1059 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 1062.
        ].
        recoveredStep = 1062 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 1065.
        ].
        recoveredStep = 1065 ifTrue: [
            recoveredStack2 := 'highBoundText'.
            recoveredPC := 1068.
        ].
        recoveredStep = 1068 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 1071.
        ].
        recoveredStep = 1071 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1073.
        ].
        recoveredStep = 1073 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 1076.
        ].
        recoveredStep = 1076 ifTrue: [
            recoveredStack2 := 'decimalsText'.
            recoveredPC := 1080.
        ].
        recoveredStep = 1080 ifTrue: [
            recoveredStack3 := [:recoveredBlock1080Arg1 | 
    | recoveredBlock1080Value0 recoveredBlock1080Value1 recoveredBlock1080Value2 recoveredBlock1080Value3 recoveredBlock1080Value4 recoveredBlock1080Value5 recoveredBlock1080Value6 recoveredBlock1080Value7 recoveredBlock1080Value8 recoveredBlock1080Value9 recoveredBlock1080Value10 |
    recoveredBlock1080Value0 := recoveredBlock1080Arg1.
    recoveredBlock1080Value1 := recoveredBlock1080Value0.
    (recoveredBlock1080Value1) x: (10).
    recoveredBlock1080Value2 := recoveredBlock1080Value0.
    (recoveredBlock1080Value2) marginRight: (10).
    recoveredBlock1080Value3 := recoveredBlock1080Value0.
    (recoveredBlock1080Value3) labelString: ('Number of decimals').
    recoveredBlock1080Value4 := recoveredBlock1080Value0.
    (recoveredBlock1080Value4) marginWidth: (0).
    recoveredBlock1080Value5 := recoveredBlock1080Value0.
    (recoveredBlock1080Value5) marginHeight: (0).
    recoveredBlock1080Value6 := recoveredBlock1080Value0.
    (recoveredBlock1080Value6) y: (10).
    recoveredBlock1080Value7 := recoveredBlock1080Value0.
    (recoveredBlock1080Value7) height: (20).
    recoveredBlock1080Value8 := recoveredBlock1080Value0.
    (recoveredBlock1080Value8) marginBottom: (10).
    recoveredBlock1080Value9 := (self) defaultLabelBlue.
    recoveredBlock1080Value10 := (recoveredBlock1080Value0) foregroundColor: (recoveredBlock1080Value9).
    recoveredBlock1080Value10
].
            recoveredPC := 1140.
        ].
        recoveredStep = 1140 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1142.
        ].
        recoveredStep = 1142 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1144.
        ].
        recoveredStep = 1144 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 1147.
        ].
        recoveredStep = 1147 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 1150.
        ].
        recoveredStep = 1150 ifTrue: [
            recoveredStack2 := 'decimalsText'.
            recoveredPC := 1154.
        ].
        recoveredStep = 1154 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 1157.
        ].
        recoveredStep = 1157 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1159.
        ].
        recoveredStep = 1159 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 1162.
        ].
        recoveredStep = 1162 ifTrue: [
            recoveredStack2 := 'displayRangeText'.
            recoveredPC := 1166.
        ].
        recoveredStep = 1166 ifTrue: [
            recoveredStack3 := [:recoveredBlock1166Arg1 | 
    | recoveredBlock1166Value0 recoveredBlock1166Value1 recoveredBlock1166Value2 recoveredBlock1166Value3 recoveredBlock1166Value4 recoveredBlock1166Value5 recoveredBlock1166Value6 recoveredBlock1166Value7 recoveredBlock1166Value8 recoveredBlock1166Value9 recoveredBlock1166Value10 |
    recoveredBlock1166Value0 := recoveredBlock1166Arg1.
    recoveredBlock1166Value1 := recoveredBlock1166Value0.
    (recoveredBlock1166Value1) x: (10).
    recoveredBlock1166Value2 := recoveredBlock1166Value0.
    (recoveredBlock1166Value2) marginRight: (10).
    recoveredBlock1166Value3 := recoveredBlock1166Value0.
    (recoveredBlock1166Value3) labelString: ('Display range').
    recoveredBlock1166Value4 := recoveredBlock1166Value0.
    (recoveredBlock1166Value4) marginWidth: (0).
    recoveredBlock1166Value5 := recoveredBlock1166Value0.
    (recoveredBlock1166Value5) marginHeight: (0).
    recoveredBlock1166Value6 := recoveredBlock1166Value0.
    (recoveredBlock1166Value6) y: (50).
    recoveredBlock1166Value7 := recoveredBlock1166Value0.
    (recoveredBlock1166Value7) height: (20).
    recoveredBlock1166Value8 := recoveredBlock1166Value0.
    (recoveredBlock1166Value8) marginBottom: (10).
    recoveredBlock1166Value9 := (self) defaultLabelBlue.
    recoveredBlock1166Value10 := (recoveredBlock1166Value0) foregroundColor: (recoveredBlock1166Value9).
    recoveredBlock1166Value10
].
            recoveredPC := 1226.
        ].
        recoveredStep = 1226 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1228.
        ].
        recoveredStep = 1228 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1230.
        ].
        recoveredStep = 1230 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 1233.
        ].
        recoveredStep = 1233 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 1236.
        ].
        recoveredStep = 1236 ifTrue: [
            recoveredStack2 := 'displayRangeText'.
            recoveredPC := 1240.
        ].
        recoveredStep = 1240 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 1243.
        ].
        recoveredStep = 1243 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1245.
        ].
        recoveredStep = 1245 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 1248.
        ].
        recoveredStep = 1248 ifTrue: [
            recoveredStack2 := 'criticalBoundsText'.
            recoveredPC := 1252.
        ].
        recoveredStep = 1252 ifTrue: [
            recoveredStack3 := [:recoveredBlock1252Arg1 | 
    | recoveredBlock1252Value0 recoveredBlock1252Value1 recoveredBlock1252Value2 recoveredBlock1252Value3 recoveredBlock1252Value4 recoveredBlock1252Value5 recoveredBlock1252Value6 recoveredBlock1252Value7 recoveredBlock1252Value8 recoveredBlock1252Value9 recoveredBlock1252Value10 |
    recoveredBlock1252Value0 := recoveredBlock1252Arg1.
    recoveredBlock1252Value1 := recoveredBlock1252Value0.
    (recoveredBlock1252Value1) x: (10).
    recoveredBlock1252Value2 := recoveredBlock1252Value0.
    (recoveredBlock1252Value2) marginRight: (10).
    recoveredBlock1252Value3 := recoveredBlock1252Value0.
    (recoveredBlock1252Value3) labelString: ('Critical bounds').
    recoveredBlock1252Value4 := recoveredBlock1252Value0.
    (recoveredBlock1252Value4) marginWidth: (0).
    recoveredBlock1252Value5 := recoveredBlock1252Value0.
    (recoveredBlock1252Value5) marginHeight: (0).
    recoveredBlock1252Value6 := recoveredBlock1252Value0.
    (recoveredBlock1252Value6) y: (110).
    recoveredBlock1252Value7 := recoveredBlock1252Value0.
    (recoveredBlock1252Value7) height: (20).
    recoveredBlock1252Value8 := recoveredBlock1252Value0.
    (recoveredBlock1252Value8) marginBottom: (10).
    recoveredBlock1252Value9 := (self) defaultLabelBlue.
    recoveredBlock1252Value10 := (recoveredBlock1252Value0) foregroundColor: (recoveredBlock1252Value9).
    recoveredBlock1252Value10
].
            recoveredPC := 1312.
        ].
        recoveredStep = 1312 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1314.
        ].
        recoveredStep = 1314 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1316.
        ].
        recoveredStep = 1316 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 1319.
        ].
        recoveredStep = 1319 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 1322.
        ].
        recoveredStep = 1322 ifTrue: [
            recoveredStack2 := 'criticalBoundsText'.
            recoveredPC := 1326.
        ].
        recoveredStep = 1326 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 1329.
        ].
        recoveredStep = 1329 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1331.
        ].
        recoveredStep = 1331 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 1334.
        ].
        recoveredStep = 1334 ifTrue: [
            recoveredStack2 := 'minLabel'.
            recoveredPC := 1338.
        ].
        recoveredStep = 1338 ifTrue: [
            recoveredStack3 := [:block2812e884Arg1 | 
    | block2812e884Value0 block2812e884Value1 block2812e884Value2 block2812e884Value3 block2812e884Value4 block2812e884Value5 block2812e884Value6 block2812e884Value7 block2812e884Value8 block2812e884Value9 block2812e884Value10 |
    block2812e884Value0 := block2812e884Arg1.
    block2812e884Value1 := block2812e884Value0.
    (block2812e884Value1) x: (25).
    block2812e884Value2 := block2812e884Value0.
    (block2812e884Value2) marginRight: (10).
    block2812e884Value3 := block2812e884Value0.
    block2812e884Value4 := XmALIGNMENTBEGINNING.
    (block2812e884Value3) alignment: (block2812e884Value4).
    block2812e884Value5 := block2812e884Value0.
    (block2812e884Value5) labelString: ('Min').
    block2812e884Value6 := block2812e884Value0.
    (block2812e884Value6) marginWidth: (0).
    block2812e884Value7 := block2812e884Value0.
    (block2812e884Value7) marginHeight: (0).
    block2812e884Value8 := block2812e884Value0.
    (block2812e884Value8) y: (75).
    block2812e884Value9 := block2812e884Value0.
    (block2812e884Value9) height: (20).
    block2812e884Value10 := (block2812e884Value0) marginBottom: (10).
    block2812e884Value10
].
            recoveredPC := 1342.
        ].
        recoveredStep = 1342 ifTrue: [
            recoveredPC := 1394.
        ].
        recoveredStep = 1394 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1396.
        ].
        recoveredStep = 1396 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1398.
        ].
        recoveredStep = 1398 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 1401.
        ].
        recoveredStep = 1401 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 1404.
        ].
        recoveredStep = 1404 ifTrue: [
            recoveredStack2 := 'minLabel'.
            recoveredPC := 1408.
        ].
        recoveredStep = 1408 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 1411.
        ].
        recoveredStep = 1411 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1413.
        ].
        recoveredStep = 1413 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 1416.
        ].
        recoveredStep = 1416 ifTrue: [
            recoveredStack2 := 'maxLabel'.
            recoveredPC := 1420.
        ].
        recoveredStep = 1420 ifTrue: [
            recoveredStack3 := [:block2812e8a8Arg1 | 
    | block2812e8a8Value0 block2812e8a8Value1 block2812e8a8Value2 block2812e8a8Value3 block2812e8a8Value4 block2812e8a8Value5 block2812e8a8Value6 block2812e8a8Value7 block2812e8a8Value8 block2812e8a8Value9 block2812e8a8Value10 |
    block2812e8a8Value0 := block2812e8a8Arg1.
    block2812e8a8Value1 := block2812e8a8Value0.
    (block2812e8a8Value1) x: (220).
    block2812e8a8Value2 := block2812e8a8Value0.
    (block2812e8a8Value2) marginRight: (10).
    block2812e8a8Value3 := block2812e8a8Value0.
    block2812e8a8Value4 := XmALIGNMENTBEGINNING.
    (block2812e8a8Value3) alignment: (block2812e8a8Value4).
    block2812e8a8Value5 := block2812e8a8Value0.
    (block2812e8a8Value5) labelString: ('Max').
    block2812e8a8Value6 := block2812e8a8Value0.
    (block2812e8a8Value6) marginWidth: (0).
    block2812e8a8Value7 := block2812e8a8Value0.
    (block2812e8a8Value7) marginHeight: (0).
    block2812e8a8Value8 := block2812e8a8Value0.
    (block2812e8a8Value8) y: (75).
    block2812e8a8Value9 := block2812e8a8Value0.
    (block2812e8a8Value9) height: (20).
    block2812e8a8Value10 := (block2812e8a8Value0) marginBottom: (10).
    block2812e8a8Value10
].
            recoveredPC := 1424.
        ].
        recoveredStep = 1424 ifTrue: [
            recoveredPC := 1478.
        ].
        recoveredStep = 1478 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1480.
        ].
        recoveredStep = 1480 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1482.
        ].
        recoveredStep = 1482 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 1485.
        ].
        recoveredStep = 1485 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 1488.
        ].
        recoveredStep = 1488 ifTrue: [
            recoveredStack2 := 'maxLabel'.
            recoveredPC := 1492.
        ].
        recoveredStep = 1492 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 1495.
        ].
        recoveredStep = 1495 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1497.
        ].
        recoveredStep = 1497 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 1500.
        ].
        recoveredStep = 1500 ifTrue: [
            recoveredStack2 := [:block2812e8ccArg1 | 
    | block2812e8ccValue0 block2812e8ccValue1 block2812e8ccValue2 block2812e8ccValue3 block2812e8ccValue4 block2812e8ccValue5 block2812e8ccValue6 |
    block2812e8ccValue0 := block2812e8ccArg1.
    block2812e8ccValue1 := block2812e8ccValue0.
    block2812e8ccValue2 := XmATTACHFORM.
    (block2812e8ccValue1) bottomAttachment: (block2812e8ccValue2).
    block2812e8ccValue3 := block2812e8ccValue0.
    (block2812e8ccValue3) bottomOffset: (5).
    block2812e8ccValue4 := block2812e8ccValue0.
    block2812e8ccValue5 := XmATTACHFORM.
    (block2812e8ccValue4) rightAttachment: (block2812e8ccValue5).
    block2812e8ccValue6 := (block2812e8ccValue0) rightOffset: (5).
    block2812e8ccValue6
].
            recoveredPC := 1504.
        ].
        recoveredStep = 1504 ifTrue: [
            recoveredPC := 1540.
        ].
        recoveredStep = 1540 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1545.
        ].
        recoveredStep = 1545 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 1548.
        ].
        recoveredStep = 1548 ifTrue: [
            recoveredStack2 := [:recoveredBlock1548Arg1 | 
    | recoveredBlock1548Value0 recoveredBlock1548Value1 recoveredBlock1548Value2 recoveredBlock1548Value3 recoveredBlock1548Value4 recoveredBlock1548Value5 recoveredBlock1548Value6 recoveredBlock1548Value7 recoveredBlock1548Value8 |
    recoveredBlock1548Value0 := recoveredBlock1548Arg1.
    recoveredBlock1548Value1 := recoveredBlock1548Value0.
    recoveredBlock1548Value2 := XmATTACHFORM.
    (recoveredBlock1548Value1) bottomAttachment: (recoveredBlock1548Value2).
    recoveredBlock1548Value3 := recoveredBlock1548Value0.
    (recoveredBlock1548Value3) bottomOffset: (5).
    recoveredBlock1548Value4 := recoveredBlock1548Value0.
    recoveredBlock1548Value5 := XmATTACHWIDGET.
    (recoveredBlock1548Value4) rightAttachment: (recoveredBlock1548Value5).
    recoveredBlock1548Value6 := recoveredBlock1548Value0.
    recoveredBlock1548Value7 := recoveredLocal12.
    (recoveredBlock1548Value6) rightWidget: (recoveredBlock1548Value7).
    recoveredBlock1548Value8 := (recoveredBlock1548Value0) rightOffset: (5).
    recoveredBlock1548Value8
].
            recoveredPC := 1594.
        ].
        recoveredStep = 1594 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1599.
        ].
        recoveredStep = 1599 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 1602.
        ].
        recoveredStep = 1602 ifTrue: [
            recoveredStack2 := [:recoveredBlock1602Arg1 | 
    | recoveredBlock1602Value0 recoveredBlock1602Value1 recoveredBlock1602Value2 |
    recoveredBlock1602Value0 := recoveredBlock1602Arg1.
    recoveredBlock1602Value1 := recoveredLocal20.
    recoveredBlock1602Value2 := (recoveredBlock1602Value0) workWindow: (recoveredBlock1602Value1).
    recoveredBlock1602Value2
].
            recoveredPC := 1618.
        ].
        recoveredStep = 1618 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1623.
        ].
        recoveredStep = 1623 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 1626.
        ].
        recoveredStep = 1626 ifTrue: [
            recoveredStack2 := XmNexposeCallback.
            recoveredPC := 1630.
        ].
        recoveredStep = 1630 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1631.
        ].
        recoveredStep = 1631 ifTrue: [
            recoveredStack4 := 'aForm1Expose:clientData:callData:'.
            recoveredPC := 1634.
        ].
        recoveredStep = 1634 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1635.
        ].
        recoveredStep = 1635 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1639.
        ].
        recoveredStep = 1639 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 1642.
        ].
        recoveredStep = 1642 ifTrue: [
            recoveredStack2 := XmNdestroyCallback.
            recoveredPC := 1646.
        ].
        recoveredStep = 1646 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1647.
        ].
        recoveredStep = 1647 ifTrue: [
            recoveredStack4 := 'aForm1Destroy:clientData:callData:'.
            recoveredPC := 1650.
        ].
        recoveredStep = 1650 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1651.
        ].
        recoveredStep = 1651 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1655.
        ].
        recoveredStep = 1655 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 1658.
        ].
        recoveredStep = 1658 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1662.
        ].
        recoveredStep = 1662 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1663.
        ].
        recoveredStep = 1663 ifTrue: [
            recoveredStack4 := 'cancelButtonActivate:clientData:callData:'.
            recoveredPC := 1666.
        ].
        recoveredStep = 1666 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1667.
        ].
        recoveredStep = 1667 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1671.
        ].
        recoveredStep = 1671 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 1674.
        ].
        recoveredStep = 1674 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1678.
        ].
        recoveredStep = 1678 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1679.
        ].
        recoveredStep = 1679 ifTrue: [
            recoveredStack4 := 'okButtonActivate:clientData:callData:'.
            recoveredPC := 1682.
        ].
        recoveredStep = 1682 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1683.
        ].
        recoveredStep = 1683 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1687.
        ].
        recoveredStep = 1687 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1690.
        ].
        recoveredStep = 1690 ifTrue: [
            recoveredStack2 := XmNmodifyVerifyCallback.
            recoveredPC := 1694.
        ].
        recoveredStep = 1694 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1695.
        ].
        recoveredStep = 1695 ifTrue: [
            recoveredStack4 := 'minTextModify:clientData:callData:'.
            recoveredPC := 1698.
        ].
        recoveredStep = 1698 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1699.
        ].
        recoveredStep = 1699 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1703.
        ].
        recoveredStep = 1703 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1706.
        ].
        recoveredStep = 1706 ifTrue: [
            recoveredStack2 := XmNfocusCallback.
            recoveredPC := 1710.
        ].
        recoveredStep = 1710 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1711.
        ].
        recoveredStep = 1711 ifTrue: [
            recoveredStack4 := 'textFocus:clientData:callData:'.
            recoveredPC := 1714.
        ].
        recoveredStep = 1714 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1715.
        ].
        recoveredStep = 1715 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1719.
        ].
        recoveredStep = 1719 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1722.
        ].
        recoveredStep = 1722 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 1726.
        ].
        recoveredStep = 1726 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1727.
        ].
        recoveredStep = 1727 ifTrue: [
            recoveredStack4 := 'textLosing:clientData:callData:'.
            recoveredPC := 1730.
        ].
        recoveredStep = 1730 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1731.
        ].
        recoveredStep = 1731 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1735.
        ].
        recoveredStep = 1735 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1738.
        ].
        recoveredStep = 1738 ifTrue: [
            recoveredStack2 := XmNmodifyVerifyCallback.
            recoveredPC := 1742.
        ].
        recoveredStep = 1742 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1743.
        ].
        recoveredStep = 1743 ifTrue: [
            recoveredStack4 := 'maxTextModify:clientData:callData:'.
            recoveredPC := 1746.
        ].
        recoveredStep = 1746 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1747.
        ].
        recoveredStep = 1747 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1751.
        ].
        recoveredStep = 1751 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1754.
        ].
        recoveredStep = 1754 ifTrue: [
            recoveredStack2 := XmNfocusCallback.
            recoveredPC := 1758.
        ].
        recoveredStep = 1758 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1759.
        ].
        recoveredStep = 1759 ifTrue: [
            recoveredStack4 := 'textFocus:clientData:callData:'.
            recoveredPC := 1762.
        ].
        recoveredStep = 1762 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1763.
        ].
        recoveredStep = 1763 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1767.
        ].
        recoveredStep = 1767 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1770.
        ].
        recoveredStep = 1770 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 1774.
        ].
        recoveredStep = 1774 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1775.
        ].
        recoveredStep = 1775 ifTrue: [
            recoveredStack4 := 'textLosing:clientData:callData:'.
            recoveredPC := 1778.
        ].
        recoveredStep = 1778 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1779.
        ].
        recoveredStep = 1779 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1783.
        ].
        recoveredStep = 1783 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1786.
        ].
        recoveredStep = 1786 ifTrue: [
            recoveredStack2 := XmNmodifyVerifyCallback.
            recoveredPC := 1790.
        ].
        recoveredStep = 1790 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1791.
        ].
        recoveredStep = 1791 ifTrue: [
            recoveredStack4 := 'lowBoundTextModify:clientData:callData:'.
            recoveredPC := 1794.
        ].
        recoveredStep = 1794 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1795.
        ].
        recoveredStep = 1795 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1799.
        ].
        recoveredStep = 1799 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1802.
        ].
        recoveredStep = 1802 ifTrue: [
            recoveredStack2 := XmNfocusCallback.
            recoveredPC := 1806.
        ].
        recoveredStep = 1806 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1807.
        ].
        recoveredStep = 1807 ifTrue: [
            recoveredStack4 := 'textFocus:clientData:callData:'.
            recoveredPC := 1810.
        ].
        recoveredStep = 1810 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1811.
        ].
        recoveredStep = 1811 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1815.
        ].
        recoveredStep = 1815 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1818.
        ].
        recoveredStep = 1818 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 1822.
        ].
        recoveredStep = 1822 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1823.
        ].
        recoveredStep = 1823 ifTrue: [
            recoveredStack4 := 'textLosing:clientData:callData:'.
            recoveredPC := 1826.
        ].
        recoveredStep = 1826 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1827.
        ].
        recoveredStep = 1827 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1831.
        ].
        recoveredStep = 1831 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1834.
        ].
        recoveredStep = 1834 ifTrue: [
            recoveredStack2 := XmNmodifyVerifyCallback.
            recoveredPC := 1838.
        ].
        recoveredStep = 1838 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1839.
        ].
        recoveredStep = 1839 ifTrue: [
            recoveredStack4 := 'highBoundTextModify:clientData:callData:'.
            recoveredPC := 1842.
        ].
        recoveredStep = 1842 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1843.
        ].
        recoveredStep = 1843 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1847.
        ].
        recoveredStep = 1847 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1850.
        ].
        recoveredStep = 1850 ifTrue: [
            recoveredStack2 := XmNfocusCallback.
            recoveredPC := 1854.
        ].
        recoveredStep = 1854 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1855.
        ].
        recoveredStep = 1855 ifTrue: [
            recoveredStack4 := 'textFocus:clientData:callData:'.
            recoveredPC := 1858.
        ].
        recoveredStep = 1858 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1859.
        ].
        recoveredStep = 1859 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1863.
        ].
        recoveredStep = 1863 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1866.
        ].
        recoveredStep = 1866 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 1870.
        ].
        recoveredStep = 1870 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1871.
        ].
        recoveredStep = 1871 ifTrue: [
            recoveredStack4 := 'textLosing:clientData:callData:'.
            recoveredPC := 1874.
        ].
        recoveredStep = 1874 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1875.
        ].
        recoveredStep = 1875 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1879.
        ].
        recoveredStep = 1879 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 1882.
        ].
        recoveredStep = 1882 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1887.
        ].
        recoveredStep = 1887 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1890.
        ].
        recoveredStep = 1890 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1895.
        ].
        recoveredStep = 1895 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1898.
        ].
        recoveredStep = 1898 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1903.
        ].
        recoveredStep = 1903 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1906.
        ].
        recoveredStep = 1906 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1911.
        ].
        recoveredStep = 1911 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1914.
        ].
        recoveredStep = 1914 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1919.
        ].
        recoveredStep = 1919 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 1922.
        ].
        recoveredStep = 1922 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1927.
        ].
        recoveredStep = 1927 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 1930.
        ].
        recoveredStep = 1930 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1935.
        ].
        recoveredStep = 1935 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 1938.
        ].
        recoveredStep = 1938 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1943.
        ].
        recoveredStep = 1943 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 1946.
        ].
        recoveredStep = 1946 ifTrue: [
            recoveredStack2 := recoveredLocal23.
            recoveredPC := 1949.
        ].
        recoveredStep = 1949 ifTrue: [
            recoveredStack3 := recoveredLocal21.
            recoveredPC := 1952.
        ].
        recoveredStep = 1952 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 1957.
        ].
        recoveredStep = 1957 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

