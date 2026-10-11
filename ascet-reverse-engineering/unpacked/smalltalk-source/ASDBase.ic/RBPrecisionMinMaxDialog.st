"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20005f3c; bytecode file offset 0x902de8"
!RBPrecisionMinMaxDialog methodsFor: 'recovered'!
minTextModify: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x200060fc; bytecode file offset 0x902de8"
!RBPrecisionMinMaxDialog methodsFor: 'recovered'!
textLosing: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x200062f4; bytecode file offset 0x902de8"
!RBPrecisionMinMaxDialog methodsFor: 'recovered'!
textFocus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x200064f4; bytecode file offset 0x902de8"
!RBPrecisionMinMaxDialog methodsFor: 'recovered'!
maxTextModify: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x20042a0c; bytecode file offset 0x9451f8"
!RBPrecisionMinMaxDialog methodsFor: 'recovered'!
maxText
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('maxText').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004860c; bytecode file offset 0x9451f8"
!RBPrecisionMinMaxDialog methodsFor: 'recovered'!
minText
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('minText').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070ca4; bytecode file offset 0x96d580"
!RBPrecisionMinMaxDialog methodsFor: 'recovered'!
min
    | recoveredValue0 |
    recoveredValue0 := min.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070ce8; bytecode file offset 0x96d6a4"
!RBPrecisionMinMaxDialog methodsFor: 'recovered'!
max
    | recoveredValue0 |
    recoveredValue0 := max.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c72e4; bytecode file offset 0x9c3c10"
!RBPrecisionMinMaxDialog methodsFor: 'recovered'!
min: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    min := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c73f8; bytecode file offset 0x9c3d64"
!RBPrecisionMinMaxDialog methodsFor: 'recovered'!
max: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    max := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2039ebd0; bytecode file offset 0xc9b4bc"
!RBPrecisionMinMaxDialog methodsFor: 'recovered'!
ok
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'decimalsSpinButton'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            precision := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) incDecStep.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) incDecStepText.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) valueFromString: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) incDecStep: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) max.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxText.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) valueFromString: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) min.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 46].
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
            recoveredStack1 := (recoveredStack1) minText.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) valueFromString: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) min: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            result := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20520040; bytecode file offset 0xe1c954"
!RBPrecisionMinMaxDialog methodsFor: 'recovered'!
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
            recoveredStack1 := 'hexText1'.
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
            recoveredStack1 := 'hexText3'.
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
            recoveredStack1 := 'hexText4'.
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
            recoveredStack1 := (recoveredStack1) unitString.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := 'minText'.
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
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := 'maxText'.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) characterMethod.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) characterMethod: (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := smallFont.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 192] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := 'hexText1'.
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
            recoveredStack1 := 'hexText3'.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := 'hexText4'.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := 'minText'.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := smallFont.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1) fontList: (recoveredStack2).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontStruct.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := 6.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := 'maxText'.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := smallFont.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack1) fontList: (recoveredStack2).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontStruct.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := 6.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := 'maxLabel'.
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
            recoveredStack1 := 'minLabel'.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := 'displayRangeText'.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206a9db4; bytecode file offset 0xfa6860"
!RBPrecisionMinMaxDialog methodsFor: 'recovered'!
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
            recoveredLocal19 := recoveredStack1.
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
            recoveredStack3 := [:block2812ff28Arg1 | 
    | block2812ff28Value0 block2812ff28Value1 block2812ff28Value2 block2812ff28Value3 block2812ff28Value4 block2812ff28Value5 |
    block2812ff28Value0 := block2812ff28Arg1.
    block2812ff28Value1 := block2812ff28Value0.
    (block2812ff28Value1) title: ('Display Setup').
    block2812ff28Value2 := block2812ff28Value0.
    block2812ff28Value3 := MWMINPUTSYSTEMMODAL.
    (block2812ff28Value2) mwmInputMode: (block2812ff28Value3).
    block2812ff28Value4 := block2812ff28Value0.
    (block2812ff28Value4) height: (115).
    block2812ff28Value5 := (block2812ff28Value0) width: (350).
    block2812ff28Value5
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
            recoveredLocal18 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredLocal18.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal18.
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
            recoveredLocal17 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := recoveredLocal17.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal17.
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
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := recoveredLocal16.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := 'hexText4'.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := [:block2812ff4cArg1 | 
    | block2812ff4cValue0 block2812ff4cValue1 block2812ff4cValue2 block2812ff4cValue3 block2812ff4cValue4 block2812ff4cValue5 block2812ff4cValue6 block2812ff4cValue7 block2812ff4cValue8 |
    block2812ff4cValue0 := block2812ff4cArg1.
    block2812ff4cValue1 := block2812ff4cValue0.
    (block2812ff4cValue1) x: (145).
    block2812ff4cValue2 := block2812ff4cValue0.
    (block2812ff4cValue2) marginRight: (10).
    block2812ff4cValue3 := block2812ff4cValue0.
    (block2812ff4cValue3) labelString: ('[hex]').
    block2812ff4cValue4 := block2812ff4cValue0.
    (block2812ff4cValue4) marginWidth: (0).
    block2812ff4cValue5 := block2812ff4cValue0.
    (block2812ff4cValue5) marginHeight: (0).
    block2812ff4cValue6 := block2812ff4cValue0.
    (block2812ff4cValue6) y: (95).
    block2812ff4cValue7 := block2812ff4cValue0.
    (block2812ff4cValue7) height: (20).
    block2812ff4cValue8 := (block2812ff4cValue0) marginBottom: (10).
    block2812ff4cValue8
].
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredLocal20 := recoveredStack1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := 'hexText1'.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack3 := recoveredLocal20.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := 'hexText4'.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack3 := [:block2812ff70Arg1 | 
    | block2812ff70Value0 block2812ff70Value1 block2812ff70Value2 block2812ff70Value3 block2812ff70Value4 block2812ff70Value5 block2812ff70Value6 block2812ff70Value7 block2812ff70Value8 |
    block2812ff70Value0 := block2812ff70Arg1.
    block2812ff70Value1 := block2812ff70Value0.
    (block2812ff70Value1) x: (145).
    block2812ff70Value2 := block2812ff70Value0.
    (block2812ff70Value2) marginRight: (10).
    block2812ff70Value3 := block2812ff70Value0.
    (block2812ff70Value3) labelString: ('[hex]').
    block2812ff70Value4 := block2812ff70Value0.
    (block2812ff70Value4) marginWidth: (0).
    block2812ff70Value5 := block2812ff70Value0.
    (block2812ff70Value5) marginHeight: (0).
    block2812ff70Value6 := block2812ff70Value0.
    (block2812ff70Value6) y: (95).
    block2812ff70Value7 := block2812ff70Value0.
    (block2812ff70Value7) height: (20).
    block2812ff70Value8 := (block2812ff70Value0) marginBottom: (10).
    block2812ff70Value8
].
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack2 := 'hexText4'.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack3 := recoveredLocal15.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack2 := 'hexText3'.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack3 := [:block2812ff94Arg1 | 
    | block2812ff94Value0 block2812ff94Value1 block2812ff94Value2 block2812ff94Value3 block2812ff94Value4 block2812ff94Value5 block2812ff94Value6 block2812ff94Value7 block2812ff94Value8 |
    block2812ff94Value0 := block2812ff94Arg1.
    block2812ff94Value1 := block2812ff94Value0.
    (block2812ff94Value1) x: (340).
    block2812ff94Value2 := block2812ff94Value0.
    (block2812ff94Value2) marginRight: (10).
    block2812ff94Value3 := block2812ff94Value0.
    (block2812ff94Value3) labelString: ('[hex]').
    block2812ff94Value4 := block2812ff94Value0.
    (block2812ff94Value4) marginWidth: (0).
    block2812ff94Value5 := block2812ff94Value0.
    (block2812ff94Value5) marginHeight: (0).
    block2812ff94Value6 := block2812ff94Value0.
    (block2812ff94Value6) y: (95).
    block2812ff94Value7 := block2812ff94Value0.
    (block2812ff94Value7) height: (20).
    block2812ff94Value8 := (block2812ff94Value0) marginBottom: (10).
    block2812ff94Value8
].
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack2 := 'hexText3'.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack2 := 'decimalsSpinButton'.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack3 := [:block2812ffb8Arg1 | 
    | block2812ffb8Value0 block2812ffb8Value1 block2812ffb8Value2 block2812ffb8Value3 block2812ffb8Value4 |
    block2812ffb8Value0 := block2812ffb8Arg1.
    block2812ffb8Value1 := block2812ffb8Value0.
    (block2812ffb8Value1) x: (80).
    block2812ffb8Value2 := block2812ffb8Value0.
    (block2812ffb8Value2) y: (35).
    block2812ffb8Value3 := block2812ffb8Value0.
    (block2812ffb8Value3) height: (23).
    block2812ffb8Value4 := (block2812ffb8Value0) width: (60).
    block2812ffb8Value4
].
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSpinButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack2 := 'decimalsSpinButton'.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack3 := [:block2812ffdcArg1 | 
    | block2812ffdcValue0 block2812ffdcValue1 block2812ffdcValue2 block2812ffdcValue3 block2812ffdcValue4 block2812ffdcValue5 |
    block2812ffdcValue0 := block2812ffdcArg1.
    block2812ffdcValue1 := block2812ffdcValue0.
    (block2812ffdcValue1) x: (400).
    block2812ffdcValue2 := block2812ffdcValue0.
    (block2812ffdcValue2) labelString: ('Cancel').
    block2812ffdcValue3 := block2812ffdcValue0.
    (block2812ffdcValue3) y: (45).
    block2812ffdcValue4 := block2812ffdcValue0.
    (block2812ffdcValue4) height: (25).
    block2812ffdcValue5 := (block2812ffdcValue0) width: (90).
    block2812ffdcValue5
].
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack3 := [:block28130000Arg1 | 
    | block28130000Value0 block28130000Value1 block28130000Value2 block28130000Value3 block28130000Value4 block28130000Value5 block28130000Value6 |
    block28130000Value0 := block28130000Arg1.
    block28130000Value1 := block28130000Value0.
    (block28130000Value1) x: (400).
    block28130000Value2 := block28130000Value0.
    (block28130000Value2) showAsDefault: (1).
    block28130000Value3 := block28130000Value0.
    (block28130000Value3) labelString: ('Ok').
    block28130000Value4 := block28130000Value0.
    (block28130000Value4) y: (10).
    block28130000Value5 := block28130000Value0.
    (block28130000Value5) height: (25).
    block28130000Value6 := (block28130000Value0) width: (90).
    block28130000Value6
].
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredStack2 := 'helpButton'.
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack3 := [:block28130024Arg1 | 
    | block28130024Value0 block28130024Value1 block28130024Value2 block28130024Value3 block28130024Value4 block28130024Value5 |
    block28130024Value0 := block28130024Arg1.
    block28130024Value1 := block28130024Value0.
    (block28130024Value1) x: (400).
    block28130024Value2 := block28130024Value0.
    (block28130024Value2) labelString: ('Help').
    block28130024Value3 := block28130024Value0.
    (block28130024Value3) y: (80).
    block28130024Value4 := block28130024Value0.
    (block28130024Value4) height: (25).
    block28130024Value5 := (block28130024Value0) width: (90).
    block28130024Value5
].
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            recoveredStack2 := 'helpButton'.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 546.
        ].
        recoveredStep = 546 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            recoveredStack3 := [:block28130048Arg1 | 
    | block28130048Value0 block28130048Value1 block28130048Value2 block28130048Value3 block28130048Value4 block28130048Value5 |
    block28130048Value0 := block28130048Arg1.
    block28130048Value1 := block28130048Value0.
    (block28130048Value1) x: (390).
    block28130048Value2 := block28130048Value0.
    block28130048Value3 := XmVERTICAL.
    (block28130048Value2) orientation: (block28130048Value3).
    block28130048Value4 := block28130048Value0.
    (block28130048Value4) height: (190).
    block28130048Value5 := (block28130048Value0) width: (1).
    block28130048Value5
].
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 598.
        ].
        recoveredStep = 598 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 606.
        ].
        recoveredStep = 606 ifTrue: [
            recoveredStack2 := 'minText'.
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            recoveredStack3 := [:block2813006cArg1 | 
    | block2813006cValue0 block2813006cValue1 block2813006cValue2 block2813006cValue3 block2813006cValue4 |
    block2813006cValue0 := block2813006cArg1.
    block2813006cValue1 := block2813006cValue0.
    (block2813006cValue1) y: (90).
    block2813006cValue2 := block2813006cValue0.
    (block2813006cValue2) x: (80).
    block2813006cValue3 := block2813006cValue0.
    (block2813006cValue3) height: (25).
    block2813006cValue4 := (block2813006cValue0) width: (60).
    block2813006cValue4
].
            recoveredPC := 614.
        ].
        recoveredStep = 614 ifTrue: [
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 647.
        ].
        recoveredStep = 647 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 649.
        ].
        recoveredStep = 649 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 652.
        ].
        recoveredStep = 652 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 655.
        ].
        recoveredStep = 655 ifTrue: [
            recoveredStack2 := 'minText'.
            recoveredPC := 658.
        ].
        recoveredStep = 658 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 661.
        ].
        recoveredStep = 661 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 663.
        ].
        recoveredStep = 663 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 666.
        ].
        recoveredStep = 666 ifTrue: [
            recoveredStack2 := 'maxText'.
            recoveredPC := 670.
        ].
        recoveredStep = 670 ifTrue: [
            recoveredStack3 := [:block28130090Arg1 | 
    | block28130090Value0 block28130090Value1 block28130090Value2 block28130090Value3 block28130090Value4 |
    block28130090Value0 := block28130090Arg1.
    block28130090Value1 := block28130090Value0.
    (block28130090Value1) y: (90).
    block28130090Value2 := block28130090Value0.
    (block28130090Value2) x: (275).
    block28130090Value3 := block28130090Value0.
    (block28130090Value3) height: (25).
    block28130090Value4 := (block28130090Value0) width: (60).
    block28130090Value4
].
            recoveredPC := 674.
        ].
        recoveredStep = 674 ifTrue: [
            recoveredPC := 702.
        ].
        recoveredStep = 702 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 707.
        ].
        recoveredStep = 707 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 709.
        ].
        recoveredStep = 709 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 712.
        ].
        recoveredStep = 712 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 715.
        ].
        recoveredStep = 715 ifTrue: [
            recoveredStack2 := 'maxText'.
            recoveredPC := 718.
        ].
        recoveredStep = 718 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 721.
        ].
        recoveredStep = 721 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 723.
        ].
        recoveredStep = 723 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 726.
        ].
        recoveredStep = 726 ifTrue: [
            recoveredStack2 := 'decimalsText'.
            recoveredPC := 730.
        ].
        recoveredStep = 730 ifTrue: [
            recoveredStack3 := [:recoveredBlock730Arg1 | 
    | recoveredBlock730Value0 recoveredBlock730Value1 recoveredBlock730Value2 recoveredBlock730Value3 recoveredBlock730Value4 recoveredBlock730Value5 recoveredBlock730Value6 recoveredBlock730Value7 recoveredBlock730Value8 recoveredBlock730Value9 recoveredBlock730Value10 |
    recoveredBlock730Value0 := recoveredBlock730Arg1.
    recoveredBlock730Value1 := recoveredBlock730Value0.
    (recoveredBlock730Value1) x: (10).
    recoveredBlock730Value2 := recoveredBlock730Value0.
    (recoveredBlock730Value2) marginRight: (10).
    recoveredBlock730Value3 := recoveredBlock730Value0.
    (recoveredBlock730Value3) labelString: ('Number of decimals').
    recoveredBlock730Value4 := recoveredBlock730Value0.
    (recoveredBlock730Value4) marginWidth: (0).
    recoveredBlock730Value5 := recoveredBlock730Value0.
    (recoveredBlock730Value5) marginHeight: (0).
    recoveredBlock730Value6 := recoveredBlock730Value0.
    (recoveredBlock730Value6) y: (10).
    recoveredBlock730Value7 := recoveredBlock730Value0.
    (recoveredBlock730Value7) height: (20).
    recoveredBlock730Value8 := recoveredBlock730Value0.
    (recoveredBlock730Value8) marginBottom: (10).
    recoveredBlock730Value9 := (self) defaultLabelBlue.
    recoveredBlock730Value10 := (recoveredBlock730Value0) foregroundColor: (recoveredBlock730Value9).
    recoveredBlock730Value10
].
            recoveredPC := 790.
        ].
        recoveredStep = 790 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 792.
        ].
        recoveredStep = 792 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 794.
        ].
        recoveredStep = 794 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 797.
        ].
        recoveredStep = 797 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 800.
        ].
        recoveredStep = 800 ifTrue: [
            recoveredStack2 := 'decimalsText'.
            recoveredPC := 804.
        ].
        recoveredStep = 804 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 807.
        ].
        recoveredStep = 807 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 809.
        ].
        recoveredStep = 809 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 812.
        ].
        recoveredStep = 812 ifTrue: [
            recoveredStack2 := 'displayRangeText'.
            recoveredPC := 816.
        ].
        recoveredStep = 816 ifTrue: [
            recoveredStack3 := [:recoveredBlock816Arg1 | 
    | recoveredBlock816Value0 recoveredBlock816Value1 recoveredBlock816Value2 recoveredBlock816Value3 recoveredBlock816Value4 recoveredBlock816Value5 recoveredBlock816Value6 recoveredBlock816Value7 recoveredBlock816Value8 recoveredBlock816Value9 recoveredBlock816Value10 |
    recoveredBlock816Value0 := recoveredBlock816Arg1.
    recoveredBlock816Value1 := recoveredBlock816Value0.
    (recoveredBlock816Value1) x: (10).
    recoveredBlock816Value2 := recoveredBlock816Value0.
    (recoveredBlock816Value2) marginRight: (10).
    recoveredBlock816Value3 := recoveredBlock816Value0.
    (recoveredBlock816Value3) labelString: ('Display range').
    recoveredBlock816Value4 := recoveredBlock816Value0.
    (recoveredBlock816Value4) marginWidth: (0).
    recoveredBlock816Value5 := recoveredBlock816Value0.
    (recoveredBlock816Value5) marginHeight: (0).
    recoveredBlock816Value6 := recoveredBlock816Value0.
    (recoveredBlock816Value6) y: (70).
    recoveredBlock816Value7 := recoveredBlock816Value0.
    (recoveredBlock816Value7) height: (20).
    recoveredBlock816Value8 := recoveredBlock816Value0.
    (recoveredBlock816Value8) marginBottom: (10).
    recoveredBlock816Value9 := (self) defaultLabelBlue.
    recoveredBlock816Value10 := (recoveredBlock816Value0) foregroundColor: (recoveredBlock816Value9).
    recoveredBlock816Value10
].
            recoveredPC := 876.
        ].
        recoveredStep = 876 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 878.
        ].
        recoveredStep = 878 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 880.
        ].
        recoveredStep = 880 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 883.
        ].
        recoveredStep = 883 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 886.
        ].
        recoveredStep = 886 ifTrue: [
            recoveredStack2 := 'displayRangeText'.
            recoveredPC := 890.
        ].
        recoveredStep = 890 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 893.
        ].
        recoveredStep = 893 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 895.
        ].
        recoveredStep = 895 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 898.
        ].
        recoveredStep = 898 ifTrue: [
            recoveredStack2 := 'minLabel'.
            recoveredPC := 902.
        ].
        recoveredStep = 902 ifTrue: [
            recoveredStack3 := [:block281300b4Arg1 | 
    | block281300b4Value0 block281300b4Value1 block281300b4Value2 block281300b4Value3 block281300b4Value4 block281300b4Value5 block281300b4Value6 block281300b4Value7 block281300b4Value8 block281300b4Value9 block281300b4Value10 |
    block281300b4Value0 := block281300b4Arg1.
    block281300b4Value1 := block281300b4Value0.
    (block281300b4Value1) x: (25).
    block281300b4Value2 := block281300b4Value0.
    (block281300b4Value2) marginRight: (10).
    block281300b4Value3 := block281300b4Value0.
    block281300b4Value4 := XmALIGNMENTBEGINNING.
    (block281300b4Value3) alignment: (block281300b4Value4).
    block281300b4Value5 := block281300b4Value0.
    (block281300b4Value5) labelString: ('Min').
    block281300b4Value6 := block281300b4Value0.
    (block281300b4Value6) marginWidth: (0).
    block281300b4Value7 := block281300b4Value0.
    (block281300b4Value7) marginHeight: (0).
    block281300b4Value8 := block281300b4Value0.
    (block281300b4Value8) y: (95).
    block281300b4Value9 := block281300b4Value0.
    (block281300b4Value9) height: (20).
    block281300b4Value10 := (block281300b4Value0) marginBottom: (10).
    block281300b4Value10
].
            recoveredPC := 906.
        ].
        recoveredStep = 906 ifTrue: [
            recoveredPC := 962.
        ].
        recoveredStep = 962 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 964.
        ].
        recoveredStep = 964 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 966.
        ].
        recoveredStep = 966 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 969.
        ].
        recoveredStep = 969 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 972.
        ].
        recoveredStep = 972 ifTrue: [
            recoveredStack2 := 'minLabel'.
            recoveredPC := 976.
        ].
        recoveredStep = 976 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 979.
        ].
        recoveredStep = 979 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 981.
        ].
        recoveredStep = 981 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 984.
        ].
        recoveredStep = 984 ifTrue: [
            recoveredStack2 := 'maxLabel'.
            recoveredPC := 988.
        ].
        recoveredStep = 988 ifTrue: [
            recoveredStack3 := [:block281300d8Arg1 | 
    | block281300d8Value0 block281300d8Value1 block281300d8Value2 block281300d8Value3 block281300d8Value4 block281300d8Value5 block281300d8Value6 block281300d8Value7 block281300d8Value8 block281300d8Value9 block281300d8Value10 |
    block281300d8Value0 := block281300d8Arg1.
    block281300d8Value1 := block281300d8Value0.
    (block281300d8Value1) x: (220).
    block281300d8Value2 := block281300d8Value0.
    (block281300d8Value2) marginRight: (10).
    block281300d8Value3 := block281300d8Value0.
    block281300d8Value4 := XmALIGNMENTBEGINNING.
    (block281300d8Value3) alignment: (block281300d8Value4).
    block281300d8Value5 := block281300d8Value0.
    (block281300d8Value5) labelString: ('Max').
    block281300d8Value6 := block281300d8Value0.
    (block281300d8Value6) marginWidth: (0).
    block281300d8Value7 := block281300d8Value0.
    (block281300d8Value7) marginHeight: (0).
    block281300d8Value8 := block281300d8Value0.
    (block281300d8Value8) y: (95).
    block281300d8Value9 := block281300d8Value0.
    (block281300d8Value9) height: (20).
    block281300d8Value10 := (block281300d8Value0) marginBottom: (10).
    block281300d8Value10
].
            recoveredPC := 992.
        ].
        recoveredStep = 992 ifTrue: [
            recoveredPC := 1050.
        ].
        recoveredStep = 1050 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1052.
        ].
        recoveredStep = 1052 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1054.
        ].
        recoveredStep = 1054 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 1057.
        ].
        recoveredStep = 1057 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 1060.
        ].
        recoveredStep = 1060 ifTrue: [
            recoveredStack2 := 'maxLabel'.
            recoveredPC := 1064.
        ].
        recoveredStep = 1064 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 1067.
        ].
        recoveredStep = 1067 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1069.
        ].
        recoveredStep = 1069 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 1072.
        ].
        recoveredStep = 1072 ifTrue: [
            recoveredStack2 := 'incDecStepLabel'.
            recoveredPC := 1076.
        ].
        recoveredStep = 1076 ifTrue: [
            recoveredStack3 := [:recoveredBlock1076Arg1 | 
    | recoveredBlock1076Value0 recoveredBlock1076Value1 recoveredBlock1076Value2 recoveredBlock1076Value3 recoveredBlock1076Value4 recoveredBlock1076Value5 recoveredBlock1076Value6 recoveredBlock1076Value7 recoveredBlock1076Value8 recoveredBlock1076Value9 recoveredBlock1076Value10 recoveredBlock1076Value11 |
    recoveredBlock1076Value0 := recoveredBlock1076Arg1.
    recoveredBlock1076Value1 := recoveredBlock1076Value0.
    (recoveredBlock1076Value1) x: (192).
    recoveredBlock1076Value2 := recoveredBlock1076Value0.
    recoveredBlock1076Value3 := XmALIGNMENTBEGINNING.
    (recoveredBlock1076Value2) alignment: (recoveredBlock1076Value3).
    recoveredBlock1076Value4 := recoveredBlock1076Value0.
    (recoveredBlock1076Value4) labelString: ('Column width').
    recoveredBlock1076Value5 := recoveredBlock1076Value0.
    (recoveredBlock1076Value5) marginBottom: (10).
    recoveredBlock1076Value6 := recoveredBlock1076Value0.
    (recoveredBlock1076Value6) marginHeight: (0).
    recoveredBlock1076Value7 := recoveredBlock1076Value0.
    (recoveredBlock1076Value7) y: (1).
    recoveredBlock1076Value8 := recoveredBlock1076Value0.
    (recoveredBlock1076Value8) height: (20).
    recoveredBlock1076Value9 := recoveredBlock1076Value0.
    (recoveredBlock1076Value9) width: (100).
    recoveredBlock1076Value10 := (self) defaultLabelBlue.
    recoveredBlock1076Value11 := (recoveredBlock1076Value0) foregroundColor: (recoveredBlock1076Value10).
    recoveredBlock1076Value11
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
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 1147.
        ].
        recoveredStep = 1147 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 1150.
        ].
        recoveredStep = 1150 ifTrue: [
            recoveredStack2 := 'incDecStepLabel'.
            recoveredPC := 1154.
        ].
        recoveredStep = 1154 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 1157.
        ].
        recoveredStep = 1157 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1159.
        ].
        recoveredStep = 1159 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 1162.
        ].
        recoveredStep = 1162 ifTrue: [
            recoveredStack2 := 'incDecStepText'.
            recoveredPC := 1166.
        ].
        recoveredStep = 1166 ifTrue: [
            recoveredStack3 := [:block281300fcArg1 | 
    | block281300fcValue0 block281300fcValue1 block281300fcValue2 block281300fcValue3 block281300fcValue4 |
    block281300fcValue0 := block281300fcArg1.
    block281300fcValue1 := block281300fcValue0.
    (block281300fcValue1) y: (35).
    block281300fcValue2 := block281300fcValue0.
    (block281300fcValue2) x: (193).
    block281300fcValue3 := block281300fcValue0.
    (block281300fcValue3) height: (20).
    block281300fcValue4 := (block281300fcValue0) width: (80).
    block281300fcValue4
].
            recoveredPC := 1170.
        ].
        recoveredStep = 1170 ifTrue: [
            recoveredPC := 1197.
        ].
        recoveredStep = 1197 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1201.
        ].
        recoveredStep = 1201 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1203.
        ].
        recoveredStep = 1203 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 1206.
        ].
        recoveredStep = 1206 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 1209.
        ].
        recoveredStep = 1209 ifTrue: [
            recoveredStack2 := 'incDecStepText'.
            recoveredPC := 1212.
        ].
        recoveredStep = 1212 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 1215.
        ].
        recoveredStep = 1215 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1217.
        ].
        recoveredStep = 1217 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 1220.
        ].
        recoveredStep = 1220 ifTrue: [
            recoveredStack2 := [:recoveredBlock1220Arg1 | 
    | recoveredBlock1220Value0 recoveredBlock1220Value1 recoveredBlock1220Value2 |
    recoveredBlock1220Value0 := recoveredBlock1220Arg1.
    recoveredBlock1220Value1 := recoveredLocal16.
    recoveredBlock1220Value2 := (recoveredBlock1220Value0) workWindow: (recoveredBlock1220Value1).
    recoveredBlock1220Value2
].
            recoveredPC := 1236.
        ].
        recoveredStep = 1236 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1241.
        ].
        recoveredStep = 1241 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 1244.
        ].
        recoveredStep = 1244 ifTrue: [
            recoveredStack2 := [:recoveredBlock1244Arg1 | 
    | recoveredBlock1244Value0 recoveredBlock1244Value1 recoveredBlock1244Value2 recoveredBlock1244Value3 recoveredBlock1244Value4 recoveredBlock1244Value5 recoveredBlock1244Value6 recoveredBlock1244Value7 recoveredBlock1244Value8 |
    recoveredBlock1244Value0 := recoveredBlock1244Arg1.
    recoveredBlock1244Value1 := recoveredBlock1244Value0.
    recoveredBlock1244Value2 := XmATTACHWIDGET.
    (recoveredBlock1244Value1) topAttachment: (recoveredBlock1244Value2).
    recoveredBlock1244Value3 := recoveredBlock1244Value0.
    recoveredBlock1244Value4 := recoveredLocal5.
    (recoveredBlock1244Value3) topWidget: (recoveredBlock1244Value4).
    recoveredBlock1244Value5 := recoveredBlock1244Value0.
    recoveredBlock1244Value6 := XmATTACHWIDGET.
    (recoveredBlock1244Value5) leftAttachment: (recoveredBlock1244Value6).
    recoveredBlock1244Value7 := recoveredLocal8.
    recoveredBlock1244Value8 := (recoveredBlock1244Value0) leftWidget: (recoveredBlock1244Value7).
    recoveredBlock1244Value8
].
            recoveredPC := 1286.
        ].
        recoveredStep = 1286 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1291.
        ].
        recoveredStep = 1291 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 1294.
        ].
        recoveredStep = 1294 ifTrue: [
            recoveredStack2 := [:recoveredBlock1294Arg1 | 
    | recoveredBlock1294Value0 recoveredBlock1294Value1 recoveredBlock1294Value2 recoveredBlock1294Value3 recoveredBlock1294Value4 recoveredBlock1294Value5 recoveredBlock1294Value6 recoveredBlock1294Value7 recoveredBlock1294Value8 |
    recoveredBlock1294Value0 := recoveredBlock1294Arg1.
    recoveredBlock1294Value1 := recoveredBlock1294Value0.
    recoveredBlock1294Value2 := XmATTACHWIDGET.
    (recoveredBlock1294Value1) topAttachment: (recoveredBlock1294Value2).
    recoveredBlock1294Value3 := recoveredBlock1294Value0.
    recoveredBlock1294Value4 := recoveredLocal5.
    (recoveredBlock1294Value3) topWidget: (recoveredBlock1294Value4).
    recoveredBlock1294Value5 := recoveredBlock1294Value0.
    recoveredBlock1294Value6 := XmATTACHWIDGET.
    (recoveredBlock1294Value5) leftAttachment: (recoveredBlock1294Value6).
    recoveredBlock1294Value7 := recoveredLocal7.
    recoveredBlock1294Value8 := (recoveredBlock1294Value0) leftWidget: (recoveredBlock1294Value7).
    recoveredBlock1294Value8
].
            recoveredPC := 1336.
        ].
        recoveredStep = 1336 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1341.
        ].
        recoveredStep = 1341 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 1344.
        ].
        recoveredStep = 1344 ifTrue: [
            recoveredStack2 := [:recoveredBlock1344Arg1 | 
    | recoveredBlock1344Value0 recoveredBlock1344Value1 recoveredBlock1344Value2 recoveredBlock1344Value3 recoveredBlock1344Value4 recoveredBlock1344Value5 recoveredBlock1344Value6 recoveredBlock1344Value7 recoveredBlock1344Value8 recoveredBlock1344Value9 |
    recoveredBlock1344Value0 := recoveredBlock1344Arg1.
    recoveredBlock1344Value1 := recoveredBlock1344Value0.
    recoveredBlock1344Value2 := XmATTACHWIDGET.
    (recoveredBlock1344Value1) topAttachment: (recoveredBlock1344Value2).
    recoveredBlock1344Value3 := recoveredBlock1344Value0.
    recoveredBlock1344Value4 := recoveredLocal2.
    (recoveredBlock1344Value3) topWidget: (recoveredBlock1344Value4).
    recoveredBlock1344Value5 := recoveredBlock1344Value0.
    (recoveredBlock1344Value5) topOffset: (0).
    recoveredBlock1344Value6 := recoveredBlock1344Value0.
    recoveredBlock1344Value7 := XmATTACHWIDGET.
    (recoveredBlock1344Value6) leftAttachment: (recoveredBlock1344Value7).
    recoveredBlock1344Value8 := recoveredLocal1.
    recoveredBlock1344Value9 := (recoveredBlock1344Value0) leftWidget: (recoveredBlock1344Value8).
    recoveredBlock1344Value9
].
            recoveredPC := 1392.
        ].
        recoveredStep = 1392 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1397.
        ].
        recoveredStep = 1397 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 1400.
        ].
        recoveredStep = 1400 ifTrue: [
            recoveredStack2 := [:recoveredBlock1400Arg1 | 
    | recoveredBlock1400Value0 recoveredBlock1400Value1 recoveredBlock1400Value2 recoveredBlock1400Value3 recoveredBlock1400Value4 recoveredBlock1400Value5 recoveredBlock1400Value6 recoveredBlock1400Value7 |
    recoveredBlock1400Value0 := recoveredBlock1400Arg1.
    recoveredBlock1400Value1 := recoveredBlock1400Value0.
    recoveredBlock1400Value2 := XmATTACHWIDGET.
    (recoveredBlock1400Value1) topAttachment: (recoveredBlock1400Value2).
    recoveredBlock1400Value3 := recoveredBlock1400Value0.
    recoveredBlock1400Value4 := recoveredLocal6.
    (recoveredBlock1400Value3) topWidget: (recoveredBlock1400Value4).
    recoveredBlock1400Value5 := recoveredBlock1400Value0.
    recoveredBlock1400Value6 := XmATTACHFORM.
    (recoveredBlock1400Value5) leftAttachment: (recoveredBlock1400Value6).
    recoveredBlock1400Value7 := (recoveredBlock1400Value0) leftOffset: (5).
    recoveredBlock1400Value7
].
            recoveredPC := 1440.
        ].
        recoveredStep = 1440 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1445.
        ].
        recoveredStep = 1445 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 1448.
        ].
        recoveredStep = 1448 ifTrue: [
            recoveredStack2 := [:block28130120Arg1 | 
    | block28130120Value0 block28130120Value1 block28130120Value2 block28130120Value3 |
    block28130120Value0 := block28130120Arg1.
    block28130120Value1 := block28130120Value0.
    block28130120Value2 := XmATTACHOPPOSITEFORM.
    (block28130120Value1) leftAttachment: (block28130120Value2).
    block28130120Value3 := (block28130120Value0) leftOffset: (-95).
    block28130120Value3
].
            recoveredPC := 1452.
        ].
        recoveredStep = 1452 ifTrue: [
            recoveredPC := 1476.
        ].
        recoveredStep = 1476 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1481.
        ].
        recoveredStep = 1481 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 1484.
        ].
        recoveredStep = 1484 ifTrue: [
            recoveredStack2 := [:block28130144Arg1 | 
    | block28130144Value0 block28130144Value1 block28130144Value2 block28130144Value3 |
    block28130144Value0 := block28130144Arg1.
    block28130144Value1 := block28130144Value0.
    block28130144Value2 := XmATTACHOPPOSITEFORM.
    (block28130144Value1) leftAttachment: (block28130144Value2).
    block28130144Value3 := (block28130144Value0) leftOffset: (-95).
    block28130144Value3
].
            recoveredPC := 1488.
        ].
        recoveredStep = 1488 ifTrue: [
            recoveredPC := 1512.
        ].
        recoveredStep = 1512 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1517.
        ].
        recoveredStep = 1517 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 1520.
        ].
        recoveredStep = 1520 ifTrue: [
            recoveredStack2 := [:block28130168Arg1 | 
    | block28130168Value0 block28130168Value1 block28130168Value2 block28130168Value3 |
    block28130168Value0 := block28130168Arg1.
    block28130168Value1 := block28130168Value0.
    block28130168Value2 := XmATTACHOPPOSITEFORM.
    (block28130168Value1) leftAttachment: (block28130168Value2).
    block28130168Value3 := (block28130168Value0) leftOffset: (-95).
    block28130168Value3
].
            recoveredPC := 1524.
        ].
        recoveredStep = 1524 ifTrue: [
            recoveredPC := 1548.
        ].
        recoveredStep = 1548 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1553.
        ].
        recoveredStep = 1553 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1556.
        ].
        recoveredStep = 1556 ifTrue: [
            recoveredStack2 := [:block2813018cArg1 | 
    | block2813018cValue0 block2813018cValue1 block2813018cValue2 block2813018cValue3 |
    block2813018cValue0 := block2813018cArg1.
    block2813018cValue1 := block2813018cValue0.
    block2813018cValue2 := XmATTACHOPPOSITEFORM.
    (block2813018cValue1) leftAttachment: (block2813018cValue2).
    block2813018cValue3 := (block2813018cValue0) leftOffset: (-102).
    block2813018cValue3
].
            recoveredPC := 1560.
        ].
        recoveredStep = 1560 ifTrue: [
            recoveredPC := 1584.
        ].
        recoveredStep = 1584 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1589.
        ].
        recoveredStep = 1589 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1592.
        ].
        recoveredStep = 1592 ifTrue: [
            recoveredStack2 := [:recoveredBlock1592Arg1 | 
    | recoveredBlock1592Value0 recoveredBlock1592Value1 recoveredBlock1592Value2 recoveredBlock1592Value3 recoveredBlock1592Value4 recoveredBlock1592Value5 recoveredBlock1592Value6 recoveredBlock1592Value7 recoveredBlock1592Value8 |
    recoveredBlock1592Value0 := recoveredBlock1592Arg1.
    recoveredBlock1592Value1 := recoveredBlock1592Value0.
    recoveredBlock1592Value2 := XmATTACHWIDGET.
    (recoveredBlock1592Value1) topAttachment: (recoveredBlock1592Value2).
    recoveredBlock1592Value3 := recoveredBlock1592Value0.
    recoveredBlock1592Value4 := recoveredLocal5.
    (recoveredBlock1592Value3) topWidget: (recoveredBlock1592Value4).
    recoveredBlock1592Value5 := recoveredBlock1592Value0.
    recoveredBlock1592Value6 := XmATTACHWIDGET.
    (recoveredBlock1592Value5) leftAttachment: (recoveredBlock1592Value6).
    recoveredBlock1592Value7 := recoveredLocal4.
    recoveredBlock1592Value8 := (recoveredBlock1592Value0) leftWidget: (recoveredBlock1592Value7).
    recoveredBlock1592Value8
].
            recoveredPC := 1634.
        ].
        recoveredStep = 1634 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1639.
        ].
        recoveredStep = 1639 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1642.
        ].
        recoveredStep = 1642 ifTrue: [
            recoveredStack2 := [:recoveredBlock1642Arg1 | 
    | recoveredBlock1642Value0 recoveredBlock1642Value1 recoveredBlock1642Value2 recoveredBlock1642Value3 recoveredBlock1642Value4 recoveredBlock1642Value5 recoveredBlock1642Value6 recoveredBlock1642Value7 recoveredBlock1642Value8 |
    recoveredBlock1642Value0 := recoveredBlock1642Arg1.
    recoveredBlock1642Value1 := recoveredBlock1642Value0.
    recoveredBlock1642Value2 := XmATTACHWIDGET.
    (recoveredBlock1642Value1) topAttachment: (recoveredBlock1642Value2).
    recoveredBlock1642Value3 := recoveredBlock1642Value0.
    recoveredBlock1642Value4 := recoveredLocal5.
    (recoveredBlock1642Value3) topWidget: (recoveredBlock1642Value4).
    recoveredBlock1642Value5 := recoveredBlock1642Value0.
    recoveredBlock1642Value6 := XmATTACHWIDGET.
    (recoveredBlock1642Value5) leftAttachment: (recoveredBlock1642Value6).
    recoveredBlock1642Value7 := recoveredLocal3.
    recoveredBlock1642Value8 := (recoveredBlock1642Value0) leftWidget: (recoveredBlock1642Value7).
    recoveredBlock1642Value8
].
            recoveredPC := 1684.
        ].
        recoveredStep = 1684 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1689.
        ].
        recoveredStep = 1689 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1692.
        ].
        recoveredStep = 1692 ifTrue: [
            recoveredStack2 := [:block281301b0Arg1 | 
    | block281301b0Value0 block281301b0Value1 block281301b0Value2 block281301b0Value3 block281301b0Value4 block281301b0Value5 block281301b0Value6 |
    block281301b0Value0 := block281301b0Arg1.
    block281301b0Value1 := block281301b0Value0.
    block281301b0Value2 := XmATTACHFORM.
    (block281301b0Value1) topAttachment: (block281301b0Value2).
    block281301b0Value3 := block281301b0Value0.
    (block281301b0Value3) topOffset: (5).
    block281301b0Value4 := block281301b0Value0.
    block281301b0Value5 := XmATTACHFORM.
    (block281301b0Value4) leftAttachment: (block281301b0Value5).
    block281301b0Value6 := (block281301b0Value0) leftOffset: (5).
    block281301b0Value6
].
            recoveredPC := 1696.
        ].
        recoveredStep = 1696 ifTrue: [
            recoveredPC := 1732.
        ].
        recoveredStep = 1732 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1737.
        ].
        recoveredStep = 1737 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1740.
        ].
        recoveredStep = 1740 ifTrue: [
            recoveredStack2 := [:recoveredBlock1740Arg1 | 
    | recoveredBlock1740Value0 recoveredBlock1740Value1 recoveredBlock1740Value2 recoveredBlock1740Value3 recoveredBlock1740Value4 recoveredBlock1740Value5 recoveredBlock1740Value6 recoveredBlock1740Value7 recoveredBlock1740Value8 |
    recoveredBlock1740Value0 := recoveredBlock1740Arg1.
    recoveredBlock1740Value1 := recoveredBlock1740Value0.
    recoveredBlock1740Value2 := XmATTACHWIDGET.
    (recoveredBlock1740Value1) topAttachment: (recoveredBlock1740Value2).
    recoveredBlock1740Value3 := recoveredBlock1740Value0.
    recoveredBlock1740Value4 := recoveredLocal13.
    (recoveredBlock1740Value3) topWidget: (recoveredBlock1740Value4).
    recoveredBlock1740Value5 := recoveredBlock1740Value0.
    (recoveredBlock1740Value5) topOffset: (5).
    recoveredBlock1740Value6 := recoveredBlock1740Value0.
    recoveredBlock1740Value7 := XmATTACHFORM.
    (recoveredBlock1740Value6) leftAttachment: (recoveredBlock1740Value7).
    recoveredBlock1740Value8 := (recoveredBlock1740Value0) leftOffset: (5).
    recoveredBlock1740Value8
].
            recoveredPC := 1786.
        ].
        recoveredStep = 1786 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1791.
        ].
        recoveredStep = 1791 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1794.
        ].
        recoveredStep = 1794 ifTrue: [
            recoveredStack2 := [:recoveredBlock1794Arg1 | 
    | recoveredBlock1794Value0 recoveredBlock1794Value1 recoveredBlock1794Value2 recoveredBlock1794Value3 recoveredBlock1794Value4 recoveredBlock1794Value5 recoveredBlock1794Value6 recoveredBlock1794Value7 |
    recoveredBlock1794Value0 := recoveredBlock1794Arg1.
    recoveredBlock1794Value1 := recoveredBlock1794Value0.
    recoveredBlock1794Value2 := XmATTACHWIDGET.
    (recoveredBlock1794Value1) topAttachment: (recoveredBlock1794Value2).
    recoveredBlock1794Value3 := recoveredBlock1794Value0.
    recoveredBlock1794Value4 := recoveredLocal5.
    (recoveredBlock1794Value3) topWidget: (recoveredBlock1794Value4).
    recoveredBlock1794Value5 := recoveredBlock1794Value0.
    recoveredBlock1794Value6 := XmATTACHFORM.
    (recoveredBlock1794Value5) leftAttachment: (recoveredBlock1794Value6).
    recoveredBlock1794Value7 := (recoveredBlock1794Value0) leftOffset: (5).
    recoveredBlock1794Value7
].
            recoveredPC := 1834.
        ].
        recoveredStep = 1834 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1839.
        ].
        recoveredStep = 1839 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1842.
        ].
        recoveredStep = 1842 ifTrue: [
            recoveredStack2 := [:recoveredBlock1842Arg1 | 
    | recoveredBlock1842Value0 recoveredBlock1842Value1 recoveredBlock1842Value2 recoveredBlock1842Value3 recoveredBlock1842Value4 recoveredBlock1842Value5 recoveredBlock1842Value6 recoveredBlock1842Value7 recoveredBlock1842Value8 recoveredBlock1842Value9 |
    recoveredBlock1842Value0 := recoveredBlock1842Arg1.
    recoveredBlock1842Value1 := recoveredBlock1842Value0.
    recoveredBlock1842Value2 := XmATTACHWIDGET.
    (recoveredBlock1842Value1) topAttachment: (recoveredBlock1842Value2).
    recoveredBlock1842Value3 := recoveredBlock1842Value0.
    recoveredBlock1842Value4 := recoveredLocal5.
    (recoveredBlock1842Value3) topWidget: (recoveredBlock1842Value4).
    recoveredBlock1842Value5 := recoveredBlock1842Value0.
    recoveredBlock1842Value6 := XmATTACHWIDGET.
    (recoveredBlock1842Value5) leftAttachment: (recoveredBlock1842Value6).
    recoveredBlock1842Value7 := recoveredBlock1842Value0.
    recoveredBlock1842Value8 := recoveredLocal15.
    (recoveredBlock1842Value7) leftWidget: (recoveredBlock1842Value8).
    recoveredBlock1842Value9 := (recoveredBlock1842Value0) leftOffset: (5).
    recoveredBlock1842Value9
].
            recoveredPC := 1890.
        ].
        recoveredStep = 1890 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1895.
        ].
        recoveredStep = 1895 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1898.
        ].
        recoveredStep = 1898 ifTrue: [
            recoveredStack2 := [:recoveredBlock1898Arg1 | 
    | recoveredBlock1898Value0 recoveredBlock1898Value1 recoveredBlock1898Value2 recoveredBlock1898Value3 recoveredBlock1898Value4 recoveredBlock1898Value5 recoveredBlock1898Value6 recoveredBlock1898Value7 |
    recoveredBlock1898Value0 := recoveredBlock1898Arg1.
    recoveredBlock1898Value1 := recoveredBlock1898Value0.
    recoveredBlock1898Value2 := XmATTACHFORM.
    (recoveredBlock1898Value1) topAttachment: (recoveredBlock1898Value2).
    recoveredBlock1898Value3 := recoveredBlock1898Value0.
    (recoveredBlock1898Value3) topOffset: (5).
    recoveredBlock1898Value4 := recoveredBlock1898Value0.
    recoveredBlock1898Value5 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1898Value4) leftAttachment: (recoveredBlock1898Value5).
    recoveredBlock1898Value6 := recoveredLocal3.
    recoveredBlock1898Value7 := (recoveredBlock1898Value0) leftWidget: (recoveredBlock1898Value6).
    recoveredBlock1898Value7
].
            recoveredPC := 1938.
        ].
        recoveredStep = 1938 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1943.
        ].
        recoveredStep = 1943 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1946.
        ].
        recoveredStep = 1946 ifTrue: [
            recoveredStack2 := [:recoveredBlock1946Arg1 | 
    | recoveredBlock1946Value0 recoveredBlock1946Value1 recoveredBlock1946Value2 recoveredBlock1946Value3 recoveredBlock1946Value4 recoveredBlock1946Value5 recoveredBlock1946Value6 recoveredBlock1946Value7 recoveredBlock1946Value8 |
    recoveredBlock1946Value0 := recoveredBlock1946Arg1.
    recoveredBlock1946Value1 := recoveredBlock1946Value0.
    recoveredBlock1946Value2 := XmATTACHWIDGET.
    (recoveredBlock1946Value1) topAttachment: (recoveredBlock1946Value2).
    recoveredBlock1946Value3 := recoveredBlock1946Value0.
    recoveredBlock1946Value4 := recoveredLocal2.
    (recoveredBlock1946Value3) topWidget: (recoveredBlock1946Value4).
    recoveredBlock1946Value5 := recoveredBlock1946Value0.
    recoveredBlock1946Value6 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1946Value5) leftAttachment: (recoveredBlock1946Value6).
    recoveredBlock1946Value7 := recoveredLocal2.
    recoveredBlock1946Value8 := (recoveredBlock1946Value0) leftWidget: (recoveredBlock1946Value7).
    recoveredBlock1946Value8
].
            recoveredPC := 1988.
        ].
        recoveredStep = 1988 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1993.
        ].
        recoveredStep = 1993 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 1996.
        ].
        recoveredStep = 1996 ifTrue: [
            recoveredStack2 := XmNdestroyCallback.
            recoveredPC := 2000.
        ].
        recoveredStep = 2000 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2001.
        ].
        recoveredStep = 2001 ifTrue: [
            recoveredStack4 := 'aForm1Destroy:clientData:callData:'.
            recoveredPC := 2004.
        ].
        recoveredStep = 2004 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2005.
        ].
        recoveredStep = 2005 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2009.
        ].
        recoveredStep = 2009 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 2012.
        ].
        recoveredStep = 2012 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2016.
        ].
        recoveredStep = 2016 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2017.
        ].
        recoveredStep = 2017 ifTrue: [
            recoveredStack4 := 'cancelButtonActivate:clientData:callData:'.
            recoveredPC := 2020.
        ].
        recoveredStep = 2020 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2021.
        ].
        recoveredStep = 2021 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2025.
        ].
        recoveredStep = 2025 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 2028.
        ].
        recoveredStep = 2028 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2032.
        ].
        recoveredStep = 2032 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2033.
        ].
        recoveredStep = 2033 ifTrue: [
            recoveredStack4 := 'okButtonActivate:clientData:callData:'.
            recoveredPC := 2036.
        ].
        recoveredStep = 2036 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2037.
        ].
        recoveredStep = 2037 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2041.
        ].
        recoveredStep = 2041 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 2044.
        ].
        recoveredStep = 2044 ifTrue: [
            recoveredStack2 := XmNmodifyVerifyCallback.
            recoveredPC := 2048.
        ].
        recoveredStep = 2048 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2049.
        ].
        recoveredStep = 2049 ifTrue: [
            recoveredStack4 := 'minTextModify:clientData:callData:'.
            recoveredPC := 2052.
        ].
        recoveredStep = 2052 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2053.
        ].
        recoveredStep = 2053 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2057.
        ].
        recoveredStep = 2057 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 2060.
        ].
        recoveredStep = 2060 ifTrue: [
            recoveredStack2 := XmNfocusCallback.
            recoveredPC := 2064.
        ].
        recoveredStep = 2064 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2065.
        ].
        recoveredStep = 2065 ifTrue: [
            recoveredStack4 := 'textFocus:clientData:callData:'.
            recoveredPC := 2068.
        ].
        recoveredStep = 2068 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2069.
        ].
        recoveredStep = 2069 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2073.
        ].
        recoveredStep = 2073 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 2076.
        ].
        recoveredStep = 2076 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 2080.
        ].
        recoveredStep = 2080 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2081.
        ].
        recoveredStep = 2081 ifTrue: [
            recoveredStack4 := 'textLosing:clientData:callData:'.
            recoveredPC := 2084.
        ].
        recoveredStep = 2084 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2085.
        ].
        recoveredStep = 2085 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2089.
        ].
        recoveredStep = 2089 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 2092.
        ].
        recoveredStep = 2092 ifTrue: [
            recoveredStack2 := XmNmodifyVerifyCallback.
            recoveredPC := 2096.
        ].
        recoveredStep = 2096 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2097.
        ].
        recoveredStep = 2097 ifTrue: [
            recoveredStack4 := 'maxTextModify:clientData:callData:'.
            recoveredPC := 2100.
        ].
        recoveredStep = 2100 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2101.
        ].
        recoveredStep = 2101 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2105.
        ].
        recoveredStep = 2105 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 2108.
        ].
        recoveredStep = 2108 ifTrue: [
            recoveredStack2 := XmNfocusCallback.
            recoveredPC := 2112.
        ].
        recoveredStep = 2112 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2113.
        ].
        recoveredStep = 2113 ifTrue: [
            recoveredStack4 := 'textFocus:clientData:callData:'.
            recoveredPC := 2116.
        ].
        recoveredStep = 2116 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2117.
        ].
        recoveredStep = 2117 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2121.
        ].
        recoveredStep = 2121 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 2124.
        ].
        recoveredStep = 2124 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 2128.
        ].
        recoveredStep = 2128 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2129.
        ].
        recoveredStep = 2129 ifTrue: [
            recoveredStack4 := 'textLosing:clientData:callData:'.
            recoveredPC := 2132.
        ].
        recoveredStep = 2132 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2133.
        ].
        recoveredStep = 2133 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2137.
        ].
        recoveredStep = 2137 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2140.
        ].
        recoveredStep = 2140 ifTrue: [
            recoveredStack2 := XmNmodifyVerifyCallback.
            recoveredPC := 2144.
        ].
        recoveredStep = 2144 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2145.
        ].
        recoveredStep = 2145 ifTrue: [
            recoveredStack4 := 'incDecStepTextModify:clientData:callData:'.
            recoveredPC := 2148.
        ].
        recoveredStep = 2148 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2149.
        ].
        recoveredStep = 2149 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2153.
        ].
        recoveredStep = 2153 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 2156.
        ].
        recoveredStep = 2156 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2161.
        ].
        recoveredStep = 2161 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2164.
        ].
        recoveredStep = 2164 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2169.
        ].
        recoveredStep = 2169 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 2172.
        ].
        recoveredStep = 2172 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2177.
        ].
        recoveredStep = 2177 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 2180.
        ].
        recoveredStep = 2180 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2185.
        ].
        recoveredStep = 2185 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 2188.
        ].
        recoveredStep = 2188 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2193.
        ].
        recoveredStep = 2193 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 2196.
        ].
        recoveredStep = 2196 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2201.
        ].
        recoveredStep = 2201 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 2204.
        ].
        recoveredStep = 2204 ifTrue: [
            recoveredStack2 := recoveredLocal19.
            recoveredPC := 2207.
        ].
        recoveredStep = 2207 ifTrue: [
            recoveredStack3 := recoveredLocal17.
            recoveredPC := 2210.
        ].
        recoveredStep = 2210 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 2215.
        ].
        recoveredStep = 2215 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

