"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20007494; bytecode file offset 0x68580"
!SstWSEngineFactory methodsFor: 'recovered'!
defaultServerEngine
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := WSDefaultServerEngine.
    recoveredValue1 := (self) container.
    recoveredValue2 := (recoveredValue1) namespace.
    recoveredValue3 := (self) objectNamed: (recoveredValue0) inNamespace: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x200074ac; bytecode file offset 0x68580"
!SstWSEngineFactory methodsFor: 'recovered'!
defaultClientEngine
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := WSDefaultClientEngine.
    recoveredValue1 := (self) container.
    recoveredValue2 := (recoveredValue1) namespace.
    recoveredValue3 := (self) objectNamed: (recoveredValue0) inNamespace: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x2000a3c4; bytecode file offset 0x6b4b0"
!SstWSEngineFactory methodsFor: 'recovered'!
defaultServerEngine: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := WSDefaultServerEngine.
    recoveredValue2 := (self) container.
    recoveredValue3 := (recoveredValue2) namespace.
    (self) manage: (recoveredValue0) named: (recoveredValue1) inNamespace: (recoveredValue3).
    ^self
! !

"xxx_dyn.ic method 0x2000a3dc; bytecode file offset 0x6b4b0"
!SstWSEngineFactory methodsFor: 'recovered'!
defaultClientEngine: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := WSDefaultClientEngine.
    recoveredValue2 := (self) container.
    recoveredValue3 := (recoveredValue2) namespace.
    (self) manage: (recoveredValue0) named: (recoveredValue1) inNamespace: (recoveredValue3).
    ^self
! !

"xxx_dyn.ic method 0x20012108; bytecode file offset 0x731ec"
!SstWSEngineFactory methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    super initialize.
    recoveredValue0 := SstWSClientEngine.
    recoveredValue1 := (self) container.
    recoveredValue2 := (recoveredValue0) for: (recoveredValue1).
    (self) defaultClientEngine: (recoveredValue2).
    recoveredValue3 := SstWSServerEngine.
    recoveredValue4 := (self) container.
    recoveredValue5 := (recoveredValue3) for: (recoveredValue4).
    (self) defaultServerEngine: (recoveredValue5).
    ^self
! !

"xxx_dyn.ic method 0x2001610c; bytecode file offset 0x771e8"
!SstWSEngineFactory methodsFor: 'recovered'!
engineForService: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) sstName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) sstNamespace.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) objectNamed: (recoveredStack1) inNamespace: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) sstIsRemote.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultClientEngine.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultServerEngine.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

