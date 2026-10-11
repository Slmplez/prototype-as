"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000d51c; bytecode file offset 0x909e08"
!ASDXMLImportIssueMissingFile methodsFor: 'recovered'!
repair: recoveredArg1
    ^true
! !

"ASDBase.ic method 0x2001e950; bytecode file offset 0x92209c"
!ASDXMLImportIssueMissingFile methodsFor: 'recovered'!
autofixText
    ^'Ignore the missing file'
! !

"ASDBase.ic method 0x2006b760; bytecode file offset 0x96873c"
!ASDXMLImportIssueMissingFile methodsFor: 'recovered'!
detail
    | recoveredValue0 |
    recoveredValue0 := detail.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20148614; bytecode file offset 0xa44ed4"
!ASDXMLImportIssueMissingFile methodsFor: 'recovered'!
initOn: recoveredArg1 detail: recoveredArg2 class: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg3.
    super initOn: (recoveredValue0) item: (recoveredValue1).
    recoveredValue2 := recoveredArg2.
    detail := recoveredValue2.
    issueType := 'warning'.
    ^self
! !

