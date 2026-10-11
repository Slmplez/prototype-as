"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20001f9c; bytecode file offset 0x63558"
!SstWSActorManager methodsFor: 'recovered'!
supportsAnonymousRole
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SstSoapActorAnonymousNamespace.
    recoveredValue1 := (self) supportsRole: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20002d5c; bytecode file offset 0x64108"
!SstWSActorManager methodsFor: 'recovered'!
addRole: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) roles.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) add: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20002fec; bytecode file offset 0x64108"
!SstWSActorManager methodsFor: 'recovered'!
supportsRole: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) roles.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) includes: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x2000300c; bytecode file offset 0x64108"
!SstWSActorManager methodsFor: 'recovered'!
addRoles: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) roles.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) addAll: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x2000813c; bytecode file offset 0x692b8"
!SstWSActorManager methodsFor: 'recovered'!
roles: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    roles := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000abd8; bytecode file offset 0x6bccc"
!SstWSActorManager methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) defaultRoles.
    (self) addRoles: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x2000bde8; bytecode file offset 0x6ced4"
!SstWSActorManager methodsFor: 'recovered'!
roles
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := roles.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            roles := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := roles.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000c5f8; bytecode file offset 0x6d6c8"
!SstWSActorManager methodsFor: 'recovered'!
supportsBlock: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) actor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) supportsAnonymousRole.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsRole: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

