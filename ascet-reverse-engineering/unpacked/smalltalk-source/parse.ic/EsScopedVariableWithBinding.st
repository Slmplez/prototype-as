"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"parse.ic method 0x20000c70; bytecode file offset 0x162dc"
!EsScopedVariableWithBinding methodsFor: 'recovered'!
isScopedVariable
    ^true
! !

"parse.ic method 0x20003b2c; bytecode file offset 0x19190"
!EsScopedVariableWithBinding methodsFor: 'recovered'!
nameArray
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := contents.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := contents.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [:block28002c1cArg1 | 
    | block28002c1cValue0 block28002c1cValue1 |
    block28002c1cValue0 := block28002c1cArg1.
    block28002c1cValue1 := (block28002c1cValue0) contents.
    block28002c1cValue1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"parse.ic method 0x20005684; bytecode file offset 0x1ace8"
!EsScopedVariableWithBinding methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredLocal1 := false.
    recoveredValue0 := (self) nameArray.
    recoveredValue1 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9Stack3 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack1 := recoveredLocal1.
            recoveredBlock9PC := 19.
        ].
        recoveredBlock9Step = 19 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 22] ifFalse: [recoveredBlock9PC := 32].
        ].
        recoveredBlock9Step = 22 ifTrue: [
            recoveredBlock9Stack1 := recoveredArg1.
            recoveredBlock9PC := 25.
        ].
        recoveredBlock9Step = 25 ifTrue: [
            recoveredBlock9Stack2 := '::'.
            recoveredBlock9PC := 27.
        ].
        recoveredBlock9Step = 27 ifTrue: [
            (recoveredBlock9Stack1) nextPutAll: (recoveredBlock9Stack2).
            recoveredBlock9PC := 29.
        ].
        recoveredBlock9Step = 29 ifTrue: [
            recoveredBlock9PC := 36.
        ].
        recoveredBlock9Step = 32 ifTrue: [
            recoveredBlock9Stack1 := true.
            recoveredBlock9PC := 33.
        ].
        recoveredBlock9Step = 33 ifTrue: [
            recoveredLocal1 := recoveredBlock9Stack1.
            recoveredBlock9PC := 36.
        ].
        recoveredBlock9Step = 36 ifTrue: [
            recoveredBlock9Stack1 := recoveredArg1.
            recoveredBlock9PC := 39.
        ].
        recoveredBlock9Step = 39 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Arg1.
            recoveredBlock9PC := 40.
        ].
        recoveredBlock9Step = 40 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) nextPutAll: (recoveredBlock9Stack2).
            recoveredBlock9PC := 41.
        ].
        recoveredBlock9Step = 41 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack1.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

