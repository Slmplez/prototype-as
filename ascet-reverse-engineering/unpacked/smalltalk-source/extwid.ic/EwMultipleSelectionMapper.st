"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x200008a0; bytecode file offset 0x516bc"
!EwMultipleSelectionMapper methodsFor: 'recovered'!
callbackReason
    | recoveredValue0 |
    recoveredValue0 := XmCRMULTIPLESELECT.
    ^recoveredValue0
! !

"extwid.ic method 0x200008ac; bytecode file offset 0x516bc"
!EwMultipleSelectionMapper methodsFor: 'recovered'!
selectionPolicy
    | recoveredValue0 |
    recoveredValue0 := XmMULTIPLESELECT.
    ^recoveredValue0
! !

"extwid.ic method 0x20000f38; bytecode file offset 0x52154"
!EwMultipleSelectionMapper methodsFor: 'recovered'!
callbackList
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := (recoveredValue0) multipleSelectionCallback.
    ^recoveredValue1
! !

"extwid.ic method 0x20004240; bytecode file offset 0x5512c"
!EwMultipleSelectionMapper methodsFor: 'recovered'!
multipleSelectionsAllowed
    ^true
! !

"extwid.ic method 0x2000447c; bytecode file offset 0x55268"
!EwMultipleSelectionMapper methodsFor: 'recovered'!
receiveButton1ReleaseAlways
    ^false
! !

"extwid.ic method 0x20005df8; bytecode file offset 0x56bf4"
!EwMultipleSelectionMapper methodsFor: 'recovered'!
button1ReleaseOn: recoveredArg1 event: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) cursorItem: (recoveredValue1) forceFullyVisible: (false).
    ^self
! !

"extwid.ic method 0x20005e18; bytecode file offset 0x56bf4"
!EwMultipleSelectionMapper methodsFor: 'recovered'!
button1MotionOn: recoveredArg1 event: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) cursorItem: (recoveredValue1) forceFullyVisible: (false).
    ^self
! !

"extwid.ic method 0x20009f0c; bytecode file offset 0x5acdc"
!EwMultipleSelectionMapper methodsFor: 'recovered'!
button1PressOn: recoveredArg1 event: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) cursorItem: (recoveredValue2) forceFullyVisible: (false).
    recoveredValue3 := recoveredArg1.
    (recoveredValue0) toggleSelectionEventOn: (recoveredValue3) commit: (true).
    ^self
! !

"extwid.ic method 0x2001202c; bytecode file offset 0x62e08"
!EwMultipleSelectionMapper methodsFor: 'recovered'!
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
            (recoveredStack0) toggleSelectionEventOn: (recoveredStack1) commit: (recoveredStack2).
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

