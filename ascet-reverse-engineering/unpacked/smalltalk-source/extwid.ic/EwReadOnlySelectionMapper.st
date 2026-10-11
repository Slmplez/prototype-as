"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20000834; bytecode file offset 0x516bc"
!EwReadOnlySelectionMapper methodsFor: 'recovered'!
selectionPolicy
    | recoveredValue0 |
    recoveredValue0 := XmREADONLYSELECT.
    ^recoveredValue0
! !

"extwid.ic method 0x200016a8; bytecode file offset 0x526c8"
!EwReadOnlySelectionMapper methodsFor: 'recovered'!
callbackList
    (self) shouldNotImplement.
    ^self
! !

"extwid.ic method 0x200017b0; bytecode file offset 0x526c8"
!EwReadOnlySelectionMapper methodsFor: 'recovered'!
callbackReason
    (self) shouldNotImplement.
    ^self
! !

"extwid.ic method 0x20004434; bytecode file offset 0x55268"
!EwReadOnlySelectionMapper methodsFor: 'recovered'!
receiveButton1ReleaseAlways
    ^false
! !

"extwid.ic method 0x20005de8; bytecode file offset 0x56bf4"
!EwReadOnlySelectionMapper methodsFor: 'recovered'!
button1MotionOn: recoveredArg1 event: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) cursorItem: (recoveredValue1) forceFullyVisible: (false).
    ^self
! !

"extwid.ic method 0x20005e08; bytecode file offset 0x56bf4"
!EwReadOnlySelectionMapper methodsFor: 'recovered'!
button1PressOn: recoveredArg1 event: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) cursorItem: (recoveredValue1) forceFullyVisible: (false).
    ^self
! !

"extwid.ic method 0x20005e28; bytecode file offset 0x56bf4"
!EwReadOnlySelectionMapper methodsFor: 'recovered'!
button1ReleaseOn: recoveredArg1 event: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) cursorItem: (recoveredValue1) forceFullyVisible: (false).
    ^self
! !

"extwid.ic method 0x2000e994; bytecode file offset 0x5f768"
!EwReadOnlySelectionMapper methodsFor: 'recovered'!
processButtonDoubleClick: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) button.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) doubleClickTriggered.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) doubleClickTriggered.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) button.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

