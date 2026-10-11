"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x200001ac; bytecode file offset 0x4b1b0"
!CPM class methodsFor: 'recovered'!
_PRAGMA_Processor
    ^self
! !

"kernel.ic method 0x20003344; bytecode file offset 0x4e2f8"
!CPM class methodsFor: 'recovered'!
restart
    | recoveredValue0 |
    recoveredValue0 := Delay.
    (recoveredValue0) startUp.
    ^self
! !

"kernel.ic method 0x20003354; bytecode file offset 0x4e2f8"
!CPM class methodsFor: 'recovered'!
preStartUp
    | recoveredValue0 |
    recoveredValue0 := Delay.
    (recoveredValue0) preStartUp.
    ^self
! !

"kernel.ic method 0x200033c4; bytecode file offset 0x4e2f8"
!CPM class methodsFor: 'recovered'!
shutDown
    | recoveredValue0 |
    recoveredValue0 := Delay.
    (recoveredValue0) shutDown.
    ^self
! !

"kernel.ic method 0x2000d5fc; bytecode file offset 0x58524"
!CPM class methodsFor: 'recovered'!
startUp
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Delay.
    (recoveredValue0) startUp.
    recoveredValue1 := Process.
    (recoveredValue1) initializeBreakHandler.
    recoveredValue2 := Process.
    (recoveredValue2) initializeTerminateHandler.
    recoveredValue3 := Processor.
    (recoveredValue3) removeDebugger.
    ^self
! !

"kernel.ic method 0x20017848; bytecode file offset 0x6278c"
!CPM class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'Process'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) excludeInstancesOfClassNamed: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 'DelayedTasks'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := 'Delay'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) initializeToNilClassVariable: (recoveredStack2) inClassNamed: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) image.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRunningImage.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 'DebugMap'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := 'Dictionary new'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := 'ProcessorScheduler'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) initializeClassVariable: (recoveredStack2) to: (recoveredStack3) inClassNamed: (recoveredStack4).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 'Processor'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := 'ProcessorScheduler new basicInitialize'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) replaceGlobalVariable: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

