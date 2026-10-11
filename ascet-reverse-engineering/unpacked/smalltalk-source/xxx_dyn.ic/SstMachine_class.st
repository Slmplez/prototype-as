"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200057e8; bytecode file offset 0x66a34"
!SstMachine class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20009634; bytecode file offset 0x6a704"
!SstMachine class methodsFor: 'recovered'!
withHandler: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (recoveredValue0) handlers.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) add: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x2000bb88; bytecode file offset 0x6cc74"
!SstMachine class methodsFor: 'recovered'!
named: recoveredArg1 withHandler: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) new.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (recoveredValue1) handlers.
    recoveredValue3 := recoveredArg2.
    (recoveredValue2) add: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) name: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"xxx_dyn.ic method 0x2000bba0; bytecode file offset 0x6cc74"
!SstMachine class methodsFor: 'recovered'!
named: recoveredArg1 withHandlers: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) new.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (recoveredValue1) handlers.
    recoveredValue3 := recoveredArg2.
    (recoveredValue2) addAll: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) name: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

