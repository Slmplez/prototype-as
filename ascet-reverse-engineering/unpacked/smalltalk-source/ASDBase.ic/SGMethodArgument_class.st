"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20169ca8; bytecode file offset 0xa66570"
!SGMethodArgument class methodsFor: 'recovered'!
create: recoveredArg1 for: recoveredArg2 template: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) argumentName: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) owner: (recoveredValue5).
    recoveredValue6 := recoveredValue0.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) sgClass: (recoveredValue7).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2020e548; bytecode file offset 0xb0ae24"
!SGMethodArgument class methodsFor: 'recovered'!
createGetSetArgumentFromVariable: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) aliasName.
    (recoveredValue2) aliasName: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) elementName.
    (recoveredValue5) argumentName: (recoveredValue7).
    recoveredValue8 := recoveredValue0.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) owner.
    (recoveredValue8) owner: (recoveredValue10).
    recoveredValue11 := recoveredValue0.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) sgClass.
    (recoveredValue11) sgClass: (recoveredValue13).
    ^recoveredValue0
! !

