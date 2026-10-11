"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"async.ic method 0x2000045c; bytecode file offset 0x75f4"
!AcoResourceGroup methodsFor: 'recovered'!
thread
    | recoveredValue0 |
    recoveredValue0 := thread.
    ^recoveredValue0
! !

"async.ic method 0x20000478; bytecode file offset 0x7610"
!AcoResourceGroup methodsFor: 'recovered'!
asyncBlock
    | recoveredValue0 |
    recoveredValue0 := asyncBlock.
    ^recoveredValue0
! !

"async.ic method 0x20000494; bytecode file offset 0x7644"
!AcoResourceGroup methodsFor: 'recovered'!
futureStub
    | recoveredValue0 |
    recoveredValue0 := futureStub.
    ^recoveredValue0
! !

"async.ic method 0x20000930; bytecode file offset 0x7ac8"
!AcoResourceGroup methodsFor: 'recovered'!
thread: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    thread := recoveredValue0.
    ^self
! !

"async.ic method 0x20000954; bytecode file offset 0x7ae4"
!AcoResourceGroup methodsFor: 'recovered'!
asyncBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    asyncBlock := recoveredValue0.
    ^self
! !

"async.ic method 0x20000970; bytecode file offset 0x7b08"
!AcoResourceGroup methodsFor: 'recovered'!
futureStub: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    futureStub := recoveredValue0.
    ^self
! !

"async.ic method 0x20000f10; bytecode file offset 0x80a4"
!AcoResourceGroup methodsFor: 'recovered'!
terminate
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := thread.
    (recoveredValue0) terminate.
    recoveredValue1 := futureStub.
    (recoveredValue1) terminate.
    recoveredValue2 := asyncBlock.
    (recoveredValue2) terminate.
    ^self
! !

"async.ic method 0x20001adc; bytecode file offset 0x8c70"
!AcoResourceGroup methodsFor: 'recovered'!
isValidGroup
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := thread.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := asyncBlock.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := futureStub.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := thread.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) isUndefined.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := asyncBlock.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) isUndefined.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

