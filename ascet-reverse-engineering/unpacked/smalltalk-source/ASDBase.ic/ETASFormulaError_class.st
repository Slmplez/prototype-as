"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003a880; bytecode file offset 0x938608"
!ETASFormulaError class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createBasic: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20113b38; bytecode file offset 0xa103f8"
!ETASFormulaError class methodsFor: 'recovered'!
create: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue1).
    recoveredValue3 := super create: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20113db4; bytecode file offset 0xa10674"
!ETASFormulaError class methodsFor: 'recovered'!
create: recoveredArg1 position: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super create: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) position: (recoveredValue4).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2015b378; bytecode file offset 0xa57c3c"
!ETASFormulaError class methodsFor: 'recovered'!
create: recoveredArg1 with: recoveredArg2 position: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue1).
    recoveredValue3 := super create: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) position: (recoveredValue6).
    ^recoveredValue4
! !

