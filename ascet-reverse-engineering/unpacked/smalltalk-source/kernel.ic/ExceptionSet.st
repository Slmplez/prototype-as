"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20005158; bytecode file offset 0x5008c"
!ExceptionSet methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    contents := recoveredValue1.
    ^self
! !

"kernel.ic method 0x200057c4; bytecode file offset 0x506ec"
!ExceptionSet methodsFor: 'recovered'!
, recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := contents.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"kernel.ic method 0x2000d2dc; bytecode file offset 0x581f0"
!ExceptionSet methodsFor: 'recovered'!
handles: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := contents.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) handles: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    recoveredValue2 := (recoveredValue0) anySatisfy: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x20012364; bytecode file offset 0x5d28c"
!ExceptionSet methodsFor: 'recovered'!
handle: recoveredArg1 do: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := contents.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := ExceptionalEventCollection.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [:block28008c5cArg1 :block28008c5cArg2 | 
    | block28008c5cValue0 block28008c5cValue1 block28008c5cValue2 block28008c5cValue3 |
    block28008c5cValue0 := block28008c5cArg1.
    block28008c5cValue1 := block28008c5cArg2.
    block28008c5cValue2 := (block28008c5cValue1) exceptionalEvent.
    block28008c5cValue3 := (block28008c5cValue0) | (block28008c5cValue2).
    block28008c5cValue3
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) inject: (recoveredStack2) into: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

