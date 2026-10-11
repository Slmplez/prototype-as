"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002b00; bytecode file offset 0x8ffcfc"
!TobTBShortcutGroupButtonWidget methodsFor: 'recovered'!
activity
    ^self
! !

"ASDBase.ic method 0x2007602c; bytecode file offset 0x9757c8"
!TobTBShortcutGroupButtonWidget methodsFor: 'recovered'!
isWidgetUnderPointerFriendly
    ^true
! !

"ASDBase.ic method 0x200af090; bytecode file offset 0x9aba2c"
!TobTBShortcutGroupButtonWidget methodsFor: 'recovered'!
buttonPressed: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) basicButtonPressed: (recoveredValue0) clientData: (recoveredValue1) callData: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b2f3c; bytecode file offset 0x9af848"
!TobTBShortcutGroupButtonWidget methodsFor: 'recovered'!
press
    (self) isPressed: (true).
    (self) draw.
    ^self
! !

"ASDBase.ic method 0x200c7448; bytecode file offset 0x9c3d64"
!TobTBShortcutGroupButtonWidget methodsFor: 'recovered'!
releasedCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    xmNreleasedCallback := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ca0e0; bytecode file offset 0x9c69a4"
!TobTBShortcutGroupButtonWidget methodsFor: 'recovered'!
buttonReleased: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    (self) basicButtonReleased: (recoveredValue0) clientData: (recoveredValue1) callData: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2015df7c; bytecode file offset 0xa5a864"
!TobTBShortcutGroupButtonWidget methodsFor: 'recovered'!
releasedCallback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNreleasedCallback.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) releasedCallback: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := xmNreleasedCallback.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

