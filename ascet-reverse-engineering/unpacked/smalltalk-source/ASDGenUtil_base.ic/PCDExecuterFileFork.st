"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDGenUtil_base.ic method 0x20001e00; bytecode file offset 0xffb0"
!PCDExecuterFileFork methodsFor: 'recovered'!
executeInScope: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    super executeInScope: (recoveredValue0).
    (self) parseRecursive.
    recoveredValue1 := [
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 |
    recoveredBlock14Value0 := entries.
    recoveredBlock14Value1 := [:recoveredBlock14Block22Arg1 | 
    | recoveredBlock14Block22Value0 recoveredBlock14Block22Value1 recoveredBlock14Block22Value2 |
    recoveredBlock14Block22Value0 := recoveredBlock14Block22Arg1.
    recoveredBlock14Block22Value1 := recoveredArg1.
    recoveredBlock14Block22Value2 := (recoveredBlock14Block22Value0) executeInScope: (recoveredBlock14Block22Value1).
    recoveredBlock14Block22Value2
].
    recoveredBlock14Value2 := (recoveredBlock14Value0) do: (recoveredBlock14Value1).
    recoveredBlock14Value2
].
    (recoveredValue1) fork.
    ^self
! !

