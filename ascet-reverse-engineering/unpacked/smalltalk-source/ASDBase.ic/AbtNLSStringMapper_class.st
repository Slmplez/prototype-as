"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003ac0; bytecode file offset 0x90206c"
!AbtNLSStringMapper class methodsFor: 'recovered'!
unregisterMapping: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200a2d00; bytecode file offset 0x99f654"
!AbtNLSStringMapper class methodsFor: 'recovered'!
registerMapping: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := AbtNLSCoordinator.
    recoveredValue1 := (recoveredValue0) current.
    recoveredValue2 := (recoveredValue1) stringMapper.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) registerMapping: (recoveredValue3).
    ^recoveredValue4
! !

