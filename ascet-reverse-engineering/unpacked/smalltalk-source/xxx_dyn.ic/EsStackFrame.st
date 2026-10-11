"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20002edc; bytecode file offset 0x64108"
!EsStackFrame methodsFor: 'recovered'!
argument: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) arguments.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20011970; bytecode file offset 0x72a50"
!EsStackFrame methodsFor: 'recovered'!
arguments
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) visibleVariables.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block2800ad40Arg1 | 
    | block2800ad40Value0 block2800ad40Value1 |
    block2800ad40Value0 := block2800ad40Arg1.
    block2800ad40Value1 := (block2800ad40Value0) isArgument.
    block2800ad40Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [:block2800ad64Arg1 | 
    | block2800ad64Value0 block2800ad64Value1 |
    block2800ad64Value0 := block2800ad64Arg1.
    block2800ad64Value1 := (block2800ad64Value0) value.
    block2800ad64Value1
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

