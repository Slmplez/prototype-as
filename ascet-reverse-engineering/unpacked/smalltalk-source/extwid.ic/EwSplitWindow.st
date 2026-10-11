"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x200017d4; bytecode file offset 0x526c8"
!EwSplitWindow methodsFor: 'recovered'!
initializeAfterCreate
    (self) initializeSplitWindowCallbacks.
    ^self
! !

"extwid.ic method 0x20001ea0; bytecode file offset 0x52dac"
!EwSplitWindow methodsFor: 'recovered'!
isHorizontal
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) orientation.
    recoveredValue1 := XmHORIZONTAL.
    recoveredValue2 := (recoveredValue0) == (recoveredValue1).
    ^recoveredValue2
! !

"extwid.ic method 0x200023dc; bytecode file offset 0x531a4"
!EwSplitWindow methodsFor: 'recovered'!
isEmpty
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) numChildren.
    recoveredValue1 := (recoveredValue0) == (0).
    ^recoveredValue1
! !

"extwid.ic method 0x20002d7c; bytecode file offset 0x53c68"
!EwSplitWindow methodsFor: 'recovered'!
orientation
    | recoveredValue0 |
    recoveredValue0 := xmNorientation.
    ^recoveredValue0
! !

"extwid.ic method 0x20002f1c; bytecode file offset 0x53da8"
!EwSplitWindow methodsFor: 'recovered'!
configured
    | recoveredValue0 |
    recoveredValue0 := configured.
    ^recoveredValue0
! !

"extwid.ic method 0x20003054; bytecode file offset 0x53eb0"
!EwSplitWindow methodsFor: 'recovered'!
splitBars
    | recoveredValue0 |
    recoveredValue0 := splitBars.
    ^recoveredValue0
! !

"extwid.ic method 0x20003508; bytecode file offset 0x542e4"
!EwSplitWindow methodsFor: 'recovered'!
splitBarThickness
    | recoveredValue0 |
    recoveredValue0 := xmNsplitBarThickness.
    ^recoveredValue0
! !

"extwid.ic method 0x200035d8; bytecode file offset 0x5439c"
!EwSplitWindow methodsFor: 'recovered'!
splitBarForegroundColor
    | recoveredValue0 |
    recoveredValue0 := xmNsplitBarForegroundColor.
    ^recoveredValue0
! !

"extwid.ic method 0x20003630; bytecode file offset 0x5441c"
!EwSplitWindow methodsFor: 'recovered'!
splitBarBackgroundColor
    | recoveredValue0 |
    recoveredValue0 := xmNsplitBarBackgroundColor.
    ^recoveredValue0
! !

"extwid.ic method 0x2000476c; bytecode file offset 0x55548"
!EwSplitWindow methodsFor: 'recovered'!
initializePreferredPositions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    preferredPositions := recoveredValue1.
    ^self
! !

"extwid.ic method 0x20004cd8; bytecode file offset 0x55aa8"
!EwSplitWindow methodsFor: 'recovered'!
numWidgets
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) numChildren.
    recoveredValue1 := (self) splitBars.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue0) - (recoveredValue2).
    ^recoveredValue3
! !

"extwid.ic method 0x20006a24; bytecode file offset 0x577e8"
!EwSplitWindow methodsFor: 'recovered'!
orientation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    xmNorientation := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20006a58; bytecode file offset 0x578dc"
!EwSplitWindow methodsFor: 'recovered'!
configured: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    configured := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20006d84; bytecode file offset 0x57b48"
!EwSplitWindow methodsFor: 'recovered'!
setProportions: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    setProportions := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20006e98; bytecode file offset 0x57c7c"
!EwSplitWindow methodsFor: 'recovered'!
oldSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    oldSize := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20007e5c; bytecode file offset 0x58c30"
!EwSplitWindow methodsFor: 'recovered'!
usableSize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) windowSize.
    recoveredValue1 := (self) splitBars.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (self) splitBarThickness.
    recoveredValue4 := (recoveredValue2) * (recoveredValue3).
    recoveredValue5 := (recoveredValue0) - (recoveredValue4).
    ^recoveredValue5
! !

"extwid.ic method 0x2000852c; bytecode file offset 0x592f8"
!EwSplitWindow methodsFor: 'recovered'!
initializeResources
    | recoveredValue0 |
    recoveredValue0 := XmHORIZONTAL.
    (self) orientation: (recoveredValue0).
    xmNsplitBarThickness := 2.
    ^self
! !

"extwid.ic method 0x20008b20; bytecode file offset 0x59904"
!EwSplitWindow methodsFor: 'recovered'!
createPrimaryWidget: recoveredArg1 parent: recoveredArg2 argBlock: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := CwForm.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) parent.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) createManagedWidget: (recoveredValue1) parent: (recoveredValue2) argBlock: (recoveredValue3).
    ^recoveredValue4
! !

"extwid.ic method 0x200096d4; bytecode file offset 0x5a49c"
!EwSplitWindow methodsFor: 'recovered'!
preferredPositions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := preferredPositions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) initializePreferredPositions.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := preferredPositions.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x200096f0; bytecode file offset 0x5a4b8"
!EwSplitWindow methodsFor: 'recovered'!
setProportions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := setProportions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) initializeSetProportions.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := setProportions.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x2000970c; bytecode file offset 0x5a4d4"
!EwSplitWindow methodsFor: 'recovered'!
childMinimumSizes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNchildMinimumSizes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) initializeMinimumSizes.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := xmNchildMinimumSizes.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x2000992c; bytecode file offset 0x5a718"
!EwSplitWindow methodsFor: 'recovered'!
initializeSplitWindowCallbacks
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) primaryWidget.
    recoveredValue1 := XmNresizeCallback.
    (recoveredValue0) addCallback: (recoveredValue1) receiver: (self) selector: ('resize:clientData:callData:') clientData: (nil).
    ^self
! !

"extwid.ic method 0x2000a768; bytecode file offset 0x5b54c"
!EwSplitWindow methodsFor: 'recovered'!
windowSize
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isHorizontal.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) width.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) height.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2000aa80; bytecode file offset 0x5b84c"
!EwSplitWindow methodsFor: 'recovered'!
childMinimumSizes: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            xmNchildMinimumSizes := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRealized.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) constrainSplitBars.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2000d050; bytecode file offset 0x5de28"
!EwSplitWindow methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    (self) configured: (false).
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    splitBars := recoveredValue1.
    ^self
! !

"extwid.ic method 0x2000f54c; bytecode file offset 0x6031c"
!EwSplitWindow methodsFor: 'recovered'!
minimumSizeForChildAt: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) childMinimumSizes.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) childMinimumSizes.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x20012100; bytecode file offset 0x62ed4"
!EwSplitWindow methodsFor: 'recovered'!
positionSplitBar: recoveredArg1 at: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isHorizontal.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) leftOffset: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) topOffset: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) setPreferredPositionFor: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20012be4; bytecode file offset 0x639bc"
!EwSplitWindow methodsFor: 'recovered'!
preferredPositionFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) splitBars.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
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
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) preferredPositions.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) preferredPositions.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20013e5c; bytecode file offset 0x64c34"
!EwSplitWindow methodsFor: 'recovered'!
dragSplitBar: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isHorizontal.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) moveWidget: (recoveredStack1) y: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) moveWidget: (recoveredStack1) y: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) updateWidget.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x200148e8; bytecode file offset 0x656c4"
!EwSplitWindow methodsFor: 'recovered'!
childProportions: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) setProportions: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCreated.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack0 := (recoveredStack0) isRealized.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) calculatePositionsFromProportions.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) positionSplitBars.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) constrainSplitBars.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x200150b8; bytecode file offset 0x65e8c"
!EwSplitWindow methodsFor: 'recovered'!
oldSize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := oldSize.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isHorizontal.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) width.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) oldSize: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) height.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) oldSize: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := oldSize.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x20015658; bytecode file offset 0x66434"
!EwSplitWindow methodsFor: 'recovered'!
setPreferredPositionFor: recoveredArg1 to: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) splitBars.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
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
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) preferredPositions.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) preferredPositions.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) addLast: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) preferredPositions.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20015758; bytecode file offset 0x6652c"
!EwSplitWindow methodsFor: 'recovered'!
initializeSetProportions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            setProportions := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) numWidgets.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := setProportions.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) addLast: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 isInteger) ifTrue: [(recoveredStack0 > 0) ifTrue: [recoveredStack0 := recoveredStack0 - 1. recoveredPC := 14] ifFalse: [recoveredPC := 30]] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20017d98; bytecode file offset 0x68b70"
!EwSplitWindow methodsFor: 'recovered'!
splitBarForegroundColor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNsplitBarForegroundColor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            xmNsplitBarForegroundColor := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRealized.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) splitBars.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 |
    recoveredBlock22Value0 := recoveredBlock22Arg1.
    recoveredBlock22Value1 := (self) splitBarForegroundColor.
    recoveredBlock22Value2 := (recoveredBlock22Value0) foregroundColor: (recoveredBlock22Value1).
    recoveredBlock22Value2
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20017ddc; bytecode file offset 0x68bb4"
!EwSplitWindow methodsFor: 'recovered'!
splitBarBackgroundColor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNsplitBarBackgroundColor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            xmNsplitBarBackgroundColor := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRealized.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) splitBars.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 |
    recoveredBlock22Value0 := recoveredBlock22Arg1.
    recoveredBlock22Value1 := (self) splitBarBackgroundColor.
    recoveredBlock22Value2 := (recoveredBlock22Value0) backgroundColor: (recoveredBlock22Value1).
    recoveredBlock22Value2
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20018f88; bytecode file offset 0x69d60"
!EwSplitWindow methodsFor: 'recovered'!
primaryWidgetCreateArgBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Arg1.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            (recoveredBlock4Stack0) primaryWidget: (recoveredBlock4Stack1).
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Arg1.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            recoveredBlock4Stack2 := true.
            recoveredBlock4PC := 16.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            (recoveredBlock4Stack1) strictClipping: (recoveredBlock4Stack2).
            recoveredBlock4PC := 18.
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4Stack1 := XmRESIZENONE.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            (recoveredBlock4Stack0) resizePolicy: (recoveredBlock4Stack1).
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack0 := nil.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            (recoveredBlock4Stack1 == nil) ifTrue: [recoveredBlock4PC := 37] ifFalse: [recoveredBlock4PC := 30].
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredBlock4PC := 31.
        ].
        recoveredBlock4Step = 31 ifTrue: [
            recoveredBlock4Stack0 := recoveredArg1.
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 35.
        ].
        recoveredBlock4Step = 35 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) value: (recoveredBlock4Stack1).
            recoveredBlock4PC := 37.
        ].
        recoveredBlock4Step = 37 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    ^recoveredValue0
! !

"extwid.ic method 0x2001a694; bytecode file offset 0x6b468"
!EwSplitWindow methodsFor: 'recovered'!
initializeMinimumSizes
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) numWidgets.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            xmNchildMinimumSizes := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) numWidgets.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := xmNchildMinimumSizes.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 18] ifFalse: [recoveredLocal1 := nil. recoveredPC := 39]] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2001bbf8; bytecode file offset 0x6c9d0"
!EwSplitWindow methodsFor: 'recovered'!
proportionForChildAt: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) setProportions.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) setProportions.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 100.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) min: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x2001bc98; bytecode file offset 0x6ca80"
!EwSplitWindow methodsFor: 'recovered'!
resize: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) configured.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) configureChildren.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) preferredPositions.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) calculatePositionsFromProportions.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) positionSplitBars.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) constrainSplitBars.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2001ce78; bytecode file offset 0x6dc68"
!EwSplitWindow methodsFor: 'recovered'!
createSplitBar
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EwSplitBar.
    recoveredValue1 := (self) primaryWidget.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := (self) splitBarThickness.
    recoveredBlock10Value2 := (recoveredBlock10Value0) thickness: (recoveredBlock10Value1).
    recoveredBlock10Value2
].
    recoveredValue3 := (recoveredValue0) createManagedWidget: ('split bar') parent: (recoveredValue1) argBlock: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := XmNdragCallback.
    (recoveredValue5) addCallback: (recoveredValue6) receiver: (self) selector: ('dragSplitBar:clientData:callData:') clientData: (nil).
    recoveredValue7 := XmNpositionChangedCallback.
    (recoveredValue4) addCallback: (recoveredValue7) receiver: (self) selector: ('moveSplitBar:clientData:callData:') clientData: (nil).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"extwid.ic method 0x2001ea70; bytecode file offset 0x6f860"
!EwSplitWindow methodsFor: 'recovered'!
moveSplitBar: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) splitBars.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isHorizontal.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) positionSplitBar: (recoveredStack2) at: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) position.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) setPreferredPositionFor: (recoveredStack2) to: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) positionBarsPriorTo: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) positionBarsAfter: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) constrainSplitBars.
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

"extwid.ic method 0x200207fc; bytecode file offset 0x715e8"
!EwSplitWindow methodsFor: 'recovered'!
splitBarThickness: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRealized.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) childProportions.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) childProportions: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := xmNsplitBarThickness.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            xmNsplitBarThickness := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRealized.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) splitBars.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Value0 recoveredBlock32Value1 recoveredBlock32Value2 |
    recoveredBlock32Value0 := recoveredBlock32Arg1.
    recoveredBlock32Value1 := (self) splitBarThickness.
    recoveredBlock32Value2 := (recoveredBlock32Value0) thickness: (recoveredBlock32Value1).
    recoveredBlock32Value2
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) calculatePositionsFromProportions.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) positionSplitBars.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) constrainSplitBars.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x200217b0; bytecode file offset 0x72598"
!EwSplitWindow methodsFor: 'recovered'!
positionBarsPriorTo: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := -1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Local1 recoveredBlock17Local2 recoveredBlock17Local3 recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 recoveredBlock17Value4 recoveredBlock17Value5 recoveredBlock17Value6 recoveredBlock17Value7 recoveredBlock17Value8 recoveredBlock17Value9 recoveredBlock17Value10 recoveredBlock17Value11 recoveredBlock17Value12 recoveredBlock17Value13 recoveredBlock17Value14 recoveredBlock17Value15 recoveredBlock17Value16 recoveredBlock17Value17 recoveredBlock17Value18 recoveredBlock17Value19 |
    recoveredBlock17Value0 := (self) splitBars.
    recoveredBlock17Value1 := recoveredBlock17Arg1.
    recoveredBlock17Value2 := (recoveredBlock17Value0) at: (recoveredBlock17Value1).
    recoveredBlock17Local3 := recoveredBlock17Value2.
    recoveredBlock17Value3 := (self) splitBars.
    recoveredBlock17Value4 := recoveredBlock17Arg1.
    recoveredBlock17Value5 := (recoveredBlock17Value4) + (-1).
    recoveredBlock17Value6 := (recoveredBlock17Value3) at: (recoveredBlock17Value5).
    recoveredBlock17Local2 := recoveredBlock17Value6.
    recoveredBlock17Value7 := recoveredBlock17Local2.
    recoveredBlock17Value8 := (self) preferredPositionFor: (recoveredBlock17Value7).
    recoveredBlock17Value9 := recoveredBlock17Local3.
    recoveredBlock17Value10 := (recoveredBlock17Value9) position.
    recoveredBlock17Value11 := recoveredBlock17Arg1.
    recoveredBlock17Value12 := (self) minimumSizeForChildAt: (recoveredBlock17Value11).
    recoveredBlock17Value13 := (recoveredBlock17Value10) - (recoveredBlock17Value12).
    recoveredBlock17Value14 := (self) splitBarThickness.
    recoveredBlock17Value15 := (recoveredBlock17Value13) - (recoveredBlock17Value14).
    recoveredBlock17Value16 := (recoveredBlock17Value8) min: (recoveredBlock17Value15).
    recoveredBlock17Local1 := recoveredBlock17Value16.
    recoveredBlock17Value17 := recoveredBlock17Local2.
    recoveredBlock17Value18 := recoveredBlock17Local1.
    recoveredBlock17Value19 := (self) positionSplitBar: (recoveredBlock17Value17) at: (recoveredBlock17Value18).
    recoveredBlock17Value19
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) to: (recoveredStack2) by: (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20026608; bytecode file offset 0x773f4"
!EwSplitWindow methodsFor: 'recovered'!
calculatePositionsFromProportions
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) initializePreferredPositions.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) numChildren.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) proportionForChildAt: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := #[0 0 0 0 0 0 89 64].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) usableSize.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) rounded.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 53] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) splitBarThickness.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) preferredPositions.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack0) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 18] ifFalse: [recoveredLocal2 := nil. recoveredPC := 75]] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 73] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20027540; bytecode file offset 0x78328"
!EwSplitWindow methodsFor: 'recovered'!
positionBarsAfter: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) splitBars.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) splitBars.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) splitBars.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) splitBars.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) preferredPositionFor: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) position.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := (recoveredStack3) minimumSizeForChildAt: (recoveredStack4).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) splitBarThickness.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) positionSplitBar: (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal4 isInteger]) ifTrue: [(recoveredLocal4 + 1 <= recoveredStack0) ifTrue: [recoveredLocal4 := recoveredLocal4 + 1. recoveredPC := 24] ifFalse: [recoveredLocal4 := nil. recoveredPC := 79]] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 77] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2002e540; bytecode file offset 0x7f338"
!EwSplitWindow methodsFor: 'recovered'!
childProportions
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRealized.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) setProportions.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) numWidgets.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) numWidgets.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) splitBars.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := [:recoveredBlock41Arg1 :recoveredBlock41Arg2 | 
    | recoveredBlock41Local1 recoveredBlock41Value0 recoveredBlock41Value1 recoveredBlock41Value2 recoveredBlock41Value3 recoveredBlock41Value4 recoveredBlock41Value5 recoveredBlock41Value6 recoveredBlock41Value7 recoveredBlock41Value8 recoveredBlock41Value9 recoveredBlock41Value10 recoveredBlock41Value11 recoveredBlock41Value12 recoveredBlock41Value13 recoveredBlock41Value14 recoveredBlock41Value15 recoveredBlock41Value16 recoveredBlock41Value17 recoveredBlock41Value18 recoveredBlock41Value19 |
    recoveredBlock41Value0 := recoveredBlock41Arg1.
    recoveredBlock41Value1 := (recoveredBlock41Value0) position.
    recoveredBlock41Value2 := recoveredBlock41Arg2.
    recoveredBlock41Value3 := (recoveredBlock41Value2) + (-1).
    recoveredBlock41Value4 := (self) splitBarThickness.
    recoveredBlock41Value5 := (recoveredBlock41Value3) * (recoveredBlock41Value4).
    recoveredBlock41Value6 := (recoveredBlock41Value1) - (recoveredBlock41Value5).
    recoveredBlock41Value7 := (self) usableSize.
    recoveredBlock41Value8 := (recoveredBlock41Value6) / (recoveredBlock41Value7).
    recoveredBlock41Value9 := (recoveredBlock41Value8) * (100).
    recoveredBlock41Value10 := (recoveredBlock41Value9) rounded.
    recoveredBlock41Local1 := recoveredBlock41Value10.
    recoveredBlock41Value11 := recoveredLocal3.
    recoveredBlock41Value12 := recoveredLocal2.
    recoveredBlock41Value13 := recoveredBlock41Local1.
    recoveredBlock41Value14 := recoveredLocal1.
    recoveredBlock41Value15 := (recoveredBlock41Value13) - (recoveredBlock41Value14).
    (recoveredBlock41Value11) at: (recoveredBlock41Value12) put: (recoveredBlock41Value15).
    recoveredBlock41Value16 := recoveredBlock41Local1.
    recoveredLocal1 := recoveredBlock41Value16.
    recoveredBlock41Value17 := recoveredLocal2.
    recoveredBlock41Value18 := (recoveredBlock41Value17) + (1).
    recoveredBlock41Value19 := recoveredBlock41Value18.
    recoveredLocal2 := recoveredBlock41Value19.
    recoveredBlock41Value18
].
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := 100.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20031b80; bytecode file offset 0x82984"
!EwSplitWindow methodsFor: 'recovered'!
positionSplitBars
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('PR') = ('1EF7CHI').
    recoveredLocal2 := 0.
    recoveredValue1 := (self) windowSize.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) splitBars.
    recoveredValue3 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Local1 recoveredBlock21Stack0 recoveredBlock21Stack1 recoveredBlock21Stack2 recoveredBlock21Stack3 recoveredBlock21Stack4 recoveredBlock21PC recoveredBlock21Step recoveredBlock21Done recoveredBlock21Result |
    recoveredBlock21Stack0 := self.
    recoveredBlock21PC := 28.
    recoveredBlock21Done := false.
    [recoveredBlock21Done not] whileTrue: [
        recoveredBlock21Step := recoveredBlock21PC.
        recoveredBlock21Step = 28 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal2.
            recoveredBlock21PC := 31.
        ].
        recoveredBlock21Step = 31 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) + (1).
            recoveredBlock21PC := 32.
        ].
        recoveredBlock21Step = 32 ifTrue: [
            recoveredLocal2 := recoveredBlock21Stack1.
            recoveredBlock21PC := 35.
        ].
        recoveredBlock21Step = 35 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Arg1.
            recoveredBlock21PC := 36.
        ].
        recoveredBlock21Step = 36 ifTrue: [
            recoveredBlock21Stack0 := (recoveredBlock21Stack0) preferredPositionFor: (recoveredBlock21Stack1).
            recoveredBlock21PC := 38.
        ].
        recoveredBlock21Step = 38 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Stack0.
            recoveredBlock21PC := 39.
        ].
        recoveredBlock21Step = 39 ifTrue: [
            recoveredBlock21Local1 := recoveredBlock21Stack1.
            recoveredBlock21PC := 40.
        ].
        recoveredBlock21Step = 40 ifTrue: [
            recoveredBlock21Stack1 := 0.
            recoveredBlock21PC := 42.
        ].
        recoveredBlock21Step = 42 ifTrue: [
            (recoveredBlock21Stack0 == recoveredBlock21Stack1) ifTrue: [recoveredBlock21PC := 54] ifFalse: [recoveredBlock21PC := 46].
        ].
        recoveredBlock21Step = 46 ifTrue: [
            recoveredBlock21Stack0 := self.
            recoveredBlock21PC := 47.
        ].
        recoveredBlock21Step = 47 ifTrue: [
            recoveredBlock21Stack0 := (recoveredBlock21Stack0) oldSize.
            recoveredBlock21PC := 49.
        ].
        recoveredBlock21Step = 49 ifTrue: [
            recoveredBlock21Stack1 := 0.
            recoveredBlock21PC := 51.
        ].
        recoveredBlock21Step = 51 ifTrue: [
            (recoveredBlock21Stack0 ~~ recoveredBlock21Stack1) ifTrue: [recoveredBlock21PC := 86] ifFalse: [recoveredBlock21PC := 54].
        ].
        recoveredBlock21Step = 54 ifTrue: [
            recoveredBlock21Stack0 := recoveredLocal2.
            recoveredBlock21PC := 57.
        ].
        recoveredBlock21Step = 57 ifTrue: [
            recoveredBlock21Stack1 := self.
            recoveredBlock21PC := 58.
        ].
        recoveredBlock21Step = 58 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) numWidgets.
            recoveredBlock21PC := 60.
        ].
        recoveredBlock21Step = 60 ifTrue: [
            recoveredBlock21Stack0 := (recoveredBlock21Stack0) / (recoveredBlock21Stack1).
            recoveredBlock21PC := 62.
        ].
        recoveredBlock21Step = 62 ifTrue: [
            recoveredBlock21Stack1 := self.
            recoveredBlock21PC := 63.
        ].
        recoveredBlock21Step = 63 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) usableSize.
            recoveredBlock21PC := 65.
        ].
        recoveredBlock21Step = 65 ifTrue: [
            recoveredBlock21Stack0 := (recoveredBlock21Stack0) * (recoveredBlock21Stack1).
            recoveredBlock21PC := 66.
        ].
        recoveredBlock21Step = 66 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal2.
            recoveredBlock21PC := 69.
        ].
        recoveredBlock21Step = 69 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) + (-1).
            recoveredBlock21PC := 70.
        ].
        recoveredBlock21Step = 70 ifTrue: [
            recoveredBlock21Stack2 := self.
            recoveredBlock21PC := 71.
        ].
        recoveredBlock21Step = 71 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) splitBarThickness.
            recoveredBlock21PC := 73.
        ].
        recoveredBlock21Step = 73 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) * (recoveredBlock21Stack2).
            recoveredBlock21PC := 74.
        ].
        recoveredBlock21Step = 74 ifTrue: [
            recoveredBlock21Stack0 := (recoveredBlock21Stack0) + (recoveredBlock21Stack1).
            recoveredBlock21PC := 75.
        ].
        recoveredBlock21Step = 75 ifTrue: [
            recoveredBlock21Local1 := recoveredBlock21Stack0.
            recoveredBlock21PC := 76.
        ].
        recoveredBlock21Step = 76 ifTrue: [
            recoveredBlock21Stack0 := self.
            recoveredBlock21PC := 77.
        ].
        recoveredBlock21Step = 77 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Arg1.
            recoveredBlock21PC := 78.
        ].
        recoveredBlock21Step = 78 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Local1.
            recoveredBlock21PC := 79.
        ].
        recoveredBlock21Step = 79 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) rounded.
            recoveredBlock21PC := 81.
        ].
        recoveredBlock21Step = 81 ifTrue: [
            (recoveredBlock21Stack0) positionSplitBar: (recoveredBlock21Stack1) at: (recoveredBlock21Stack2).
            recoveredBlock21PC := 83.
        ].
        recoveredBlock21Step = 83 ifTrue: [
            recoveredBlock21PC := 132.
        ].
        recoveredBlock21Step = 86 ifTrue: [
            recoveredBlock21Stack0 := recoveredBlock21Local1.
            recoveredBlock21PC := 87.
        ].
        recoveredBlock21Step = 87 ifTrue: [
            recoveredBlock21Stack1 := self.
            recoveredBlock21PC := 88.
        ].
        recoveredBlock21Step = 88 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) oldSize.
            recoveredBlock21PC := 90.
        ].
        recoveredBlock21Step = 90 ifTrue: [
            recoveredBlock21Stack0 := (recoveredBlock21Stack0) / (recoveredBlock21Stack1).
            recoveredBlock21PC := 92.
        ].
        recoveredBlock21Step = 92 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal1.
            recoveredBlock21PC := 95.
        ].
        recoveredBlock21Step = 95 ifTrue: [
            recoveredBlock21Stack0 := (recoveredBlock21Stack0) * (recoveredBlock21Stack1).
            recoveredBlock21PC := 96.
        ].
        recoveredBlock21Step = 96 ifTrue: [
            recoveredBlock21Local1 := recoveredBlock21Stack0.
            recoveredBlock21PC := 97.
        ].
        recoveredBlock21Step = 97 ifTrue: [
            recoveredBlock21Stack0 := self.
            recoveredBlock21PC := 98.
        ].
        recoveredBlock21Step = 98 ifTrue: [
            recoveredBlock21Stack0 := (recoveredBlock21Stack0) oldSize.
            recoveredBlock21PC := 100.
        ].
        recoveredBlock21Step = 100 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal1.
            recoveredBlock21PC := 103.
        ].
        recoveredBlock21Step = 103 ifTrue: [
            (recoveredBlock21Stack0 ~~ recoveredBlock21Stack1) ifTrue: [recoveredBlock21PC := 114] ifFalse: [recoveredBlock21PC := 106].
        ].
        recoveredBlock21Step = 106 ifTrue: [
            recoveredBlock21Stack0 := self.
            recoveredBlock21PC := 107.
        ].
        recoveredBlock21Step = 107 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Arg1.
            recoveredBlock21PC := 108.
        ].
        recoveredBlock21Step = 108 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Local1.
            recoveredBlock21PC := 109.
        ].
        recoveredBlock21Step = 109 ifTrue: [
            (recoveredBlock21Stack0) positionSplitBar: (recoveredBlock21Stack1) at: (recoveredBlock21Stack2).
            recoveredBlock21PC := 111.
        ].
        recoveredBlock21Step = 111 ifTrue: [
            recoveredBlock21PC := 132.
        ].
        recoveredBlock21Step = 114 ifTrue: [
            recoveredBlock21Stack0 := self.
            recoveredBlock21PC := 115.
        ].
        recoveredBlock21Step = 115 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Arg1.
            recoveredBlock21PC := 116.
        ].
        recoveredBlock21Step = 116 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 117.
        ].
        recoveredBlock21Step = 117 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) position.
            recoveredBlock21PC := 119.
        ].
        recoveredBlock21Step = 119 ifTrue: [
            recoveredBlock21Stack3 := self.
            recoveredBlock21PC := 120.
        ].
        recoveredBlock21Step = 120 ifTrue: [
            recoveredBlock21Stack3 := (recoveredBlock21Stack3) oldSize.
            recoveredBlock21PC := 122.
        ].
        recoveredBlock21Step = 122 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) / (recoveredBlock21Stack3).
            recoveredBlock21PC := 124.
        ].
        recoveredBlock21Step = 124 ifTrue: [
            recoveredBlock21Stack3 := recoveredLocal1.
            recoveredBlock21PC := 127.
        ].
        recoveredBlock21Step = 127 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) * (recoveredBlock21Stack3).
            recoveredBlock21PC := 128.
        ].
        recoveredBlock21Step = 128 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) rounded.
            recoveredBlock21PC := 130.
        ].
        recoveredBlock21Step = 130 ifTrue: [
            (recoveredBlock21Stack0) positionSplitBar: (recoveredBlock21Stack1) at: (recoveredBlock21Stack2).
            recoveredBlock21PC := 132.
        ].
        recoveredBlock21Step = 132 ifTrue: [
            recoveredBlock21Stack0 := self.
            recoveredBlock21PC := 133.
        ].
        recoveredBlock21Step = 133 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Arg1.
            recoveredBlock21PC := 134.
        ].
        recoveredBlock21Step = 134 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Local1.
            recoveredBlock21PC := 135.
        ].
        recoveredBlock21Step = 135 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) rounded.
            recoveredBlock21PC := 137.
        ].
        recoveredBlock21Step = 137 ifTrue: [
            recoveredBlock21Stack0 := (recoveredBlock21Stack0) setPreferredPositionFor: (recoveredBlock21Stack1) to: (recoveredBlock21Stack2).
            recoveredBlock21PC := 139.
        ].
        recoveredBlock21Step = 139 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack0.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (self) oldSize: (recoveredValue4).
    ^self
! !

"extwid.ic method 0x2003822c; bytecode file offset 0x8902c"
!EwSplitWindow methodsFor: 'recovered'!
constrainSplitBars
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredLocal3 := 0.
    recoveredLocal2 := 0.
    recoveredValue0 := (self) splitBars.
    recoveredValue1 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 recoveredBlock15Value6 recoveredBlock15Value7 recoveredBlock15Value8 recoveredBlock15Value9 recoveredBlock15Value10 recoveredBlock15Value11 recoveredBlock15Value12 recoveredBlock15Value13 |
    recoveredBlock15Value0 := recoveredLocal3.
    recoveredBlock15Value1 := (recoveredBlock15Value0) + (1).
    recoveredLocal3 := recoveredBlock15Value1.
    recoveredBlock15Value2 := recoveredLocal2.
    recoveredBlock15Value3 := recoveredLocal3.
    recoveredBlock15Value4 := (self) minimumSizeForChildAt: (recoveredBlock15Value3).
    recoveredBlock15Value5 := (recoveredBlock15Value2) + (recoveredBlock15Value4).
    recoveredLocal2 := recoveredBlock15Value5.
    recoveredBlock15Value6 := recoveredBlock15Arg1.
    recoveredBlock15Value7 := recoveredLocal2.
    recoveredBlock15Value8 := recoveredLocal3.
    recoveredBlock15Value9 := (recoveredBlock15Value8) + (-1).
    recoveredBlock15Value10 := (self) splitBarThickness.
    recoveredBlock15Value11 := (recoveredBlock15Value9) * (recoveredBlock15Value10).
    recoveredBlock15Value12 := (recoveredBlock15Value7) + (recoveredBlock15Value11).
    recoveredBlock15Value13 := (recoveredBlock15Value6) minPosition: (recoveredBlock15Value12).
    recoveredBlock15Value13
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := (self) numWidgets.
    recoveredValue3 := recoveredValue2.
    recoveredLocal1 := recoveredValue3.
    recoveredLocal3 := recoveredValue2.
    recoveredLocal2 := 0.
    recoveredValue4 := (self) splitBars.
    recoveredValue5 := [:recoveredBlock74Arg1 | 
    | recoveredBlock74Value0 recoveredBlock74Value1 recoveredBlock74Value2 recoveredBlock74Value3 recoveredBlock74Value4 recoveredBlock74Value5 recoveredBlock74Value6 recoveredBlock74Value7 recoveredBlock74Value8 recoveredBlock74Value9 recoveredBlock74Value10 recoveredBlock74Value11 recoveredBlock74Value12 recoveredBlock74Value13 recoveredBlock74Value14 recoveredBlock74Value15 recoveredBlock74Value16 |
    recoveredBlock74Value0 := recoveredLocal2.
    recoveredBlock74Value1 := recoveredLocal3.
    recoveredBlock74Value2 := (self) minimumSizeForChildAt: (recoveredBlock74Value1).
    recoveredBlock74Value3 := (recoveredBlock74Value0) + (recoveredBlock74Value2).
    recoveredLocal2 := recoveredBlock74Value3.
    recoveredBlock74Value4 := recoveredLocal3.
    recoveredBlock74Value5 := (recoveredBlock74Value4) + (-1).
    recoveredLocal3 := recoveredBlock74Value5.
    recoveredBlock74Value6 := recoveredBlock74Arg1.
    recoveredBlock74Value7 := (self) windowSize.
    recoveredBlock74Value8 := recoveredLocal2.
    recoveredBlock74Value9 := (recoveredBlock74Value7) - (recoveredBlock74Value8).
    recoveredBlock74Value10 := recoveredLocal1.
    recoveredBlock74Value11 := recoveredLocal3.
    recoveredBlock74Value12 := (recoveredBlock74Value10) - (recoveredBlock74Value11).
    recoveredBlock74Value13 := (self) splitBarThickness.
    recoveredBlock74Value14 := (recoveredBlock74Value12) * (recoveredBlock74Value13).
    recoveredBlock74Value15 := (recoveredBlock74Value9) - (recoveredBlock74Value14).
    recoveredBlock74Value16 := (recoveredBlock74Value6) maxPosition: (recoveredBlock74Value15).
    recoveredBlock74Value16
].
    (recoveredValue4) reverseDo: (recoveredValue5).
    recoveredValue6 := (self) splitBars.
    recoveredValue7 := [:recoveredBlock125Arg1 | 
    | recoveredBlock125Stack0 recoveredBlock125Stack1 recoveredBlock125Stack2 recoveredBlock125Stack3 recoveredBlock125Stack4 recoveredBlock125Stack5 recoveredBlock125Stack6 recoveredBlock125PC recoveredBlock125Step recoveredBlock125Done recoveredBlock125Result |
    recoveredBlock125Stack0 := self.
    recoveredBlock125PC := 132.
    recoveredBlock125Done := false.
    [recoveredBlock125Done not] whileTrue: [
        recoveredBlock125Step := recoveredBlock125PC.
        recoveredBlock125Step = 132 ifTrue: [
            recoveredBlock125Stack1 := recoveredBlock125Arg1.
            recoveredBlock125PC := 133.
        ].
        recoveredBlock125Step = 133 ifTrue: [
            recoveredBlock125Stack1 := (recoveredBlock125Stack1) minPosition.
            recoveredBlock125PC := 135.
        ].
        recoveredBlock125Step = 135 ifTrue: [
            recoveredBlock125Stack2 := 1.
            recoveredBlock125PC := 137.
        ].
        recoveredBlock125Step = 137 ifTrue: [
            recoveredBlock125Stack3 := self.
            recoveredBlock125PC := 138.
        ].
        recoveredBlock125Step = 138 ifTrue: [
            recoveredBlock125Stack3 := (recoveredBlock125Stack3) windowSize.
            recoveredBlock125PC := 140.
        ].
        recoveredBlock125Step = 140 ifTrue: [
            recoveredBlock125Stack4 := self.
            recoveredBlock125PC := 141.
        ].
        recoveredBlock125Step = 141 ifTrue: [
            recoveredBlock125Stack4 := (recoveredBlock125Stack4) splitBarThickness.
            recoveredBlock125PC := 142.
        ].
        recoveredBlock125Step = 142 ifTrue: [
            recoveredBlock125Stack3 := (recoveredBlock125Stack3) - (recoveredBlock125Stack4).
            recoveredBlock125PC := 143.
        ].
        recoveredBlock125Step = 143 ifTrue: [
            recoveredBlock125Stack1 := (recoveredBlock125Stack1) between: (recoveredBlock125Stack2) and: (recoveredBlock125Stack3).
            recoveredBlock125PC := 144.
        ].
        recoveredBlock125Step = 144 ifTrue: [
            (recoveredBlock125Stack1) ifTrue: [recoveredBlock125PC := 153] ifFalse: [recoveredBlock125PC := 148].
        ].
        recoveredBlock125Step = 148 ifTrue: [
            recoveredBlock125Stack1 := recoveredBlock125Arg1.
            recoveredBlock125PC := 149.
        ].
        recoveredBlock125Step = 149 ifTrue: [
            recoveredBlock125Stack2 := 1.
            recoveredBlock125PC := 151.
        ].
        recoveredBlock125Step = 151 ifTrue: [
            (recoveredBlock125Stack1) minPosition: (recoveredBlock125Stack2).
            recoveredBlock125PC := 153.
        ].
        recoveredBlock125Step = 153 ifTrue: [
            recoveredBlock125Stack1 := recoveredBlock125Arg1.
            recoveredBlock125PC := 154.
        ].
        recoveredBlock125Step = 154 ifTrue: [
            recoveredBlock125Stack1 := (recoveredBlock125Stack1) maxPosition.
            recoveredBlock125PC := 156.
        ].
        recoveredBlock125Step = 156 ifTrue: [
            recoveredBlock125Stack2 := recoveredBlock125Arg1.
            recoveredBlock125PC := 157.
        ].
        recoveredBlock125Step = 157 ifTrue: [
            recoveredBlock125Stack2 := (recoveredBlock125Stack2) minPosition.
            recoveredBlock125PC := 159.
        ].
        recoveredBlock125Step = 159 ifTrue: [
            recoveredBlock125Stack3 := self.
            recoveredBlock125PC := 160.
        ].
        recoveredBlock125Step = 160 ifTrue: [
            recoveredBlock125Stack3 := (recoveredBlock125Stack3) windowSize.
            recoveredBlock125PC := 162.
        ].
        recoveredBlock125Step = 162 ifTrue: [
            recoveredBlock125Stack4 := self.
            recoveredBlock125PC := 163.
        ].
        recoveredBlock125Step = 163 ifTrue: [
            recoveredBlock125Stack4 := (recoveredBlock125Stack4) splitBarThickness.
            recoveredBlock125PC := 164.
        ].
        recoveredBlock125Step = 164 ifTrue: [
            recoveredBlock125Stack3 := (recoveredBlock125Stack3) - (recoveredBlock125Stack4).
            recoveredBlock125PC := 165.
        ].
        recoveredBlock125Step = 165 ifTrue: [
            recoveredBlock125Stack1 := (recoveredBlock125Stack1) between: (recoveredBlock125Stack2) and: (recoveredBlock125Stack3).
            recoveredBlock125PC := 166.
        ].
        recoveredBlock125Step = 166 ifTrue: [
            (recoveredBlock125Stack1) ifTrue: [recoveredBlock125PC := 179] ifFalse: [recoveredBlock125PC := 170].
        ].
        recoveredBlock125Step = 170 ifTrue: [
            recoveredBlock125Stack1 := recoveredBlock125Arg1.
            recoveredBlock125PC := 171.
        ].
        recoveredBlock125Step = 171 ifTrue: [
            recoveredBlock125Stack2 := self.
            recoveredBlock125PC := 172.
        ].
        recoveredBlock125Step = 172 ifTrue: [
            recoveredBlock125Stack2 := (recoveredBlock125Stack2) windowSize.
            recoveredBlock125PC := 174.
        ].
        recoveredBlock125Step = 174 ifTrue: [
            recoveredBlock125Stack3 := self.
            recoveredBlock125PC := 175.
        ].
        recoveredBlock125Step = 175 ifTrue: [
            recoveredBlock125Stack3 := (recoveredBlock125Stack3) splitBarThickness.
            recoveredBlock125PC := 176.
        ].
        recoveredBlock125Step = 176 ifTrue: [
            recoveredBlock125Stack2 := (recoveredBlock125Stack2) - (recoveredBlock125Stack3).
            recoveredBlock125PC := 177.
        ].
        recoveredBlock125Step = 177 ifTrue: [
            (recoveredBlock125Stack1) maxPosition: (recoveredBlock125Stack2).
            recoveredBlock125PC := 179.
        ].
        recoveredBlock125Step = 179 ifTrue: [
            recoveredBlock125Stack1 := nil.
            recoveredBlock125PC := 180.
        ].
        recoveredBlock125Step = 180 ifTrue: [
            recoveredBlock125Stack2 := recoveredBlock125Arg1.
            recoveredBlock125PC := 181.
        ].
        recoveredBlock125Step = 181 ifTrue: [
            recoveredBlock125Stack2 := (recoveredBlock125Stack2) position.
            recoveredBlock125PC := 183.
        ].
        recoveredBlock125Step = 183 ifTrue: [
            recoveredBlock125Stack3 := 1.
            recoveredBlock125PC := 185.
        ].
        recoveredBlock125Step = 185 ifTrue: [
            recoveredBlock125Stack4 := self.
            recoveredBlock125PC := 186.
        ].
        recoveredBlock125Step = 186 ifTrue: [
            recoveredBlock125Stack4 := (recoveredBlock125Stack4) windowSize.
            recoveredBlock125PC := 188.
        ].
        recoveredBlock125Step = 188 ifTrue: [
            recoveredBlock125Stack5 := self.
            recoveredBlock125PC := 189.
        ].
        recoveredBlock125Step = 189 ifTrue: [
            recoveredBlock125Stack5 := (recoveredBlock125Stack5) splitBarThickness.
            recoveredBlock125PC := 190.
        ].
        recoveredBlock125Step = 190 ifTrue: [
            recoveredBlock125Stack4 := (recoveredBlock125Stack4) - (recoveredBlock125Stack5).
            recoveredBlock125PC := 191.
        ].
        recoveredBlock125Step = 191 ifTrue: [
            recoveredBlock125Stack2 := (recoveredBlock125Stack2) between: (recoveredBlock125Stack3) and: (recoveredBlock125Stack4).
            recoveredBlock125PC := 192.
        ].
        recoveredBlock125Step = 192 ifTrue: [
            (recoveredBlock125Stack2) ifTrue: [recoveredBlock125PC := 216] ifFalse: [recoveredBlock125PC := 196].
        ].
        recoveredBlock125Step = 196 ifTrue: [
            recoveredBlock125PC := 197.
        ].
        recoveredBlock125Step = 197 ifTrue: [
            recoveredBlock125Stack1 := self.
            recoveredBlock125PC := 198.
        ].
        recoveredBlock125Step = 198 ifTrue: [
            recoveredBlock125Stack2 := recoveredBlock125Arg1.
            recoveredBlock125PC := 199.
        ].
        recoveredBlock125Step = 199 ifTrue: [
            recoveredBlock125Stack3 := recoveredBlock125Arg1.
            recoveredBlock125PC := 200.
        ].
        recoveredBlock125Step = 200 ifTrue: [
            recoveredBlock125Stack3 := (recoveredBlock125Stack3) position.
            recoveredBlock125PC := 202.
        ].
        recoveredBlock125Step = 202 ifTrue: [
            recoveredBlock125Stack4 := 1.
            recoveredBlock125PC := 204.
        ].
        recoveredBlock125Step = 204 ifTrue: [
            recoveredBlock125Stack3 := (recoveredBlock125Stack3) max: (recoveredBlock125Stack4).
            recoveredBlock125PC := 206.
        ].
        recoveredBlock125Step = 206 ifTrue: [
            recoveredBlock125Stack4 := self.
            recoveredBlock125PC := 207.
        ].
        recoveredBlock125Step = 207 ifTrue: [
            recoveredBlock125Stack4 := (recoveredBlock125Stack4) windowSize.
            recoveredBlock125PC := 209.
        ].
        recoveredBlock125Step = 209 ifTrue: [
            recoveredBlock125Stack5 := self.
            recoveredBlock125PC := 210.
        ].
        recoveredBlock125Step = 210 ifTrue: [
            recoveredBlock125Stack5 := (recoveredBlock125Stack5) splitBarThickness.
            recoveredBlock125PC := 211.
        ].
        recoveredBlock125Step = 211 ifTrue: [
            recoveredBlock125Stack4 := (recoveredBlock125Stack4) - (recoveredBlock125Stack5).
            recoveredBlock125PC := 212.
        ].
        recoveredBlock125Step = 212 ifTrue: [
            recoveredBlock125Stack3 := (recoveredBlock125Stack3) min: (recoveredBlock125Stack4).
            recoveredBlock125PC := 214.
        ].
        recoveredBlock125Step = 214 ifTrue: [
            recoveredBlock125Stack1 := (recoveredBlock125Stack1) positionSplitBar: (recoveredBlock125Stack2) at: (recoveredBlock125Stack3).
            recoveredBlock125PC := 216.
        ].
        recoveredBlock125Step = 216 ifTrue: [
            recoveredBlock125Result := recoveredBlock125Stack1.
            recoveredBlock125Done := true.
        ].
    ].
    recoveredBlock125Result
].
    (recoveredValue6) do: (recoveredValue7).
    ^self
! !

"extwid.ic method 0x20038a68; bytecode file offset 0x89890"
!EwSplitWindow methodsFor: 'recovered'!
configureChildren
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) numChildren.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [:block28005f7cArg1 | 
    | block28005f7cValue0 block28005f7cValue1 block28005f7cValue2 |
    block28005f7cValue0 := block28005f7cArg1.
    block28005f7cValue1 := block28005f7cValue0.
    (block28005f7cValue1) leftOffset: (0).
    block28005f7cValue2 := (block28005f7cValue0) topOffset: (0).
    block28005f7cValue2
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) numChildren.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := [:block28005fa0Arg1 | 
    | block28005fa0Value0 block28005fa0Value1 block28005fa0Value2 block28005fa0Value3 block28005fa0Value4 block28005fa0Value5 block28005fa0Value6 block28005fa0Value7 block28005fa0Value8 |
    block28005fa0Value0 := block28005fa0Arg1.
    block28005fa0Value1 := block28005fa0Value0.
    block28005fa0Value2 := XmATTACHFORM.
    (block28005fa0Value1) leftAttachment: (block28005fa0Value2).
    block28005fa0Value3 := block28005fa0Value0.
    block28005fa0Value4 := XmATTACHFORM.
    (block28005fa0Value3) rightAttachment: (block28005fa0Value4).
    block28005fa0Value5 := block28005fa0Value0.
    block28005fa0Value6 := XmATTACHFORM.
    (block28005fa0Value5) topAttachment: (block28005fa0Value6).
    block28005fa0Value7 := XmATTACHFORM.
    block28005fa0Value8 := (block28005fa0Value0) bottomAttachment: (block28005fa0Value7).
    block28005fa0Value8
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 235.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) isHorizontal.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := [:block28005fc4Arg1 | 
    | block28005fc4Value0 block28005fc4Value1 block28005fc4Value2 block28005fc4Value3 block28005fc4Value4 block28005fc4Value5 block28005fc4Value6 |
    block28005fc4Value0 := block28005fc4Arg1.
    block28005fc4Value1 := block28005fc4Value0.
    block28005fc4Value2 := XmATTACHFORM.
    (block28005fc4Value1) leftAttachment: (block28005fc4Value2).
    block28005fc4Value3 := block28005fc4Value0.
    block28005fc4Value4 := XmATTACHFORM.
    (block28005fc4Value3) topAttachment: (block28005fc4Value4).
    block28005fc4Value5 := XmATTACHFORM.
    block28005fc4Value6 := (block28005fc4Value0) bottomAttachment: (block28005fc4Value5).
    block28005fc4Value6
].
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := [:block28005fe8Arg1 | 
    | block28005fe8Value0 block28005fe8Value1 block28005fe8Value2 block28005fe8Value3 block28005fe8Value4 block28005fe8Value5 block28005fe8Value6 |
    block28005fe8Value0 := block28005fe8Arg1.
    block28005fe8Value1 := block28005fe8Value0.
    block28005fe8Value2 := XmATTACHFORM.
    (block28005fe8Value1) rightAttachment: (block28005fe8Value2).
    block28005fe8Value3 := block28005fe8Value0.
    block28005fe8Value4 := XmATTACHFORM.
    (block28005fe8Value3) topAttachment: (block28005fe8Value4).
    block28005fe8Value5 := XmATTACHFORM.
    block28005fe8Value6 := (block28005fe8Value0) bottomAttachment: (block28005fe8Value5).
    block28005fe8Value6
].
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredPC := 196.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := [:block2800600cArg1 | 
    | block2800600cValue0 block2800600cValue1 block2800600cValue2 block2800600cValue3 block2800600cValue4 block2800600cValue5 block2800600cValue6 |
    block2800600cValue0 := block2800600cArg1.
    block2800600cValue1 := block2800600cValue0.
    block2800600cValue2 := XmATTACHFORM.
    (block2800600cValue1) topAttachment: (block2800600cValue2).
    block2800600cValue3 := block2800600cValue0.
    block2800600cValue4 := XmATTACHFORM.
    (block2800600cValue3) leftAttachment: (block2800600cValue4).
    block2800600cValue5 := XmATTACHFORM.
    block2800600cValue6 := (block2800600cValue0) rightAttachment: (block2800600cValue5).
    block2800600cValue6
].
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := [:block28006030Arg1 | 
    | block28006030Value0 block28006030Value1 block28006030Value2 block28006030Value3 block28006030Value4 block28006030Value5 block28006030Value6 |
    block28006030Value0 := block28006030Arg1.
    block28006030Value1 := block28006030Value0.
    block28006030Value2 := XmATTACHFORM.
    (block28006030Value1) bottomAttachment: (block28006030Value2).
    block28006030Value3 := block28006030Value0.
    block28006030Value4 := XmATTACHFORM.
    (block28006030Value3) leftAttachment: (block28006030Value4).
    block28006030Value5 := XmATTACHFORM.
    block28006030Value6 := (block28006030Value0) rightAttachment: (block28006030Value5).
    block28006030Value6
].
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredPC := 218.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack1) addSplitBarBetween: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 206] ifFalse: [recoveredLocal1 := nil. recoveredPC := 232]] ifFalse: [recoveredPC := 222].
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 230] ifFalse: [recoveredPC := 206].
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            (recoveredStack0) configured: (recoveredStack1).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20038bc8; bytecode file offset 0x899ec"
!EwSplitWindow methodsFor: 'recovered'!
addSplitBarBetween: recoveredArg1 and: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSplitBar.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) splitBars.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) addLast: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isHorizontal.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := [:block28006054Arg1 | 
    | block28006054Value0 block28006054Value1 block28006054Value2 block28006054Value3 block28006054Value4 block28006054Value5 block28006054Value6 |
    block28006054Value0 := block28006054Arg1.
    block28006054Value1 := block28006054Value0.
    block28006054Value2 := XmVERTICAL.
    (block28006054Value1) orientation: (block28006054Value2).
    block28006054Value3 := block28006054Value0.
    block28006054Value4 := XmATTACHFORM.
    (block28006054Value3) topAttachment: (block28006054Value4).
    block28006054Value5 := XmATTACHFORM.
    block28006054Value6 := (block28006054Value0) bottomAttachment: (block28006054Value5).
    block28006054Value6
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := [:recoveredBlock49Arg1 | 
    | recoveredBlock49Value0 recoveredBlock49Value1 recoveredBlock49Value2 recoveredBlock49Value3 recoveredBlock49Value4 recoveredBlock49Value5 recoveredBlock49Value6 recoveredBlock49Value7 recoveredBlock49Value8 |
    recoveredBlock49Value0 := recoveredBlock49Arg1.
    recoveredBlock49Value1 := recoveredBlock49Value0.
    recoveredBlock49Value2 := XmATTACHFORM.
    (recoveredBlock49Value1) topAttachment: (recoveredBlock49Value2).
    recoveredBlock49Value3 := recoveredBlock49Value0.
    recoveredBlock49Value4 := XmATTACHFORM.
    (recoveredBlock49Value3) bottomAttachment: (recoveredBlock49Value4).
    recoveredBlock49Value5 := recoveredBlock49Value0.
    recoveredBlock49Value6 := XmATTACHWIDGET.
    (recoveredBlock49Value5) rightAttachment: (recoveredBlock49Value6).
    recoveredBlock49Value7 := recoveredLocal1.
    recoveredBlock49Value8 := (recoveredBlock49Value0) rightWidget: (recoveredBlock49Value7).
    recoveredBlock49Value8
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := [:recoveredBlock83Arg1 | 
    | recoveredBlock83Value0 recoveredBlock83Value1 recoveredBlock83Value2 recoveredBlock83Value3 recoveredBlock83Value4 recoveredBlock83Value5 recoveredBlock83Value6 recoveredBlock83Value7 recoveredBlock83Value8 |
    recoveredBlock83Value0 := recoveredBlock83Arg1.
    recoveredBlock83Value1 := recoveredBlock83Value0.
    recoveredBlock83Value2 := XmATTACHFORM.
    (recoveredBlock83Value1) topAttachment: (recoveredBlock83Value2).
    recoveredBlock83Value3 := recoveredBlock83Value0.
    recoveredBlock83Value4 := XmATTACHFORM.
    (recoveredBlock83Value3) bottomAttachment: (recoveredBlock83Value4).
    recoveredBlock83Value5 := recoveredBlock83Value0.
    recoveredBlock83Value6 := XmATTACHWIDGET.
    (recoveredBlock83Value5) leftAttachment: (recoveredBlock83Value6).
    recoveredBlock83Value7 := recoveredLocal1.
    recoveredBlock83Value8 := (recoveredBlock83Value0) leftWidget: (recoveredBlock83Value7).
    recoveredBlock83Value8
].
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredPC := 212.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := [:block28006078Arg1 | 
    | block28006078Value0 block28006078Value1 block28006078Value2 block28006078Value3 block28006078Value4 block28006078Value5 block28006078Value6 |
    block28006078Value0 := block28006078Arg1.
    block28006078Value1 := block28006078Value0.
    block28006078Value2 := XmHORIZONTAL.
    (block28006078Value1) orientation: (block28006078Value2).
    block28006078Value3 := block28006078Value0.
    block28006078Value4 := XmATTACHFORM.
    (block28006078Value3) leftAttachment: (block28006078Value4).
    block28006078Value5 := XmATTACHFORM.
    block28006078Value6 := (block28006078Value0) rightAttachment: (block28006078Value5).
    block28006078Value6
].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := [:recoveredBlock147Arg1 | 
    | recoveredBlock147Value0 recoveredBlock147Value1 recoveredBlock147Value2 recoveredBlock147Value3 recoveredBlock147Value4 recoveredBlock147Value5 recoveredBlock147Value6 recoveredBlock147Value7 recoveredBlock147Value8 |
    recoveredBlock147Value0 := recoveredBlock147Arg1.
    recoveredBlock147Value1 := recoveredBlock147Value0.
    recoveredBlock147Value2 := XmATTACHFORM.
    (recoveredBlock147Value1) leftAttachment: (recoveredBlock147Value2).
    recoveredBlock147Value3 := recoveredBlock147Value0.
    recoveredBlock147Value4 := XmATTACHFORM.
    (recoveredBlock147Value3) rightAttachment: (recoveredBlock147Value4).
    recoveredBlock147Value5 := recoveredBlock147Value0.
    recoveredBlock147Value6 := XmATTACHWIDGET.
    (recoveredBlock147Value5) bottomAttachment: (recoveredBlock147Value6).
    recoveredBlock147Value7 := recoveredLocal1.
    recoveredBlock147Value8 := (recoveredBlock147Value0) bottomWidget: (recoveredBlock147Value7).
    recoveredBlock147Value8
].
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := [:recoveredBlock181Arg1 | 
    | recoveredBlock181Value0 recoveredBlock181Value1 recoveredBlock181Value2 recoveredBlock181Value3 recoveredBlock181Value4 recoveredBlock181Value5 recoveredBlock181Value6 recoveredBlock181Value7 recoveredBlock181Value8 |
    recoveredBlock181Value0 := recoveredBlock181Arg1.
    recoveredBlock181Value1 := recoveredBlock181Value0.
    recoveredBlock181Value2 := XmATTACHFORM.
    (recoveredBlock181Value1) leftAttachment: (recoveredBlock181Value2).
    recoveredBlock181Value3 := recoveredBlock181Value0.
    recoveredBlock181Value4 := XmATTACHFORM.
    (recoveredBlock181Value3) rightAttachment: (recoveredBlock181Value4).
    recoveredBlock181Value5 := recoveredBlock181Value0.
    recoveredBlock181Value6 := XmATTACHWIDGET.
    (recoveredBlock181Value5) topAttachment: (recoveredBlock181Value6).
    recoveredBlock181Value7 := recoveredLocal1.
    recoveredBlock181Value8 := (recoveredBlock181Value0) topWidget: (recoveredBlock181Value7).
    recoveredBlock181Value8
].
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := (recoveredStack0) splitBarForegroundColor.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 226] ifFalse: [recoveredPC := 218].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := (recoveredStack1) splitBarForegroundColor.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack0) foregroundColor: (recoveredStack1).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack0 := (recoveredStack0) splitBarBackgroundColor.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 240] ifFalse: [recoveredPC := 232].
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := (recoveredStack1) splitBarBackgroundColor.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            (recoveredStack0) backgroundColor: (recoveredStack1).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

