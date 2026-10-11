"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20389750; bytecode file offset 0xc86038"
!EsStackFrame methodsFor: 'recovered'!
etasDebugPrintOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) process.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDead.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) visibleVariables.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Local1 recoveredBlock26Stack0 recoveredBlock26Stack1 recoveredBlock26Stack2 recoveredBlock26Stack3 recoveredBlock26Stack4 recoveredBlock26Stack5 recoveredBlock26Stack6 recoveredBlock26Stack7 recoveredBlock26PC recoveredBlock26Step recoveredBlock26Done recoveredBlock26Result |
    recoveredBlock26Stack0 := self.
    recoveredBlock26PC := 32.
    recoveredBlock26Done := false.
    [recoveredBlock26Done not] whileTrue: [
        recoveredBlock26Step := recoveredBlock26PC.
        recoveredBlock26Step = 32 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Arg1.
            recoveredBlock26PC := 33.
        ].
        recoveredBlock26Step = 33 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) value.
            recoveredBlock26PC := 35.
        ].
        recoveredBlock26Step = 35 ifTrue: [
            recoveredBlock26Local1 := recoveredBlock26Stack1.
            recoveredBlock26PC := 36.
        ].
        recoveredBlock26Step = 36 ifTrue: [
            recoveredBlock26Stack1 := recoveredArg1.
            recoveredBlock26PC := 39.
        ].
        recoveredBlock26Step = 39 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Stack1.
            recoveredBlock26PC := 40.
        ].
        recoveredBlock26Step = 40 ifTrue: [
            (recoveredBlock26Stack2) tab.
            recoveredBlock26Stack2 := recoveredBlock26Stack1.
            recoveredBlock26PC := 43.
        ].
        recoveredBlock26Step = 43 ifTrue: [
            recoveredBlock26Stack3 := '%1=%2'.
            recoveredBlock26PC := 45.
        ].
        recoveredBlock26Step = 45 ifTrue: [
            recoveredBlock26Stack4 := recoveredBlock26Arg1.
            recoveredBlock26PC := 46.
        ].
        recoveredBlock26Step = 46 ifTrue: [
            recoveredBlock26Stack4 := (recoveredBlock26Stack4) printString.
            recoveredBlock26PC := 48.
        ].
        recoveredBlock26Step = 48 ifTrue: [
            recoveredBlock26Stack5 := recoveredBlock26Local1.
            recoveredBlock26PC := 49.
        ].
        recoveredBlock26Step = 49 ifTrue: [
            recoveredBlock26Stack6 := self.
            recoveredBlock26PC := 50.
        ].
        recoveredBlock26Step = 50 ifTrue: [
            (recoveredBlock26Stack5 ~~ recoveredBlock26Stack6) ifTrue: [recoveredBlock26PC := 60] ifFalse: [recoveredBlock26PC := 54].
        ].
        recoveredBlock26Step = 54 ifTrue: [
            recoveredBlock26Stack5 := recoveredBlock26Local1.
            recoveredBlock26PC := 55.
        ].
        recoveredBlock26Step = 55 ifTrue: [
            recoveredBlock26Stack5 := (recoveredBlock26Stack5) printString.
            recoveredBlock26PC := 57.
        ].
        recoveredBlock26Step = 57 ifTrue: [
            recoveredBlock26PC := 63.
        ].
        recoveredBlock26Step = 60 ifTrue: [
            recoveredBlock26Stack5 := recoveredBlock26Local1.
            recoveredBlock26PC := 61.
        ].
        recoveredBlock26Step = 61 ifTrue: [
            recoveredBlock26Stack5 := (recoveredBlock26Stack5) debugPrintString.
            recoveredBlock26PC := 63.
        ].
        recoveredBlock26Step = 63 ifTrue: [
            recoveredBlock26Stack3 := (recoveredBlock26Stack3) bindWith: (recoveredBlock26Stack4) with: (recoveredBlock26Stack5).
            recoveredBlock26PC := 65.
        ].
        recoveredBlock26Step = 65 ifTrue: [
            (recoveredBlock26Stack2) nextPutAll: (recoveredBlock26Stack3).
            recoveredBlock26PC := 67.
        ].
        recoveredBlock26Step = 67 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) cr.
            recoveredBlock26PC := 68.
        ].
        recoveredBlock26Step = 68 ifTrue: [
            recoveredBlock26Result := recoveredBlock26Stack1.
            recoveredBlock26Done := true.
        ].
    ].
    recoveredBlock26Result
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

