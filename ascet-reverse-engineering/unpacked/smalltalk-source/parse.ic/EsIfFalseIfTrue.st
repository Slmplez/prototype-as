"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"parse.ic method 0x20000764; bytecode file offset 0x15de0"
!EsIfFalseIfTrue methodsFor: 'recovered'!
trueBlock
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := messagePattern.
    recoveredValue1 := (recoveredValue0) arguments.
    recoveredValue2 := (recoveredValue1) last.
    ^recoveredValue2
! !

"parse.ic method 0x20000784; bytecode file offset 0x15de0"
!EsIfFalseIfTrue methodsFor: 'recovered'!
falseBlock
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := messagePattern.
    recoveredValue1 := (recoveredValue0) arguments.
    recoveredValue2 := (recoveredValue1) first.
    ^recoveredValue2
! !

