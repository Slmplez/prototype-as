"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20008e5c; bytecode file offset 0x53d70"
!EsEntryPoint class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EntryPoints.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) initializeEntryPoints.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20009938; bytecode file offset 0x5485c"
!EsEntryPoint class methodsFor: 'recovered'!
initializeEntryPoints
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Array.
    recoveredValue1 := PlatformFunction.
    recoveredValue2 := (recoveredValue1) callingConventions.
    recoveredValue3 := (recoveredValue2) size.
    recoveredValue4 := (recoveredValue0) new: (recoveredValue3).
    EntryPoints := recoveredValue4.
    ^self
! !

"kernel.ic method 0x2000b7b0; bytecode file offset 0x566c4"
!EsEntryPoint class methodsFor: 'recovered'!
receiver: recoveredArg1 selector: recoveredArg2 callingConvention: recoveredArg3 arrayBased: recoveredArg4 parameterTypes: recoveredArg5 returnType: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := recoveredArg6.
    recoveredValue7 := (recoveredValue0) receiver: (recoveredValue1) selector: (recoveredValue2) callingConvention: (recoveredValue3) arrayBased: (recoveredValue4) parameterTypes: (recoveredValue5) returnType: (recoveredValue6).
    ^recoveredValue7
! !

"kernel.ic method 0x20012e90; bytecode file offset 0x5ddb8"
!EsEntryPoint class methodsFor: 'recovered'!
startUp
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) initializeEntryPoints.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) withAllSubclasses.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicMultiAllInstances.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:block28008d98Arg1 | 
    | block28008d98Stack0 block28008d98Stack1 block28008d98Stack2 block28008d98Stack3 block28008d98PC block28008d98Step block28008d98Done block28008d98Result |
    block28008d98Stack0 := self.
    block28008d98PC := 4.
    block28008d98Done := false.
    [block28008d98Done not] whileTrue: [
        block28008d98Step := block28008d98PC.
        block28008d98Step = 4 ifTrue: [
            block28008d98Stack1 := nil.
            block28008d98PC := 5.
        ].
        block28008d98Step = 5 ifTrue: [
            block28008d98Stack2 := block28008d98Arg1.
            block28008d98PC := 6.
        ].
        block28008d98Step = 6 ifTrue: [
            (block28008d98Stack2 == nil) ifTrue: [block28008d98PC := 14] ifFalse: [block28008d98PC := 10].
        ].
        block28008d98Step = 10 ifTrue: [
            block28008d98PC := 11.
        ].
        block28008d98Step = 11 ifTrue: [
            block28008d98Stack1 := block28008d98Arg1.
            block28008d98PC := 12.
        ].
        block28008d98Step = 12 ifTrue: [
            block28008d98Stack1 := (block28008d98Stack1) basicUnbind.
            block28008d98PC := 14.
        ].
        block28008d98Step = 14 ifTrue: [
            block28008d98Result := block28008d98Stack1.
            block28008d98Done := true.
        ].
    ].
    block28008d98Result
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

