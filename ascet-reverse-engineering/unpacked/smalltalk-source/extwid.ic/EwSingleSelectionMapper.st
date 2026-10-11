"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x2000084c; bytecode file offset 0x516bc"
!EwSingleSelectionMapper methodsFor: 'recovered'!
callbackReason
    | recoveredValue0 |
    recoveredValue0 := XmCRSINGLESELECT.
    ^recoveredValue0
! !

"extwid.ic method 0x200008c4; bytecode file offset 0x516bc"
!EwSingleSelectionMapper methodsFor: 'recovered'!
selectionPolicy
    | recoveredValue0 |
    recoveredValue0 := XmSINGLESELECT.
    ^recoveredValue0
! !

"extwid.ic method 0x20000e68; bytecode file offset 0x52154"
!EwSingleSelectionMapper methodsFor: 'recovered'!
callbackList
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := (recoveredValue0) singleSelectionCallback.
    ^recoveredValue1
! !

"extwid.ic method 0x2000812c; bytecode file offset 0x58efc"
!EwSingleSelectionMapper methodsFor: 'recovered'!
space: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := (self) widget.
    recoveredValue2 := (recoveredValue1) cursoredItem.
    (recoveredValue0) selectionEventOnlyOn: (recoveredValue2) commit: (true).
    ^self
! !

"extwid.ic method 0x20009364; bytecode file offset 0x5a134"
!EwSingleSelectionMapper methodsFor: 'recovered'!
cursorNext: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    super cursorNext: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) space: (recoveredValue1).
    ^self
! !

"extwid.ic method 0x20009eac; bytecode file offset 0x5aca4"
!EwSingleSelectionMapper methodsFor: 'recovered'!
button1MotionOn: recoveredArg1 event: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) cursorItem: (recoveredValue2) forceFullyVisible: (false).
    recoveredValue3 := recoveredArg1.
    (recoveredValue0) selectionEventOnlyOn: (recoveredValue3) commit: (false).
    ^self
! !

"extwid.ic method 0x20009ed4; bytecode file offset 0x5aca4"
!EwSingleSelectionMapper methodsFor: 'recovered'!
button1PressOn: recoveredArg1 event: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) cursorItem: (recoveredValue2) forceFullyVisible: (false).
    recoveredValue3 := recoveredArg1.
    (recoveredValue0) selectionEventOnlyOn: (recoveredValue3) commit: (false).
    ^self
! !

"extwid.ic method 0x20009ef8; bytecode file offset 0x5acdc"
!EwSingleSelectionMapper methodsFor: 'recovered'!
button1ReleaseOn: recoveredArg1 event: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) cursorItem: (recoveredValue2) forceFullyVisible: (false).
    recoveredValue3 := recoveredArg1.
    (recoveredValue0) selectionEventOnlyOn: (recoveredValue3) commit: (true).
    ^self
! !

"extwid.ic method 0x2000f3a4; bytecode file offset 0x601a0"
!EwSingleSelectionMapper methodsFor: 'recovered'!
autoCursorNext: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    (self) cursorNext: (recoveredValue0).
    recoveredValue1 := (self) widget.
    recoveredValue2 := (recoveredValue1) cursoredItem.
    (self) previousItemHit: (recoveredValue2).
    recoveredValue3 := (self) widget.
    recoveredValue4 := (self) previousItemHit.
    (recoveredValue3) selectionEventOnlyOn: (recoveredValue4) commit: (false).
    ^self
! !

"extwid.ic method 0x2000f3c4; bytecode file offset 0x601a0"
!EwSingleSelectionMapper methodsFor: 'recovered'!
autoCursorPrevious: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    (self) cursorPrevious: (recoveredValue0).
    recoveredValue1 := (self) widget.
    recoveredValue2 := (recoveredValue1) cursoredItem.
    (self) previousItemHit: (recoveredValue2).
    recoveredValue3 := (self) widget.
    recoveredValue4 := (self) previousItemHit.
    (recoveredValue3) selectionEventOnlyOn: (recoveredValue4) commit: (false).
    ^self
! !

"extwid.ic method 0x2000f6fc; bytecode file offset 0x604d4"
!EwSingleSelectionMapper methodsFor: 'recovered'!
processKeyPress: recoveredArg1 keysym: recoveredArg2
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
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) space: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20018588; bytecode file offset 0x69370"
!EwSingleSelectionMapper methodsFor: 'recovered'!
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
            (recoveredStack0) cursorPrevious.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack1 := (recoveredStack1) cursoredItem.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) cursoredToItem: (recoveredStack1) eventState: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) space: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

