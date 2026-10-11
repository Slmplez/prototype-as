"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2011f770; bytecode file offset 0xa1c034"
!ASDXMLImportIssueUnreadableImage methodsFor: 'recovered'!
repair: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := location.
    recoveredValue2 := ('Could not read image from file: ') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , (' (Ignoring)').
    (recoveredValue0) logWarning: (recoveredValue3).
    ^false
! !

"ASDBase.ic method 0x20178528; bytecode file offset 0xa74e44"
!ASDXMLImportIssueUnreadableImage methodsFor: 'recovered'!
initOn: recoveredArg1 location: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := ('Cannot read image ') , (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    super initOn: (recoveredValue1) item: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    location := recoveredValue3.
    issueType := 'error'.
    ^self
! !

