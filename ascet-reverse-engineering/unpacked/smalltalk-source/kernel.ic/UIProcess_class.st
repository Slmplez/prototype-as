"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x200004d4; bytecode file offset 0x4b474"
!UIProcess class methodsFor: 'recovered'!
run
    | recoveredValue0 |
    recoveredValue0 := (self) forkUserInterface.
    ^recoveredValue0
! !

"kernel.ic method 0x20001700; bytecode file offset 0x4c844"
!UIProcess class methodsFor: 'recovered'!
currentUI
    | recoveredValue0 |
    recoveredValue0 := CurrentUI.
    ^recoveredValue0
! !

"kernel.ic method 0x20002c6c; bytecode file offset 0x4dce4"
!UIProcess class methodsFor: 'recovered'!
currentUI: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    CurrentUI := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20003428; bytecode file offset 0x4e354"
!UIProcess class methodsFor: 'recovered'!
defaultName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Date.
    recoveredValue1 := (recoveredValue0) dateAndTimeNow.
    recoveredValue2 := (recoveredValue1) debugPrintString.
    ^recoveredValue2
! !

"kernel.ic method 0x20014818; bytecode file offset 0x5f74c"
!UIProcess class methodsFor: 'recovered'!
forkUserInterface
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | block28008eb8Value0 block28008eb8Value1 block28008eb8Value2 |
    block28008eb8Value0 := System.
    block28008eb8Value1 := (block28008eb8Value0) startUpClass.
    block28008eb8Value2 := (block28008eb8Value1) messageLoop.
    block28008eb8Value2
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) newProcessOn: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) currentUI: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := Processor.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) userSchedulingPriority.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) priority: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) resume.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

