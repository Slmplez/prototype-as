"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20083768; bytecode file offset 0x980230"
!ASDEnvironmentSettings class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) create: (recoveredValue0) osSettings: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201017fc; bytecode file offset 0x9fe138"
!ASDEnvironmentSettings class methodsFor: 'recovered'!
create: recoveredArg1 osSettings: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) target: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) osSettings: (recoveredValue5).
    ^recoveredValue1
! !

