"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200ca11c; bytecode file offset 0x9c69f8"
!SGAbstractMakeConfig class methodsFor: 'recovered'!
createForImpl: recoveredArg1 data: recoveredArg2 sgClass: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (recoveredValue2) asInstVar.
    recoveredValue4 := (self) createForImpl: (recoveredValue0) data: (recoveredValue1) asdElement: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20169c70; bytecode file offset 0xa66570"
!SGAbstractMakeConfig class methodsFor: 'recovered'!
createForImpl: recoveredArg1 data: recoveredArg2 asdElement: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) implementation: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) data: (recoveredValue5).
    recoveredValue6 := recoveredValue0.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) asdElement: (recoveredValue7).
    ^recoveredValue0
! !

