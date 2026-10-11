"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x202027a0; bytecode file offset 0xaff070"
!ASDVerBarMeasureDataWidget methodsFor: 'recovered'!
owner: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    super owner: (recoveredValue0).
    recoveredValue1 := (self) owner.
    recoveredValue2 := (recoveredValue1) returnIconWithName: ('EditorPositionBegin').
    recoveredValue3 := (recoveredValue2) maskImage.
    minArrowImage := recoveredValue3.
    recoveredValue4 := (self) owner.
    recoveredValue5 := (recoveredValue4) returnIconWithName: ('EditorPositionEnd').
    recoveredValue6 := (recoveredValue5) maskImage.
    maxArrowImage := recoveredValue6.
    ^self
! !

"ASDBase.ic method 0x203cc250; bytecode file offset 0xcc8b44"
!ASDVerBarMeasureDataWidget methodsFor: 'recovered'!
updateContents
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataManager.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := dataId.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) wNameOfId: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) nameWidget.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 recoveredBlock13Value5 recoveredBlock13Value6 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := recoveredLocal1.
    (recoveredBlock13Value0) labelString: (recoveredBlock13Value1).
    recoveredBlock13Value2 := RBUserInterface.
    recoveredBlock13Value3 := (recoveredBlock13Value2) bubbleHelpManager.
    recoveredBlock13Value4 := recoveredLocal1.
    recoveredBlock13Value5 := recoveredBlock13Arg1.
    recoveredBlock13Value6 := (recoveredBlock13Value3) addHelpString: (recoveredBlock13Value4) forWidget: (recoveredBlock13Value5).
    recoveredBlock13Value6
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) unitWidget.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) unitWidget.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := '['.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) unit.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := ']'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) maxText.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := max.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) stringFromValue: (recoveredStack2).
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
            recoveredStack0 := (recoveredStack0) minText.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := min.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) stringFromValue: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2054dbe4; bytecode file offset 0xe4a4f8"
!ASDVerBarMeasureDataWidget methodsFor: 'recovered'!
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
            recoveredStack0 := (recoveredStack0) height.
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
            recoveredStack0 := (recoveredStack0) / (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) valueBar.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) boundingBox.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) origin.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNumeric.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultPixTicDist.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) / (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) asFloat.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) roundUpTo2or5or10.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) isHex.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 84.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) asInteger.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 96 ifTrue: [
            recoveredPC := 108.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := max.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := min.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := min.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) roundTo: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := min.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := CgWindow.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) blackPixel.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack0) setForeground: (recoveredStack1).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := max.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := [:recoveredBlock155Arg1 | 
    | recoveredBlock155Local1 recoveredBlock155Local2 recoveredBlock155Local3 recoveredBlock155Value0 recoveredBlock155Value1 recoveredBlock155Value2 recoveredBlock155Value3 recoveredBlock155Value4 recoveredBlock155Value5 recoveredBlock155Value6 recoveredBlock155Value7 recoveredBlock155Value8 recoveredBlock155Value9 recoveredBlock155Value10 recoveredBlock155Value11 recoveredBlock155Value12 recoveredBlock155Value13 recoveredBlock155Value14 recoveredBlock155Value15 recoveredBlock155Value16 recoveredBlock155Value17 recoveredBlock155Value18 recoveredBlock155Value19 recoveredBlock155Value20 recoveredBlock155Value21 recoveredBlock155Value22 recoveredBlock155Value23 recoveredBlock155Value24 recoveredBlock155Value25 |
    recoveredBlock155Value0 := max.
    recoveredBlock155Value1 := recoveredBlock155Arg1.
    recoveredBlock155Value2 := (recoveredBlock155Value0) - (recoveredBlock155Value1).
    recoveredBlock155Value3 := recoveredLocal1.
    recoveredBlock155Value4 := (recoveredBlock155Value2) * (recoveredBlock155Value3).
    recoveredBlock155Value5 := (recoveredBlock155Value4) asInteger.
    recoveredBlock155Local1 := recoveredBlock155Value5.
    recoveredBlock155Value6 := recoveredLocal4.
    recoveredBlock155Value7 := recoveredBlock155Local1.
    recoveredBlock155Value8 := (0) @ (recoveredBlock155Value7).
    recoveredBlock155Value9 := (recoveredBlock155Value6) + (recoveredBlock155Value8).
    recoveredBlock155Local3 := recoveredBlock155Value9.
    recoveredBlock155Value10 := recoveredBlock155Local3.
    recoveredBlock155Value11 := recoveredLocal5.
    recoveredBlock155Value12 := (recoveredBlock155Value11) @ (0).
    recoveredBlock155Value13 := (recoveredBlock155Value10) - (recoveredBlock155Value12).
    recoveredBlock155Local2 := recoveredBlock155Value13.
    recoveredBlock155Value14 := (self) primaryWidget.
    recoveredBlock155Value15 := (recoveredBlock155Value14) window.
    recoveredBlock155Value16 := recoveredArg1.
    recoveredBlock155Value17 := recoveredBlock155Local3.
    recoveredBlock155Value18 := (recoveredBlock155Value17) x.
    recoveredBlock155Value19 := recoveredBlock155Local3.
    recoveredBlock155Value20 := (recoveredBlock155Value19) y.
    recoveredBlock155Value21 := recoveredBlock155Local2.
    recoveredBlock155Value22 := (recoveredBlock155Value21) x.
    recoveredBlock155Value23 := recoveredBlock155Local2.
    recoveredBlock155Value24 := (recoveredBlock155Value23) y.
    recoveredBlock155Value25 := (recoveredBlock155Value15) drawLine: (recoveredBlock155Value16) x1: (recoveredBlock155Value18) y1: (recoveredBlock155Value20) x2: (recoveredBlock155Value22) y2: (recoveredBlock155Value24).
    recoveredBlock155Value25
].
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack0) to: (recoveredStack1) by: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2055cb64; bytecode file offset 0xe59460"
!ASDVerBarMeasureDataWidget methodsFor: 'recovered'!
displayWithGC: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) valueBar.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) valueBar.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) valueBar.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := 4.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := lowBound.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 145] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := lowBound.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := min.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := lowBound.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := max.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) & (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 145].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := max.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := lowBound.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := max.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := min.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := minArrowImage.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) asInteger.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := minArrowImage.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack4 := minArrowImage.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack4 := (recoveredStack4) extent.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := (recoveredStack3) extent: (recoveredStack4).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack4 := (recoveredStack4) @ (recoveredStack5).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack5 := minArrowImage.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack5 := (recoveredStack5) extent.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack4 := (recoveredStack4) extent: (recoveredStack5).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack0) putDeviceIndependentImage: (recoveredStack1) image: (recoveredStack2) srcRect: (recoveredStack3) destRect: (recoveredStack4).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := highBound.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 229] ifFalse: [recoveredPC := 150].
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
            (recoveredStack0) ifTrue: [recoveredPC := 166] ifFalse: [recoveredPC := 229].
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
            recoveredStack2 := max.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack3 := highBound.
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
            recoveredStack1 := (recoveredStack1) height.
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
            recoveredLocal3 := recoveredStack0.
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
            recoveredStack4 := (recoveredStack4) @ (recoveredStack5).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack5 := maxArrowImage.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack5 := (recoveredStack5) extent.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack4 := (recoveredStack4) extent: (recoveredStack5).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            (recoveredStack0) putDeviceIndependentImage: (recoveredStack1) image: (recoveredStack2) srcRect: (recoveredStack3) destRect: (recoveredStack4).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2065f318; bytecode file offset 0xf5bce0"
!ASDVerBarMeasureDataWidget methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal7.
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
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 'valueBar'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 recoveredBlock36Value3 recoveredBlock36Value4 recoveredBlock36Value5 recoveredBlock36Value6 recoveredBlock36Value7 recoveredBlock36Value8 recoveredBlock36Value9 recoveredBlock36Value10 recoveredBlock36Value11 recoveredBlock36Value12 recoveredBlock36Value13 recoveredBlock36Value14 recoveredBlock36Value15 recoveredBlock36Value16 recoveredBlock36Value17 recoveredBlock36Value18 recoveredBlock36Value19 recoveredBlock36Value20 recoveredBlock36Value21 recoveredBlock36Value22 recoveredBlock36Value23 recoveredBlock36Value24 recoveredBlock36Value25 recoveredBlock36Value26 recoveredBlock36Value27 recoveredBlock36Value28 recoveredBlock36Value29 recoveredBlock36Value30 recoveredBlock36Value31 recoveredBlock36Value32 |
    recoveredBlock36Value0 := recoveredBlock36Arg1.
    recoveredBlock36Value1 := recoveredBlock36Value0.
    recoveredBlock36Value2 := recoveredLocal9.
    recoveredBlock36Value3 := (8) * (recoveredBlock36Value2).
    recoveredBlock36Value4 := (recoveredBlock36Value3) rounded.
    (recoveredBlock36Value1) x: (recoveredBlock36Value4).
    recoveredBlock36Value5 := recoveredBlock36Value0.
    recoveredBlock36Value6 := recoveredLocal8.
    recoveredBlock36Value7 := (48) * (recoveredBlock36Value6).
    recoveredBlock36Value8 := (recoveredBlock36Value7) rounded.
    (recoveredBlock36Value5) y: (recoveredBlock36Value8).
    recoveredBlock36Value9 := recoveredBlock36Value0.
    recoveredBlock36Value10 := XmVERTICAL.
    (recoveredBlock36Value9) orientation: (recoveredBlock36Value10).
    recoveredBlock36Value11 := recoveredBlock36Value0.
    recoveredBlock36Value12 := XmREVERSE.
    (recoveredBlock36Value11) direction: (recoveredBlock36Value12).
    recoveredBlock36Value13 := recoveredBlock36Value0.
    recoveredBlock36Value14 := CgRGBColor.
    recoveredBlock36Value15 := (recoveredBlock36Value14) basicNew.
    recoveredBlock36Value16 := recoveredBlock36Value15.
    (recoveredBlock36Value16) instVarAt: (1) put: (49344).
    recoveredBlock36Value17 := recoveredBlock36Value15.
    (recoveredBlock36Value17) instVarAt: (2) put: (49344).
    recoveredBlock36Value18 := recoveredBlock36Value15.
    (recoveredBlock36Value18) instVarAt: (3) put: (49344).
    (recoveredBlock36Value13) backgroundColor: (recoveredBlock36Value15).
    recoveredBlock36Value19 := recoveredBlock36Value0.
    recoveredBlock36Value20 := recoveredLocal9.
    recoveredBlock36Value21 := (76) * (recoveredBlock36Value20).
    recoveredBlock36Value22 := (recoveredBlock36Value21) rounded.
    (recoveredBlock36Value19) width: (recoveredBlock36Value22).
    recoveredBlock36Value23 := recoveredBlock36Value0.
    recoveredBlock36Value24 := recoveredLocal8.
    recoveredBlock36Value25 := (143) * (recoveredBlock36Value24).
    recoveredBlock36Value26 := (recoveredBlock36Value25) rounded.
    (recoveredBlock36Value23) height: (recoveredBlock36Value26).
    recoveredBlock36Value27 := CgRGBColor.
    recoveredBlock36Value28 := (recoveredBlock36Value27) basicNew.
    recoveredBlock36Value29 := recoveredBlock36Value28.
    (recoveredBlock36Value29) instVarAt: (1) put: (0).
    recoveredBlock36Value30 := recoveredBlock36Value28.
    (recoveredBlock36Value30) instVarAt: (2) put: (65535).
    recoveredBlock36Value31 := recoveredBlock36Value28.
    (recoveredBlock36Value31) instVarAt: (3) put: (0).
    recoveredBlock36Value32 := (recoveredBlock36Value0) foregroundColor: (recoveredBlock36Value28).
    recoveredBlock36Value32
].
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasProgressBar: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := 'valueBar'.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := 'valueText'.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := [:recoveredBlock178Arg1 | 
    | recoveredBlock178Value0 recoveredBlock178Value1 recoveredBlock178Value2 recoveredBlock178Value3 recoveredBlock178Value4 recoveredBlock178Value5 recoveredBlock178Value6 recoveredBlock178Value7 recoveredBlock178Value8 recoveredBlock178Value9 recoveredBlock178Value10 recoveredBlock178Value11 recoveredBlock178Value12 recoveredBlock178Value13 recoveredBlock178Value14 recoveredBlock178Value15 recoveredBlock178Value16 recoveredBlock178Value17 recoveredBlock178Value18 |
    recoveredBlock178Value0 := recoveredBlock178Arg1.
    recoveredBlock178Value1 := recoveredBlock178Value0.
    recoveredBlock178Value2 := recoveredLocal9.
    recoveredBlock178Value3 := (2) * (recoveredBlock178Value2).
    recoveredBlock178Value4 := (recoveredBlock178Value3) rounded.
    (recoveredBlock178Value1) x: (recoveredBlock178Value4).
    recoveredBlock178Value5 := recoveredBlock178Value0.
    (recoveredBlock178Value5) labelString: ('0.0').
    recoveredBlock178Value6 := recoveredBlock178Value0.
    recoveredBlock178Value7 := recoveredLocal8.
    recoveredBlock178Value8 := (219) * (recoveredBlock178Value7).
    recoveredBlock178Value9 := (recoveredBlock178Value8) rounded.
    (recoveredBlock178Value6) y: (recoveredBlock178Value9).
    recoveredBlock178Value10 := recoveredBlock178Value0.
    recoveredBlock178Value11 := recoveredLocal8.
    recoveredBlock178Value12 := (15) * (recoveredBlock178Value11).
    recoveredBlock178Value13 := (recoveredBlock178Value12) rounded.
    (recoveredBlock178Value10) height: (recoveredBlock178Value13).
    recoveredBlock178Value14 := recoveredBlock178Value0.
    recoveredBlock178Value15 := recoveredLocal9.
    recoveredBlock178Value16 := (120) * (recoveredBlock178Value15).
    recoveredBlock178Value17 := (recoveredBlock178Value16) rounded.
    (recoveredBlock178Value14) width: (recoveredBlock178Value17).
    recoveredBlock178Value18 := (recoveredBlock178Value0) recomputeSize: (false).
    recoveredBlock178Value18
].
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := 'valueText'.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := 'nameText'.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack2 := [:recoveredBlock264Arg1 | 
    | recoveredBlock264Value0 recoveredBlock264Value1 recoveredBlock264Value2 recoveredBlock264Value3 recoveredBlock264Value4 recoveredBlock264Value5 recoveredBlock264Value6 recoveredBlock264Value7 recoveredBlock264Value8 recoveredBlock264Value9 recoveredBlock264Value10 recoveredBlock264Value11 recoveredBlock264Value12 recoveredBlock264Value13 recoveredBlock264Value14 recoveredBlock264Value15 recoveredBlock264Value16 recoveredBlock264Value17 recoveredBlock264Value18 |
    recoveredBlock264Value0 := recoveredBlock264Arg1.
    recoveredBlock264Value1 := recoveredBlock264Value0.
    recoveredBlock264Value2 := recoveredLocal9.
    recoveredBlock264Value3 := (2) * (recoveredBlock264Value2).
    recoveredBlock264Value4 := (recoveredBlock264Value3) rounded.
    (recoveredBlock264Value1) x: (recoveredBlock264Value4).
    recoveredBlock264Value5 := recoveredBlock264Value0.
    (recoveredBlock264Value5) labelString: ('(Name)').
    recoveredBlock264Value6 := recoveredBlock264Value0.
    recoveredBlock264Value7 := recoveredLocal8.
    recoveredBlock264Value8 := (2) * (recoveredBlock264Value7).
    recoveredBlock264Value9 := (recoveredBlock264Value8) rounded.
    (recoveredBlock264Value6) y: (recoveredBlock264Value9).
    recoveredBlock264Value10 := recoveredBlock264Value0.
    recoveredBlock264Value11 := recoveredLocal8.
    recoveredBlock264Value12 := (15) * (recoveredBlock264Value11).
    recoveredBlock264Value13 := (recoveredBlock264Value12) rounded.
    (recoveredBlock264Value10) height: (recoveredBlock264Value13).
    recoveredBlock264Value14 := recoveredBlock264Value0.
    recoveredBlock264Value15 := recoveredLocal9.
    recoveredBlock264Value16 := (122) * (recoveredBlock264Value15).
    recoveredBlock264Value17 := (recoveredBlock264Value16) rounded.
    (recoveredBlock264Value14) width: (recoveredBlock264Value17).
    recoveredBlock264Value18 := (recoveredBlock264Value0) recomputeSize: (false).
    recoveredBlock264Value18
].
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack1 := 'nameText'.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack1 := 'maxText'.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack2 := [:recoveredBlock348Arg1 | 
    | recoveredBlock348Value0 recoveredBlock348Value1 recoveredBlock348Value2 recoveredBlock348Value3 recoveredBlock348Value4 recoveredBlock348Value5 recoveredBlock348Value6 recoveredBlock348Value7 recoveredBlock348Value8 recoveredBlock348Value9 recoveredBlock348Value10 recoveredBlock348Value11 recoveredBlock348Value12 recoveredBlock348Value13 recoveredBlock348Value14 recoveredBlock348Value15 recoveredBlock348Value16 recoveredBlock348Value17 recoveredBlock348Value18 recoveredBlock348Value19 recoveredBlock348Value20 |
    recoveredBlock348Value0 := recoveredBlock348Arg1.
    recoveredBlock348Value1 := recoveredBlock348Value0.
    recoveredBlock348Value2 := recoveredLocal9.
    recoveredBlock348Value3 := (2) * (recoveredBlock348Value2).
    recoveredBlock348Value4 := (recoveredBlock348Value3) rounded.
    (recoveredBlock348Value1) x: (recoveredBlock348Value4).
    recoveredBlock348Value5 := recoveredBlock348Value0.
    recoveredBlock348Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock348Value5) alignment: (recoveredBlock348Value6).
    recoveredBlock348Value7 := recoveredBlock348Value0.
    (recoveredBlock348Value7) labelString: ('(Max)').
    recoveredBlock348Value8 := recoveredBlock348Value0.
    recoveredBlock348Value9 := recoveredLocal8.
    recoveredBlock348Value10 := (17) * (recoveredBlock348Value9).
    recoveredBlock348Value11 := (recoveredBlock348Value10) rounded.
    (recoveredBlock348Value8) y: (recoveredBlock348Value11).
    recoveredBlock348Value12 := recoveredBlock348Value0.
    recoveredBlock348Value13 := recoveredLocal8.
    recoveredBlock348Value14 := (15) * (recoveredBlock348Value13).
    recoveredBlock348Value15 := (recoveredBlock348Value14) rounded.
    (recoveredBlock348Value12) height: (recoveredBlock348Value15).
    recoveredBlock348Value16 := recoveredBlock348Value0.
    recoveredBlock348Value17 := recoveredLocal9.
    recoveredBlock348Value18 := (60) * (recoveredBlock348Value17).
    recoveredBlock348Value19 := (recoveredBlock348Value18) rounded.
    (recoveredBlock348Value16) width: (recoveredBlock348Value19).
    recoveredBlock348Value20 := (recoveredBlock348Value0) recomputeSize: (false).
    recoveredBlock348Value20
].
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack1 := 'maxText'.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack1 := 'minText'.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack2 := [:recoveredBlock435Arg1 | 
    | recoveredBlock435Value0 recoveredBlock435Value1 recoveredBlock435Value2 recoveredBlock435Value3 recoveredBlock435Value4 recoveredBlock435Value5 recoveredBlock435Value6 recoveredBlock435Value7 recoveredBlock435Value8 recoveredBlock435Value9 recoveredBlock435Value10 recoveredBlock435Value11 recoveredBlock435Value12 recoveredBlock435Value13 recoveredBlock435Value14 recoveredBlock435Value15 recoveredBlock435Value16 recoveredBlock435Value17 recoveredBlock435Value18 recoveredBlock435Value19 recoveredBlock435Value20 |
    recoveredBlock435Value0 := recoveredBlock435Arg1.
    recoveredBlock435Value1 := recoveredBlock435Value0.
    recoveredBlock435Value2 := recoveredLocal9.
    recoveredBlock435Value3 := (2) * (recoveredBlock435Value2).
    recoveredBlock435Value4 := (recoveredBlock435Value3) rounded.
    (recoveredBlock435Value1) x: (recoveredBlock435Value4).
    recoveredBlock435Value5 := recoveredBlock435Value0.
    recoveredBlock435Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock435Value5) alignment: (recoveredBlock435Value6).
    recoveredBlock435Value7 := recoveredBlock435Value0.
    (recoveredBlock435Value7) labelString: ('(Min)').
    recoveredBlock435Value8 := recoveredBlock435Value0.
    recoveredBlock435Value9 := recoveredLocal8.
    recoveredBlock435Value10 := (203) * (recoveredBlock435Value9).
    recoveredBlock435Value11 := (recoveredBlock435Value10) rounded.
    (recoveredBlock435Value8) y: (recoveredBlock435Value11).
    recoveredBlock435Value12 := recoveredBlock435Value0.
    recoveredBlock435Value13 := recoveredLocal8.
    recoveredBlock435Value14 := (15) * (recoveredBlock435Value13).
    recoveredBlock435Value15 := (recoveredBlock435Value14) rounded.
    (recoveredBlock435Value12) height: (recoveredBlock435Value15).
    recoveredBlock435Value16 := recoveredBlock435Value0.
    recoveredBlock435Value17 := recoveredLocal9.
    recoveredBlock435Value18 := (64) * (recoveredBlock435Value17).
    recoveredBlock435Value19 := (recoveredBlock435Value18) rounded.
    (recoveredBlock435Value16) width: (recoveredBlock435Value19).
    recoveredBlock435Value20 := (recoveredBlock435Value0) recomputeSize: (false).
    recoveredBlock435Value20
].
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack1 := 'minText'.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 524.
        ].
        recoveredStep = 524 ifTrue: [
            recoveredStack1 := 'unitText'.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack2 := [:recoveredBlock526Arg1 | 
    | recoveredBlock526Value0 recoveredBlock526Value1 recoveredBlock526Value2 recoveredBlock526Value3 recoveredBlock526Value4 recoveredBlock526Value5 recoveredBlock526Value6 recoveredBlock526Value7 recoveredBlock526Value8 recoveredBlock526Value9 recoveredBlock526Value10 recoveredBlock526Value11 recoveredBlock526Value12 recoveredBlock526Value13 recoveredBlock526Value14 recoveredBlock526Value15 recoveredBlock526Value16 recoveredBlock526Value17 recoveredBlock526Value18 |
    recoveredBlock526Value0 := recoveredBlock526Arg1.
    recoveredBlock526Value1 := recoveredBlock526Value0.
    recoveredBlock526Value2 := recoveredLocal9.
    recoveredBlock526Value3 := (2) * (recoveredBlock526Value2).
    recoveredBlock526Value4 := (recoveredBlock526Value3) rounded.
    (recoveredBlock526Value1) x: (recoveredBlock526Value4).
    recoveredBlock526Value5 := recoveredBlock526Value0.
    (recoveredBlock526Value5) labelString: ('(Einheit)').
    recoveredBlock526Value6 := recoveredBlock526Value0.
    recoveredBlock526Value7 := recoveredLocal8.
    recoveredBlock526Value8 := (233) * (recoveredBlock526Value7).
    recoveredBlock526Value9 := (recoveredBlock526Value8) rounded.
    (recoveredBlock526Value6) y: (recoveredBlock526Value9).
    recoveredBlock526Value10 := recoveredBlock526Value0.
    recoveredBlock526Value11 := recoveredLocal8.
    recoveredBlock526Value12 := (15) * (recoveredBlock526Value11).
    recoveredBlock526Value13 := (recoveredBlock526Value12) rounded.
    (recoveredBlock526Value10) height: (recoveredBlock526Value13).
    recoveredBlock526Value14 := recoveredBlock526Value0.
    recoveredBlock526Value15 := recoveredLocal9.
    recoveredBlock526Value16 := (55) * (recoveredBlock526Value15).
    recoveredBlock526Value17 := (recoveredBlock526Value16) rounded.
    (recoveredBlock526Value14) width: (recoveredBlock526Value17).
    recoveredBlock526Value18 := (recoveredBlock526Value0) recomputeSize: (false).
    recoveredBlock526Value18
].
            recoveredPC := 588.
        ].
        recoveredStep = 588 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 598.
        ].
        recoveredStep = 598 ifTrue: [
            recoveredStack1 := 'unitText'.
            recoveredPC := 600.
        ].
        recoveredStep = 600 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 608.
        ].
        recoveredStep = 608 ifTrue: [
            recoveredStack1 := [:recoveredBlock608Arg1 | 
    | recoveredBlock608Value0 recoveredBlock608Value1 recoveredBlock608Value2 recoveredBlock608Value3 recoveredBlock608Value4 recoveredBlock608Value5 recoveredBlock608Value6 recoveredBlock608Value7 recoveredBlock608Value8 recoveredBlock608Value9 recoveredBlock608Value10 recoveredBlock608Value11 recoveredBlock608Value12 recoveredBlock608Value13 recoveredBlock608Value14 recoveredBlock608Value15 recoveredBlock608Value16 |
    recoveredBlock608Value0 := recoveredBlock608Arg1.
    recoveredBlock608Value1 := recoveredBlock608Value0.
    recoveredBlock608Value2 := XmATTACHWIDGET.
    (recoveredBlock608Value1) bottomAttachment: (recoveredBlock608Value2).
    recoveredBlock608Value3 := recoveredBlock608Value0.
    recoveredBlock608Value4 := recoveredLocal1.
    (recoveredBlock608Value3) bottomWidget: (recoveredBlock608Value4).
    recoveredBlock608Value5 := recoveredBlock608Value0.
    (recoveredBlock608Value5) bottomOffset: (5).
    recoveredBlock608Value6 := recoveredBlock608Value0.
    recoveredBlock608Value7 := XmATTACHWIDGET.
    (recoveredBlock608Value6) topAttachment: (recoveredBlock608Value7).
    recoveredBlock608Value8 := recoveredBlock608Value0.
    recoveredBlock608Value9 := recoveredLocal2.
    (recoveredBlock608Value8) topWidget: (recoveredBlock608Value9).
    recoveredBlock608Value10 := recoveredBlock608Value0.
    (recoveredBlock608Value10) topOffset: (5).
    recoveredBlock608Value11 := recoveredBlock608Value0.
    recoveredBlock608Value12 := XmATTACHFORM.
    (recoveredBlock608Value11) leftAttachment: (recoveredBlock608Value12).
    recoveredBlock608Value13 := recoveredBlock608Value0.
    (recoveredBlock608Value13) leftOffset: (17).
    recoveredBlock608Value14 := recoveredBlock608Value0.
    recoveredBlock608Value15 := XmATTACHFORM.
    (recoveredBlock608Value14) rightAttachment: (recoveredBlock608Value15).
    recoveredBlock608Value16 := (recoveredBlock608Value0) rightOffset: (17).
    recoveredBlock608Value16
].
            recoveredPC := 670.
        ].
        recoveredStep = 670 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 675.
        ].
        recoveredStep = 675 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 678.
        ].
        recoveredStep = 678 ifTrue: [
            recoveredStack1 := [:block28124e88Arg1 | 
    | block28124e88Value0 block28124e88Value1 block28124e88Value2 block28124e88Value3 block28124e88Value4 block28124e88Value5 block28124e88Value6 block28124e88Value7 block28124e88Value8 block28124e88Value9 |
    block28124e88Value0 := block28124e88Arg1.
    block28124e88Value1 := block28124e88Value0.
    block28124e88Value2 := XmATTACHFORM.
    (block28124e88Value1) bottomAttachment: (block28124e88Value2).
    block28124e88Value3 := block28124e88Value0.
    (block28124e88Value3) bottomOffset: (17).
    block28124e88Value4 := block28124e88Value0.
    block28124e88Value5 := XmATTACHFORM.
    (block28124e88Value4) leftAttachment: (block28124e88Value5).
    block28124e88Value6 := block28124e88Value0.
    (block28124e88Value6) leftOffset: (2).
    block28124e88Value7 := block28124e88Value0.
    block28124e88Value8 := XmATTACHFORM.
    (block28124e88Value7) rightAttachment: (block28124e88Value8).
    block28124e88Value9 := (block28124e88Value0) rightOffset: (2).
    block28124e88Value9
].
            recoveredPC := 682.
        ].
        recoveredStep = 682 ifTrue: [
            recoveredPC := 720.
        ].
        recoveredStep = 720 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 725.
        ].
        recoveredStep = 725 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 728.
        ].
        recoveredStep = 728 ifTrue: [
            recoveredStack1 := [:block28124eacArg1 | 
    | block28124eacValue0 block28124eacValue1 block28124eacValue2 block28124eacValue3 block28124eacValue4 block28124eacValue5 block28124eacValue6 block28124eacValue7 block28124eacValue8 block28124eacValue9 |
    block28124eacValue0 := block28124eacArg1.
    block28124eacValue1 := block28124eacValue0.
    block28124eacValue2 := XmATTACHFORM.
    (block28124eacValue1) topAttachment: (block28124eacValue2).
    block28124eacValue3 := block28124eacValue0.
    (block28124eacValue3) topOffset: (2).
    block28124eacValue4 := block28124eacValue0.
    block28124eacValue5 := XmATTACHFORM.
    (block28124eacValue4) leftAttachment: (block28124eacValue5).
    block28124eacValue6 := block28124eacValue0.
    (block28124eacValue6) leftOffset: (2).
    block28124eacValue7 := block28124eacValue0.
    block28124eacValue8 := XmATTACHFORM.
    (block28124eacValue7) rightAttachment: (block28124eacValue8).
    block28124eacValue9 := (block28124eacValue0) rightOffset: (2).
    block28124eacValue9
].
            recoveredPC := 732.
        ].
        recoveredStep = 732 ifTrue: [
            recoveredPC := 770.
        ].
        recoveredStep = 770 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 775.
        ].
        recoveredStep = 775 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 778.
        ].
        recoveredStep = 778 ifTrue: [
            recoveredStack1 := [:block28124ed0Arg1 | 
    | block28124ed0Value0 block28124ed0Value1 block28124ed0Value2 block28124ed0Value3 block28124ed0Value4 block28124ed0Value5 block28124ed0Value6 block28124ed0Value7 block28124ed0Value8 block28124ed0Value9 |
    block28124ed0Value0 := block28124ed0Arg1.
    block28124ed0Value1 := block28124ed0Value0.
    block28124ed0Value2 := XmATTACHFORM.
    (block28124ed0Value1) topAttachment: (block28124ed0Value2).
    block28124ed0Value3 := block28124ed0Value0.
    (block28124ed0Value3) topOffset: (17).
    block28124ed0Value4 := block28124ed0Value0.
    block28124ed0Value5 := XmATTACHFORM.
    (block28124ed0Value4) leftAttachment: (block28124ed0Value5).
    block28124ed0Value6 := block28124ed0Value0.
    (block28124ed0Value6) leftOffset: (2).
    block28124ed0Value7 := block28124ed0Value0.
    block28124ed0Value8 := XmATTACHFORM.
    (block28124ed0Value7) rightAttachment: (block28124ed0Value8).
    block28124ed0Value9 := (block28124ed0Value0) rightOffset: (3).
    block28124ed0Value9
].
            recoveredPC := 782.
        ].
        recoveredStep = 782 ifTrue: [
            recoveredPC := 820.
        ].
        recoveredStep = 820 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 825.
        ].
        recoveredStep = 825 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 828.
        ].
        recoveredStep = 828 ifTrue: [
            recoveredStack1 := [:block28124ef4Arg1 | 
    | block28124ef4Value0 block28124ef4Value1 block28124ef4Value2 block28124ef4Value3 block28124ef4Value4 block28124ef4Value5 block28124ef4Value6 block28124ef4Value7 block28124ef4Value8 block28124ef4Value9 |
    block28124ef4Value0 := block28124ef4Arg1.
    block28124ef4Value1 := block28124ef4Value0.
    block28124ef4Value2 := XmATTACHFORM.
    (block28124ef4Value1) bottomAttachment: (block28124ef4Value2).
    block28124ef4Value3 := block28124ef4Value0.
    (block28124ef4Value3) bottomOffset: (33).
    block28124ef4Value4 := block28124ef4Value0.
    block28124ef4Value5 := XmATTACHFORM.
    (block28124ef4Value4) leftAttachment: (block28124ef4Value5).
    block28124ef4Value6 := block28124ef4Value0.
    (block28124ef4Value6) leftOffset: (2).
    block28124ef4Value7 := block28124ef4Value0.
    block28124ef4Value8 := XmATTACHFORM.
    (block28124ef4Value7) rightAttachment: (block28124ef4Value8).
    block28124ef4Value9 := (block28124ef4Value0) rightOffset: (3).
    block28124ef4Value9
].
            recoveredPC := 832.
        ].
        recoveredStep = 832 ifTrue: [
            recoveredPC := 870.
        ].
        recoveredStep = 870 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 875.
        ].
        recoveredStep = 875 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 878.
        ].
        recoveredStep = 878 ifTrue: [
            recoveredStack1 := [:block28124f18Arg1 | 
    | block28124f18Value0 block28124f18Value1 block28124f18Value2 block28124f18Value3 block28124f18Value4 block28124f18Value5 block28124f18Value6 block28124f18Value7 block28124f18Value8 block28124f18Value9 |
    block28124f18Value0 := block28124f18Arg1.
    block28124f18Value1 := block28124f18Value0.
    block28124f18Value2 := XmATTACHFORM.
    (block28124f18Value1) bottomAttachment: (block28124f18Value2).
    block28124f18Value3 := block28124f18Value0.
    (block28124f18Value3) bottomOffset: (3).
    block28124f18Value4 := block28124f18Value0.
    block28124f18Value5 := XmATTACHFORM.
    (block28124f18Value4) leftAttachment: (block28124f18Value5).
    block28124f18Value6 := block28124f18Value0.
    (block28124f18Value6) leftOffset: (2).
    block28124f18Value7 := block28124f18Value0.
    block28124f18Value8 := XmATTACHFORM.
    (block28124f18Value7) rightAttachment: (block28124f18Value8).
    block28124f18Value9 := (block28124f18Value0) rightOffset: (2).
    block28124f18Value9
].
            recoveredPC := 882.
        ].
        recoveredStep = 882 ifTrue: [
            recoveredPC := 920.
        ].
        recoveredStep = 920 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 925.
        ].
        recoveredStep = 925 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 928.
        ].
        recoveredStep = 928 ifTrue: [
            recoveredStack1 := XmNexposeCallback.
            recoveredPC := 932.
        ].
        recoveredStep = 932 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 933.
        ].
        recoveredStep = 933 ifTrue: [
            recoveredStack3 := 'aForm1Expose:clientData:callData:'.
            recoveredPC := 936.
        ].
        recoveredStep = 936 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 937.
        ].
        recoveredStep = 937 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 941.
        ].
        recoveredStep = 941 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 944.
        ].
        recoveredStep = 944 ifTrue: [
            recoveredStack1 := XmNdestroyCallback.
            recoveredPC := 948.
        ].
        recoveredStep = 948 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 949.
        ].
        recoveredStep = 949 ifTrue: [
            recoveredStack3 := 'aForm1Destroy:clientData:callData:'.
            recoveredPC := 952.
        ].
        recoveredStep = 952 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 953.
        ].
        recoveredStep = 953 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 957.
        ].
        recoveredStep = 957 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 960.
        ].
        recoveredStep = 960 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

