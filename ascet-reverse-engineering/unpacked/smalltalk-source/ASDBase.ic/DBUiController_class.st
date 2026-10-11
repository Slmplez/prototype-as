"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200319d4; bytecode file offset 0x934580"
!DBUiController class methodsFor: 'recovered'!
first
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) allInstances.
    recoveredValue1 := (recoveredValue0) first.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20103a78; bytecode file offset 0xa00338"
!DBUiController class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) dbInterface: (recoveredValue3).
    (recoveredValue1) initializeInstances.
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

