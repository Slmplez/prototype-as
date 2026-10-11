"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x201655ac; bytecode file offset 0xa61e70"
!ASDXMLImportIssueBadA2LFile methodsFor: 'recovered'!
repair: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := problem.
    (recoveredValue0) logFatal: (recoveredValue1).
    recoveredValue2 := ('Die') == ('Call_101098').
    recoveredValue3 := protoItem.
    (recoveredValue3) markAsError.
    ^false
! !

"ASDBase.ic method 0x20178544; bytecode file offset 0xa74e44"
!ASDXMLImportIssueBadA2LFile methodsFor: 'recovered'!
initOn: recoveredArg1 a2lFile: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := ('Bad A2L file: ') , (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    super initOn: (recoveredValue1) item: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    a2lFile := recoveredValue3.
    issueType := 'error'.
    ^self
! !

