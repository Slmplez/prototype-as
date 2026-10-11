"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20193d38; bytecode file offset 0xa905fc"
!OldObjectLoader methodsFor: 'recovered'!
restoreInstVars: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280d1d00Arg1 | 
    | block280d1d00Stack0 block280d1d00Stack1 block280d1d00Stack2 block280d1d00Stack3 block280d1d00PC block280d1d00Step block280d1d00Done block280d1d00Result |
    block280d1d00Stack0 := self.
    block280d1d00PC := 4.
    block280d1d00Done := false.
    [block280d1d00Done not] whileTrue: [
        block280d1d00Step := block280d1d00PC.
        block280d1d00Step = 4 ifTrue: [
            block280d1d00Stack1 := block280d1d00Arg1.
            block280d1d00PC := 5.
        ].
        block280d1d00Step = 5 ifTrue: [
            block280d1d00Stack2 := [:block280d1d24Arg1 | 
    | block280d1d24Value0 block280d1d24Value1 |
    block280d1d24Value0 := block280d1d24Arg1.
    block280d1d24Value1 := (block280d1d24Value0) restoreInstVars.
    block280d1d24Value1
].
            block280d1d00PC := 7.
        ].
        block280d1d00Step = 7 ifTrue: [
            block280d1d00PC := 13.
        ].
        block280d1d00Step = 13 ifTrue: [
            block280d1d00Stack1 := (block280d1d00Stack1) do: (block280d1d00Stack2).
            block280d1d00PC := 14.
        ].
        block280d1d00Step = 14 ifTrue: [
            block280d1d00Result := block280d1d00Stack1.
            block280d1d00Done := true.
        ].
    ].
    block280d1d00Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201bcfb4; bytecode file offset 0xab9880"
!OldObjectLoader methodsFor: 'recovered'!
restoreInstVarClasses: recoveredArg1
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
            recoveredStack2 := [:block280d4658Arg1 | 
    | block280d4658Value0 block280d4658Value1 |
    block280d4658Value0 := block280d4658Arg1.
    block280d4658Value1 := (block280d4658Value0) canUnderstand: ('restoreInstVars').
    block280d4658Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) extractInstancesOfClasses: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

