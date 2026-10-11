"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20002790; bytecode file offset 0x63854"
!SstWSActorManager class methodsFor: 'recovered'!
reset
    defaultRoles := nil.
    ^self
! !

"xxx_dyn.ic method 0x20002970; bytecode file offset 0x63b1c"
!SstWSActorManager class methodsFor: 'recovered'!
cleanUpBeforeRemove
    (self) reset.
    ^self
! !

"xxx_dyn.ic method 0x2000607c; bytecode file offset 0x671b8"
!SstWSActorManager class methodsFor: 'recovered'!
addDefaultRole: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) defaultRoles.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20009f48; bytecode file offset 0x6b018"
!SstWSActorManager class methodsFor: 'recovered'!
setupAfterLoadNonInherited
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SstSoapActorNextNamespace.
    (self) addDefaultRole: (recoveredValue0).
    recoveredValue1 := SstSoapActorAnonymousNamespace.
    (self) addDefaultRole: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x2000bf34; bytecode file offset 0x6d000"
!SstWSActorManager class methodsFor: 'recovered'!
defaultRoles
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := defaultRoles.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            defaultRoles := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := defaultRoles.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

