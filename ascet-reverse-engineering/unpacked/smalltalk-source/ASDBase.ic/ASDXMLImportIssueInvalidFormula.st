"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001d5e8; bytecode file offset 0x92209c"
!ASDXMLImportIssueInvalidFormula methodsFor: 'recovered'!
autofixText
    ^'Use the formula with invalid content'
! !

"ASDBase.ic method 0x20082be8; bytecode file offset 0x97f4a4"
!ASDXMLImportIssueInvalidFormula methodsFor: 'recovered'!
repair: recoveredArg1
    done := true.
    ^true
! !

"ASDBase.ic method 0x20156a58; bytecode file offset 0xa5331c"
!ASDXMLImportIssueInvalidFormula methodsFor: 'recovered'!
initOn: recoveredArg1 code: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    super initOn: ('Illegal code for formula') item: (recoveredValue0).
    recoveredValue1 := recoveredArg2.
    code := recoveredValue1.
    issueType := 'warning'.
    ^self
! !

