"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001af6c; bytecode file offset 0x92209c"
!ASDProjectFormulaFilterUnused methodsFor: 'recovered'!
filterLabel
    ^'Not used in ACTIVE implementations'
! !

"ASDBase.ic method 0x2007a204; bytecode file offset 0x97c330"
!ASDProjectFormulaFilterUnused methodsFor: 'recovered'!
allowsFormulaAdding
    ^false
! !

"ASDBase.ic method 0x2007b3a4; bytecode file offset 0x97c330"
!ASDProjectFormulaFilterUnused methodsFor: 'recovered'!
allowsFormulaRenaming
    ^false
! !

"ASDBase.ic method 0x2007e82c; bytecode file offset 0x97c330"
!ASDProjectFormulaFilterUnused methodsFor: 'recovered'!
allowsMissingFormulaAdding
    ^false
! !

"ASDBase.ic method 0x2011431c; bytecode file offset 0xa10bdc"
!ASDProjectFormulaFilterUnused methodsFor: 'recovered'!
globalFormulasForProjectEditorController: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) usedFormulas.
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

