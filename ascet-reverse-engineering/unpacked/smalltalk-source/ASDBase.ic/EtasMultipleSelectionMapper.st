"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20004090; bytecode file offset 0x90206c"
!EtasMultipleSelectionMapper methodsFor: 'recovered'!
initiateAutoScroll: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20033294; bytecode file offset 0x934580"
!EtasMultipleSelectionMapper methodsFor: 'recovered'!
selectionPolicy
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) selectionPolicy.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200335e4; bytecode file offset 0x934580"
!EtasMultipleSelectionMapper methodsFor: 'recovered'!
callbackList
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := (recoveredValue0) multipleSelectionCallback.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006e908; bytecode file offset 0x96b41c"
!EtasMultipleSelectionMapper methodsFor: 'recovered'!
activeCtrlMask
    | recoveredValue0 |
    recoveredValue0 := activeCtrlMask.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006edc4; bytecode file offset 0x96b8a0"
!EtasMultipleSelectionMapper methodsFor: 'recovered'!
ctrlMaskAndMotion
    | recoveredValue0 |
    recoveredValue0 := ctrlMaskAndMotion.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f010; bytecode file offset 0x96bc1c"
!EtasMultipleSelectionMapper methodsFor: 'recovered'!
reactToMousePress
    | recoveredValue0 |
    recoveredValue0 := reactToMousePress.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c5180; bytecode file offset 0x9c1afc"
!EtasMultipleSelectionMapper methodsFor: 'recovered'!
activeCtrlMask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    activeCtrlMask := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c54a0; bytecode file offset 0x9c1f64"
!EtasMultipleSelectionMapper methodsFor: 'recovered'!
ctrlMaskAndMotion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ctrlMaskAndMotion := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c57d4; bytecode file offset 0x9c22c8"
!EtasMultipleSelectionMapper methodsFor: 'recovered'!
reactToMousePress: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    reactToMousePress := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20146b60; bytecode file offset 0xa43428"
!EtasMultipleSelectionMapper methodsFor: 'recovered'!
processInputEvent: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := super processInputEvent: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20185b8c; bytecode file offset 0xa82454"
!EtasMultipleSelectionMapper methodsFor: 'recovered'!
initializeForWidget: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    super initializeForWidget: (recoveredValue0).
    (self) activeCtrlMask: (false).
    (self) reactToMousePress: (false).
    (self) ctrlMaskAndMotion: (false).
    ^self
! !

"ASDBase.ic method 0x2026e1e4; bytecode file offset 0xb6aab4"
!EtasMultipleSelectionMapper methodsFor: 'recovered'!
processKeyPress: recoveredArg1 keysym: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := XKspace.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) widget.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) cursoredItem.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) toggleSelectionEventOn: (recoveredStack2) commit: (recoveredStack3).
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
            recoveredStack2 := EwIconTree.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) widget.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) cursoredItem.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) cursorItem: (recoveredStack2) forceFullyVisible: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026e230; bytecode file offset 0xb6ab04"
!EtasMultipleSelectionMapper methodsFor: 'recovered'!
cursoredToItem: recoveredArg1 eventState: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := ShiftMask.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) anyMask: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) anchor.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) resetSelectionFrom: (recoveredStack2) to: (recoveredStack3) commit: (recoveredStack4).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := ControlMask.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) anyMask: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) widget.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) cursoredItem.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) toggleSelectionEventOn: (recoveredStack2) commit: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d9df8; bytecode file offset 0xbd66d0"
!EtasMultipleSelectionMapper methodsFor: 'recovered'!
button1MotionOn: recoveredArg1 state: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := ControlMask.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) anyMask: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ctrlMaskAndMotion: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) cursorItem: (recoveredStack2) forceFullyVisible: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) selecting.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) anchor.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) extendSelectionFrom: (recoveredStack2) to: (recoveredStack3) commit: (recoveredStack4).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) anchor.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) extendDeselectionFrom: (recoveredStack2) to: (recoveredStack3) commit: (recoveredStack4).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20503530; bytecode file offset 0xdffe2c"
!EtasMultipleSelectionMapper methodsFor: 'recovered'!
button1PressOn: recoveredArg1 event: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
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
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := ControlMask.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) anyMask: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) activeCtrlMask: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isItemHighlighted: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack1 := ControlMask.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) anyMask: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := ShiftMask.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) anyMask: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) cursorItem: (recoveredStack1) forceFullyVisible: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) anchor.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) isItemHighlighted: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) selecting: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) selecting.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) anchor.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) extendSelectionFrom: (recoveredStack1) to: (recoveredStack2) commit: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredPC := 89.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) anchor.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) extendDeselectionFrom: (recoveredStack1) to: (recoveredStack2) commit: (recoveredStack3).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredPC := 117.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) anchor: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) cursorItem: (recoveredStack2) forceFullyVisible: (recoveredStack3).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) toggleSelectionEventOn: (recoveredStack1) commit: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) isItemHighlighted: (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) selecting: (recoveredStack1).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredPC := 172.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := ShiftMask.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) anyMask: (recoveredStack1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) cursorItem: (recoveredStack1) forceFullyVisible: (recoveredStack2).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := (recoveredStack2) anchor.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack1) resetSelectionFrom: (recoveredStack2) to: (recoveredStack3) commit: (recoveredStack4).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0) selecting: (recoveredStack1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredPC := 172.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack0) anchor: (recoveredStack1).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack1) cursorItem: (recoveredStack2) forceFullyVisible: (recoveredStack3).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack0) selectionEventOnlyOn: (recoveredStack1) commit: (recoveredStack2).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack0) selecting: (recoveredStack1).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack0) reactToMousePress: (recoveredStack1).
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

"ASDBase.ic method 0x2055727c; bytecode file offset 0xe53b8c"
!EtasMultipleSelectionMapper methodsFor: 'recovered'!
button1ReleaseOn: recoveredArg1 event: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
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
            recoveredStack0 := (recoveredStack0) reactToMousePress.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) reactToMousePress: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) activeCtrlMask: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ctrlMaskAndMotion: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := ControlMask.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) anyMask: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) activeCtrlMask.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) | (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := ShiftMask.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) anyMask: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) cursorItem: (recoveredStack1) forceFullyVisible: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) anchor.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) isItemHighlighted: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) selecting: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) selecting.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) anchor.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) extendSelectionFrom: (recoveredStack1) to: (recoveredStack2) commit: (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredPC := 93.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) anchor.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) extendDeselectionFrom: (recoveredStack1) to: (recoveredStack2) commit: (recoveredStack3).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredPC := 159.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) cursorItem: (recoveredStack1) forceFullyVisible: (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) ctrlMaskAndMotion.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 117] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) toggleSelectionEventOn: (recoveredStack1) commit: (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) isItemHighlighted: (recoveredStack2).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack0) selecting: (recoveredStack1).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) ctrlMaskAndMotion.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 159].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) selecting.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) anchor.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack0) extendSelectionFrom: (recoveredStack1) to: (recoveredStack2) commit: (recoveredStack3).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredPC := 159.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) anchor.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack0) extendDeselectionFrom: (recoveredStack1) to: (recoveredStack2) commit: (recoveredStack3).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredPC := 214.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := ShiftMask.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := (recoveredStack0) anyMask: (recoveredStack1).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 194].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack0) cursorItem: (recoveredStack1) forceFullyVisible: (recoveredStack2).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := (recoveredStack2) anchor.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack1) resetSelectionFrom: (recoveredStack2) to: (recoveredStack3) commit: (recoveredStack4).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack0) selecting: (recoveredStack1).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredPC := 214.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack0) anchor: (recoveredStack1).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack1) cursorItem: (recoveredStack2) forceFullyVisible: (recoveredStack3).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            (recoveredStack0) selectionEventOnlyOn: (recoveredStack1) commit: (recoveredStack2).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack0) selecting: (recoveredStack1).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack1) reactToMousePress: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack1) activeCtrlMask: (recoveredStack2).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack0) ctrlMaskAndMotion: (recoveredStack1).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

