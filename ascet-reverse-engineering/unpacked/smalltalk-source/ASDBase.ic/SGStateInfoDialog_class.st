"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200e2ec0; bytecode file offset 0x9df778"
!SGStateInfoDialog class methodsFor: 'recovered'!
minSize
    | recoveredValue0 |
    recoveredValue0 := (550) @ (380).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20188fcc; bytecode file offset 0xa85890"
!SGStateInfoDialog class methodsFor: 'recovered'!
createFor: recoveredArg1 methodManager: recoveredArg2 allStateInfos: recoveredArg3 graphicObject: recoveredArg4 errorObject: recoveredArg5 readOnly: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg4.
    recoveredValue3 := recoveredArg6.
    recoveredValue4 := super createFor: (recoveredValue0) methodManager: (recoveredValue1) graphicObject: (recoveredValue2) readOnly: (recoveredValue3).
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) allStateInfos: (recoveredValue6).
    recoveredValue7 := recoveredValue4.
    recoveredValue8 := recoveredArg5.
    (recoveredValue7) errorObject: (recoveredValue8).
    ^recoveredValue4
! !

