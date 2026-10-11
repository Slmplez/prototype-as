"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x20000a34; bytecode file offset 0x10a7c"
!AbtProcessSynchronization methodsFor: 'recovered'!
staticFuture
    | recoveredValue0 |
    recoveredValue0 := staticFuture.
    ^recoveredValue0
! !

"abtdah.ic method 0x2000180c; bytecode file offset 0x11840"
!AbtProcessSynchronization methodsFor: 'recovered'!
terminate
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AcoResourceManager.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := staticFuture.
    (recoveredValue1) returnStaticFuture: (recoveredValue2).
    ^self
! !

"abtdah.ic method 0x20004278; bytecode file offset 0x142c4"
!AbtProcessSynchronization methodsFor: 'recovered'!
initializeWithStackSize: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AcoResourceManager.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) createAbtStaticFutureWithStackSize: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            staticFuture := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := AbtError.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := 'initializeWithStackSize:'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack6 := MsgThreadNoStaticFuture.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack7 := 'AbtMsgThreads'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack5 := (recoveredStack5) getMsg: (recoveredStack6) group: (recoveredStack7).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) in: (recoveredStack2) locus: (recoveredStack3) rc: (recoveredStack4) errorText: (recoveredStack5).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

