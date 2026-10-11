"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000d3dc; bytecode file offset 0x909e08"
!ASDXMLImportIssueOrphanedConfig methodsFor: 'recovered'!
repair: recoveredArg1
    ^true
! !

"ASDBase.ic method 0x200cff40; bytecode file offset 0x9cc800"
!ASDXMLImportIssueOrphanedConfig methodsFor: 'recovered'!
autofixText
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := type.
    recoveredValue1 := ('Ignore the ') , (recoveredValue0).
    recoveredValue2 := (recoveredValue1) , (' for this element').
    ^recoveredValue2
! !

"ASDBase.ic method 0x20197dd8; bytecode file offset 0xa946a0"
!ASDXMLImportIssueOrphanedConfig methodsFor: 'recovered'!
initOn: recoveredArg1 name: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) , (' for unknown element ').
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) , (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    super initOn: (recoveredValue3) item: (recoveredValue4).
    recoveredValue5 := recoveredArg3.
    type := recoveredValue5.
    issueType := 'warning'.
    ^self
! !

