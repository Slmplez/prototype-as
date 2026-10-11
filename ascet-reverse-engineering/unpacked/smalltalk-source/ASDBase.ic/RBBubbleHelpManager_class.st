"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000f60; bytecode file offset 0x8ffcfc"
!RBBubbleHelpManager class methodsFor: 'recovered'!
genConstants
    ^self
! !

"ASDBase.ic method 0x200542cc; bytecode file offset 0x951190"
!RBBubbleHelpManager class methodsFor: 'recovered'!
bubbleListDelayTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    BubbleListDelayTime := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20054740; bytecode file offset 0x951190"
!RBBubbleHelpManager class methodsFor: 'recovered'!
bubbleDelayTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    BubbleDelayTime := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2008ff40; bytecode file offset 0x98c83c"
!RBBubbleHelpManager class methodsFor: 'recovered'!
createInstance
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredValue2 := recoveredValue1.
    theInstance := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2013a05c; bytecode file offset 0xa36920"
!RBBubbleHelpManager class methodsFor: 'recovered'!
bubbleDelayTime
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := BubbleDelayTime.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ASDGeneralOptions.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionBubbleHelpDelay.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            BubbleDelayTime := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := BubbleDelayTime.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013a1cc; bytecode file offset 0xa36a84"
!RBBubbleHelpManager class methodsFor: 'recovered'!
bubbleListDelayTime
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := BubbleListDelayTime.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 500.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            BubbleListDelayTime := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := BubbleListDelayTime.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

