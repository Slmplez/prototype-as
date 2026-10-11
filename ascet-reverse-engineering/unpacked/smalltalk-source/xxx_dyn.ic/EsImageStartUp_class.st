"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20017e04; bytecode file offset 0x78ed4"
!EsImageStartUp class methodsFor: 'recovered'!
sstOutputWalkback: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ExitAfterWalkback.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 |
    ExitAfterWalkback := false.
    recoveredBlock9Value0 := recoveredArg1.
    recoveredBlock9Value1 := (self) outputWalkback: (recoveredBlock9Value0).
    recoveredBlock9Value1
].
    recoveredValue2 := [
    | recoveredBlock24Value0 recoveredBlock24Value1 |
    recoveredBlock24Value0 := recoveredLocal1.
    recoveredBlock24Value1 := recoveredBlock24Value0.
    ExitAfterWalkback := recoveredBlock24Value1.
    recoveredBlock24Value0
].
    (recoveredValue1) ensure: (recoveredValue2).
    ^self
! !

