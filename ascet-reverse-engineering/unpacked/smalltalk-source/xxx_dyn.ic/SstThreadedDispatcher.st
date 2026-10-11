"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x2000e02c; bytecode file offset 0x6f110"
!SstThreadedDispatcher methodsFor: 'recovered'!
dispatchRequest: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := super dispatchRequest: (recoveredBlock4Value0).
    recoveredBlock4Value1
].
    (recoveredValue0) fork.
    ^self
! !

