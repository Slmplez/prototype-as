"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x2000fb38; bytecode file offset 0x70c14"
!AaaManagement class methodsFor: 'recovered'!
switchToDebug
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SstInvocationConfiguration.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) allInstances.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block2800aa94Arg1 | 
    | block2800aa94Value0 block2800aa94Value1 block2800aa94Value2 |
    block2800aa94Value0 := block2800aa94Arg1.
    (block2800aa94Value0) trapExceptions: (false).
    block2800aa94Value1 := block2800aa94Arg1.
    block2800aa94Value2 := (block2800aa94Value1) forwardExceptions: (false).
    block2800aa94Value2
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
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

