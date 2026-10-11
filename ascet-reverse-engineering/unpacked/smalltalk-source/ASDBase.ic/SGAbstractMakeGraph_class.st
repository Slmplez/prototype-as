"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200abf60; bytecode file offset 0x9a894c"
!SGAbstractMakeGraph class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) command: (recoveredValue3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ad018; bytecode file offset 0x9a98d4"
!SGAbstractMakeGraph class methodsFor: 'recovered'!
createGraphFor: recoveredArg1 command: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) create: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) addRootNode: (recoveredValue3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20100728; bytecode file offset 0x9fcfe8"
!SGAbstractMakeGraph class methodsFor: 'recovered'!
createSubGraphFor: recoveredArg1 command: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) create: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) nodeFor: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) setTopNode: (recoveredValue5).
    ^recoveredValue1
! !

