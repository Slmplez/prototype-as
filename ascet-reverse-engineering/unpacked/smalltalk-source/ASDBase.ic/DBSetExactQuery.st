"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20112d70; bytecode file offset 0xa0f658"
!DBSetExactQuery methodsFor: 'recovered'!
searchDatabase
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super searchDatabase.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (self) dropNotMatchingFrom: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    resultCollection := recoveredValue3.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20112d98; bytecode file offset 0xa0f658"
!DBSetExactQuery methodsFor: 'recovered'!
search
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super search.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (self) dropNotMatchingFrom: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    resultCollection := recoveredValue3.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2039b7a8; bytecode file offset 0xc9807c"
!DBSetExactQuery methodsFor: 'recovered'!
dropNotMatchingFrom: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) someElement.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            searchProxy := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := index.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := searchProxy.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) putKeyValueIn: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := searchProxy.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := [:recoveredBlock42Arg1 | 
    | recoveredBlock42Stack0 recoveredBlock42Stack1 recoveredBlock42Stack2 recoveredBlock42Stack3 recoveredBlock42Stack4 recoveredBlock42Stack5 recoveredBlock42PC recoveredBlock42Step recoveredBlock42Done recoveredBlock42Result |
    recoveredBlock42Stack0 := self.
    recoveredBlock42PC := 48.
    recoveredBlock42Done := false.
    [recoveredBlock42Done not] whileTrue: [
        recoveredBlock42Step := recoveredBlock42PC.
        recoveredBlock42Step = 48 ifTrue: [
            recoveredBlock42Stack1 := nil.
            recoveredBlock42PC := 49.
        ].
        recoveredBlock42Step = 49 ifTrue: [
            recoveredBlock42Stack2 := index.
            recoveredBlock42PC := 51.
        ].
        recoveredBlock42Step = 51 ifTrue: [
            recoveredBlock42Stack3 := recoveredBlock42Arg1.
            recoveredBlock42PC := 52.
        ].
        recoveredBlock42Step = 52 ifTrue: [
            recoveredBlock42Stack3 := (recoveredBlock42Stack3) dbObject.
            recoveredBlock42PC := 54.
        ].
        recoveredBlock42Step = 54 ifTrue: [
            recoveredBlock42Stack4 := searchProxy.
            recoveredBlock42PC := 56.
        ].
        recoveredBlock42Step = 56 ifTrue: [
            recoveredBlock42Stack2 := (recoveredBlock42Stack2) match: (recoveredBlock42Stack3) with: (recoveredBlock42Stack4).
            recoveredBlock42PC := 58.
        ].
        recoveredBlock42Step = 58 ifTrue: [
            (recoveredBlock42Stack2) ifTrue: [recoveredBlock42PC := 69] ifFalse: [recoveredBlock42PC := 62].
        ].
        recoveredBlock42Step = 62 ifTrue: [
            recoveredBlock42PC := 63.
        ].
        recoveredBlock42Step = 63 ifTrue: [
            recoveredBlock42Stack1 := recoveredArg1.
            recoveredBlock42PC := 66.
        ].
        recoveredBlock42Step = 66 ifTrue: [
            recoveredBlock42Stack2 := recoveredBlock42Arg1.
            recoveredBlock42PC := 67.
        ].
        recoveredBlock42Step = 67 ifTrue: [
            recoveredBlock42Stack1 := (recoveredBlock42Stack1) remove: (recoveredBlock42Stack2).
            recoveredBlock42PC := 69.
        ].
        recoveredBlock42Step = 69 ifTrue: [
            recoveredBlock42Result := recoveredBlock42Stack1.
            recoveredBlock42Done := true.
        ].
    ].
    recoveredBlock42Result
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

