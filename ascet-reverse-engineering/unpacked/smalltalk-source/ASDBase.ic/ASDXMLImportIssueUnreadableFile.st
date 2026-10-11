"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200167f0; bytecode file offset 0x92209c"
!ASDXMLImportIssueUnreadableFile methodsFor: 'recovered'!
autofixText
    ^'Ignore the file'
! !

"ASDBase.ic method 0x2011f79c; bytecode file offset 0xa1c060"
!ASDXMLImportIssueUnreadableFile methodsFor: 'recovered'!
repair: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := location.
    recoveredValue2 := ('Could not read file: ') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , (' (Ignoring)').
    (recoveredValue0) logWarning: (recoveredValue3).
    ^true
! !

"ASDBase.ic method 0x2017850c; bytecode file offset 0xa74e44"
!ASDXMLImportIssueUnreadableFile methodsFor: 'recovered'!
initOn: recoveredArg1 location: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := ('Cannot read referenced file ') , (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    super initOn: (recoveredValue1) item: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    location := recoveredValue3.
    issueType := 'warning'.
    ^self
! !

