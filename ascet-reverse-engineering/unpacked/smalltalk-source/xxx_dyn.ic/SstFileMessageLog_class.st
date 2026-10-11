"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x2001e270; bytecode file offset 0x7f360"
!SstFileMessageLog class methodsFor: 'recovered'!
example
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) path: ('abc.log').
    recoveredValue2 := (recoveredValue0) open.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := [
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 |
    recoveredBlock14Value0 := SstByteMessage.
    recoveredBlock14Value1 := (recoveredBlock14Value0) withAllSubclasses.
    recoveredBlock14Value2 := [:recoveredBlock14Block24Arg1 | 
    | recoveredBlock14Block24Value0 recoveredBlock14Block24Value1 recoveredBlock14Block24Value2 recoveredBlock14Block24Value3 |
    recoveredBlock14Block24Value0 := recoveredLocal1.
    recoveredBlock14Block24Value1 := recoveredBlock14Block24Arg1.
    recoveredBlock14Block24Value2 := (recoveredBlock14Block24Value1) name.
    recoveredBlock14Block24Value3 := (recoveredBlock14Block24Value0) log: (recoveredBlock14Block24Value2).
    recoveredBlock14Block24Value3
].
    recoveredBlock14Value3 := (recoveredBlock14Value1) do: (recoveredBlock14Value2).
    recoveredBlock14Value3
].
    recoveredValue4 := [
    | recoveredBlock42Value0 recoveredBlock42Value1 |
    recoveredBlock42Value0 := recoveredLocal1.
    recoveredBlock42Value1 := (recoveredBlock42Value0) close.
    recoveredBlock42Value1
].
    (recoveredValue3) ensure: (recoveredValue4).
    ^self
! !

