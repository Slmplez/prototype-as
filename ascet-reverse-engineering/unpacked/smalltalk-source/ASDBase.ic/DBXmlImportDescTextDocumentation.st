"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200400f0; bytecode file offset 0x93d278"
!DBXmlImportDescTextDocumentation methodsFor: 'recovered'!
dbXmlAmdType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := parent.
    recoveredValue1 := (recoveredValue0) dbXmlAmdType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004033c; bytecode file offset 0x93d278"
!DBXmlImportDescTextDocumentation methodsFor: 'recovered'!
database
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := parent.
    recoveredValue1 := (recoveredValue0) database.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20065de4; bytecode file offset 0x963428"
!DBXmlImportDescTextDocumentation methodsFor: 'recovered'!
parent
    | recoveredValue0 |
    recoveredValue0 := parent.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009cfa4; bytecode file offset 0x99988c"
!DBXmlImportDescTextDocumentation methodsFor: 'recovered'!
getDescription
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := parent.
    recoveredValue1 := (recoveredValue0) getDescription.
    recoveredValue2 := (recoveredValue1) , ('[TextDoc]').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bdd3c; bytecode file offset 0x9bb178"
!DBXmlImportDescTextDocumentation methodsFor: 'recovered'!
initOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    parent := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20132fb4; bytecode file offset 0xa2f89c"
!DBXmlImportDescTextDocumentation methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := parent.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := super printParent: (recoveredValue1) on: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20209474; bytecode file offset 0xb05d4c"
!DBXmlImportDescTextDocumentation methodsFor: 'recovered'!
execute: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := DBXmlImporter.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) initOn: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := DBXmlImportStepTextDocumentation.
    recoveredValue5 := (recoveredValue4) new.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := parent.
    recoveredValue8 := (recoveredValue7) root.
    recoveredValue9 := (recoveredValue5) initOn: (recoveredValue6) importDesc: (recoveredValue8).
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := parent.
    recoveredValue12 := (recoveredValue11) stepClass.
    recoveredValue13 := (recoveredValue12) notesImportSelector.
    (recoveredValue10) perform: (recoveredValue13).
    ^self
! !

