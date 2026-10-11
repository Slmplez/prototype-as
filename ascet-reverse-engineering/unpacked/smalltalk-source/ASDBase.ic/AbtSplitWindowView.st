"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200710f8; bytecode file offset 0x96d9d4"
!AbtSplitWindowView methodsFor: 'recovered'!
splitBarBackgroundColor
    | recoveredValue0 |
    recoveredValue0 := splitBarBackgroundColor.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20071184; bytecode file offset 0x96da70"
!AbtSplitWindowView methodsFor: 'recovered'!
splitBarForegroundColor
    | recoveredValue0 |
    recoveredValue0 := splitBarForegroundColor.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20193130; bytecode file offset 0xa8fa54"
!AbtSplitWindowView methodsFor: 'recovered'!
childMinimumSizes: recoveredArg1
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
            childMinimumSizes := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) childMinimumSizes: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'childMinimumSizesChanged'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) signalEvent: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20193244; bytecode file offset 0xa8fb68"
!AbtSplitWindowView methodsFor: 'recovered'!
childProportions: recoveredArg1
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
            childProportions := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) childProportions: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'childProportionsChanged'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) signalEvent: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201933a0; bytecode file offset 0xa8fc74"
!AbtSplitWindowView methodsFor: 'recovered'!
orientation: recoveredArg1
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
            orientation := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) orientation: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'orientationChanged'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) signalEvent: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201935c8; bytecode file offset 0xa8fed8"
!AbtSplitWindowView methodsFor: 'recovered'!
splitBarThickness: recoveredArg1
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
            splitBarThickness := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) splitBarThickness: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'splitBarThicknessChanged'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) signalEvent: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201fd68c; bytecode file offset 0xaf9f48"
!AbtSplitWindowView methodsFor: 'recovered'!
orientation
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) orientation.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := orientation.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := orientation.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := XmHORIZONTAL.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201fd6bc; bytecode file offset 0xaf9f74"
!AbtSplitWindowView methodsFor: 'recovered'!
splitBarThickness
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) splitBarThickness.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := splitBarThickness.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := splitBarThickness.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2020a604; bytecode file offset 0xb06ec4"
!AbtSplitWindowView methodsFor: 'recovered'!
childMinimumSizes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) childMinimumSizes.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := childMinimumSizes.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := childMinimumSizes.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2020a638; bytecode file offset 0xb06ef8"
!AbtSplitWindowView methodsFor: 'recovered'!
childProportions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) childProportions.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := childProportions.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := childProportions.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2033da88; bytecode file offset 0xc3a35c"
!AbtSplitWindowView methodsFor: 'recovered'!
splitBarBackgroundColor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) colorNamed: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := splitBarBackgroundColor.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
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
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            splitBarBackgroundColor := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := widget.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) recreateWidget.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := widget.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) asRgb: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) splitBarBackgroundColor: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := 'splitBarBackgroundColorChanged'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) signalEvent: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033daf0; bytecode file offset 0xc3a3c4"
!AbtSplitWindowView methodsFor: 'recovered'!
splitBarForegroundColor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) colorNamed: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := splitBarForegroundColor.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
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
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            splitBarForegroundColor := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := widget.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) recreateWidget.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := widget.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) asRgb: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) splitBarForegroundColor: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := 'splitBarForegroundColorChanged'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) signalEvent: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204a0e40; bytecode file offset 0xd9d728"
!AbtSplitWindowView methodsFor: 'recovered'!
widgetCreationArgBlock
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Local1 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack0 := super widgetCreationArgBlock.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Arg1.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            (recoveredBlock4Stack0) value: (recoveredBlock4Stack1).
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredBlock4Stack0 := childMinimumSizes.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            (recoveredBlock4Stack0 == nil) ifTrue: [recoveredBlock4PC := 27] ifFalse: [recoveredBlock4PC := 22].
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Arg1.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack1 := childMinimumSizes.
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            (recoveredBlock4Stack0) childMinimumSizes: (recoveredBlock4Stack1).
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredBlock4Stack0 := childProportions.
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            (recoveredBlock4Stack0 == nil) ifTrue: [recoveredBlock4PC := 37] ifFalse: [recoveredBlock4PC := 32].
        ].
        recoveredBlock4Step = 32 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Arg1.
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            recoveredBlock4Stack1 := childProportions.
            recoveredBlock4PC := 35.
        ].
        recoveredBlock4Step = 35 ifTrue: [
            (recoveredBlock4Stack0) childProportions: (recoveredBlock4Stack1).
            recoveredBlock4PC := 37.
        ].
        recoveredBlock4Step = 37 ifTrue: [
            recoveredBlock4Stack0 := orientation.
            recoveredBlock4PC := 39.
        ].
        recoveredBlock4Step = 39 ifTrue: [
            (recoveredBlock4Stack0 == nil) ifTrue: [recoveredBlock4PC := 47] ifFalse: [recoveredBlock4PC := 42].
        ].
        recoveredBlock4Step = 42 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Arg1.
            recoveredBlock4PC := 43.
        ].
        recoveredBlock4Step = 43 ifTrue: [
            recoveredBlock4Stack1 := orientation.
            recoveredBlock4PC := 45.
        ].
        recoveredBlock4Step = 45 ifTrue: [
            (recoveredBlock4Stack0) orientation: (recoveredBlock4Stack1).
            recoveredBlock4PC := 47.
        ].
        recoveredBlock4Step = 47 ifTrue: [
            recoveredBlock4Stack0 := splitBarThickness.
            recoveredBlock4PC := 49.
        ].
        recoveredBlock4Step = 49 ifTrue: [
            (recoveredBlock4Stack0 == nil) ifTrue: [recoveredBlock4PC := 57] ifFalse: [recoveredBlock4PC := 52].
        ].
        recoveredBlock4Step = 52 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Arg1.
            recoveredBlock4PC := 53.
        ].
        recoveredBlock4Step = 53 ifTrue: [
            recoveredBlock4Stack1 := splitBarThickness.
            recoveredBlock4PC := 55.
        ].
        recoveredBlock4Step = 55 ifTrue: [
            (recoveredBlock4Stack0) splitBarThickness: (recoveredBlock4Stack1).
            recoveredBlock4PC := 57.
        ].
        recoveredBlock4Step = 57 ifTrue: [
            recoveredBlock4Stack0 := splitBarForegroundColor.
            recoveredBlock4PC := 59.
        ].
        recoveredBlock4Step = 59 ifTrue: [
            (recoveredBlock4Stack0 == nil) ifTrue: [recoveredBlock4PC := 95] ifFalse: [recoveredBlock4PC := 62].
        ].
        recoveredBlock4Step = 62 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 63.
        ].
        recoveredBlock4Step = 63 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) class.
            recoveredBlock4PC := 65.
        ].
        recoveredBlock4Step = 65 ifTrue: [
            recoveredBlock4Stack1 := splitBarForegroundColor.
            recoveredBlock4PC := 67.
        ].
        recoveredBlock4Step = 67 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) colorNamed: (recoveredBlock4Stack1).
            recoveredBlock4PC := 69.
        ].
        recoveredBlock4Step = 69 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) size.
            recoveredBlock4PC := 71.
        ].
        recoveredBlock4Step = 71 ifTrue: [
            recoveredBlock4Stack1 := 0.
            recoveredBlock4PC := 73.
        ].
        recoveredBlock4Step = 73 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) > (recoveredBlock4Stack1).
            recoveredBlock4PC := 74.
        ].
        recoveredBlock4Step = 74 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 78] ifFalse: [recoveredBlock4PC := 95].
        ].
        recoveredBlock4Step = 78 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 79.
        ].
        recoveredBlock4Step = 79 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) class.
            recoveredBlock4PC := 81.
        ].
        recoveredBlock4Step = 81 ifTrue: [
            recoveredBlock4Stack1 := splitBarForegroundColor.
            recoveredBlock4PC := 83.
        ].
        recoveredBlock4Step = 83 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) colorNamed: (recoveredBlock4Stack1).
            recoveredBlock4PC := 85.
        ].
        recoveredBlock4Step = 85 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 86.
        ].
        recoveredBlock4Step = 86 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Arg1.
            recoveredBlock4PC := 87.
        ].
        recoveredBlock4Step = 87 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 88.
        ].
        recoveredBlock4Step = 88 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Local1.
            recoveredBlock4PC := 89.
        ].
        recoveredBlock4Step = 89 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) asRgb: (recoveredBlock4Stack2).
            recoveredBlock4PC := 91.
        ].
        recoveredBlock4Step = 91 ifTrue: [
            (recoveredBlock4Stack0) splitBarForegroundColor: (recoveredBlock4Stack1).
            recoveredBlock4PC := 93.
        ].
        recoveredBlock4Step = 93 ifTrue: [
            recoveredBlock4Stack0 := nil.
            recoveredBlock4PC := 94.
        ].
        recoveredBlock4Step = 94 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 95.
        ].
        recoveredBlock4Step = 95 ifTrue: [
            recoveredBlock4Stack0 := nil.
            recoveredBlock4PC := 96.
        ].
        recoveredBlock4Step = 96 ifTrue: [
            recoveredBlock4Stack1 := splitBarBackgroundColor.
            recoveredBlock4PC := 98.
        ].
        recoveredBlock4Step = 98 ifTrue: [
            (recoveredBlock4Stack1 == nil) ifTrue: [recoveredBlock4PC := 136] ifFalse: [recoveredBlock4PC := 102].
        ].
        recoveredBlock4Step = 102 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 103.
        ].
        recoveredBlock4Step = 103 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) class.
            recoveredBlock4PC := 105.
        ].
        recoveredBlock4Step = 105 ifTrue: [
            recoveredBlock4Stack2 := splitBarBackgroundColor.
            recoveredBlock4PC := 107.
        ].
        recoveredBlock4Step = 107 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) colorNamed: (recoveredBlock4Stack2).
            recoveredBlock4PC := 109.
        ].
        recoveredBlock4Step = 109 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) size.
            recoveredBlock4PC := 111.
        ].
        recoveredBlock4Step = 111 ifTrue: [
            recoveredBlock4Stack2 := 0.
            recoveredBlock4PC := 113.
        ].
        recoveredBlock4Step = 113 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) > (recoveredBlock4Stack2).
            recoveredBlock4PC := 114.
        ].
        recoveredBlock4Step = 114 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 118] ifFalse: [recoveredBlock4PC := 136].
        ].
        recoveredBlock4Step = 118 ifTrue: [
            recoveredBlock4PC := 119.
        ].
        recoveredBlock4Step = 119 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 120.
        ].
        recoveredBlock4Step = 120 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) class.
            recoveredBlock4PC := 122.
        ].
        recoveredBlock4Step = 122 ifTrue: [
            recoveredBlock4Stack1 := splitBarBackgroundColor.
            recoveredBlock4PC := 124.
        ].
        recoveredBlock4Step = 124 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) colorNamed: (recoveredBlock4Stack1).
            recoveredBlock4PC := 126.
        ].
        recoveredBlock4Step = 126 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 127.
        ].
        recoveredBlock4Step = 127 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Arg1.
            recoveredBlock4PC := 128.
        ].
        recoveredBlock4Step = 128 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 129.
        ].
        recoveredBlock4Step = 129 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Local1.
            recoveredBlock4PC := 130.
        ].
        recoveredBlock4Step = 130 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) asRgb: (recoveredBlock4Stack2).
            recoveredBlock4PC := 132.
        ].
        recoveredBlock4Step = 132 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) splitBarBackgroundColor: (recoveredBlock4Stack1).
            recoveredBlock4PC := 134.
        ].
        recoveredBlock4Step = 134 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 135.
        ].
        recoveredBlock4Step = 135 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 136.
        ].
        recoveredBlock4Step = 136 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    ^recoveredValue0
! !

