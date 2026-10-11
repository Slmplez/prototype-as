"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20144090; bytecode file offset 0xa40958"
!ASDXMLImportIssueWriteDenied methodsFor: 'recovered'!
repair: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := protoItem.
    recoveredValue2 := (recoveredValue1) path.
    recoveredValue3 := ('Cannot overwrite protected item:') , (recoveredValue2).
    (recoveredValue0) logWarning: (recoveredValue3).
    recoveredValue4 := protoItem.
    (recoveredValue4) markAsError.
    ^false
! !

"ASDBase.ic method 0x20147270; bytecode file offset 0xa43b3c"
!ASDXMLImportIssueWriteDenied methodsFor: 'recovered'!
initOn: recoveredArg1 destination: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    issueType := 'error'.
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) xmlPathString.
    recoveredValue2 := ('Cannot overwrite write protected item ') , (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := super initOn: (recoveredValue2) item: (recoveredValue3).
    ^recoveredValue4
! !

