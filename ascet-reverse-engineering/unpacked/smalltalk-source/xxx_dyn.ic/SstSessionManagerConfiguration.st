"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20003bcc; bytecode file offset 0x64d78"
!SstSessionManagerConfiguration methodsFor: 'recovered'!
autoGenerateSessions
    | recoveredValue0 |
    recoveredValue0 := autoGenerateSessions.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003d90; bytecode file offset 0x64ed4"
!SstSessionManagerConfiguration methodsFor: 'recovered'!
managerClass
    | recoveredValue0 |
    recoveredValue0 := managerClass.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003e74; bytecode file offset 0x64fe8"
!SstSessionManagerConfiguration methodsFor: 'recovered'!
sessionClass
    | recoveredValue0 |
    recoveredValue0 := sessionClass.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003f48; bytecode file offset 0x650c4"
!SstSessionManagerConfiguration methodsFor: 'recovered'!
sessionReaperInterval
    | recoveredValue0 |
    recoveredValue0 := sessionReaperInterval.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000403c; bytecode file offset 0x65178"
!SstSessionManagerConfiguration methodsFor: 'recovered'!
sessionInactivityTimeout
    | recoveredValue0 |
    recoveredValue0 := sessionInactivityTimeout.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000806c; bytecode file offset 0x692b8"
!SstSessionManagerConfiguration methodsFor: 'recovered'!
autoGenerateSessions: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    autoGenerateSessions := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008278; bytecode file offset 0x69404"
!SstSessionManagerConfiguration methodsFor: 'recovered'!
managerClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    managerClass := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008434; bytecode file offset 0x69508"
!SstSessionManagerConfiguration methodsFor: 'recovered'!
sessionClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sessionClass := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200084b0; bytecode file offset 0x695c4"
!SstSessionManagerConfiguration methodsFor: 'recovered'!
sessionReaperInterval: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sessionReaperInterval := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000859c; bytecode file offset 0x69688"
!SstSessionManagerConfiguration methodsFor: 'recovered'!
sessionInactivityTimeout: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sessionInactivityTimeout := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000dc24; bytecode file offset 0x6ecf8"
!SstSessionManagerConfiguration methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    autoGenerateSessions := true.
    recoveredValue0 := SstSessionManager.
    managerClass := recoveredValue0.
    recoveredValue1 := SstSession.
    sessionClass := recoveredValue1.
    ^self
! !

"xxx_dyn.ic method 0x2000e438; bytecode file offset 0x6f50c"
!SstSessionManagerConfiguration methodsFor: 'recovered'!
instantiateFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    (self) ensureRealized.
    recoveredValue0 := managerClass.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) for: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (self) owner: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (recoveredValue4) configuration: (self).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"xxx_dyn.ic method 0x200143a8; bytecode file offset 0x75478"
!SstSessionManagerConfiguration methodsFor: 'recovered'!
ensureRealized
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := managerClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := managerClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) sstEnsureLoaded: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            managerClass := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := sessionClass.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) isClass.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := sessionClass.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) sstEnsureLoaded: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            sessionClass := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

