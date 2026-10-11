"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"async.ic method 0x20000008; bytecode file offset 0x71b0"
!EsAsynchronousCallout class methodsFor: 'recovered'!
_PRAGMA_AcoConstants
    ^self
! !

"async.ic method 0x20000010; bytecode file offset 0x71b0"
!EsAsynchronousCallout class methodsFor: 'recovered'!
_PRAGMA_NlsCatEse
    ^self
! !

"async.ic method 0x20000240; bytecode file offset 0x73e0"
!EsAsynchronousCallout class methodsFor: 'recovered'!
classMethodCategories
    ^#('ACO-API' 'ACO-Internal')
! !

"async.ic method 0x2000024c; bytecode file offset 0x73e0"
!EsAsynchronousCallout class methodsFor: 'recovered'!
instanceMethodCategories
    ^#('ACO-API' 'ACO-Internal')
! !

"async.ic method 0x20000260; bytecode file offset 0x73f8"
!EsAsynchronousCallout class methodsFor: 'recovered'!
supported
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := AcoThread.
    recoveredValue1 := (recoveredValue0) primitiveAsyncThreadsAvailable.
    ^recoveredValue1
! !

"async.ic method 0x20000344; bytecode file offset 0x74e4"
!EsAsynchronousCallout class methodsFor: 'recovered'!
exiting
    (self) terminate.
    ^self
! !

"async.ic method 0x200003a0; bytecode file offset 0x7548"
!EsAsynchronousCallout class methodsFor: 'recovered'!
terminate
    | recoveredValue0 |
    recoveredValue0 := AcoResourceManager.
    (recoveredValue0) terminate.
    ^self
! !

"async.ic method 0x200003b0; bytecode file offset 0x7548"
!EsAsynchronousCallout class methodsFor: 'recovered'!
saving
    | recoveredValue0 |
    recoveredValue0 := OSPoolObject.
    (recoveredValue0) saving.
    ^self
! !

"async.ic method 0x200008a4; bytecode file offset 0x7a40"
!EsAsynchronousCallout class methodsFor: 'recovered'!
startUp
    | recoveredValue0 |
    recoveredValue0 := AcoResourceManager.
    (recoveredValue0) startUp.
    (self) hookHandler.
    ^self
! !

"async.ic method 0x20000ca0; bytecode file offset 0x7e44"
!EsAsynchronousCallout class methodsFor: 'recovered'!
localize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := NlsCatEse.
    recoveredValue1 := (self) defaultMessagesLocale.
    (recoveredValue0) relocalizeTo: (recoveredValue1).
    recoveredValue2 := AcoError.
    (recoveredValue2) initialize.
    ^self
! !

"async.ic method 0x20000dd4; bytecode file offset 0x7f74"
!EsAsynchronousCallout class methodsFor: 'recovered'!
preStartUp
    | recoveredValue0 recoveredValue1 |
    HandlerHooked := false.
    recoveredValue0 := AcoResourceManager.
    (recoveredValue0) preStartUp.
    recoveredValue1 := OSPoolObject.
    (recoveredValue1) preStartUp.
    ^self
! !

"async.ic method 0x20000f80; bytecode file offset 0x811c"
!EsAsynchronousCallout class methodsFor: 'recovered'!
hookHandler
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := HandlerHooked.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := AcoThread.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) primitiveInitialize.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            HandlerHooked := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"async.ic method 0x20001568; bytecode file offset 0x8718"
!EsAsynchronousCallout class methodsFor: 'recovered'!
loaded
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) localize.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := AcoError.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) initialize.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := AcoResourceManager.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) loaded.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) imageStarted.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) hookHandler.
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

"async.ic method 0x20001cd0; bytecode file offset 0x8e8c"
!EsAsynchronousCallout class methodsFor: 'recovered'!
removing
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := AcoResourceManager.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasRunningThreads.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := MxEse16.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := AcoResourceManager.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) terminateThreads.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) terminate.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := AcoResourceManager.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack2) makeFutureStubsRemovable.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack2) defaultClass: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) default: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

