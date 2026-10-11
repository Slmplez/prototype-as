"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200288f4; bytecode file offset 0x934580"
!SGSimCTParameters class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20314de0; bytecode file offset 0xc116e0"
!SGSimCTParameters class methodsFor: 'recovered'!
copy: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) absError.
    (recoveredValue1) absError: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) dt.
    (recoveredValue4) dt: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) h.
    (recoveredValue7) h: (recoveredValue9).
    recoveredValue10 := recoveredValue0.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) hMax.
    (recoveredValue10) hMax: (recoveredValue12).
    recoveredValue13 := recoveredValue0.
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := (recoveredValue14) hMin.
    (recoveredValue13) hMin: (recoveredValue15).
    recoveredValue16 := recoveredValue0.
    recoveredValue17 := recoveredArg1.
    recoveredValue18 := (recoveredValue17) integrator.
    (recoveredValue16) integrator: (recoveredValue18).
    recoveredValue19 := recoveredValue0.
    recoveredValue20 := recoveredArg1.
    recoveredValue21 := (recoveredValue20) maxIterations.
    (recoveredValue19) maxIterations: (recoveredValue21).
    recoveredValue22 := recoveredValue0.
    recoveredValue23 := recoveredArg1.
    recoveredValue24 := (recoveredValue23) relError.
    (recoveredValue22) relError: (recoveredValue24).
    recoveredValue25 := recoveredArg1.
    recoveredValue26 := (recoveredValue25) startH.
    recoveredValue27 := (recoveredValue0) startH: (recoveredValue26).
    ^recoveredValue27
! !

