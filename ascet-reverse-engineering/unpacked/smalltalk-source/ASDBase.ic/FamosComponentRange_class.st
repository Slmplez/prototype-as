"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001a24c; bytecode file offset 0x92209c"
!FamosComponentRange class methodsFor: 'recovered'!
keyWord
    ^'CR'
! !

"ASDBase.ic method 0x200b66f8; bytecode file offset 0x9b39ac"
!FamosComponentRange class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('transform' 'm' 'y0' 'calibrated' 'unitLength' 'unit')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201008c4; bytecode file offset 0x9fd17c"
!FamosComponentRange class methodsFor: 'recovered'!
create: recoveredArg1 unit: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) create: (recoveredValue0) m: (1) y0: (0) calibrated: (false) unit: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20267368; bytecode file offset 0xb63c40"
!FamosComponentRange class methodsFor: 'recovered'!
create: recoveredArg1 m: recoveredArg2 y0: recoveredArg3 calibrated: recoveredArg4 unit: recoveredArg5
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := (self) create.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) transform: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) m: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) y0: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) calibrated: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg5.
    (recoveredValue10) unit: (recoveredValue11).
    recoveredValue12 := recoveredArg5.
    recoveredValue13 := (recoveredValue12) size.
    (recoveredValue1) unitLength: (recoveredValue13).
    recoveredValue14 := recoveredLocal1.
    (recoveredValue14) getKeyBytes.
    recoveredValue15 := recoveredLocal1.
    ^recoveredValue15
! !

