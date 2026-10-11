"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x201656fc; bytecode file offset 0xa61fc4"
!ASDXMLImportIssueNameFolderClash methodsFor: 'recovered'!
repair: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := path.
    recoveredValue2 := ('Cannot overwrite folder ') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , (' with component').
    (recoveredValue0) logWarning: (recoveredValue3).
    recoveredValue4 := protoItem.
    (recoveredValue4) markAsError.
    ^false
! !

"ASDBase.ic method 0x201785e8; bytecode file offset 0xa74eb0"
!ASDXMLImportIssueNameFolderClash methodsFor: 'recovered'!
initOn: recoveredArg1 item: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ('Cannot overwrite folder ') , (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    super initOn: (recoveredValue1) item: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    path := recoveredValue3.
    issueType := 'error'.
    ^self
! !

