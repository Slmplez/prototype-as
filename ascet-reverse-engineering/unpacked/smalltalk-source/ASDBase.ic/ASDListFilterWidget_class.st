"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200192bc; bytecode file offset 0x92209c"
!ASDListFilterWidget class methodsFor: 'recovered'!
labelAll
    ^'<all>'
! !

"ASDBase.ic method 0x2017db2c; bytecode file offset 0xa7a3f0"
!ASDListFilterWidget class methodsFor: 'recovered'!
createWidget: recoveredArg1 informWidget: recoveredArg2 parent: recoveredArg3 argBlock: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := recoveredArg4.
    recoveredValue3 := super createWidget: (recoveredValue0) parent: (recoveredValue1) argBlock: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) informWidget: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    (recoveredValue6) initializeAfterCreate.
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

