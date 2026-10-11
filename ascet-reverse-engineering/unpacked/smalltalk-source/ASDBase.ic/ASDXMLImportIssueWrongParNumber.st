"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20131bb4; bytecode file offset 0xa2e47c"
!ASDXMLImportIssueWrongParNumber methodsFor: 'recovered'!
repair: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := formula.
    recoveredValue2 := (recoveredValue1) name.
    recoveredValue3 := ('Formula ') , (recoveredValue2).
    recoveredValue4 := (recoveredValue3) , (' has wrong number of parameters').
    (recoveredValue0) logFatal: (recoveredValue4).
    ^false
! !

"ASDBase.ic method 0x20156a40; bytecode file offset 0xa5331c"
!ASDXMLImportIssueWrongParNumber methodsFor: 'recovered'!
initOn: recoveredArg1 formula: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    super initOn: ('Wrong number of parameters for formula') item: (recoveredValue0).
    recoveredValue1 := recoveredArg2.
    formula := recoveredValue1.
    issueType := 'error'.
    ^self
! !

