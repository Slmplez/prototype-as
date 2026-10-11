"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20042614; bytecode file offset 0x93eef0"
!SGImageGO methodsFor: 'recovered'!
dbImage
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := dbImage.
    recoveredValue1 := (recoveredValue0) getObject.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20085648; bytecode file offset 0x981f00"
!SGImageGO methodsFor: 'recovered'!
dbImage: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asRBDBReference.
    dbImage := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200c6268; bytecode file offset 0x9c2bec"
!SGImageGO methodsFor: 'recovered'!
dbImageDirect: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dbImage := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2026c76c; bytecode file offset 0xb69038"
!SGImageGO methodsFor: 'recovered'!
changeImageFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := CgDeviceIndependentImage.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack5 := CgIndexedPalette.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack6 := 1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack5 := (recoveredStack5) grayRamp: (recoveredStack6).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) width: (recoveredStack2) height: (recoveredStack3) depth: (recoveredStack4) palette: (recoveredStack5).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            image := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) image.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            image := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) dbImage: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205328bc; bytecode file offset 0xe2f21c"
!SGImageGO methodsFor: 'recovered'!
displayOn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) gc.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := lineStyle.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := DefaultLineStyle.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) deepCopy.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            lineStyle := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := GCFunction.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := GCLineWidth.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) | (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := GCLineStyle.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) | (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := CgGCValues.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack5 := mixingRule.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack4) function: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack5 := lineStyle.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack5 := (recoveredStack5) getWidth.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack4) lineWidth: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack5 := lineStyle.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack5 := (recoveredStack5) getType.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack4) lineStyle: (recoveredStack5).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) changeGC: (recoveredStack2) values: (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVisible.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 202].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) image.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) extent.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) manager.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) manager.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicFrame.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) extent.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) min: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := 'wb_sifting'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := image.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEtasCgIcon.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := [
    false
].
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) runtimeAssert: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredPC := 200.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPostscript.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := image.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) shouldShowPostscriptExportWarning.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock130Stack0 recoveredBlock130Stack1 recoveredBlock130Stack2 recoveredBlock130PC recoveredBlock130Step recoveredBlock130Done recoveredBlock130Result |
    recoveredBlock130Stack0 := self.
    recoveredBlock130PC := 136.
    recoveredBlock130Done := false.
    [recoveredBlock130Done not] whileTrue: [
        recoveredBlock130Step := recoveredBlock130PC.
        recoveredBlock130Step = 136 ifTrue: [
            recoveredBlock130Stack0 := (recoveredBlock130Stack0) image.
            recoveredBlock130PC := 138.
        ].
        recoveredBlock130Step = 138 ifTrue: [
            recoveredBlock130Stack0 := (recoveredBlock130Stack0) class.
            recoveredBlock130PC := 140.
        ].
        recoveredBlock130Step = 140 ifTrue: [
            recoveredBlock130Stack0 := (recoveredBlock130Stack0) postscriptExportWarningMessage.
            recoveredBlock130PC := 142.
        ].
        recoveredBlock130Step = 142 ifTrue: [
            recoveredBlock130Stack0 := (recoveredBlock130Stack0) withCrs.
            recoveredBlock130PC := 144.
        ].
        recoveredBlock130Step = 144 ifTrue: [
            recoveredBlock130Stack1 := self.
            recoveredBlock130PC := 145.
        ].
        recoveredBlock130Step = 145 ifTrue: [
            recoveredBlock130Stack1 := (recoveredBlock130Stack1) dbImage.
            recoveredBlock130PC := 147.
        ].
        recoveredBlock130Step = 147 ifTrue: [
            (recoveredBlock130Stack1 ~~ nil) ifTrue: [recoveredBlock130PC := 156] ifFalse: [recoveredBlock130PC := 150].
        ].
        recoveredBlock130Step = 150 ifTrue: [
            recoveredBlock130Stack1 := '<undefined>'.
            recoveredBlock130PC := 152.
        ].
        recoveredBlock130Step = 152 ifTrue: [
            recoveredBlock130PC := 161.
        ].
        recoveredBlock130Step = 156 ifTrue: [
            recoveredBlock130Stack1 := self.
            recoveredBlock130PC := 157.
        ].
        recoveredBlock130Step = 157 ifTrue: [
            recoveredBlock130Stack1 := (recoveredBlock130Stack1) dbImage.
            recoveredBlock130PC := 159.
        ].
        recoveredBlock130Step = 159 ifTrue: [
            recoveredBlock130Stack1 := (recoveredBlock130Stack1) fileName.
            recoveredBlock130PC := 161.
        ].
        recoveredBlock130Step = 161 ifTrue: [
            recoveredBlock130Stack0 := (recoveredBlock130Stack0) bindWith: (recoveredBlock130Stack1).
            recoveredBlock130PC := 163.
        ].
        recoveredBlock130Step = 163 ifTrue: [
            recoveredBlock130Result := recoveredBlock130Stack0.
            recoveredBlock130Done := true.
        ].
    ].
    recoveredBlock130Result
].
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack0) addWarningTextBlock: (recoveredStack1).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := (recoveredStack2) getPrintableImage.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack3 := (recoveredStack3) image.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack3 := (recoveredStack3) extent.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack3 := (recoveredStack3) extent: (recoveredStack4).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack4 := (recoveredStack4) getPosition.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack6 := 2.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack5 := (recoveredStack5) // (recoveredStack6).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack4 := (recoveredStack4) - (recoveredStack5).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack4 := (recoveredStack4) extent: (recoveredStack5).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack0) putDeviceIndependentImage: (recoveredStack1) image: (recoveredStack2) srcRect: (recoveredStack3) destRect: (recoveredStack4).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

