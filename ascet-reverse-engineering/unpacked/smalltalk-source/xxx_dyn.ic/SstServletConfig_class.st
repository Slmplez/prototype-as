"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200058c4; bytecode file offset 0x66a34"
!SstServletConfig class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20005fd0; bytecode file offset 0x6710c"
!SstServletConfig class methodsFor: 'recovered'!
for: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) servletContext: (recoveredValue2).
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20008c1c; bytecode file offset 0x69cec"
!SstServletConfig class methodsFor: 'recovered'!
for: recoveredArg1 initParameters: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) for: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) copy.
    (recoveredValue2) initParameters: (recoveredValue4).
    ^recoveredValue1
! !

