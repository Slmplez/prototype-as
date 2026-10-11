"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x200007e4; bytecode file offset 0x1081c"
!AbtWorkQueue methodsFor: 'recovered'!
abtFinalize
    (self) terminate.
    ^self
! !

"abtdah.ic method 0x200028e4; bytecode file offset 0x1291c"
!AbtWorkQueue methodsFor: 'recovered'!
queueAndWaitForBlock: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := MxEM10.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredLocal1.
    (self) queueBlock: (recoveredValue2) signalling: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (recoveredValue4) abtWait.
    ^self
! !

"abtdah.ic method 0x2000298c; bytecode file offset 0x129cc"
!AbtWorkQueue methodsFor: 'recovered'!
queue
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := queue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            queue := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := queue.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtdah.ic method 0x200029c0; bytecode file offset 0x129f0"
!AbtWorkQueue methodsFor: 'recovered'!
semaphore
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := semaphore.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := MxEM10.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            semaphore := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := semaphore.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtdah.ic method 0x20002ba8; bytecode file offset 0x12bdc"
!AbtWorkQueue methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 |
    recoveredBlock4Value0 := (self) processWorkQueue.
    recoveredBlock4Value0
].
    recoveredValue1 := (recoveredValue0) fork.
    process := recoveredValue1.
    (self) abtAddToBeFinalized.
    ^self
! !

"abtdah.ic method 0x20004374; bytecode file offset 0x143b8"
!AbtWorkQueue methodsFor: 'recovered'!
queueBlock: recoveredArg1 signalling: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EmEvaluationRedirectionForLoadedCode.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) key: (recoveredValue1) value: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := [
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 |
    recoveredBlock17Value0 := (self) queue.
    recoveredBlock17Value1 := recoveredLocal1.
    recoveredBlock17Value2 := (recoveredBlock17Value0) add: (recoveredBlock17Value1).
    recoveredBlock17Value2
].
    (recoveredValue4) critical.
    recoveredValue5 := (self) semaphore.
    (recoveredValue5) abtSignal.
    ^self
! !

"abtdah.ic method 0x20004904; bytecode file offset 0x14948"
!AbtWorkQueue methodsFor: 'recovered'!
terminate
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 |
    recoveredBlock8Value0 := queue.
    recoveredBlock8Value1 := (recoveredBlock8Value0) remove.
    recoveredBlock8Value2 := recoveredBlock8Value1.
    recoveredLocal1 := recoveredBlock8Value2.
    recoveredBlock8Value1
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) critical.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) key.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) abtSignal.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) queue.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := process.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := process.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) terminate.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdah.ic method 0x20004e70; bytecode file offset 0x14ec0"
!AbtWorkQueue methodsFor: 'recovered'!
processWorkQueue
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Local1 recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 recoveredBlock4Value7 |
    recoveredBlock4Value0 := (self) semaphore.
    (recoveredBlock4Value0) abtWait.
    recoveredBlock4Value1 := [
    | recoveredBlock4Block13Value0 recoveredBlock4Block13Value1 recoveredBlock4Block13Value2 |
    recoveredBlock4Block13Value0 := (self) queue.
    recoveredBlock4Block13Value1 := (recoveredBlock4Block13Value0) remove.
    recoveredBlock4Block13Value2 := recoveredBlock4Block13Value1.
    recoveredBlock4Local1 := recoveredBlock4Block13Value2.
    recoveredBlock4Block13Value1
].
    (recoveredBlock4Value1) critical.
    recoveredBlock4Value2 := recoveredBlock4Local1.
    recoveredBlock4Value3 := (recoveredBlock4Value2) value.
    (recoveredBlock4Value3) value.
    recoveredBlock4Value4 := recoveredBlock4Local1.
    recoveredBlock4Value5 := (recoveredBlock4Value4) key.
    (recoveredBlock4Value5) abtSignal.
    recoveredBlock4Value6 := process.
    recoveredBlock4Value7 := (recoveredBlock4Value6) isDead.
    recoveredBlock4Value7
].
    (recoveredValue0) abtWhileFalse.
    ^self
! !

