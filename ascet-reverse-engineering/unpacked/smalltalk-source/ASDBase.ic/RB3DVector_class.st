"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20057f98; bytecode file offset 0x956284"
!RB3DVector class methodsFor: 'recovered'!
createWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) values: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201ea5f8; bytecode file offset 0xae6ebc"
!RB3DVector class methodsFor: 'recovered'!
createWithX: recoveredArg1 withY: recoveredArg2 withZ: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (3).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := (self) createWith: (recoveredValue1).
    ^recoveredValue8
! !

