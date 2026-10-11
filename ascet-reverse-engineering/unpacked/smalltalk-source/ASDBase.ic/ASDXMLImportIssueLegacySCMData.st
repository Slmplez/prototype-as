"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20017774; bytecode file offset 0x92209c"
!ASDXMLImportIssueLegacySCMData methodsFor: 'recovered'!
autofixText
    ^'Remove legacy SCM Data for this component'
! !

"ASDBase.ic method 0x201534f0; bytecode file offset 0xa4fdbc"
!ASDXMLImportIssueLegacySCMData methodsFor: 'recovered'!
initOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) xmlName.
    recoveredValue2 := ('Legacy SCM Data for ') , (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    super initOn: (recoveredValue2) item: (recoveredValue3).
    issueType := 'warning'.
    ^self
! !

"ASDBase.ic method 0x201b28f0; bytecode file offset 0xaaf1b8"
!ASDXMLImportIssueLegacySCMData methodsFor: 'recovered'!
repair: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := protoItem.
    recoveredValue1 := (recoveredValue0) thing.
    (recoveredValue1) xmlEdition: (true).
    recoveredValue2 := protoItem.
    recoveredValue3 := (recoveredValue2) thing.
    (recoveredValue3) xmlVersionString: ('').
    recoveredValue4 := protoItem.
    recoveredValue5 := (recoveredValue4) thing.
    (recoveredValue5) xmlVersionConfiguration: ('').
    ^true
! !

