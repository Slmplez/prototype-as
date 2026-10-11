"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDGenUtil_base.ic method 0x20001fe0; bytecode file offset 0x10194"
!PCDExecuterFile methodsFor: 'recovered'!
executeInScope: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := System.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredArg1.
    super executeInScope: (recoveredBlock6Value0).
    (self) parseRecursive.
    recoveredBlock6Value1 := entries.
    recoveredBlock6Value2 := [:recoveredBlock6Block24Arg1 | 
    | recoveredBlock6Block24Value0 recoveredBlock6Block24Value1 recoveredBlock6Block24Value2 |
    recoveredBlock6Block24Value0 := recoveredBlock6Block24Arg1.
    recoveredBlock6Block24Value1 := recoveredArg1.
    recoveredBlock6Block24Value2 := (recoveredBlock6Block24Value0) executeInScope: (recoveredBlock6Block24Value1).
    recoveredBlock6Block24Value2
].
    recoveredBlock6Value3 := (recoveredBlock6Value1) do: (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    (recoveredValue0) showBusyCursorWhile: (recoveredValue1).
    ^self
! !

