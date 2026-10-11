"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"parse.ic method 0x20000244; bytecode file offset 0x158b0"
!EsDoitNameEnvironment methodsFor: 'recovered'!
environment
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sourceClass.
    recoveredValue1 := (recoveredValue0) environment.
    ^recoveredValue1
! !

"parse.ic method 0x20000310; bytecode file offset 0x15968"
!EsDoitNameEnvironment methodsFor: 'recovered'!
sourceClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := method.
    recoveredValue1 := (recoveredValue0) methodClass.
    ^recoveredValue1
! !

"parse.ic method 0x20000324; bytecode file offset 0x15994"
!EsDoitNameEnvironment methodsFor: 'recovered'!
compileTimeConstantNameEnvironment
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := parentEnvironment.
    recoveredValue1 := (recoveredValue0) compileTimeConstantNameEnvironment.
    ^recoveredValue1
! !

"parse.ic method 0x2000033c; bytecode file offset 0x15994"
!EsDoitNameEnvironment methodsFor: 'recovered'!
superAssociation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := parentEnvironment.
    recoveredValue1 := (recoveredValue0) superAssociation.
    ^recoveredValue1
! !

"parse.ic method 0x20000e38; bytecode file offset 0x1649c"
!EsDoitNameEnvironment methodsFor: 'recovered'!
nameConflictWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := parentEnvironment.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) nameConflictWith: (recoveredValue1).
    ^recoveredValue2
! !

"parse.ic method 0x20000e44; bytecode file offset 0x1649c"
!EsDoitNameEnvironment methodsFor: 'recovered'!
resolveNames: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := parentEnvironment.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) resolveNames: (recoveredValue1).
    ^recoveredValue2
! !

"parse.ic method 0x200018bc; bytecode file offset 0x16f48"
!EsDoitNameEnvironment methodsFor: 'recovered'!
method: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    method := recoveredValue0.
    ^self
! !

"parse.ic method 0x20001910; bytecode file offset 0x16f94"
!EsDoitNameEnvironment methodsFor: 'recovered'!
parentEnvironment: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    parentEnvironment := recoveredValue0.
    ^self
! !

"parse.ic method 0x20002f8c; bytecode file offset 0x185e8"
!EsDoitNameEnvironment methodsFor: 'recovered'!
resolveName: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := parentEnvironment.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) resolveName: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) literalResolveName: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"parse.ic method 0x200060dc; bytecode file offset 0x1b754"
!EsDoitNameEnvironment methodsFor: 'recovered'!
literalResolveName: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := method.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6Stack5 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) isAssociation.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 18] ifFalse: [recoveredBlock6PC := 53].
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) key.
            recoveredBlock6PC := 22.
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) isString.
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 26] ifFalse: [recoveredBlock6PC := 53].
        ].
        recoveredBlock6Step = 26 ifTrue: [
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 28.
        ].
        recoveredBlock6Step = 28 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 29.
        ].
        recoveredBlock6Step = 29 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) key.
            recoveredBlock6PC := 30.
        ].
        recoveredBlock6Step = 30 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) asString.
            recoveredBlock6PC := 31.
        ].
        recoveredBlock6Step = 31 ifTrue: [
            recoveredBlock6Stack3 := recoveredArg1.
            recoveredBlock6PC := 34.
        ].
        recoveredBlock6Step = 34 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) = (recoveredBlock6Stack3).
            recoveredBlock6PC := 35.
        ].
        recoveredBlock6Step = 35 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 38] ifFalse: [recoveredBlock6PC := 53].
        ].
        recoveredBlock6Step = 38 ifTrue: [
            recoveredBlock6PC := 39.
        ].
        recoveredBlock6Step = 39 ifTrue: [
            recoveredBlock6Stack1 := EsAssocNameBinding.
            recoveredBlock6PC := 41.
        ].
        recoveredBlock6Step = 41 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) new.
            recoveredBlock6PC := 43.
        ].
        recoveredBlock6Step = 43 ifTrue: [
            recoveredBlock6Stack2 := recoveredArg1.
            recoveredBlock6PC := 46.
        ].
        recoveredBlock6Step = 46 ifTrue: [
            recoveredBlock6Stack3 := 'ASSOC'.
            recoveredBlock6PC := 48.
        ].
        recoveredBlock6Step = 48 ifTrue: [
            recoveredBlock6Stack4 := recoveredBlock6Arg1.
            recoveredBlock6PC := 49.
        ].
        recoveredBlock6Step = 49 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) variableName: (recoveredBlock6Stack2) type: (recoveredBlock6Stack3) value: (recoveredBlock6Stack4).
            recoveredBlock6PC := 52.
        ].
        recoveredBlock6Step = 52 ifTrue: [
            ^recoveredBlock6Stack1
        ].
        recoveredBlock6Step = 53 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^nil
! !

