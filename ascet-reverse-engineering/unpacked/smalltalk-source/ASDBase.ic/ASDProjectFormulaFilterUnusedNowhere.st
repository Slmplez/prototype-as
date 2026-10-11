"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20019730; bytecode file offset 0x92209c"
!ASDProjectFormulaFilterUnusedNowhere methodsFor: 'recovered'!
filterLabel
    ^'Not used'
! !

"ASDBase.ic method 0x20114308; bytecode file offset 0xa10bdc"
!ASDProjectFormulaFilterUnusedNowhere methodsFor: 'recovered'!
globalFormulasForProjectEditorController: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) usedFormulasAnywhere.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) globalFormulas.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredLocal2.
    (recoveredValue4) removeAll: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

