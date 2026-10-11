"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20112d5c; bytecode file offset 0xa0f658"
!DBSetExactFullNameQuery methodsFor: 'recovered'!
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

"ASDBase.ic method 0x20112d84; bytecode file offset 0xa0f658"
!DBSetExactFullNameQuery methodsFor: 'recovered'!
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

"ASDBase.ic method 0x2046d628; bytecode file offset 0xd69f14"
!DBSetExactFullNameQuery methodsFor: 'recovered'!
dropNotMatchingFrom: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack2 := [:block28101230Arg1 | 
    | block28101230Stack0 block28101230Stack1 block28101230Stack2 block28101230Stack3 block28101230Stack4 block28101230PC block28101230Step block28101230Done block28101230Result |
    block28101230Stack0 := self.
    block28101230PC := 4.
    block28101230Done := false.
    [block28101230Done not] whileTrue: [
        block28101230Step := block28101230PC.
        block28101230Step = 4 ifTrue: [
            block28101230Stack1 := block28101230Arg1.
            block28101230PC := 5.
        ].
        block28101230Step = 5 ifTrue: [
            block28101230Stack2 := [:block28101254Arg1 | 
    nil
].
            block28101230PC := 7.
        ].
        block28101230Step = 7 ifTrue: [
            block28101230PC := 12.
        ].
        block28101230Step = 12 ifTrue: [
            block28101230Stack3 := [:block28101278Arg1 | 
    | block28101278Value0 block28101278Value1 |
    block28101278Value0 := block28101278Arg1.
    block28101278Value1 := (block28101278Value0) dbObject.
    block28101278Value1
].
            block28101230PC := 14.
        ].
        block28101230Step = 14 ifTrue: [
            block28101230PC := 22.
        ].
        block28101230Step = 22 ifTrue: [
            block28101230Stack1 := (block28101230Stack1) getObjectIfUndefined: (block28101230Stack2) ifDefined: (block28101230Stack3).
            block28101230PC := 24.
        ].
        block28101230Step = 24 ifTrue: [
            block28101230Result := block28101230Stack1.
            block28101230Done := true.
        ].
    ].
    block28101230Result
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := [:block2810129cArg1 | 
    | block2810129cValue0 block2810129cValue1 |
    block2810129cValue0 := block2810129cArg1.
    block2810129cValue1 := (block2810129cValue0) notNil.
    block2810129cValue1
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2) select: (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) someElement.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            searchProxy := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := index.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := searchProxy.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) putKeyValueIn: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := searchProxy.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := [:recoveredBlock87Arg1 | 
    | recoveredBlock87Stack0 recoveredBlock87Stack1 recoveredBlock87Stack2 recoveredBlock87Stack3 recoveredBlock87Stack4 recoveredBlock87Stack5 recoveredBlock87PC recoveredBlock87Step recoveredBlock87Done recoveredBlock87Result |
    recoveredBlock87Stack0 := self.
    recoveredBlock87PC := 94.
    recoveredBlock87Done := false.
    [recoveredBlock87Done not] whileTrue: [
        recoveredBlock87Step := recoveredBlock87PC.
        recoveredBlock87Step = 94 ifTrue: [
            recoveredBlock87Stack1 := nil.
            recoveredBlock87PC := 95.
        ].
        recoveredBlock87Step = 95 ifTrue: [
            recoveredBlock87Stack2 := index.
            recoveredBlock87PC := 97.
        ].
        recoveredBlock87Step = 97 ifTrue: [
            recoveredBlock87Stack3 := recoveredBlock87Arg1.
            recoveredBlock87PC := 98.
        ].
        recoveredBlock87Step = 98 ifTrue: [
            recoveredBlock87Stack3 := (recoveredBlock87Stack3) dbObject.
            recoveredBlock87PC := 100.
        ].
        recoveredBlock87Step = 100 ifTrue: [
            recoveredBlock87Stack4 := searchProxy.
            recoveredBlock87PC := 102.
        ].
        recoveredBlock87Step = 102 ifTrue: [
            recoveredBlock87Stack2 := (recoveredBlock87Stack2) match: (recoveredBlock87Stack3) with: (recoveredBlock87Stack4).
            recoveredBlock87PC := 104.
        ].
        recoveredBlock87Step = 104 ifTrue: [
            (recoveredBlock87Stack2) ifTrue: [recoveredBlock87PC := 115] ifFalse: [recoveredBlock87PC := 108].
        ].
        recoveredBlock87Step = 108 ifTrue: [
            recoveredBlock87PC := 109.
        ].
        recoveredBlock87Step = 109 ifTrue: [
            recoveredBlock87Stack1 := recoveredArg1.
            recoveredBlock87PC := 112.
        ].
        recoveredBlock87Step = 112 ifTrue: [
            recoveredBlock87Stack2 := recoveredBlock87Arg1.
            recoveredBlock87PC := 113.
        ].
        recoveredBlock87Step = 113 ifTrue: [
            recoveredBlock87Stack1 := (recoveredBlock87Stack1) remove: (recoveredBlock87Stack2).
            recoveredBlock87PC := 115.
        ].
        recoveredBlock87Step = 115 ifTrue: [
            recoveredBlock87Result := recoveredBlock87Stack1.
            recoveredBlock87Done := true.
        ].
    ].
    recoveredBlock87Result
].
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

