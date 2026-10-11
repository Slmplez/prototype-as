"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2041cf3c; bytecode file offset 0xd19824"
!SGIlCheckSingleASTOccuranceVisitor methodsFor: 'recovered'!
check: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    knownNodes := recoveredValue1.
    recoveredValue2 := Set.
    recoveredValue3 := (recoveredValue2) new.
    visitedTempAssigns := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15Stack4 recoveredBlock15Stack5 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := nil.
            recoveredBlock15PC := 23.
        ].
        recoveredBlock15Step = 23 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 24.
        ].
        recoveredBlock15Step = 24 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) isIleStatement.
            recoveredBlock15PC := 25.
        ].
        recoveredBlock15Step = 25 ifTrue: [
            (recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 34] ifFalse: [recoveredBlock15PC := 28].
        ].
        recoveredBlock15Step = 28 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 29.
        ].
        recoveredBlock15Step = 29 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) isIleTempIdentifier.
            recoveredBlock15PC := 30.
        ].
        recoveredBlock15Step = 30 ifTrue: [
            (recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 96] ifFalse: [recoveredBlock15PC := 34].
        ].
        recoveredBlock15Step = 34 ifTrue: [
            recoveredBlock15PC := 35.
        ].
        recoveredBlock15Step = 35 ifTrue: [
            recoveredBlock15Stack1 := nil.
            recoveredBlock15PC := 36.
        ].
        recoveredBlock15Step = 36 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 37.
        ].
        recoveredBlock15Step = 37 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) isIleTempAssignedExpr.
            recoveredBlock15PC := 39.
        ].
        recoveredBlock15Step = 39 ifTrue: [
            (recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 42] ifFalse: [recoveredBlock15PC := 50].
        ].
        recoveredBlock15Step = 42 ifTrue: [
            recoveredBlock15Stack2 := visitedTempAssigns.
            recoveredBlock15PC := 44.
        ].
        recoveredBlock15Step = 44 ifTrue: [
            recoveredBlock15Stack3 := recoveredBlock15Arg1.
            recoveredBlock15PC := 45.
        ].
        recoveredBlock15Step = 45 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) includes: (recoveredBlock15Stack3).
            recoveredBlock15PC := 47.
        ].
        recoveredBlock15Step = 47 ifTrue: [
            (recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 96] ifFalse: [recoveredBlock15PC := 50].
        ].
        recoveredBlock15Step = 50 ifTrue: [
            recoveredBlock15PC := 51.
        ].
        recoveredBlock15Step = 51 ifTrue: [
            recoveredBlock15Stack1 := knownNodes.
            recoveredBlock15PC := 53.
        ].
        recoveredBlock15Step = 53 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 54.
        ].
        recoveredBlock15Step = 54 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) includes: (recoveredBlock15Stack2).
            recoveredBlock15PC := 56.
        ].
        recoveredBlock15Step = 56 ifTrue: [
            (recoveredBlock15Stack1) ifTrue: [recoveredBlock15PC := 60] ifFalse: [recoveredBlock15PC := 77].
        ].
        recoveredBlock15Step = 60 ifTrue: [
            recoveredBlock15Stack1 := self.
            recoveredBlock15PC := 61.
        ].
        recoveredBlock15Step = 61 ifTrue: [
            recoveredBlock15Stack2 := [
    false
].
            recoveredBlock15PC := 63.
        ].
        recoveredBlock15Step = 63 ifTrue: [
            recoveredBlock15PC := 68.
        ].
        recoveredBlock15Step = 68 ifTrue: [
            recoveredBlock15Stack3 := 'Syntax tree contains duplicated node '.
            recoveredBlock15PC := 70.
        ].
        recoveredBlock15Step = 70 ifTrue: [
            recoveredBlock15Stack4 := recoveredBlock15Arg1.
            recoveredBlock15PC := 71.
        ].
        recoveredBlock15Step = 71 ifTrue: [
            recoveredBlock15Stack4 := (recoveredBlock15Stack4) errLabel.
            recoveredBlock15PC := 73.
        ].
        recoveredBlock15Step = 73 ifTrue: [
            recoveredBlock15Stack3 := (recoveredBlock15Stack3) , (recoveredBlock15Stack4).
            recoveredBlock15PC := 75.
        ].
        recoveredBlock15Step = 75 ifTrue: [
            (recoveredBlock15Stack1) ileAssert: (recoveredBlock15Stack2) message: (recoveredBlock15Stack3).
            recoveredBlock15PC := 77.
        ].
        recoveredBlock15Step = 77 ifTrue: [
            recoveredBlock15Stack1 := knownNodes.
            recoveredBlock15PC := 79.
        ].
        recoveredBlock15Step = 79 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 80.
        ].
        recoveredBlock15Step = 80 ifTrue: [
            (recoveredBlock15Stack1) add: (recoveredBlock15Stack2).
            recoveredBlock15PC := 82.
        ].
        recoveredBlock15Step = 82 ifTrue: [
            recoveredBlock15Stack1 := nil.
            recoveredBlock15PC := 83.
        ].
        recoveredBlock15Step = 83 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 84.
        ].
        recoveredBlock15Step = 84 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) isIleTempAssignedExpr.
            recoveredBlock15PC := 86.
        ].
        recoveredBlock15Step = 86 ifTrue: [
            (recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 90] ifFalse: [recoveredBlock15PC := 96].
        ].
        recoveredBlock15Step = 90 ifTrue: [
            recoveredBlock15PC := 91.
        ].
        recoveredBlock15Step = 91 ifTrue: [
            recoveredBlock15Stack1 := visitedTempAssigns.
            recoveredBlock15PC := 93.
        ].
        recoveredBlock15Step = 93 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 94.
        ].
        recoveredBlock15Step = 94 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) add: (recoveredBlock15Stack2).
            recoveredBlock15PC := 96.
        ].
        recoveredBlock15Step = 96 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
    (self) visitNode: (recoveredValue4) check: (recoveredValue5).
    ^self
! !

