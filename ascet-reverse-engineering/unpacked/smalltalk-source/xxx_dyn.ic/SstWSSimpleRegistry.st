"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20003704; bytecode file offset 0x649e8"
!SstWSSimpleRegistry methodsFor: 'recovered'!
registry
    | recoveredValue0 |
    recoveredValue0 := registry.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20005210; bytecode file offset 0x662ec"
!SstWSSimpleRegistry methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    registry := recoveredValue1.
    ^self
! !

"xxx_dyn.ic method 0x20006248; bytecode file offset 0x67374"
!SstWSSimpleRegistry methodsFor: 'recovered'!
register: recoveredArg1 as: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) registry.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x200063b4; bytecode file offset 0x67530"
!SstWSSimpleRegistry methodsFor: 'recovered'!
lookup: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) registry.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20006f3c; bytecode file offset 0x681b0"
!SstWSSimpleRegistry methodsFor: 'recovered'!
lookup: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) registry.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20007c14; bytecode file offset 0x68ce4"
!SstWSSimpleRegistry methodsFor: 'recovered'!
unregister: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) registry.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    (recoveredValue0) removeKey: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^self
! !

"xxx_dyn.ic method 0x20007ca4; bytecode file offset 0x68f50"
!SstWSSimpleRegistry methodsFor: 'recovered'!
registry: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    registry := recoveredValue0.
    ^self
! !

