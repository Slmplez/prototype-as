"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000bffc; bytecode file offset 0x908be4"
!ASDHorBarMeasureDataWidget methodsFor: 'recovered'!
nameWidget
    | recoveredValue0 |
    recoveredValue0 := (self) nameUnitWidget.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004330c; bytecode file offset 0x9451f8"
!ASDHorBarMeasureDataWidget methodsFor: 'recovered'!
nameUnitWidget
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('nameUnitText').
    ^recoveredValue0
! !

"ASDBase.ic method 0x201cd658; bytecode file offset 0xac9f2c"
!ASDHorBarMeasureDataWidget methodsFor: 'recovered'!
nameValueUnitLabel: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) dataManager.
    recoveredValue1 := dataId.
    recoveredValue2 := (recoveredValue0) wNameOfId: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , (': ').
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) , (recoveredValue4).
    recoveredValue6 := (recoveredValue5) , (' ').
    recoveredValue7 := (recoveredValue6) , ('[').
    recoveredValue8 := (self) unit.
    recoveredValue9 := (recoveredValue7) , (recoveredValue8).
    recoveredValue10 := (recoveredValue9) , (']').
    ^recoveredValue10
! !

"ASDBase.ic method 0x2020277c; bytecode file offset 0xaff070"
!ASDHorBarMeasureDataWidget methodsFor: 'recovered'!
owner: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    super owner: (recoveredValue0).
    recoveredValue1 := (self) owner.
    recoveredValue2 := (recoveredValue1) returnIconWithName: ('GeneralArrowDown').
    recoveredValue3 := (recoveredValue2) maskImage.
    minArrowImage := recoveredValue3.
    recoveredValue4 := (self) owner.
    recoveredValue5 := (recoveredValue4) returnIconWithName: ('GeneralArrowUp').
    recoveredValue6 := (recoveredValue5) maskImage.
    maxArrowImage := recoveredValue6.
    ^self
! !

"ASDBase.ic method 0x2023f99c; bytecode file offset 0xb3c26c"
!ASDHorBarMeasureDataWidget methodsFor: 'recovered'!
value: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super value: (recoveredValue0).
    recoveredValue1 := (self) nameWidget.
    recoveredValue2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := recoveredArg1.
    recoveredBlock13Value2 := (self) stringFromValue: (recoveredBlock13Value1).
    recoveredBlock13Value3 := (self) nameValueUnitLabel: (recoveredBlock13Value2).
    recoveredBlock13Value4 := (recoveredBlock13Value0) labelString: (recoveredBlock13Value3).
    recoveredBlock13Value4
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x203268d8; bytecode file offset 0xc231b8"
!ASDHorBarMeasureDataWidget methodsFor: 'recovered'!
updateContents
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) nameValueUnitLabel: ('').
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := (self) nameWidget.
    recoveredValue2 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 recoveredBlock12Value6 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredLocal1.
    (recoveredBlock12Value0) labelString: (recoveredBlock12Value1).
    recoveredBlock12Value2 := RBUserInterface.
    recoveredBlock12Value3 := (recoveredBlock12Value2) bubbleHelpManager.
    recoveredBlock12Value4 := recoveredLocal1.
    recoveredBlock12Value5 := recoveredBlock12Arg1.
    recoveredBlock12Value6 := (recoveredBlock12Value3) addHelpString: (recoveredBlock12Value4) forWidget: (recoveredBlock12Value5).
    recoveredBlock12Value6
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    recoveredValue3 := (self) maxText.
    recoveredValue4 := max.
    recoveredValue5 := (self) stringFromValue: (recoveredValue4).
    (recoveredValue3) labelString: (recoveredValue5).
    recoveredValue6 := (self) minText.
    recoveredValue7 := min.
    recoveredValue8 := (self) stringFromValue: (recoveredValue7).
    (recoveredValue6) labelString: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x205636d4; bytecode file offset 0xe5ffd0"
!ASDHorBarMeasureDataWidget methodsFor: 'recovered'!
displayWithGC: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            super displayWithGC: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) displayBarTicsWithGC: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := minArrowImage.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNil.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := maxArrowImage.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) | (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) valueBar.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) valueBar.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) valueBar.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := 4.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := lowBound.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := lowBound.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := min.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := lowBound.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := max.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) & (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := lowBound.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := min.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := max.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := min.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := minArrowImage.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) asInteger.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := minArrowImage.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack4 := minArrowImage.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack4 := (recoveredStack4) extent.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := (recoveredStack3) extent: (recoveredStack4).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack6 := minArrowImage.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack6 := (recoveredStack6) height.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack5 := (recoveredStack5) - (recoveredStack6).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack4 := (recoveredStack4) @ (recoveredStack5).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack5 := minArrowImage.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack5 := (recoveredStack5) extent.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack4 := (recoveredStack4) extent: (recoveredStack5).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack0) putDeviceIndependentImage: (recoveredStack1) image: (recoveredStack2) srcRect: (recoveredStack3) destRect: (recoveredStack4).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := highBound.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 234] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := highBound.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := min.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := highBound.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := max.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := (recoveredStack0) & (recoveredStack1).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 166] ifFalse: [recoveredPC := 234].
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := highBound.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack3 := min.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := max.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := min.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := maxArrowImage.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := (recoveredStack0) asInteger.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := maxArrowImage.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack4 := maxArrowImage.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack4 := (recoveredStack4) extent.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack3 := (recoveredStack3) extent: (recoveredStack4).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack6 := maxArrowImage.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack6 := (recoveredStack6) height.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack5 := (recoveredStack5) - (recoveredStack6).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack4 := (recoveredStack4) @ (recoveredStack5).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack5 := maxArrowImage.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack5 := (recoveredStack5) extent.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack4 := (recoveredStack4) extent: (recoveredStack5).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack0) putDeviceIndependentImage: (recoveredStack1) image: (recoveredStack2) srcRect: (recoveredStack3) destRect: (recoveredStack4).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20566350; bytecode file offset 0xe62c6c"
!ASDHorBarMeasureDataWidget methodsFor: 'recovered'!
displayBarTicsWithGC: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 4.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) valueBar.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) boundingBox.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) width.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := max.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := min.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) / (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) valueBar.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) boundingBox.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) origin.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) valueBar.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) boundingBox.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) corner.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) isNumeric.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultPixTicDist.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) / (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) asFloat.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) roundUpTo2or5or10.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) isHex.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredPC := 102.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) asInteger.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 114 ifTrue: [
            recoveredPC := 126.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := max.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := min.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := min.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) roundTo: (recoveredStack1).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := min.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 154].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := CgWindow.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := (recoveredStack1) blackPixel.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack0) setForeground: (recoveredStack1).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := max.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack3 := [:recoveredBlock173Arg1 | 
    | recoveredBlock173Local1 recoveredBlock173Local2 recoveredBlock173Local3 recoveredBlock173Value0 recoveredBlock173Value1 recoveredBlock173Value2 recoveredBlock173Value3 recoveredBlock173Value4 recoveredBlock173Value5 recoveredBlock173Value6 recoveredBlock173Value7 recoveredBlock173Value8 recoveredBlock173Value9 recoveredBlock173Value10 recoveredBlock173Value11 recoveredBlock173Value12 recoveredBlock173Value13 recoveredBlock173Value14 recoveredBlock173Value15 recoveredBlock173Value16 recoveredBlock173Value17 recoveredBlock173Value18 recoveredBlock173Value19 recoveredBlock173Value20 recoveredBlock173Value21 recoveredBlock173Value22 recoveredBlock173Value23 recoveredBlock173Value24 recoveredBlock173Value25 |
    recoveredBlock173Value0 := recoveredBlock173Arg1.
    recoveredBlock173Value1 := min.
    recoveredBlock173Value2 := (recoveredBlock173Value0) - (recoveredBlock173Value1).
    recoveredBlock173Value3 := recoveredLocal1.
    recoveredBlock173Value4 := (recoveredBlock173Value2) * (recoveredBlock173Value3).
    recoveredBlock173Value5 := (recoveredBlock173Value4) asInteger.
    recoveredBlock173Local1 := recoveredBlock173Value5.
    recoveredBlock173Value6 := recoveredLocal4.
    recoveredBlock173Value7 := recoveredBlock173Local1.
    recoveredBlock173Value8 := (recoveredBlock173Value7) @ (0).
    recoveredBlock173Value9 := (recoveredBlock173Value6) + (recoveredBlock173Value8).
    recoveredBlock173Local3 := recoveredBlock173Value9.
    recoveredBlock173Value10 := recoveredBlock173Local3.
    recoveredBlock173Value11 := recoveredLocal5.
    recoveredBlock173Value12 := (0) @ (recoveredBlock173Value11).
    recoveredBlock173Value13 := (recoveredBlock173Value10) + (recoveredBlock173Value12).
    recoveredBlock173Local2 := recoveredBlock173Value13.
    recoveredBlock173Value14 := (self) primaryWidget.
    recoveredBlock173Value15 := (recoveredBlock173Value14) window.
    recoveredBlock173Value16 := recoveredArg1.
    recoveredBlock173Value17 := recoveredBlock173Local3.
    recoveredBlock173Value18 := (recoveredBlock173Value17) x.
    recoveredBlock173Value19 := recoveredBlock173Local3.
    recoveredBlock173Value20 := (recoveredBlock173Value19) y.
    recoveredBlock173Value21 := recoveredBlock173Local2.
    recoveredBlock173Value22 := (recoveredBlock173Value21) x.
    recoveredBlock173Value23 := recoveredBlock173Local2.
    recoveredBlock173Value24 := (recoveredBlock173Value23) y.
    recoveredBlock173Value25 := (recoveredBlock173Value15) drawLine: (recoveredBlock173Value16) x1: (recoveredBlock173Value18) y1: (recoveredBlock173Value20) x2: (recoveredBlock173Value22) y2: (recoveredBlock173Value24).
    recoveredBlock173Value25
].
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            (recoveredStack0) to: (recoveredStack1) by: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2064e028; bytecode file offset 0xf4a9d8"
!ASDHorBarMeasureDataWidget methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) mainWindowBorderWidth.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) borderWidth: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 'valueBar'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 recoveredBlock36Value3 recoveredBlock36Value4 recoveredBlock36Value5 recoveredBlock36Value6 recoveredBlock36Value7 recoveredBlock36Value8 recoveredBlock36Value9 recoveredBlock36Value10 recoveredBlock36Value11 recoveredBlock36Value12 recoveredBlock36Value13 recoveredBlock36Value14 recoveredBlock36Value15 recoveredBlock36Value16 recoveredBlock36Value17 recoveredBlock36Value18 recoveredBlock36Value19 recoveredBlock36Value20 recoveredBlock36Value21 recoveredBlock36Value22 recoveredBlock36Value23 recoveredBlock36Value24 recoveredBlock36Value25 recoveredBlock36Value26 recoveredBlock36Value27 recoveredBlock36Value28 |
    recoveredBlock36Value0 := recoveredBlock36Arg1.
    recoveredBlock36Value1 := recoveredBlock36Value0.
    recoveredBlock36Value2 := recoveredLocal8.
    recoveredBlock36Value3 := (10) * (recoveredBlock36Value2).
    recoveredBlock36Value4 := (recoveredBlock36Value3) rounded.
    (recoveredBlock36Value1) x: (recoveredBlock36Value4).
    recoveredBlock36Value5 := recoveredBlock36Value0.
    recoveredBlock36Value6 := recoveredLocal7.
    recoveredBlock36Value7 := (25) * (recoveredBlock36Value6).
    recoveredBlock36Value8 := (recoveredBlock36Value7) rounded.
    (recoveredBlock36Value5) y: (recoveredBlock36Value8).
    recoveredBlock36Value9 := recoveredBlock36Value0.
    recoveredBlock36Value10 := CgRGBColor.
    recoveredBlock36Value11 := (recoveredBlock36Value10) basicNew.
    recoveredBlock36Value12 := recoveredBlock36Value11.
    (recoveredBlock36Value12) instVarAt: (1) put: (49344).
    recoveredBlock36Value13 := recoveredBlock36Value11.
    (recoveredBlock36Value13) instVarAt: (2) put: (49344).
    recoveredBlock36Value14 := recoveredBlock36Value11.
    (recoveredBlock36Value14) instVarAt: (3) put: (49344).
    (recoveredBlock36Value9) backgroundColor: (recoveredBlock36Value11).
    recoveredBlock36Value15 := recoveredBlock36Value0.
    recoveredBlock36Value16 := recoveredLocal8.
    recoveredBlock36Value17 := (322) * (recoveredBlock36Value16).
    recoveredBlock36Value18 := (recoveredBlock36Value17) rounded.
    (recoveredBlock36Value15) width: (recoveredBlock36Value18).
    recoveredBlock36Value19 := recoveredBlock36Value0.
    recoveredBlock36Value20 := recoveredLocal7.
    recoveredBlock36Value21 := (31) * (recoveredBlock36Value20).
    recoveredBlock36Value22 := (recoveredBlock36Value21) rounded.
    (recoveredBlock36Value19) height: (recoveredBlock36Value22).
    recoveredBlock36Value23 := CgRGBColor.
    recoveredBlock36Value24 := (recoveredBlock36Value23) basicNew.
    recoveredBlock36Value25 := recoveredBlock36Value24.
    (recoveredBlock36Value25) instVarAt: (1) put: (0).
    recoveredBlock36Value26 := recoveredBlock36Value24.
    (recoveredBlock36Value26) instVarAt: (2) put: (65535).
    recoveredBlock36Value27 := recoveredBlock36Value24.
    (recoveredBlock36Value27) instVarAt: (3) put: (0).
    recoveredBlock36Value28 := (recoveredBlock36Value0) foregroundColor: (recoveredBlock36Value24).
    recoveredBlock36Value28
].
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasProgressBar: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := 'valueBar'.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := 'nameUnitText'.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := [:recoveredBlock167Arg1 | 
    | recoveredBlock167Value0 recoveredBlock167Value1 recoveredBlock167Value2 recoveredBlock167Value3 recoveredBlock167Value4 recoveredBlock167Value5 recoveredBlock167Value6 recoveredBlock167Value7 recoveredBlock167Value8 recoveredBlock167Value9 recoveredBlock167Value10 recoveredBlock167Value11 recoveredBlock167Value12 recoveredBlock167Value13 recoveredBlock167Value14 recoveredBlock167Value15 recoveredBlock167Value16 recoveredBlock167Value17 |
    recoveredBlock167Value0 := recoveredBlock167Arg1.
    recoveredBlock167Value1 := recoveredBlock167Value0.
    recoveredBlock167Value2 := recoveredLocal8.
    recoveredBlock167Value3 := (3) * (recoveredBlock167Value2).
    recoveredBlock167Value4 := (recoveredBlock167Value3) rounded.
    (recoveredBlock167Value1) x: (recoveredBlock167Value4).
    recoveredBlock167Value5 := recoveredBlock167Value0.
    recoveredBlock167Value6 := recoveredLocal7.
    recoveredBlock167Value7 := (3) * (recoveredBlock167Value6).
    recoveredBlock167Value8 := (recoveredBlock167Value7) rounded.
    (recoveredBlock167Value5) y: (recoveredBlock167Value8).
    recoveredBlock167Value9 := recoveredBlock167Value0.
    (recoveredBlock167Value9) recomputeSize: (false).
    recoveredBlock167Value10 := recoveredBlock167Value0.
    recoveredBlock167Value11 := recoveredLocal7.
    recoveredBlock167Value12 := (15) * (recoveredBlock167Value11).
    recoveredBlock167Value13 := (recoveredBlock167Value12) rounded.
    (recoveredBlock167Value10) height: (recoveredBlock167Value13).
    recoveredBlock167Value14 := recoveredLocal8.
    recoveredBlock167Value15 := (370) * (recoveredBlock167Value14).
    recoveredBlock167Value16 := (recoveredBlock167Value15) rounded.
    recoveredBlock167Value17 := (recoveredBlock167Value0) width: (recoveredBlock167Value16).
    recoveredBlock167Value17
].
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := 'nameUnitText'.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := 'valueText'.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack2 := [:recoveredBlock247Arg1 | 
    | recoveredBlock247Value0 recoveredBlock247Value1 recoveredBlock247Value2 recoveredBlock247Value3 recoveredBlock247Value4 recoveredBlock247Value5 recoveredBlock247Value6 recoveredBlock247Value7 recoveredBlock247Value8 recoveredBlock247Value9 recoveredBlock247Value10 recoveredBlock247Value11 recoveredBlock247Value12 recoveredBlock247Value13 recoveredBlock247Value14 recoveredBlock247Value15 recoveredBlock247Value16 recoveredBlock247Value17 recoveredBlock247Value18 |
    recoveredBlock247Value0 := recoveredBlock247Arg1.
    recoveredBlock247Value1 := recoveredBlock247Value0.
    recoveredBlock247Value2 := recoveredLocal8.
    recoveredBlock247Value3 := (103) * (recoveredBlock247Value2).
    recoveredBlock247Value4 := (recoveredBlock247Value3) rounded.
    (recoveredBlock247Value1) x: (recoveredBlock247Value4).
    recoveredBlock247Value5 := recoveredBlock247Value0.
    (recoveredBlock247Value5) labelString: ('0.0').
    recoveredBlock247Value6 := recoveredBlock247Value0.
    recoveredBlock247Value7 := recoveredLocal7.
    recoveredBlock247Value8 := (61) * (recoveredBlock247Value7).
    recoveredBlock247Value9 := (recoveredBlock247Value8) rounded.
    (recoveredBlock247Value6) y: (recoveredBlock247Value9).
    recoveredBlock247Value10 := recoveredBlock247Value0.
    (recoveredBlock247Value10) recomputeSize: (false).
    recoveredBlock247Value11 := recoveredBlock247Value0.
    recoveredBlock247Value12 := recoveredLocal7.
    recoveredBlock247Value13 := (17) * (recoveredBlock247Value12).
    recoveredBlock247Value14 := (recoveredBlock247Value13) rounded.
    (recoveredBlock247Value11) height: (recoveredBlock247Value14).
    recoveredBlock247Value15 := recoveredLocal8.
    recoveredBlock247Value16 := (137) * (recoveredBlock247Value15).
    recoveredBlock247Value17 := (recoveredBlock247Value16) rounded.
    recoveredBlock247Value18 := (recoveredBlock247Value0) width: (recoveredBlock247Value17).
    recoveredBlock247Value18
].
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack0 := (recoveredStack0) unmanageChild.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack1 := 'valueText'.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack1 := 'maxText'.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack2 := [:recoveredBlock333Arg1 | 
    | recoveredBlock333Value0 recoveredBlock333Value1 recoveredBlock333Value2 recoveredBlock333Value3 recoveredBlock333Value4 recoveredBlock333Value5 recoveredBlock333Value6 recoveredBlock333Value7 recoveredBlock333Value8 recoveredBlock333Value9 recoveredBlock333Value10 recoveredBlock333Value11 recoveredBlock333Value12 recoveredBlock333Value13 recoveredBlock333Value14 recoveredBlock333Value15 recoveredBlock333Value16 recoveredBlock333Value17 recoveredBlock333Value18 recoveredBlock333Value19 recoveredBlock333Value20 |
    recoveredBlock333Value0 := recoveredBlock333Arg1.
    recoveredBlock333Value1 := recoveredBlock333Value0.
    recoveredBlock333Value2 := recoveredLocal8.
    recoveredBlock333Value3 := (240) * (recoveredBlock333Value2).
    recoveredBlock333Value4 := (recoveredBlock333Value3) rounded.
    (recoveredBlock333Value1) x: (recoveredBlock333Value4).
    recoveredBlock333Value5 := recoveredBlock333Value0.
    recoveredBlock333Value6 := XmALIGNMENTEND.
    (recoveredBlock333Value5) alignment: (recoveredBlock333Value6).
    recoveredBlock333Value7 := recoveredBlock333Value0.
    (recoveredBlock333Value7) labelString: ('(Max)').
    recoveredBlock333Value8 := recoveredBlock333Value0.
    (recoveredBlock333Value8) recomputeSize: (false).
    recoveredBlock333Value9 := recoveredBlock333Value0.
    recoveredBlock333Value10 := recoveredLocal7.
    recoveredBlock333Value11 := (60) * (recoveredBlock333Value10).
    recoveredBlock333Value12 := (recoveredBlock333Value11) rounded.
    (recoveredBlock333Value9) y: (recoveredBlock333Value12).
    recoveredBlock333Value13 := recoveredBlock333Value0.
    recoveredBlock333Value14 := recoveredLocal7.
    recoveredBlock333Value15 := (15) * (recoveredBlock333Value14).
    recoveredBlock333Value16 := (recoveredBlock333Value15) rounded.
    (recoveredBlock333Value13) height: (recoveredBlock333Value16).
    recoveredBlock333Value17 := recoveredLocal8.
    recoveredBlock333Value18 := (80) * (recoveredBlock333Value17).
    recoveredBlock333Value19 := (recoveredBlock333Value18) rounded.
    recoveredBlock333Value20 := (recoveredBlock333Value0) width: (recoveredBlock333Value19).
    recoveredBlock333Value20
].
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack1 := 'maxText'.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack1 := 'minText'.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack2 := [:recoveredBlock425Arg1 | 
    | recoveredBlock425Value0 recoveredBlock425Value1 recoveredBlock425Value2 recoveredBlock425Value3 recoveredBlock425Value4 recoveredBlock425Value5 recoveredBlock425Value6 recoveredBlock425Value7 recoveredBlock425Value8 recoveredBlock425Value9 recoveredBlock425Value10 recoveredBlock425Value11 recoveredBlock425Value12 recoveredBlock425Value13 recoveredBlock425Value14 recoveredBlock425Value15 recoveredBlock425Value16 recoveredBlock425Value17 recoveredBlock425Value18 recoveredBlock425Value19 recoveredBlock425Value20 |
    recoveredBlock425Value0 := recoveredBlock425Arg1.
    recoveredBlock425Value1 := recoveredBlock425Value0.
    recoveredBlock425Value2 := recoveredLocal8.
    recoveredBlock425Value3 := (3) * (recoveredBlock425Value2).
    recoveredBlock425Value4 := (recoveredBlock425Value3) rounded.
    (recoveredBlock425Value1) x: (recoveredBlock425Value4).
    recoveredBlock425Value5 := recoveredBlock425Value0.
    recoveredBlock425Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock425Value5) alignment: (recoveredBlock425Value6).
    recoveredBlock425Value7 := recoveredBlock425Value0.
    (recoveredBlock425Value7) labelString: ('(Min)').
    recoveredBlock425Value8 := recoveredBlock425Value0.
    (recoveredBlock425Value8) recomputeSize: (false).
    recoveredBlock425Value9 := recoveredBlock425Value0.
    recoveredBlock425Value10 := recoveredLocal7.
    recoveredBlock425Value11 := (66) * (recoveredBlock425Value10).
    recoveredBlock425Value12 := (recoveredBlock425Value11) rounded.
    (recoveredBlock425Value9) y: (recoveredBlock425Value12).
    recoveredBlock425Value13 := recoveredBlock425Value0.
    recoveredBlock425Value14 := recoveredLocal7.
    recoveredBlock425Value15 := (15) * (recoveredBlock425Value14).
    recoveredBlock425Value16 := (recoveredBlock425Value15) rounded.
    (recoveredBlock425Value13) height: (recoveredBlock425Value16).
    recoveredBlock425Value17 := recoveredLocal8.
    recoveredBlock425Value18 := (100) * (recoveredBlock425Value17).
    recoveredBlock425Value19 := (recoveredBlock425Value18) rounded.
    recoveredBlock425Value20 := (recoveredBlock425Value0) width: (recoveredBlock425Value19).
    recoveredBlock425Value20
].
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack1 := 'minText'.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack1 := [:recoveredBlock513Arg1 | 
    | recoveredBlock513Value0 recoveredBlock513Value1 recoveredBlock513Value2 recoveredBlock513Value3 recoveredBlock513Value4 recoveredBlock513Value5 recoveredBlock513Value6 recoveredBlock513Value7 recoveredBlock513Value8 recoveredBlock513Value9 recoveredBlock513Value10 recoveredBlock513Value11 recoveredBlock513Value12 recoveredBlock513Value13 recoveredBlock513Value14 recoveredBlock513Value15 |
    recoveredBlock513Value0 := recoveredBlock513Arg1.
    recoveredBlock513Value1 := recoveredBlock513Value0.
    recoveredBlock513Value2 := XmATTACHFORM.
    (recoveredBlock513Value1) bottomAttachment: (recoveredBlock513Value2).
    recoveredBlock513Value3 := recoveredBlock513Value0.
    (recoveredBlock513Value3) bottomOffset: (25).
    recoveredBlock513Value4 := recoveredBlock513Value0.
    recoveredBlock513Value5 := XmATTACHFORM.
    (recoveredBlock513Value4) topAttachment: (recoveredBlock513Value5).
    recoveredBlock513Value6 := recoveredBlock513Value0.
    recoveredBlock513Value7 := (self) mainWindowBorderWidth.
    recoveredBlock513Value8 := (2) * (recoveredBlock513Value7).
    recoveredBlock513Value9 := (25) - (recoveredBlock513Value8).
    (recoveredBlock513Value6) topOffset: (recoveredBlock513Value9).
    recoveredBlock513Value10 := recoveredBlock513Value0.
    recoveredBlock513Value11 := XmATTACHFORM.
    (recoveredBlock513Value10) leftAttachment: (recoveredBlock513Value11).
    recoveredBlock513Value12 := recoveredBlock513Value0.
    (recoveredBlock513Value12) leftOffset: (10).
    recoveredBlock513Value13 := recoveredBlock513Value0.
    recoveredBlock513Value14 := XmATTACHFORM.
    (recoveredBlock513Value13) rightAttachment: (recoveredBlock513Value14).
    recoveredBlock513Value15 := (recoveredBlock513Value0) rightOffset: (10).
    recoveredBlock513Value15
].
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 572.
        ].
        recoveredStep = 572 ifTrue: [
            recoveredStack1 := [:block28122a40Arg1 | 
    | block28122a40Value0 block28122a40Value1 block28122a40Value2 block28122a40Value3 block28122a40Value4 block28122a40Value5 block28122a40Value6 block28122a40Value7 block28122a40Value8 block28122a40Value9 |
    block28122a40Value0 := block28122a40Arg1.
    block28122a40Value1 := block28122a40Value0.
    block28122a40Value2 := XmATTACHFORM.
    (block28122a40Value1) topAttachment: (block28122a40Value2).
    block28122a40Value3 := block28122a40Value0.
    (block28122a40Value3) topOffset: (2).
    block28122a40Value4 := block28122a40Value0.
    block28122a40Value5 := XmATTACHFORM.
    (block28122a40Value4) leftAttachment: (block28122a40Value5).
    block28122a40Value6 := block28122a40Value0.
    (block28122a40Value6) leftOffset: (3).
    block28122a40Value7 := block28122a40Value0.
    block28122a40Value8 := XmATTACHFORM.
    (block28122a40Value7) rightAttachment: (block28122a40Value8).
    block28122a40Value9 := (block28122a40Value0) rightOffset: (3).
    block28122a40Value9
].
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 614.
        ].
        recoveredStep = 614 ifTrue: [
            recoveredStack1 := [:block28122a64Arg1 | 
    | block28122a64Value0 block28122a64Value1 block28122a64Value2 block28122a64Value3 block28122a64Value4 block28122a64Value5 block28122a64Value6 block28122a64Value7 block28122a64Value8 block28122a64Value9 |
    block28122a64Value0 := block28122a64Arg1.
    block28122a64Value1 := block28122a64Value0.
    block28122a64Value2 := XmATTACHFORM.
    (block28122a64Value1) bottomAttachment: (block28122a64Value2).
    block28122a64Value3 := block28122a64Value0.
    (block28122a64Value3) bottomOffset: (3).
    block28122a64Value4 := block28122a64Value0.
    block28122a64Value5 := XmATTACHPOSITION.
    (block28122a64Value4) leftAttachment: (block28122a64Value5).
    block28122a64Value6 := block28122a64Value0.
    (block28122a64Value6) leftPosition: (30).
    block28122a64Value7 := block28122a64Value0.
    block28122a64Value8 := XmATTACHPOSITION.
    (block28122a64Value7) rightAttachment: (block28122a64Value8).
    block28122a64Value9 := (block28122a64Value0) rightPosition: (70).
    block28122a64Value9
].
            recoveredPC := 616.
        ].
        recoveredStep = 616 ifTrue: [
            recoveredPC := 653.
        ].
        recoveredStep = 653 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 655.
        ].
        recoveredStep = 655 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 658.
        ].
        recoveredStep = 658 ifTrue: [
            recoveredStack1 := [:recoveredBlock658Arg1 | 
    | recoveredBlock658Value0 recoveredBlock658Value1 recoveredBlock658Value2 recoveredBlock658Value3 recoveredBlock658Value4 recoveredBlock658Value5 recoveredBlock658Value6 recoveredBlock658Value7 recoveredBlock658Value8 recoveredBlock658Value9 recoveredBlock658Value10 |
    recoveredBlock658Value0 := recoveredBlock658Arg1.
    recoveredBlock658Value1 := recoveredBlock658Value0.
    recoveredBlock658Value2 := XmATTACHFORM.
    (recoveredBlock658Value1) bottomAttachment: (recoveredBlock658Value2).
    recoveredBlock658Value3 := recoveredBlock658Value0.
    (recoveredBlock658Value3) bottomOffset: (5).
    recoveredBlock658Value4 := recoveredBlock658Value0.
    recoveredBlock658Value5 := XmATTACHWIDGET.
    (recoveredBlock658Value4) leftAttachment: (recoveredBlock658Value5).
    recoveredBlock658Value6 := recoveredBlock658Value0.
    recoveredBlock658Value7 := recoveredLocal3.
    (recoveredBlock658Value6) leftWidget: (recoveredBlock658Value7).
    recoveredBlock658Value8 := recoveredBlock658Value0.
    recoveredBlock658Value9 := XmATTACHFORM.
    (recoveredBlock658Value8) rightAttachment: (recoveredBlock658Value9).
    recoveredBlock658Value10 := (recoveredBlock658Value0) rightOffset: (3).
    recoveredBlock658Value10
].
            recoveredPC := 696.
        ].
        recoveredStep = 696 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 701.
        ].
        recoveredStep = 701 ifTrue: [
            recoveredStack1 := [:recoveredBlock701Arg1 | 
    | recoveredBlock701Value0 recoveredBlock701Value1 recoveredBlock701Value2 recoveredBlock701Value3 recoveredBlock701Value4 recoveredBlock701Value5 recoveredBlock701Value6 recoveredBlock701Value7 recoveredBlock701Value8 recoveredBlock701Value9 recoveredBlock701Value10 |
    recoveredBlock701Value0 := recoveredBlock701Arg1.
    recoveredBlock701Value1 := recoveredBlock701Value0.
    recoveredBlock701Value2 := XmATTACHFORM.
    (recoveredBlock701Value1) bottomAttachment: (recoveredBlock701Value2).
    recoveredBlock701Value3 := recoveredBlock701Value0.
    (recoveredBlock701Value3) bottomOffset: (5).
    recoveredBlock701Value4 := recoveredBlock701Value0.
    recoveredBlock701Value5 := XmATTACHFORM.
    (recoveredBlock701Value4) leftAttachment: (recoveredBlock701Value5).
    recoveredBlock701Value6 := recoveredBlock701Value0.
    (recoveredBlock701Value6) leftOffset: (3).
    recoveredBlock701Value7 := recoveredBlock701Value0.
    recoveredBlock701Value8 := XmATTACHWIDGET.
    (recoveredBlock701Value7) rightAttachment: (recoveredBlock701Value8).
    recoveredBlock701Value9 := recoveredLocal3.
    recoveredBlock701Value10 := (recoveredBlock701Value0) rightWidget: (recoveredBlock701Value9).
    recoveredBlock701Value10
].
            recoveredPC := 742.
        ].
        recoveredStep = 742 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 744.
        ].
        recoveredStep = 744 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 747.
        ].
        recoveredStep = 747 ifTrue: [
            recoveredStack1 := XmNexposeCallback.
            recoveredPC := 750.
        ].
        recoveredStep = 750 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 751.
        ].
        recoveredStep = 751 ifTrue: [
            recoveredStack3 := 'aForm1Expose:clientData:callData:'.
            recoveredPC := 754.
        ].
        recoveredStep = 754 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 755.
        ].
        recoveredStep = 755 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 759.
        ].
        recoveredStep = 759 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 762.
        ].
        recoveredStep = 762 ifTrue: [
            recoveredStack1 := XmNdestroyCallback.
            recoveredPC := 766.
        ].
        recoveredStep = 766 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 767.
        ].
        recoveredStep = 767 ifTrue: [
            recoveredStack3 := 'aForm1Destroy:clientData:callData:'.
            recoveredPC := 770.
        ].
        recoveredStep = 770 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 771.
        ].
        recoveredStep = 771 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 775.
        ].
        recoveredStep = 775 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 778.
        ].
        recoveredStep = 778 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

