"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20000774; bytecode file offset 0x516bc"
!EwCellSingleSelectionMapper methodsFor: 'recovered'!
callbackReason
    | recoveredValue0 |
    recoveredValue0 := XmCRCELLSINGLESELECT.
    ^recoveredValue0
! !

"extwid.ic method 0x20000894; bytecode file offset 0x516bc"
!EwCellSingleSelectionMapper methodsFor: 'recovered'!
selectionPolicy
    | recoveredValue0 |
    recoveredValue0 := XmCELLSINGLESELECT.
    ^recoveredValue0
! !

"extwid.ic method 0x20000d78; bytecode file offset 0x52154"
!EwCellSingleSelectionMapper methodsFor: 'recovered'!
callbackList
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := (recoveredValue0) cellSingleSelectionCallback.
    ^recoveredValue1
! !

"extwid.ic method 0x20004338; bytecode file offset 0x5512c"
!EwCellSingleSelectionMapper methodsFor: 'recovered'!
wantsDefaultTab
    ^true
! !

"extwid.ic method 0x200045c8; bytecode file offset 0x55444"
!EwCellSingleSelectionMapper methodsFor: 'recovered'!
autoCursorUp: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) autoCursorPrevious: (recoveredValue0).
    ^self
! !

"extwid.ic method 0x200045ec; bytecode file offset 0x55444"
!EwCellSingleSelectionMapper methodsFor: 'recovered'!
autoCursorDown: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) autoCursorNext: (recoveredValue0).
    ^self
! !

"extwid.ic method 0x20005dd8; bytecode file offset 0x56bf4"
!EwCellSingleSelectionMapper methodsFor: 'recovered'!
button1PressOn: recoveredArg1 event: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) cursorCell: (recoveredValue1) forceFullyVisible: (false).
    ^self
! !

"extwid.ic method 0x20009ce4; bytecode file offset 0x5ab30"
!EwCellSingleSelectionMapper methodsFor: 'recovered'!
cursorHome: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cursorHomeCell.
    recoveredValue2 := (self) widget.
    recoveredValue3 := (recoveredValue2) cursoredCell.
    (recoveredValue0) selectionEventOnlyOnCell: (recoveredValue3) commit: (true).
    ^self
! !

"extwid.ic method 0x20009cfc; bytecode file offset 0x5ab30"
!EwCellSingleSelectionMapper methodsFor: 'recovered'!
cursorPreviousColumn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cursorPreviousCellLeft.
    recoveredValue2 := (self) widget.
    recoveredValue3 := (recoveredValue2) cursoredCell.
    (recoveredValue0) selectionEventOnlyOnCell: (recoveredValue3) commit: (true).
    ^self
! !

"extwid.ic method 0x20009d14; bytecode file offset 0x5ab30"
!EwCellSingleSelectionMapper methodsFor: 'recovered'!
cursorNextColumn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cursorNextCellRight.
    recoveredValue2 := (self) widget.
    recoveredValue3 := (recoveredValue2) cursoredCell.
    (recoveredValue0) selectionEventOnlyOnCell: (recoveredValue3) commit: (true).
    ^self
! !

"extwid.ic method 0x20009d2c; bytecode file offset 0x5ab30"
!EwCellSingleSelectionMapper methodsFor: 'recovered'!
pageDown: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cursorNextPageCell.
    recoveredValue2 := (self) widget.
    recoveredValue3 := (recoveredValue2) cursoredCell.
    (recoveredValue0) selectionEventOnlyOnCell: (recoveredValue3) commit: (true).
    ^self
! !

"extwid.ic method 0x20009d44; bytecode file offset 0x5ab30"
!EwCellSingleSelectionMapper methodsFor: 'recovered'!
pageUp: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cursorPreviousPageCell.
    recoveredValue2 := (self) widget.
    recoveredValue3 := (recoveredValue2) cursoredCell.
    (recoveredValue0) selectionEventOnlyOnCell: (recoveredValue3) commit: (true).
    ^self
! !

"extwid.ic method 0x20009d5c; bytecode file offset 0x5ab30"
!EwCellSingleSelectionMapper methodsFor: 'recovered'!
cursorEnd: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cursorEndCell.
    recoveredValue2 := (self) widget.
    recoveredValue3 := (recoveredValue2) cursoredCell.
    (recoveredValue0) selectionEventOnlyOnCell: (recoveredValue3) commit: (true).
    ^self
! !

"extwid.ic method 0x20009ec0; bytecode file offset 0x5aca4"
!EwCellSingleSelectionMapper methodsFor: 'recovered'!
button1MotionOn: recoveredArg1 event: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) cursorCell: (recoveredValue2) forceFullyVisible: (false).
    recoveredValue3 := recoveredArg1.
    (recoveredValue0) selectionEventOnlyOnCell: (recoveredValue3) commit: (false).
    ^self
! !

"extwid.ic method 0x20011378; bytecode file offset 0x621c4"
!EwCellSingleSelectionMapper methodsFor: 'recovered'!
autoCursorPrevious: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cursorPreviousCell.
    (recoveredValue0) positionEditWidget.
    recoveredValue2 := (self) widget.
    recoveredValue3 := (recoveredValue2) cursoredCell.
    (self) previousItemHit: (recoveredValue3).
    recoveredValue4 := (self) widget.
    recoveredValue5 := (self) previousItemHit.
    (recoveredValue4) selectionEventOnlyOnCell: (recoveredValue5) commit: (false).
    ^self
! !

"extwid.ic method 0x2001139c; bytecode file offset 0x621c4"
!EwCellSingleSelectionMapper methodsFor: 'recovered'!
autoCursorNext: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cursorNextCell.
    (recoveredValue0) positionEditWidget.
    recoveredValue2 := (self) widget.
    recoveredValue3 := (recoveredValue2) cursoredCell.
    (self) previousItemHit: (recoveredValue3).
    recoveredValue4 := (self) widget.
    recoveredValue5 := (self) previousItemHit.
    (recoveredValue4) selectionEventOnlyOnCell: (recoveredValue5) commit: (false).
    ^self
! !

"extwid.ic method 0x200113c0; bytecode file offset 0x621c4"
!EwCellSingleSelectionMapper methodsFor: 'recovered'!
autoCursorLeft: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cursorPreviousCellLeft.
    (recoveredValue0) positionEditWidget.
    recoveredValue2 := (self) widget.
    recoveredValue3 := (recoveredValue2) cursoredCell.
    (self) previousItemHit: (recoveredValue3).
    recoveredValue4 := (self) widget.
    recoveredValue5 := (self) previousItemHit.
    (recoveredValue4) selectionEventOnlyOnCell: (recoveredValue5) commit: (false).
    ^self
! !

"extwid.ic method 0x200113e4; bytecode file offset 0x621c4"
!EwCellSingleSelectionMapper methodsFor: 'recovered'!
autoCursorRight: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cursorNextCellRight.
    (recoveredValue0) positionEditWidget.
    recoveredValue2 := (self) widget.
    recoveredValue3 := (recoveredValue2) cursoredCell.
    (self) previousItemHit: (recoveredValue3).
    recoveredValue4 := (self) widget.
    recoveredValue5 := (self) previousItemHit.
    (recoveredValue4) selectionEventOnlyOnCell: (recoveredValue5) commit: (false).
    ^self
! !

"extwid.ic method 0x200115cc; bytecode file offset 0x6239c"
!EwCellSingleSelectionMapper methodsFor: 'recovered'!
button1ReleaseOn: recoveredArg1 event: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := (self) widget.
    recoveredBlock7Value1 := recoveredArg1.
    recoveredBlock7Value2 := (recoveredBlock7Value0) cursorCell: (recoveredBlock7Value1) forceFullyVisible: (false).
    recoveredBlock7Value2
].
    (self) selectWithEditCheck: (recoveredValue0) doBetween: (recoveredValue1).
    ^self
! !

"extwid.ic method 0x200164a4; bytecode file offset 0x672b0"
!EwCellSingleSelectionMapper methodsFor: 'recovered'!
cursorNext: recoveredArg1
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
            recoveredStack2 := Mod1Mask.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) anyMask: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 19].
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
            recoveredStack1 := super cursorNext: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) cursorNextCell.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) cursoredCell.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) selectionEventOnlyOnCell: (recoveredStack1) commit: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x200164cc; bytecode file offset 0x672b0"
!EwCellSingleSelectionMapper methodsFor: 'recovered'!
cursorPrevious: recoveredArg1
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
            recoveredStack2 := Mod1Mask.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) anyMask: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 19].
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
            recoveredStack1 := super cursorPrevious: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) cursorPreviousCell.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) cursoredCell.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) selectionEventOnlyOnCell: (recoveredStack1) commit: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2002969c; bytecode file offset 0x7a498"
!EwCellSingleSelectionMapper methodsFor: 'recovered'!
processKeyPress: recoveredArg1 keysym: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := XKTab.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := ControlMask.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) & (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) cursorTab: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := XKF2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := ControlMask.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) & (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := Mod1Mask.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) & (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := ShiftMask.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) & (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedCell.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) widget.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := (recoveredStack2) selectedCell.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) selectWithEditCheck: (recoveredStack2) doBetween: (recoveredStack3).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            super processKeyPress: (recoveredStack1) keysym: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

