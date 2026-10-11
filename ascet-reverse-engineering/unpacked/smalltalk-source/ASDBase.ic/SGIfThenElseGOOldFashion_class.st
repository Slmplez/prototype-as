"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20023720; bytecode file offset 0x92209c"
!SGIfThenElseGOOldFashion class methodsFor: 'recovered'!
classSymbolForStorage
    ^'SGIfGOOldFashion'
! !

"ASDBase.ic method 0x201e192c; bytecode file offset 0xade230"
!SGIfThenElseGOOldFashion class methodsFor: 'recovered'!
interfacePositions
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) at: ('Cond') put: (#(50)).
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) at: ('Then') put: (#(350)).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) at: ('Else') put: (#(150)).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20335794; bytecode file offset 0xc32078"
!SGIfThenElseGOOldFashion class methodsFor: 'recovered'!
interfaceProcs
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (3).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := SGAliasMethod.
    recoveredValue4 := SGReservedNames.
    recoveredValue5 := (recoveredValue4) conditionMethod.
    recoveredValue6 := Array.
    recoveredValue7 := (recoveredValue6) with: ('Cond').
    recoveredValue8 := Array.
    recoveredValue9 := (recoveredValue8) with: (nil).
    recoveredValue10 := (recoveredValue3) createWithName: (recoveredValue5) inputArguments: (recoveredValue7) inputTemplates: (recoveredValue9).
    (recoveredValue2) at: (1) put: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := SGAliasMethod.
    recoveredValue13 := (recoveredValue12) createWithReturn: ('Then') template: (nil).
    (recoveredValue11) at: (2) put: (recoveredValue13).
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := SGAliasMethod.
    recoveredValue16 := (recoveredValue15) createWithReturn: ('Else') template: (nil).
    (recoveredValue14) at: (3) put: (recoveredValue16).
    recoveredValue17 := recoveredLocal1.
    ^recoveredValue17
! !

