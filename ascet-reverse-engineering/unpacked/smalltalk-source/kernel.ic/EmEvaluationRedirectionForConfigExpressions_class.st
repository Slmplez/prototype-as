"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20002c78; bytecode file offset 0x4dce4"
!EmEvaluationRedirectionForConfigExpressions class methodsFor: 'recovered'!
passiveMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    PassiveMode := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20002d5c; bytecode file offset 0x4dce4"
!EmEvaluationRedirectionForConfigExpressions class methodsFor: 'recovered'!
normalMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    NormalMode := recoveredValue0.
    ^self
! !

"kernel.ic method 0x2000ac48; bytecode file offset 0x55b9c"
!EmEvaluationRedirectionForConfigExpressions class methodsFor: 'recovered'!
passiveMode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := PassiveMode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'Loose'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            PassiveMode := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := PassiveMode.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x2000ac78; bytecode file offset 0x55b9c"
!EmEvaluationRedirectionForConfigExpressions class methodsFor: 'recovered'!
normalMode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := NormalMode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'Loose'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            NormalMode := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := NormalMode.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x2000e400; bytecode file offset 0x59320"
!EmEvaluationRedirectionForConfigExpressions class methodsFor: 'recovered'!
mode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) image.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRunningImage.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) normalMode.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) passiveMode.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x2001af70; bytecode file offset 0x65ea8"
!EmEvaluationRedirectionForConfigExpressions class methodsFor: 'recovered'!
environment
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := 'Strict'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := EsSmalltalkDictionary.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) image.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) owningImage: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 'System'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := System.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) image.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 'Loose'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) image.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) globalNamespace.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

