"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20003784; bytecode file offset 0x649e8"
!SstWSAuthCredential methodsFor: 'recovered'!
username
    | recoveredValue0 |
    recoveredValue0 := username.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003990; bytecode file offset 0x64bac"
!SstWSAuthCredential methodsFor: 'recovered'!
password
    | recoveredValue0 |
    recoveredValue0 := password.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20005c2c; bytecode file offset 0x66d78"
!SstWSAuthCredential methodsFor: 'recovered'!
propertyNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [].
    recoveredValue2 := (self) propertyNamed: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20006454; bytecode file offset 0x67530"
!SstWSAuthCredential methodsFor: 'recovered'!
propertyNamed: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) properties.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20007054; bytecode file offset 0x681b0"
!SstWSAuthCredential methodsFor: 'recovered'!
removeProperty: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) properties.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) removeKey: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x200072d4; bytecode file offset 0x683c0"
!SstWSAuthCredential methodsFor: 'recovered'!
addProperty: recoveredArg1 named: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) properties.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"xxx_dyn.ic method 0x20007e6c; bytecode file offset 0x68f50"
!SstWSAuthCredential methodsFor: 'recovered'!
username: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    username := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20007f68; bytecode file offset 0x69104"
!SstWSAuthCredential methodsFor: 'recovered'!
password: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    password := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000bdf8; bytecode file offset 0x6ced4"
!SstWSAuthCredential methodsFor: 'recovered'!
properties
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := properties.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            properties := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := properties.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

