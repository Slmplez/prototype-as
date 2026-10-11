"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013fa4; bytecode file offset 0x912098"
!EtasCellBlockSelectionMapper methodsFor: 'recovered'!
selectionPolicy
    | recoveredValue0 |
    recoveredValue0 := RbCellBlockSelect.
    ^recoveredValue0
! !

"ASDBase.ic method 0x201aca88; bytecode file offset 0xaa9350"
!EtasCellBlockSelectionMapper methodsFor: 'recovered'!
selectExtendedWithEditCheck: recoveredArg1 doBetween: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCellSelected: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) value.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 20].
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
            (recoveredStack0) triggerBeginEditCallback.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) startActionsOnEditWidget.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028e1b8; bytecode file offset 0xb8aab4"
!EtasCellBlockSelectionMapper methodsFor: 'recovered'!
cursorRight: recoveredArg1
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
            recoveredStack1 := super cursorRight: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := ShiftMask.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) cursorNextColumnWrapping: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) cursorNextColumn: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028e1e0; bytecode file offset 0xb8aab4"
!EtasCellBlockSelectionMapper methodsFor: 'recovered'!
cursorLeft: recoveredArg1
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
            recoveredStack1 := super cursorLeft: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := ShiftMask.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) cursorPreviousColumnWrapping: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) cursorPreviousColumn: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2031cd30; bytecode file offset 0xc19644"
!EtasCellBlockSelectionMapper methodsFor: 'recovered'!
cursorNextColumnWrapping: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) cursorNextCellRightWrapping.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := ShiftMask.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) anyMask: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) anchorCell.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 20].
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
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) cursoredCell.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) marqueeCell: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedBlock.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) selectionEventWithin: (recoveredStack1) commit: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) cursoredCell.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) anchorCell: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) cursoredCell.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) selectionEventOnlyOnCell: (recoveredStack1) commit: (recoveredStack2) beginEdit: (recoveredStack3).
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

"ASDBase.ic method 0x2031cd64; bytecode file offset 0xc19644"
!EtasCellBlockSelectionMapper methodsFor: 'recovered'!
cursorPreviousColumnWrapping: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) cursorNextCellLeftWrapping.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := ShiftMask.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) anyMask: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) anchorCell.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 20].
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
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) cursoredCell.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) marqueeCell: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedBlock.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) selectionEventWithin: (recoveredStack1) commit: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) cursoredCell.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) anchorCell: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) cursoredCell.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) selectionEventOnlyOnCell: (recoveredStack1) commit: (recoveredStack2) beginEdit: (recoveredStack3).
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

"ASDBase.ic method 0x205c9d84; bytecode file offset 0xec66e0"
!EtasCellBlockSelectionMapper methodsFor: 'recovered'!
processKeyPress: recoveredArg1 keysym: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := XKTab.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := ControlMask.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 24].
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
            (recoveredStack1) endEdit.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := XKReturn.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := ControlMask.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := XKspace.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := XKF2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 139] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := ControlMask.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 139] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := Mod1Mask.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 139] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := ShiftMask.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 139] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) anchorCell.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := (recoveredStack2) widget.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := (recoveredStack2) cursoredCell.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) anchorCell: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := (recoveredStack2) anchorCell.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) selectWithEditCheck: (recoveredStack2) doBetween: (recoveredStack3).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredPC := 137.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := (recoveredStack2) anchorCell.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := (recoveredStack3) widget.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := (recoveredStack3) cursoredCell.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack5 := true.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack1) extendSelectionFrom: (recoveredStack2) to: (recoveredStack3) commit: (recoveredStack4) beginEdit: (recoveredStack5).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1) startActionsOnEditWidget.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) character.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 333] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) isAlphaNumeric.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 154].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := $-.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := $..
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 333].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := ControlMask.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 333] ifFalse: [recoveredPC := 180].
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := Mod1Mask.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 333] ifFalse: [recoveredPC := 190].
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := (recoveredStack2) marqueeCell.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack1) selectExtendedWithEditCheck: (recoveredStack2) doBetween: (recoveredStack3).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := (recoveredStack1) editWidget.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 278] ifFalse: [recoveredPC := 208].
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) editWidget.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) isText.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 218] ifFalse: [recoveredPC := 278].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := (recoveredStack1) editWidget.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := Locale.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := (recoveredStack2) current.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack2 := (recoveredStack2) preferredStringClass.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack1) setString: (recoveredStack2).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := (recoveredStack1) editWidget.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := (recoveredStack1) checkCharacter: (recoveredStack2).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCharacter.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 248] ifFalse: [recoveredPC := 252].
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 256] ifFalse: [recoveredPC := 278].
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := (recoveredStack1) editWidget.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            (recoveredStack2) setInputFocus.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            (recoveredStack2) setString: (recoveredStack3).
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            (recoveredStack1) setSelection: (recoveredStack2).
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := (recoveredStack1) editWidget.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 323] ifFalse: [recoveredPC := 286].
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack1 := (recoveredStack1) editWidget.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCwComboBox.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 296] ifFalse: [recoveredPC := 323].
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack1 := (recoveredStack1) editWidget.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack5 := (recoveredStack5) widget.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack5 := (recoveredStack5) editWidget.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack5 := (recoveredStack5) items.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack3 := (recoveredStack3) getSuitableStringFor: (recoveredStack4) in: (recoveredStack5).
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            (recoveredStack2) setString: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            (recoveredStack2) dropDown: (recoveredStack3).
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            (recoveredStack1) setInputFocus.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 333] ifFalse: [recoveredPC := 328].
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            (recoveredStack1) cancelEdit.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            super processKeyPress: (recoveredStack1) keysym: (recoveredStack2).
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

