"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20020360; bytecode file offset 0x92209c"
!DBXmlImportDescProjectFile methodsFor: 'recovered'!
dbXmlAmdType
    ^'amdType_projectFile'
! !

"ASDBase.ic method 0x20040f30; bytecode file offset 0x93d83c"
!DBXmlImportDescProjectFile methodsFor: 'recovered'!
database
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := parent.
    recoveredValue1 := (recoveredValue0) database.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008a314; bytecode file offset 0x986c00"
!DBXmlImportDescProjectFile methodsFor: 'recovered'!
getDescription
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := location.
    recoveredValue1 := (recoveredValue0) , ('[project file]').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ad098; bytecode file offset 0x9a9964"
!DBXmlImportDescProjectFile methodsFor: 'recovered'!
initOn: recoveredArg1 parent: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    location := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    parent := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20133018; bytecode file offset 0xa2f8d8"
!DBXmlImportDescProjectFile methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := parent.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := super printParent: (recoveredValue1) on: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201b2b0c; bytecode file offset 0xaaf3e0"
!DBXmlImportDescProjectFile methodsFor: 'recovered'!
execute: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ('Die') == ('Call_98591').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := SGWrapperDB.
    recoveredValue3 := (recoveredValue2) new.
    recoveredValue4 := ETASOSHandle.
    recoveredValue5 := location.
    recoveredValue6 := (recoveredValue4) readFile: (recoveredValue5).
    recoveredValue7 := (recoveredValue3) xmlInitOn: (recoveredValue6).
    (recoveredValue1) object: (recoveredValue7).
    ^nil
! !

