"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20015a68; bytecode file offset 0x76b34"
!OSPtr methodsFor: 'recovered'!
sst32At: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint8At: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) bitShift: (24).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) + (1).
    recoveredValue5 := (self) uint8At: (recoveredValue4).
    recoveredValue6 := (recoveredValue5) bitShift: (16).
    recoveredValue7 := (recoveredValue2) + (recoveredValue6).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) + (2).
    recoveredValue10 := (self) uint8At: (recoveredValue9).
    recoveredValue11 := (recoveredValue10) bitShift: (8).
    recoveredValue12 := (recoveredValue7) + (recoveredValue11).
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := (recoveredValue13) + (3).
    recoveredValue15 := (self) uint8At: (recoveredValue14).
    recoveredValue16 := (recoveredValue12) + (recoveredValue15).
    ^recoveredValue16
! !

"xxx_dyn.ic method 0x2001e9f8; bytecode file offset 0x7fac8"
!OSPtr methodsFor: 'recovered'!
sst32At: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) bitShift: (-24).
    recoveredValue3 := (recoveredValue2) bitAnd: (255).
    (self) uint8At: (recoveredValue0) put: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) + (1).
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue6) bitShift: (-16).
    recoveredValue8 := (recoveredValue7) bitAnd: (255).
    (self) uint8At: (recoveredValue5) put: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) + (2).
    recoveredValue11 := recoveredArg2.
    recoveredValue12 := (recoveredValue11) bitShift: (-8).
    recoveredValue13 := (recoveredValue12) bitAnd: (255).
    (self) uint8At: (recoveredValue10) put: (recoveredValue13).
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := (recoveredValue14) + (3).
    recoveredValue16 := recoveredArg2.
    recoveredValue17 := (recoveredValue16) bitAnd: (255).
    (self) uint8At: (recoveredValue15) put: (recoveredValue17).
    recoveredValue18 := recoveredArg2.
    ^recoveredValue18
! !

