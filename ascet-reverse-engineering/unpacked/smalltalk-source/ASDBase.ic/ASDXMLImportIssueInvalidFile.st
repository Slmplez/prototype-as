"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000cb14; bytecode file offset 0x909658"
!ASDXMLImportIssueInvalidFile methodsFor: 'recovered'!
repair: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2006be30; bytecode file offset 0x96873c"
!ASDXMLImportIssueInvalidFile methodsFor: 'recovered'!
detail
    | recoveredValue0 |
    recoveredValue0 := detail.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20179518; bytecode file offset 0xa75de0"
!ASDXMLImportIssueInvalidFile methodsFor: 'recovered'!
initOn: recoveredArg1 exception: recoveredArg2 class: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg3.
    super initOn: (recoveredValue0) item: (recoveredValue1).
    recoveredValue2 := Util.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue2) exceptionString: (recoveredValue3).
    detail := recoveredValue4.
    issueType := 'error'.
    ^self
! !

