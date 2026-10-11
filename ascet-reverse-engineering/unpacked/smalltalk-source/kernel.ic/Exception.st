"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20002aa0; bytecode file offset 0x4d9b4"
!Exception methodsFor: 'recovered'!
signal
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) exception.
    recoveredValue1 := (recoveredValue0) signalFor: (self).
    ^recoveredValue1
! !

"kernel.ic method 0x20002ae8; bytecode file offset 0x4d9fc"
!Exception methodsFor: 'recovered'!
resignalAs: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) error: ('Not yet implemented').
    ^recoveredValue0
! !

"kernel.ic method 0x20003b24; bytecode file offset 0x4ea48"
!Exception methodsFor: 'recovered'!
pass
    | recoveredValue0 |
    recoveredValue0 := super signal.
    ^recoveredValue0
! !

"kernel.ic method 0x20004164; bytecode file offset 0x4f070"
!Exception methodsFor: 'recovered'!
basicTag
    | recoveredValue0 |
    recoveredValue0 := tag.
    ^recoveredValue0
! !

"kernel.ic method 0x20004830; bytecode file offset 0x4f794"
!Exception methodsFor: 'recovered'!
isResumable
    ^false
! !

"kernel.ic method 0x200053ec; bytecode file offset 0x50300"
!Exception methodsFor: 'recovered'!
isNested
    (self) error: ('Not yet implemented').
    ^false
! !

"kernel.ic method 0x20005428; bytecode file offset 0x5033c"
!Exception methodsFor: 'recovered'!
outer
    (self) error: ('Not yet implemented').
    ^self
! !

"kernel.ic method 0x20005624; bytecode file offset 0x50538"
!Exception methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) exceptionalEvent.
    exception := recoveredValue1.
    ^self
! !

"kernel.ic method 0x2000586c; bytecode file offset 0x50780"
!Exception methodsFor: 'recovered'!
retryUsing: recoveredArg1
    (self) error: ('Not yet implemented').
    ^self
! !

"kernel.ic method 0x200079f0; bytecode file offset 0x52914"
!Exception methodsFor: 'recovered'!
tag: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    tag := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20008564; bytecode file offset 0x53480"
!Exception methodsFor: 'recovered'!
signal: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    (self) arguments: (recoveredValue2).
    recoveredValue3 := (self) signal.
    ^recoveredValue3
! !

"kernel.ic method 0x20008e7c; bytecode file offset 0x53d9c"
!Exception methodsFor: 'recovered'!
defaultAction
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Processor.
    recoveredValue1 := (recoveredValue0) activeProcess.
    recoveredValue2 := (self) description.
    recoveredValue3 := (self) isResumable.
    (recoveredValue1) reportError: (recoveredValue2) resumable: (recoveredValue3).
    ^self
! !

"kernel.ic method 0x2000a460; bytecode file offset 0x55374"
!Exception methodsFor: 'recovered'!
tag
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := tag.
    recoveredValue1 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := (self) messageText.
    recoveredBlock6Value0
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x2000f1f8; bytecode file offset 0x5a124"
!Exception methodsFor: 'recovered'!
evaluateDefaultHandler: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [
    ^self
].
    (self) signalBlock: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) value: (self).
    (self) resumeWith: (recoveredValue2).
    ^self
! !

"kernel.ic method 0x2000f20c; bytecode file offset 0x5a124"
!Exception methodsFor: 'recovered'!
evaluate: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [
    ^self
].
    (self) signalBlock: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) value: (self).
    (self) exitWith: (recoveredValue2).
    ^self
! !

"kernel.ic method 0x20012480; bytecode file offset 0x5d3a4"
!Exception methodsFor: 'recovered'!
description
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) asString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) messageText.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := ': '.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

