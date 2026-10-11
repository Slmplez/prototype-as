"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdbh.ic method 0x20000ca4; bytecode file offset 0x12774"
!AbtDependentsCollection class methodsFor: 'recovered'!
defaultSize
    ^2
! !

"abtdbh.ic method 0x20001154; bytecode file offset 0x12c3c"
!AbtDependentsCollection class methodsFor: 'recovered'!
forEvent: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) event: (recoveredValue2).
    ^recoveredValue0
! !

"abtdbh.ic method 0x200014b4; bytecode file offset 0x12f90"
!AbtDependentsCollection class methodsFor: 'recovered'!
new: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) initialize: (recoveredValue1).
    ^recoveredValue2
! !

"abtdbh.ic method 0x20001628; bytecode file offset 0x13108"
!AbtDependentsCollection class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super new.
    recoveredValue1 := (self) defaultSize.
    recoveredValue2 := (recoveredValue0) initialize: (recoveredValue1).
    ^recoveredValue2
! !

"abtdbh.ic method 0x200020c0; bytecode file offset 0x13ba0"
!AbtDependentsCollection class methodsFor: 'recovered'!
forEvent: recoveredArg1 size: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := super new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg2.
    (recoveredValue1) initialize: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) event: (recoveredValue4).
    ^recoveredValue0
! !

