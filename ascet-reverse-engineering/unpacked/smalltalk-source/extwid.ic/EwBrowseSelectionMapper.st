"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20000738; bytecode file offset 0x516bc"
!EwBrowseSelectionMapper methodsFor: 'recovered'!
callbackReason
    | recoveredValue0 |
    recoveredValue0 := XmCRBROWSESELECT.
    ^recoveredValue0
! !

"extwid.ic method 0x200008f4; bytecode file offset 0x516bc"
!EwBrowseSelectionMapper methodsFor: 'recovered'!
selectionPolicy
    | recoveredValue0 |
    recoveredValue0 := XmBROWSESELECT.
    ^recoveredValue0
! !

"extwid.ic method 0x200009e4; bytecode file offset 0x517d0"
!EwBrowseSelectionMapper methodsFor: 'recovered'!
button1WasPressed
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) lastButton1PressEvent.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"extwid.ic method 0x20000f68; bytecode file offset 0x52154"
!EwBrowseSelectionMapper methodsFor: 'recovered'!
callbackList
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := (recoveredValue0) browseSelectionCallback.
    ^recoveredValue1
! !

"extwid.ic method 0x2000318c; bytecode file offset 0x53fc0"
!EwBrowseSelectionMapper methodsFor: 'recovered'!
lastButton1PressEvent
    | recoveredValue0 |
    recoveredValue0 := lastButton1PressEvent.
    ^recoveredValue0
! !

"extwid.ic method 0x20004188; bytecode file offset 0x54f5c"
!EwBrowseSelectionMapper methodsFor: 'recovered'!
motionThreshold
    ^5
! !

"extwid.ic method 0x200043ec; bytecode file offset 0x55268"
!EwBrowseSelectionMapper methodsFor: 'recovered'!
receiveButton1ReleaseAlways
    ^false
! !

"extwid.ic method 0x20005e44; bytecode file offset 0x56c10"
!EwBrowseSelectionMapper methodsFor: 'recovered'!
cursoredToItem: recoveredArg1 eventState: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) selectionEventOnlyOn: (recoveredValue1) commit: (true).
    ^self
! !

"extwid.ic method 0x20006c1c; bytecode file offset 0x57a68"
!EwBrowseSelectionMapper methodsFor: 'recovered'!
lastButton1PressEvent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    lastButton1PressEvent := recoveredValue0.
    ^self
! !

"extwid.ic method 0x2000d30c; bytecode file offset 0x5e0e0"
!EwBrowseSelectionMapper methodsFor: 'recovered'!
button1PressOn: recoveredArg1 event: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) cursorItem: (recoveredValue2) forceFullyVisible: (false).
    recoveredValue3 := recoveredArg1.
    (recoveredValue0) selectionEventOnlyOn: (recoveredValue3) commit: (true).
    recoveredValue4 := recoveredArg2.
    (self) lastButton1PressEvent: (recoveredValue4).
    ^self
! !

"extwid.ic method 0x2000e878; bytecode file offset 0x5f648"
!EwBrowseSelectionMapper methodsFor: 'recovered'!
button1PressSameLocationAs: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) lastButton1PressEvent.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) lastButton1PressEvent.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x20015dec; bytecode file offset 0x66be8"
!EwBrowseSelectionMapper methodsFor: 'recovered'!
button1ReleaseOn: recoveredArg1 event: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) button1WasPressed.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) button1PressSameLocationAs: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) lastButton1PressEvent: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) cursorItem: (recoveredStack2) forceFullyVisible: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) selectionEventOnlyOn: (recoveredStack1) commit: (recoveredStack2).
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

"extwid.ic method 0x20015e0c; bytecode file offset 0x66be8"
!EwBrowseSelectionMapper methodsFor: 'recovered'!
button1MotionOn: recoveredArg1 event: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) button1WasPressed.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) button1PressNearLocationOf: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) lastButton1PressEvent: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) cursorItem: (recoveredStack2) forceFullyVisible: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) selectionEventOnlyOn: (recoveredStack1) commit: (recoveredStack2).
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

"extwid.ic method 0x20017970; bytecode file offset 0x68744"
!EwBrowseSelectionMapper methodsFor: 'recovered'!
button1PressNearLocationOf: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) motionThreshold.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) lastButton1PressEvent.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) lastButton1PressEvent.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) between: (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20024358; bytecode file offset 0x75154"
!EwBrowseSelectionMapper methodsFor: 'recovered'!
processButton3Press: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) x.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) y.
    recoveredValue5 := (recoveredValue0) itemAtX: (recoveredValue2) y: (recoveredValue4).
    recoveredValue6 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Local1 recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15Stack4 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := recoveredArg1.
            recoveredBlock15PC := 25.
        ].
        recoveredBlock15Step = 25 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) state.
            recoveredBlock15PC := 27.
        ].
        recoveredBlock15Step = 27 ifTrue: [
            recoveredBlock15Local1 := recoveredBlock15Stack1.
            recoveredBlock15PC := 28.
        ].
        recoveredBlock15Step = 28 ifTrue: [
            recoveredBlock15Stack1 := nil.
            recoveredBlock15PC := 29.
        ].
        recoveredBlock15Step = 29 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Local1.
            recoveredBlock15PC := 30.
        ].
        recoveredBlock15Step = 30 ifTrue: [
            recoveredBlock15Stack3 := ControlMask.
            recoveredBlock15PC := 32.
        ].
        recoveredBlock15Step = 32 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) anyMask: (recoveredBlock15Stack3).
            recoveredBlock15PC := 34.
        ].
        recoveredBlock15Step = 34 ifTrue: [
            (recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 66] ifFalse: [recoveredBlock15PC := 38].
        ].
        recoveredBlock15Step = 38 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Local1.
            recoveredBlock15PC := 39.
        ].
        recoveredBlock15Step = 39 ifTrue: [
            recoveredBlock15Stack3 := ShiftMask.
            recoveredBlock15PC := 41.
        ].
        recoveredBlock15Step = 41 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) anyMask: (recoveredBlock15Stack3).
            recoveredBlock15PC := 43.
        ].
        recoveredBlock15Step = 43 ifTrue: [
            (recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 66] ifFalse: [recoveredBlock15PC := 46].
        ].
        recoveredBlock15Step = 46 ifTrue: [
            recoveredBlock15PC := 47.
        ].
        recoveredBlock15Step = 47 ifTrue: [
            recoveredBlock15Stack1 := self.
            recoveredBlock15PC := 48.
        ].
        recoveredBlock15Step = 48 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) widget.
            recoveredBlock15PC := 49.
        ].
        recoveredBlock15Step = 49 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Stack1.
            recoveredBlock15PC := 50.
        ].
        recoveredBlock15Step = 50 ifTrue: [
            (recoveredBlock15Stack2) endEdit.
            recoveredBlock15Stack2 := recoveredBlock15Stack1.
            recoveredBlock15PC := 53.
        ].
        recoveredBlock15Step = 53 ifTrue: [
            (recoveredBlock15Stack2) deselectAllItems.
            recoveredBlock15PC := 55.
        ].
        recoveredBlock15Step = 55 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 56.
        ].
        recoveredBlock15Step = 56 ifTrue: [
            recoveredBlock15Stack3 := true.
            recoveredBlock15PC := 57.
        ].
        recoveredBlock15Step = 57 ifTrue: [
            (recoveredBlock15Stack1) selectPos: (recoveredBlock15Stack2) notify: (recoveredBlock15Stack3).
            recoveredBlock15PC := 59.
        ].
        recoveredBlock15Step = 59 ifTrue: [
            recoveredBlock15Stack1 := self.
            recoveredBlock15PC := 60.
        ].
        recoveredBlock15Step = 60 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) widget.
            recoveredBlock15PC := 61.
        ].
        recoveredBlock15Step = 61 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Stack1.
            recoveredBlock15PC := 62.
        ].
        recoveredBlock15Step = 62 ifTrue: [
            (recoveredBlock15Stack2) updateDisplay.
            recoveredBlock15PC := 64.
        ].
        recoveredBlock15Step = 64 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) updateWidget.
            recoveredBlock15PC := 66.
        ].
        recoveredBlock15Step = 66 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
    (recoveredValue5) ifNotNil: (recoveredValue6).
    ^self
! !

"extwid.ic method 0x20025a9c; bytecode file offset 0x76894"
!EwBrowseSelectionMapper methodsFor: 'recovered'!
processKeyPress: recoveredArg1 keysym: recoveredArg2
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            super processKeyPress: (recoveredStack1) keysym: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := XKspace.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) cursoredItem.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) selectionEventOnlyOn: (recoveredStack1) commit: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) state.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := XKF2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := ControlMask.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) & (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := Mod1Mask.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) & (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := ShiftMask.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) & (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) cursoredItem.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) editItemAt: (recoveredStack1).
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

