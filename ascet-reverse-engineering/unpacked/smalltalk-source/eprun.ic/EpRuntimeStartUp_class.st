"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"eprun.ic method 0x20000000; bytecode file offset 0x10bc"
!EpRuntimeStartUp class methodsFor: 'recovered'!
startApplication
    ^self
! !

"eprun.ic method 0x20000010; bytecode file offset 0x10d0"
!EpRuntimeStartUp class methodsFor: 'recovered'!
etasRuntimeErrorHandling
    | recoveredValue0 |
    recoveredValue0 := EtasRuntimeErrorHandling.
    ^recoveredValue0
! !

"eprun.ic method 0x20000024; bytecode file offset 0x10e4"
!EpRuntimeStartUp class methodsFor: 'recovered'!
etasRuntimeErrorHandling: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    EtasRuntimeErrorHandling := recoveredValue0.
    ^self
! !

"eprun.ic method 0x20000038; bytecode file offset 0x10f4"
!EpRuntimeStartUp class methodsFor: 'recovered'!
isRuntime
    ^true
! !

"eprun.ic method 0x2000004c; bytecode file offset 0x1118"
!EpRuntimeStartUp class methodsFor: 'recovered'!
run
    (self) exitOnLastWindowClose: (false).
    (self) startApplication.
    (self) exitOnLastWindowClose: (true).
    super run.
    ^self
! !

"eprun.ic method 0x200000f0; bytecode file offset 0x11e0"
!EpRuntimeStartUp class methodsFor: 'recovered'!
reportError: recoveredArg1 resumable: recoveredArg2 startBP: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) etasRuntimeErrorHandling.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) outputWalkback: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) cleanUpBeforeWalkback.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) etasRuntimeErrorHandling.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'Runtime error: %1\See the file walkback.log for more information.\Do you wish to exit?'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) addLineDelimiters.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) confirm: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) exit.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) etasRuntimeErrorHandling.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) handleRunTimeErrorOn: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := Processor.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) activeProcess.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) terminate.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

