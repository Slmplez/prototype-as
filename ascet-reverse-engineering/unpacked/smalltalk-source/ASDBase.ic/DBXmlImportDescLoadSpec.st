"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001e314; bytecode file offset 0x92209c"
!DBXmlImportDescLoadSpec methodsFor: 'recovered'!
dbXmlAmdType
    ^'amdType_specification'
! !

"ASDBase.ic method 0x200402e8; bytecode file offset 0x93d278"
!DBXmlImportDescLoadSpec methodsFor: 'recovered'!
database
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := parent.
    recoveredValue1 := (recoveredValue0) database.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006685c; bytecode file offset 0x963428"
!DBXmlImportDescLoadSpec methodsFor: 'recovered'!
parent
    | recoveredValue0 |
    recoveredValue0 := parent.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009cfb8; bytecode file offset 0x99988c"
!DBXmlImportDescLoadSpec methodsFor: 'recovered'!
getDescription
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := parent.
    recoveredValue1 := (recoveredValue0) getDescription.
    recoveredValue2 := (recoveredValue1) , ('[Specifications]').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bdedc; bytecode file offset 0x9bb178"
!DBXmlImportDescLoadSpec methodsFor: 'recovered'!
initOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    parent := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20132fdc; bytecode file offset 0xa2f89c"
!DBXmlImportDescLoadSpec methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := parent.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := super printParent: (recoveredValue1) on: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20330fbc; bytecode file offset 0xc2d8b4"
!DBXmlImportDescLoadSpec methodsFor: 'recovered'!
execute: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := ('Die') == ('Call_98591').
    recoveredValue1 := parent.
    recoveredValue2 := (recoveredValue1) proxy.
    recoveredValue3 := [].
    (recoveredValue2) getObjectIfUndefined: (recoveredValue3).
    recoveredValue4 := DBXmlImporter.
    recoveredValue5 := (recoveredValue4) new.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue5) initOn: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := DBXmlImportStepSpecification.
    recoveredValue9 := (recoveredValue8) new.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue9) initOn: (recoveredValue10) importDesc: (self).
    recoveredLocal2 := recoveredValue11.
    recoveredValue12 := recoveredLocal2.
    (recoveredValue12) performStep.
    recoveredValue13 := recoveredLocal1.
    (recoveredValue13) handleIssues.
    recoveredValue14 := parent.
    (recoveredValue14) specificationsLoaded.
    recoveredValue15 := ('Kli') == ('Workspace_Performance').
    recoveredValue16 := recoveredArg1.
    (recoveredValue16) dbXmlClearModifyRecursive.
    recoveredValue17 := recoveredArg1.
    recoveredValue18 := (recoveredValue17) importDesc.
    (recoveredValue18) dbXmlClearModifyRecursive.
    recoveredValue19 := recoveredLocal1.
    ^recoveredValue19
! !

