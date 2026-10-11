"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20022d9c; bytecode file offset 0x92209c"
!ASDXMLImportIssueMissingImplementation methodsFor: 'recovered'!
autofixText
    ^'Drop information refering to the missing implementation'
! !

"ASDBase.ic method 0x20082bf0; bytecode file offset 0x97f4a4"
!ASDXMLImportIssueMissingImplementation methodsFor: 'recovered'!
repair: recoveredArg1
    done := true.
    ^true
! !

"ASDBase.ic method 0x20197d68; bytecode file offset 0xa94634"
!ASDXMLImportIssueMissingImplementation methodsFor: 'recovered'!
initOn: recoveredArg1 implName: recoveredArg2 implOID: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := ('Missing Implementation <') , (recoveredValue0).
    recoveredValue2 := (recoveredValue1) , ('> OID: ').
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    recoveredValue5 := recoveredArg1.
    super initOn: (recoveredValue4) item: (recoveredValue5).
    issueType := 'warning'.
    ^self
! !

