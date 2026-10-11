"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"dbgrun.ic method 0x20000588; bytecode file offset 0x7b44"
!DbgDebugSession class methodsFor: 'recovered'!
defaultStackSizeLimit
    | recoveredValue0 |
    recoveredValue0 := defaultStackSizeLimit.
    ^recoveredValue0
! !

"dbgrun.ic method 0x20000834; bytecode file offset 0x7dfc"
!DbgDebugSession class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    ^recoveredValue0
! !

"dbgrun.ic method 0x20000a5c; bytecode file offset 0x8018"
!DbgDebugSession class methodsFor: 'recovered'!
defaultStackSizeLimit: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    defaultStackSizeLimit := recoveredValue0.
    ^self
! !

"dbgrun.ic method 0x20000d04; bytecode file offset 0x82c8"
!DbgDebugSession class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultStackSizeLimit.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 100.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) defaultStackSizeLimit: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"dbgrun.ic method 0x20001bc8; bytecode file offset 0x91b0"
!DbgDebugSession class methodsFor: 'recovered'!
debug: recoveredArg1 errorString: recoveredArg2 startFrame: recoveredArg3 resumable: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) debugMode: (true).
    recoveredValue1 := (self) new.
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) process: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := recoveredArg2.
    (recoveredValue5) errorString: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := recoveredArg3.
    (recoveredValue7) selectedFrame: (recoveredValue8).
    recoveredValue9 := recoveredValue1.
    recoveredValue10 := recoveredArg4.
    (recoveredValue9) resumable: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := DbgRuntimeFramework.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := (recoveredValue12) locateToolFor: (recoveredValue13) type: ('SourceManager').
    recoveredValue15 := (recoveredValue14) new.
    (recoveredValue11) sourceManager: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    (recoveredValue16) configureSourceManager.
    ^recoveredValue1
! !

